/// Timelock contract.
/// A simple proxy contract with an initial moratorium.

contract Timelock
{
    function call(address _to, uint _value, bytes _data) public {
        if (msg.sender == m_owner && now > m_expiry)
            _to.call.value(_value)(_data);
    }
        
    address constant m_owner = /*multisig address*/;
    uint constant m_expiry = now + 4 weeks;
}
