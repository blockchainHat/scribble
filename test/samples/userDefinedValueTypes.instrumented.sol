/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.8.8;

enum A { A, B, C }

type Price is uint32;

contract UserDefinedValueTypes {
    type Quantity is uint32;

    function orderPrice(Price p, Quantity q) public returns (Price RET_0) {
        RET_0 = _original_UserDefinedValueTypes_orderPrice(p, q);
        unchecked {
            if (!((Price.unwrap(p) * Quantity.unwrap(q)) == Price.unwrap(RET_0))) {
                emit __ScribbleUtilsLib__38.AssertionFailed("000514:0066:000 0: ");
                assert(false);
            }
        }
    }

    function _original_UserDefinedValueTypes_orderPrice(Price p, Quantity q) private returns (Price) {
        return Price.wrap(Price.unwrap(p) * Quantity.unwrap(q));
    }
}

library __ScribbleUtilsLib__38 {
    event AssertionFailed(string message);

    event AssertionFailedData(int eventId, bytes encodingData);

    function assertionFailed(string memory arg_0) internal {
        emit AssertionFailed(arg_0);
    }

    function assertionFailedData(int arg_0, bytes memory arg_1) internal {
        emit AssertionFailedData(arg_0, arg_1);
    }

    function isInContract() internal returns (bool res) {
        assembly {
            res := sload(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c)
        }
    }

    function setInContract(bool v) internal {
        assembly {
            sstore(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c, v)
        }
    }
}
