// SPDX-License-Identifier: MIT
/** @title IATA SSIM 
* @notice Provides structs and functions for creating and parsing messages
* @author ismail kahraman <izmael@gmail.com> | pisoco.com
*/
pragma solidity ^0.8.0;

import "../openzeppelin/utils/Strings.sol";

/**
 * @dev Create & Parse NEW messages
 */
abstract contract MessageSpec {

    enum Types{ NEW,CNL,RPL,SKD,ACK,ADM,CON,EQT,FLT,NAC,REV,RSD,TIM }
    string internal constant endOfLine = "\n";


    struct MessageHeading{
        string identifier; // endOfLine Mandatory
        string timeMode; // endOfLine Mandatory
    }


    function getHeader(MessageHeading memory _header) internal pure returns(string memory) {
        string memory result = "";

        result = string.concat(result,_header.identifier);
        result = string.concat(result,endOfLine);

        if (bytes(_header.timeMode).length != 0) {
            result = string.concat(result,_header.timeMode);
            result = string.concat(result,endOfLine);
        }

        return result;
    }

     struct MessageReference{
        string sequence;
        string creator;
    }

    function getReference(MessageReference memory _reference) internal pure returns(string memory) {
        string memory result = "";
        bool hasContent = false;
        result = string.concat(result,_reference.sequence);
    
        if (bytes(_reference.sequence).length != 0) {
            result = string.concat(result,_reference.sequence);
            hasContent = true;
        }
        if (bytes(_reference.creator).length != 0) {
            result = string.concat(result,"/");
            result = string.concat(result,_reference.creator);
            hasContent = true;
        }
        if(hasContent){
            result = string.concat(result,endOfLine);
        }
        
        return result;
    }

    struct ActionInformation{
        string identifier;
        string indicator;
    }

    function getAction(ActionInformation memory _action) internal pure returns(string memory) {
        string memory result = "";

        result = string.concat(result,_action.identifier);

        if (bytes(_action.indicator).length != 0) {
            result = string.concat(result," ");
            result = string.concat(result,_action.indicator);
        }
        result = string.concat(result,endOfLine);

        return result;
    }

    struct FlightInformation{
        string endOfLine;
    }

    struct FrequencyInformation{
        string endOfLine;
    }

    struct NewFlightInformation{
        string flightDesignator;
        string operationalSuffix;
        string endOfLine;
    }

    struct EquipmentInformation{
       string endOfLine;
    }

    struct LegInformation{
       string endOfLine;
    }

    struct SegmentInformation{
        string endOfLine;
    }

    struct SupplementaryInformation{
        string endOfLine;
    }

    struct RejectInformation{
         string endOfLine;
    }

    struct RepeatOfRejectedMessage{
        string endOfLine;
    }

}