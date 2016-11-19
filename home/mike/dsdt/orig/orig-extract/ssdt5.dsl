/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160831-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.asl, Sat Nov 19 22:46:42 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000692 (1682)
 *     Revision         0x01
 *     Checksum         0x64
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{
    /*
     * iASL Warning: There were 3 external control methods found during
     * disassembly, but only 0 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (M034, UnknownObj)
    External (M035, IntObj)
    External (M036, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M040, IntObj)
    External (M041, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M045, IntObj)
    External (M049, IntObj)
    External (M128, UnknownObj)
    External (M135, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Device (AS34)
    {
        Name (_HID, "ASD0001")  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (M045)
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (M156, One)
        Name (M137, Buffer (0x08)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
        })
        Name (M143, Zero)
        Name (M144, Zero)
        Name (M145, Zero)
        Name (M146, Zero)
        Name (M147, Zero)
        Name (M138, Zero)
        Name (M139, Zero)
        Name (M140, Zero)
        Name (M141, Zero)
        Name (M142, Zero)
        Name (M148, Zero)
        Name (M149, Zero)
        Name (M150, Zero)
        Name (M151, Zero)
        Name (M152, Zero)
        Method (M153, 2, NotSerialized)
        {
            Local0 = 0x1F
            If (Match (Package (0x04)
                        {
                            0x04, 
                            0x06, 
                            0x09, 
                            0x0B
                        }, MEQ, Arg1, MTR, Zero, Zero) == Ones)
            {
                Local0 = 0x1E
            }

            If (Match (Package (0x01)
                        {
                            0x02
                        }, MEQ, Arg1, MTR, Zero, Zero) == Ones)
            {
                If (Arg0 % 0x04)
                {
                    Local0 = 0x1C
                }
                Else
                {
                    Local0 = 0x1D
                }
            }

            Return (Local0)
        }

        Method (M155, 1, NotSerialized)
        {
            Local0 = (Arg0 + M143) /* \AS34.M143 */
            Divide (Local0, 0x3C, M148, Local0)
            Local0 += M144 /* \AS34.M144 */
            Divide (Local0, 0x18, M149, Local0)
            Local0 += M145 /* \AS34.M145 */
            Local1 = Zero
            While (Local0 > M153 (M147, M146))
            {
                Local0 -= M153 (M147, M146)
                Local1++
            }

            M150 = Local0
            Local0 = Local1
            Local0 += M146 /* \AS34.M146 */
            Local1 = Zero
            While (Local0 > 0x0C)
            {
                Local0 -= 0x0C
                Local1++
            }

            M151 = Local0
            M152 = (Local1 + M147) /* \AS34.M147 */
        }

        Method (M154, 5, NotSerialized)
        {
            Local7 = Zero
            Local2 = Zero
            If ((Arg3 > 0x0C) || (Arg3 <= Zero))
            {
                Local7 = 0x00010000
            }

            If ((Arg2 > M153 (Arg4, Arg3)) || (Arg2 <= Zero))
            {
                Local7 = 0x00010000
            }

            If (Arg1 >= 0x18)
            {
                Local7 = 0x00010000
            }

            If (Arg0 >= 0x3C)
            {
                Local7 = 0x00010000
            }

            Local0 = M143 /* \AS34.M143 */
            Local1 = Arg0
            If (Local1 < Local0)
            {
                Local1 += 0x3C
                Local2++
            }

            Local7 += (Local1 - Local0)
            Local0 = M144 /* \AS34.M144 */
            Local1 = Arg1
            If (Local2)
            {
                Local2 = Zero
                If (Local1 == Zero)
                {
                    Local1 += 0x18
                    Local2++
                }

                Local1--
            }

            If (Local1 < Local0)
            {
                Local1 += 0x18
                Local2++
            }

            Local7 += ((Local1 - Local0) * 0x3C)
            Local0 = M145 /* \AS34.M145 */
            Local1 = Arg2
            If (Local2)
            {
                Local2 = Zero
                If (Local1 <= One)
                {
                    Local1 += M153 (M147, M146)
                    Local2++
                }

                Local1--
            }

            If (Local1 < Local0)
            {
                Local1 += M153 (M147, M146)
                Local2++
            }

            Local7 += ((Local1 - Local0) * 0x05A0)
            Local0 = M146 /* \AS34.M146 */
            Local1 = Arg3
            If (Local2)
            {
                Local2 = Zero
                If (Local1 <= One)
                {
                    Local1 += 0x0C
                    Local2++
                }

                Local0++
            }

            If (Local1 < Local0)
            {
                Local1 += 0x0C
                Local2++
            }

            While (Local1 > Local0)
            {
                Local7 += (M153 (M147, Local0) * 0x05A0)
                Local0++
            }

            Local0 = M147 /* \AS34.M147 */
            Local1 = Arg4
            If (Local2)
            {
                Local2 = Zero
                If (Local1 <= Zero)
                {
                    Local2 = One
                }

                Local1--
            }

            If ((Local1 != Local0) || Local2)
            {
                Local7 = 0x00010000
            }

            Return (Local7)
        }

        Method (ASCM, 2, NotSerialized)
        {
            M135 = M049 /* External reference */
            0x13
            Local6
            If (M049 == M128)
            {
                0x6B
                One
                If (M156)
                {
                    M156 = Zero
                    M041 ((Local6 + 0x04), Zero)
                }
            }

            CreateField (M137, 0x20, 0x06, MIN4)
            CreateField (M137, 0x26, 0x05, HOR4)
            CreateField (M137, 0x2B, 0x05, DAY4)
            CreateField (M137, 0x30, 0x04, MON4)
            CreateField (M137, 0x34, 0x07, YER4)
            CreateField (M137, 0x20, 0x14, RMI4)
            CreateBitField (M137, 0x3B, REL4)
            CreateBitField (M137, 0x3D, ERR4)
            CreateBitField (M137, 0x3E, EXP4)
            CreateBitField (M137, 0x3F, ENA4)
            Local7 = Zero
            If (Arg0 == Zero)
            {
                 = FromBCD (M034, 0x09)
                M147
                 = FromBCD (M034, 0x08)
                M146
                 = FromBCD (M034, 0x07)
                M145
                 = FromBCD (M034, 0x04)
                M144
                 = FromBCD (M034, 0x02)
                M143
                M137 = Arg1
                If (ENA4)
                {
                    If (REL4)
                    {
                        Local7 = ToInteger (RMI4)
                        M155 (Local7)
                        M138 = M148 /* \AS34.M148 */
                        M139 = M149 /* \AS34.M149 */
                        M140 = M150 /* \AS34.M150 */
                        M141 = M151 /* \AS34.M151 */
                        M142 = M152 /* \AS34.M152 */
                    }
                    Else
                    {
                        M138 = ToInteger (MIN4)
                        M139 = ToInteger (HOR4)
                        M140 = ToInteger (DAY4)
                        M141 = ToInteger (MON4)
                        M142 = ToInteger (YER4)
                        Local7 = M154 (M138, M139, M140, M141, M142)
                    }
                }

                If (M049 == M128)
                {
                    0x6B
                    One
                    If (ENA4 && ((0xFFFF >= Local7) && (Local7 >= One)))
                    {
                        M041 ((Local6 + Zero), (Local7 & 0xFF))
                        M041 ((Local6 + One), ((Local7 >> 0x08) & 0xFF))
                        ERR4 = Zero
                    }
                    Else
                    {
                        M041 ((Local6 + Zero), Zero)
                        M041 ((Local6 + One), Zero)
                        ERR4 = One
                    }
                }

                If (M049 == M128)
                {
                    0x6B
                    0x02
                    M135 += (M049 * M135 (0x10, 0x0100)) /* External reference */
                    0x11
                    Local0
                    If (ENA4 && ((0xFFFF >= Local7) && (Local7 >= One)))
                    {
                        Local1 = One
                        Local2 = ToBCD (M138)
                        Local3 = ToBCD (M139)
                        Local4 = ToBCD (M140)
                        ERR4 = Zero
                    }
                    Else
                    {
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                        Local4 = Zero
                        ERR4 = One
                    }

                    (Local0 + 0x08) = M035 /* External reference */
                    Local5
                    Local1 |= (Local5 & 0xFE)
                    M036 ((Local0 + 0x08), Local1)
                    M036 ((Local0 + 0x09), Local2)
                    M036 ((Local0 + 0x0A), Local3)
                    M036 ((Local0 + 0x0B), Local4)
                    If (One = (M035 & (Local0 + 0x08))
                    {
                        Zero
                        M036 ((Local0 + Zero), 0x34)
                        M036 ((Local0 + One), 0x33)
                        M036 ((Local0 + 0x02), 0x53)
                        M036 ((Local0 + 0x03), 0x41)
                    }
                    Else
                    {
                        M036 ((Local0 + Zero), Zero)
                        M036 ((Local0 + One), Zero)
                        M036 ((Local0 + 0x02), Zero)
                        M036 ((Local0 + 0x03), Zero)
                    }
                }
            }

            If (Arg0 == One)
            {
                If (M049 == M128)
                {
                    0x6B
                    0x02
                    M135 += (M049 * M135 (0x10, 0x0100)) /* External reference */
                    0x11
                    Local0
                    If ((M035 == (Local0 + 0x03)) && 0x41)
                    {
                        ((M035 == (Local0 + 0x02)) && 0x53)
                        (M035 == (Local0 + One))
                        0x33
                        0x02 = (M035 & (Local0 + 0x08))
                        Local0
                        EXP4 = (Local0 >> One)
                    }
                    Else
                    {
                        EXP4 = Zero
                    }
                }

                If (M049 == M128)
                {
                    0x6B
                    One
                    (Local6 + 0x04) = M040 /* External reference */
                    Local0
                    EXP4 = (Local0 & One)
                }
            }

            Return (M137) /* \AS34.M137 */
        }
    }
}

