
// pragma solidity ^0.8.0;

// contract Transactions {
//     uint256 transactionCount;

//     event Tranfer(
//         address from,
//         address receiver,
//         uint256 amount,
//         string message,
//         uint256 timestamp,
//         string keyword
//     );

//     struct TransactionStruct {
//         address sender;
//         address receiver;
//         uint256 amount;
//         string message;
//         uint256 timestamp;
//         string keyword;
//     }

//     TransactionStruct[] transactions;

//     function addToBlockchain(
//         address payable receiver,
//         uint256 amount,
//         string memory message,
//         string memory keyword
//     ) public {
//         transactionCount += 1;
//         transactions.push(
//             TransactionStruct(
//                 msg.sender,
//                 receiver,
//                 amount,
//                 message,
//                 block.timestamp,
//                 keyword
//             )
//         );
//         emit Tranfer(
//             msg.sender,
//             receiver,
//             amount,
//             message,
//             block.timestamp,
//             keyword
//         );
//     }

//     function getAllTransactions()
//         public
//         view
//         returns (TransactionStruct[] memory)
//     {
//         return transactions;
//     }

//     function getTransactionCount() public view returns (uint256) {
//         return transactionCount;
//     }
// }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Transactions {
    uint256 transactionCount;

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
