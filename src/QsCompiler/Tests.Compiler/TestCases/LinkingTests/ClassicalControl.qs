﻿// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.


namespace SubOps {
    operation SubOp1() : Unit { }
    operation SubOp2() : Unit { }
    operation SubOp3() : Unit { }
}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest1() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest2() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;
        if (r == Zero) {
            SubOp1();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest3() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
            SubOp3();
        }

        let temp = 0;

        if (r == One) {
            SubOp2();
            SubOp3();
            SubOp1();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest4() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == Zero) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest5() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = Zero;

        if (r == One) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest6() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = One;

        if (r == One) {
            SubOp1();
            SubOp2();
        } elif (r == Zero) {
            SubOp3();
            SubOp1();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest7() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = One;

        if (r == One and r == Zero) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}

// =================================

namespace Microsoft.Quantum.Testing.ClassicalControl {
    open SubOps;

    @EntryPoint()
    operation ClassicalControlTest8() : Unit {
        Foo();
    }

    operation Foo() : Unit {
        let r = One;

        if (r == One or r == Zero) {
            SubOp1();
            SubOp2();
        } else {
            SubOp2();
            SubOp3();
        }
    }

}