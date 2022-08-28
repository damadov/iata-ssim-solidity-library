// SPDX-License-Identifier: MIT
/** @title IATA SSIM 
* @notice Provides structs and functions for creating and parsing messages
* @author ismail kahraman <izmael@gmail.com> | pisoco.com
*/
pragma solidity ^0.8.0;

import "./MessageSpec.sol";

/**
 * @dev IATA SSM specifications
 */
abstract contract StandardScheduleMessages {


struct COMMON {
    MessageSpec.Types _type;
    MessageSpec.MessageHeading _header;
    MessageSpec.MessageReference _reference;
    MessageSpec.ActionInformation _action;
    MessageSpec.FlightInformation _flight;
    MessageSpec.FrequencyInformation _frequency;
    MessageSpec.EquipmentInformation _equipment;
    MessageSpec.LegInformation _route;
    MessageSpec.SegmentInformation _segment;
    MessageSpec.SupplementaryInformation[] _subSupplementary;
    MessageSpec.SupplementaryInformation _wholeSupplementary; 
    MessageSpec.RejectInformation _reject;
    MessageSpec.RepeatOfRejectedMessage _repeatMsg;
}

/**
 * @dev Insertion of New Flight Information
 */
    struct NEW {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.EquipmentInformation _equipment;
        MessageSpec.LegInformation _route;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev The Cancellation Action Sub-Message may only be used to remove operations. 
 */
    struct CNL {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Replacement of Existing Flight Information 
 */
    struct RPL {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.EquipmentInformation _equipment;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Schedule Update , it is normally used in conjuction with its associated NEW sub-message
 */
    struct SKD {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Acknowledgement
 */
    struct ACK {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
    }

/**
 * @dev Change of Existing Information Expressed by the Use of Data Element Identifier Only
 */
    struct ADM {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.LegInformation _route;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Change of Aircraft Configuration/Version
 */
    struct CON {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.EquipmentInformation _equipment;
        MessageSpec.LegInformation _route;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Change of Equipment Information
 */
    struct EQT {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.EquipmentInformation _equipment;
        MessageSpec.LegInformation _route;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Change of Flight Designator
 */
    struct FLT {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.NewFlightInformation _newFlight;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Revision of Period of Operation and/or Day(s) of Operation
 */
    struct NAC {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.RejectInformation _reject;
        MessageSpec.RepeatOfRejectedMessage _repeatMsg;
    }

/**
 * @dev Request for Scheduled Data
 */
    struct REV {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

/**
 * @dev Change of Time Information 
 */
    struct RSD {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

    struct TIM {
        MessageSpec.MessageHeading _header;
        MessageSpec.MessageReference _reference;
        MessageSpec.ActionInformation _action;
        MessageSpec.FlightInformation _flight;
        MessageSpec.FrequencyInformation _frequency;
        MessageSpec.LegInformation _route;
        MessageSpec.SegmentInformation _segment;
        MessageSpec.SupplementaryInformation[] _subSupplementary;
        MessageSpec.SupplementaryInformation _wholeSupplementary;
    }

}