// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Continent {


    struct Africa{
        string Name;
        Country country;
        Nigeria nigeria;
    }
    enum Country{
        Nigeria,
        Ghana,
        Niger
    }
    struct Nigeria{
        string Lagos;
        string Abuja;
        string Kano;
        mapping (uint => State) state;
    }
    struct State{
        string Localgvt;
        string District;
    }

    mapping (uint => Africa) _continent;
    uint count = 1;

    function setContinent (string memory _nameS, Country _type, string memory _lagos,string memory _abuja,string memory _kano,string memory _localgvt,string memory _district)external {
        Africa storage newAfrica = _continent[count];
        newAfrica.Name = _nameS;
        newAfrica.country = _type;
        newAfrica.nigeria.Lagos = _lagos;
        newAfrica.nigeria.Abuja = _abuja;
        newAfrica.nigeria.Kano = _kano;
        newAfrica.nigeria.state[1].Localgvt = _localgvt;
        newAfrica.nigeria.state[1].District = _district;
        count++;


    }
    function returncontinent(uint id, uint _count2)external  view returns(string memory _district){
        Africa storage newafrica = _continent[_count2];
        _district = newafrica.nigeria.state[id].District;
    }

}
