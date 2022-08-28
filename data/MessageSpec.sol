// SPDX-License-Identifier: MIT
// Pisoco Contracts
pragma solidity ^0.8.0;


library MessageSpec {

    enum Types{ NEW,CNL,RPL,SKD,ACK,ADM,CON,EQT,FLT,NAC,REV,RSD,TIM }

    struct MessageHeading{
        string endOfLine;
    }

     struct MessageReference{
        string endOfLine;
    }

    struct ActionInformation{
        string endOfLine;
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