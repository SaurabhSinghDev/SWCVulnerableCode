// Author: Saurabh Singh

pragma solidity ^0.8.0;

contract PragmaNotLocked {
    uint public x = 1;
}
pragma solidity 0.4.25;

contract PragmaFixed {
    uint public x = 1;
}

contract PragmaNotLocked {
    uint public x = 1;
}

pragma solidity >=0.4.0 < 0.6.0;
pragma solidity >=0.4.0<0.6.0;
pragma solidity >=0.4.14 <0.6.0;
pragma solidity >0.4.13 <0.6.0;
pragma solidity 0.4.24 - 0.5.2;
pragma solidity >=0.4.24 <=0.5.3 ~0.4.20;
pragma solidity <0.4.26;
pragma solidity ~0.4.20;
pragma solidity ^0.4.14;
pragma solidity 0.4.*;
pragma solidity 0.*;
pragma solidity *;
pragma solidity 0.4;
pragma solidity 0;
contract SemVerFloatingPragma {
}

pragma solidity 0.4.25;
// or
pragma solidity =0.4.25;

contract SemVerFloatingPragmaFixed {
}
