/*_____________________________________________________________________________
 │                                                                            |
 │ COPYRIGHT (C) 2021 Mihai Baneu                                             |
 │                                                                            |
 | Permission is hereby  granted,  free of charge,  to any person obtaining a |
 | copy of this software and associated documentation files (the "Software"), |
 | to deal in the Software without restriction,  including without limitation |
 | the rights to  use, copy, modify, merge, publish, distribute,  sublicense, |
 | and/or sell copies  of  the Software, and to permit  persons to  whom  the |
 | Software is furnished to do so, subject to the following conditions:       |
 |                                                                            |
 | The above  copyright notice  and this permission notice  shall be included |
 | in all copies or substantial portions of the Software.                     |
 |                                                                            |
 | THE SOFTWARE IS PROVIDED  "AS IS",  WITHOUT WARRANTY OF ANY KIND,  EXPRESS |
 | OR   IMPLIED,   INCLUDING   BUT   NOT   LIMITED   TO   THE  WARRANTIES  OF |
 | MERCHANTABILITY,  FITNESS FOR  A  PARTICULAR  PURPOSE AND NONINFRINGEMENT. |
 | IN NO  EVENT SHALL  THE AUTHORS  OR  COPYRIGHT  HOLDERS  BE LIABLE FOR ANY |
 | CLAIM, DAMAGES OR OTHER LIABILITY,  WHETHER IN AN ACTION OF CONTRACT, TORT |
 | OR OTHERWISE, ARISING FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  |
 | THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                 |
 |____________________________________________________________________________|
 |                                                                            |
 |  Author: Mihai Baneu                           Last modified: 02.Jan.2021  |
 |                                                                            |
 |___________________________________________________________________________*/
 
Product {
    name: "startup"
    type: "lib"

    Depends { name: "stm32" }

    Group {
        condition: stm32.targetMcu == "STM32F103C8"
        files: ["STM32F1xx/STM32F103xB.s"]
    }

    Group {
        condition: stm32.targetMcu == "STM32F103RC"
        files: ["STM32F1xx/STM32F103xE.s"]
    }

    Group {
        condition: stm32.targetMcu == "STM32F401CC"
        files: ["STM32F4xx/STM32F401xC.s"]
    }

    Group {
        condition: stm32.targetMcu == "STM32F411CE"
        files: ["STM32F4xx/STM32F411xE.s"]
    }

    Group {
        condition: stm32.targetMcu == "STM32F412ZG"
        files: ["STM32F4xx/STM32F412Zx.s"]
    }

    Export {
        Depends { name: "stm32" }
        stm32.libraryPaths: [ product.destinationDirectory ]
    }
}
