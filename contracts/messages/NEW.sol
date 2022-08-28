// SPDX-License-Identifier: MIT
/** @title IATA SSIM 
* @notice Provides structs and functions for creating and parsing messages
* @author ismail kahraman <izmael@gmail.com> | pisoco.com
*/
pragma solidity ^0.8.0;

import "../openzeppelin/utils/Strings.sol";
import "../openzeppelin/utils/Counters.sol";
import "../openzeppelin/utils/SafeMath.sol";
import "../data/StandardScheduleMessages.sol";

/**
 * @dev Create & Parse NEW messages
 */
contract NewMessage is StandardScheduleMessages{
  using Counters for Counters.Counter;
  using Strings for uint256;
  using SafeMath for uint256;


  Counters.Counter private _messageIdCounter;
  Message[] private _messages;

    struct Message{
        uint256 messageId;
        NEW _new;
        uint256 creationDate;
    }

    mapping(uint256 => string) private _msgTexts;
    mapping(uint256 => uint256) private _msgIds;


function messsageResponse(NEW memory _new) public pure returns(string memory){
    return parseMessage(_new);
}

function pullMessage(uint _indexId) public view returns(Message memory) {
        return _messages[_msgIds[_indexId]];
}

function findMessage(uint _messageId) public view returns(uint) {
        uint i = 0;
        while (_messages[i].messageId != _messageId) {
            i++;
        }
        return i;
}

function getMessageText(uint _messageId) public view returns(string memory) {
        return _msgTexts[_messageId];
}

function parseMessage(NEW memory _new) internal pure returns(string memory) {
    string memory _text = "";
   
    return _text;
}

function pushMessage(NEW memory _new) internal {
        _messageIdCounter.increment();
        uint256 messageId = _messageIdCounter.current();
        Message memory newMessage = Message(messageId, _new, uint32(block.timestamp));
        _messages.push(newMessage);
        _msgIds[_messages.length-1] = messageId;
        _msgTexts[messageId] = messsageResponse(_new);
}

}