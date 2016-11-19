/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160831-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ../dsdt.asl, Sat Nov 19 20:12:26 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00008D2D (36141)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xDC
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "SLIC-MPC"
 *     OEM Revision     0x00040000 (262144)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 1, "HPQOEM", "SLIC-MPC", 0x00040000)
{
    /*
     * iASL Warning: There were 6 external control methods found during
     * disassembly, but only 0 were resolved (6 unresolved). Additional
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
    External (_PR_.C000._PPC, IntObj)
    External (_PR_.C000.PPCV, UnknownObj)
    External (_PR_.C001._PPC, UnknownObj)
    External (_PR_.C002._PPC, UnknownObj)
    External (_PR_.C003._PPC, UnknownObj)
    External (_SB_.APTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.AWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.WMID, UnknownObj)
    External (_SB_.WMID.ESDT, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.WMID.WED1, UnknownObj)
    External (_SB_.WMID.WEI1, UnknownObj)
    External (AFN4, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (ALIB, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (DEB2, IntObj)
    External (WLVD, UnknownObj)
    External (WMID, UnknownObj)

    OperationRegion (SPRT, SystemIO, 0xB0, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
    {
        Offset (0xF7), 
        HSDC,   8, 
        HSDS,   8, 
        HBUC,   8, 
        HBUS,   8
    }

    Method (CMSW, 2, NotSerialized)
    {
        CMSI = Arg0
        CMSD = Arg1
    }

    OperationRegion (DBG0, SystemIO, 0x80, One)
    Field (DBG0, ByteAcc, NoLock, Preserve)
    {
        IO80,   8
    }

    OperationRegion (DBG1, SystemIO, 0x80, 0x02)
    Field (DBG1, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PCB0, SystemIO, 0x70, 0x02)
    Field (PCB0, ByteAcc, NoLock, Preserve)
    {
        PCI0,   8, 
        PCD0,   8
    }

    IndexField (PCI0, PCD0, ByteAcc, NoLock, Preserve)
    {
    }

    OperationRegion (PCB1, SystemIO, 0x72, 0x02)
    Field (PCB1, ByteAcc, NoLock, Preserve)
    {
        PCI1,   8, 
        PCD1,   8
    }

    IndexField (PCI1, PCD1, ByteAcc, NoLock, Preserve)
    {
        Offset (0x81), 
        ACDE,   8, 
        Offset (0x8C), 
        S3PT,   8, 
        S3CB,   8, 
        S4PT,   8, 
        S4CB,   8, 
        Offset (0xC8), 
        BCMV,   8, 
        BRLS,   8, 
        Offset (0xCB), 
        SKUC,   8, 
        WOLS,   8, 
        Offset (0xFC), 
        CMST,   8, 
        STSC,   8, 
        FFAL,   1, 
        THSD,   1, 
        PDPN,   1
    }

    OperationRegion (PSMI, SystemIO, 0xB0, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemIO, 0x0CD6, 0x02)
    Field (PMRG, ByteAcc, NoLock, Preserve)
    {
        PMRI,   8, 
        PMRD,   8
    }

    IndexField (PMRI, PMRD, ByteAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0xC8), 
            ,   2, 
        SPRE,   1, 
        TPDE,   1, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMG, SystemMemory, 0xFED81500, 0x03FF)
    Field (GSMG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        GS00,   1, 
        Offset (0x3C), 
            ,   22, 
        GP15,   1, 
        Offset (0x44), 
        Offset (0x46), 
        GS17,   1, 
            ,   5, 
        GV17,   1, 
        GE17,   1, 
        Offset (0x110), 
            ,   22, 
        GP68,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x200), 
            ,   1, 
        G01S,   1, 
        Offset (0x204), 
            ,   1, 
        G01E,   1, 
        Offset (0x208), 
            ,   1, 
        TR01,   1, 
        Offset (0x20C), 
            ,   1, 
        TL01,   1, 
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x299), 
            ,   7, 
        G15A,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2, 
        Offset (0x377), 
        EPNM,   1, 
        DPPF,   1, 
        Offset (0x3BB), 
            ,   6, 
        PWDE,   1, 
        Offset (0x3BE), 
            ,   5, 
        ALLS,   1, 
        Offset (0x3DF), 
        BLNK,   2, 
        Offset (0x3F0), 
        PHYD,   1, 
        Offset (0xE81), 
            ,   2, 
        ECES,   1
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
            ,   14, 
        PEWS,   1, 
        WSTA,   1, 
            ,   14, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, 0x0400, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        PRWP [One] = Arg1
        If (DAS3 == Zero)
        {
            If (Arg1 <= 0x03)
            {
                PRWP [One] = Zero
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Method (SPTS, 1, NotSerialized)
    {
        If (Arg0 == 0x03)
        {
            BLNK = One
        }

        If ((Arg0 == 0x04) || (Arg0 == 0x05))
        {
            BLNK = Zero
        }

        If (Arg0 == 0x03)
        {
            FPTS ()
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        PEWS = PEWS /* \PEWS */
    }

    Method (SWAK, 1, NotSerialized)
    {
        BLNK = 0x03
        If (Arg0 == 0x03)
        {
            FWAK ()
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        PWDE = One
        PEWD = Zero
    }

    OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
    Field (ABIO, DWordAcc, NoLock, Preserve)
    {
        INAB,   32, 
        DAAB,   32
    }

    Method (RDAB, 1, NotSerialized)
    {
        INAB = Arg0
        Return (DAAB) /* \DAAB */
    }

    Method (WTAB, 2, NotSerialized)
    {
        INAB = Arg0
        DAAB = Arg1
    }

    Method (RWAB, 3, NotSerialized)
    {
        Local0 = (RDAB (Arg0) & Arg1)
        Local1 = (Local0 | Arg2)
        WTAB (Arg0, Local1)
    }

    Method (CABR, 3, NotSerialized)
    {
        Local0 = (Arg0 << 0x05)
        Local1 = (Local0 + Arg1)
        Local2 = (Local1 << 0x18)
        Local3 = (Local2 + Arg2)
        Return (Local3)
    }

    OperationRegion (GNVS, SystemMemory, 0xDFB37E98, 0x00000023)
    Field (GNVS, AnyAcc, NoLock, Preserve)
    {
        DAS3,   8, 
        TNBH,   8, 
        TCP0,   8, 
        TCP1,   8, 
        ATNB,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PWMN,   8, 
        LPTY,   8, 
        M92D,   8, 
        WKPM,   8, 
        ALST,   8, 
        AFUC,   8, 
        EXUS,   8, 
        GV0E,   8, 
        WLSH,   8, 
        TSSS,   8, 
        AOZP,   8, 
        TZFG,   8, 
        BPS0,   8, 
        NAPC,   8, 
        PCBA,   32, 
        PCBL,   32, 
        WLAN,   8, 
        BLTH,   8, 
        GPSS,   8, 
        NFCS,   8, 
        SBTY,   8, 
        BDID,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xDFB37E18, 0x0000000E)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        EGPO,   8, 
        BTBE,   8, 
        M2WL,   8, 
        OG03,   8, 
        PBAR,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8, 
        OSYS,   16
    }

    OperationRegion (NVST, SystemMemory, 0xDFB39E91, 0x0000012D)
    Field (NVST, AnyAcc, Lock, Preserve)
    {
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        BRTL,   8, 
        TLST,   8, 
        IGDS,   8, 
        LCDA,   16, 
        CSTE,   16, 
        NSTE,   16, 
        CADL,   16, 
        PADL,   16, 
        LIDS,   8, 
        PWRS,   8, 
        BVAL,   32, 
        ADDL,   16, 
        BCMD,   8, 
        SBFN,   8, 
        DID,    32, 
        INFO,   2048, 
        TOML,   8, 
        TOMH,   8, 
        CEBP,   8, 
        C0LS,   8, 
        C1LS,   8, 
        C0HS,   8, 
        C1HS,   8, 
        ROMS,   32, 
        MUXF,   8, 
        PDDN,   8, 
        CNSB,   8, 
        RDHW,   8
    }

    Method (SCMP, 2, NotSerialized)
    {
        Name (STG1, Buffer (0x50) {})
        Name (STG2, Buffer (0x50) {})
        STG1 = Arg0
        STG2 = Arg1
        If (SizeOf (Arg0) != SizeOf (Arg1))
        {
            Return (Zero)
        }

        Local0 = Zero
        While (Local0 < SizeOf (Arg0))
        {
            If (DerefOf (STG1 [Local0]) != DerefOf (STG2 [Local0]
                ))
            {
                Return (Zero)
            }

            Local0++
        }

        Return (One)
    }

    Name (WNOS, Zero)
    Name (MYOS, Zero)
    Name (HTTS, Zero)
    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (LINX, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If (Local0 != Local1)
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0) {})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0) {})
        BUF1 = Arg1
        Local2 = Zero
        While (Local2 < Local0)
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If (Local3 != Local4)
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If (OSTB == Ones)
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = 0x70
                TPOS = 0x70
                OSYS = 0x07DD
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                    OSYS = 0x07DD
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                    OSYS = 0x07DF
                }

                If (_OSI ("Linux"))
                {
                    LINX = One
                    OSTB = 0x80
                    TPOS = 0x80
                    OSYS = 0x03E8
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    OSTB = One
                    TPOS = One
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTB = 0x02
                    TPOS = 0x02
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    OSTB = 0x04
                    TPOS = 0x04
                }
                Else
                {
                    OSTB = Zero
                    TPOS = Zero
                }
            }
            Else
            {
                OSTB = Zero
                TPOS = Zero
            }
        }

        Return (OSTB) /* \OSTB */
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0xDFB1E018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
        MDG0 = MBUF /* \MBUF */
    }

    Method (DW2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x08)
        Local0 &= 0xFF
        Local1 &= 0xFF
        DB2H (Local1)
        BUFN--
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x10)
        Local0 &= 0xFFFF
        Local1 &= 0xFFFF
        DW2H (Local1)
        BUFN--
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Name (BUFS, Buffer (Local0) {})
        BUFS = Arg0
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (BUFS [(SizeOf (Arg0) - Local0)]))
            Local0--
        }

        MDG0 = MBUF /* \MBUF */
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC ((Arg0 >> 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Local0 = BUFN /* \BUFN */
        Local0 &= 0x0F
        While (Local0)
        {
            MDGC (Zero)
            Local0++
            Local0 &= 0x0F
        }
    }

    Method (MDGC, 1, Serialized)
    {
        MBUF [BUFN] = Arg0
        BUFN += One
        If (BUFN > 0x0FFF)
        {
            BUFN &= 0x0FFF
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Local2 = Arg0
        Local2 <<= 0x04
        MOVE (Local2)
        Local3 = (0x1000 - Local2)
        While (Local2)
        {
            MBUF [Local3] = Zero
            Local3++
            Local2--
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Local4 = Arg0
        BUFN = Zero
        Local5 = (0x1000 - Local4)
        While (Local5)
        {
            Local5--
            MBUF [BUFN] = DerefOf (MBUF [Local4])
            BUFN++
            Local4++
        }
    }

    Method (NTOC, 1, Serialized)
    {
        Local0 = (Arg0 & 0x0F)
        If (Local0 < 0x0A)
        {
            Local0 += 0x30
        }
        Else
        {
            Local0 += 0x37
        }

        Return (Local0)
    }

    Scope (_TZ)
    {
        ThermalZone (TSZ0)
        {
            Name (REGN, "Processor Thermal Zone")
            Method (FMAX, 0, NotSerialized)
            {
                Return ((\_SB.PCI0.LPC0.EC0.FNMX * 0x64))
            }

            Method (FMIN, 0, NotSerialized)
            {
                Return ((\_SB.PCI0.LPC0.EC0.FNMN * 0x64))
            }

            Method (FRSP, 0, NotSerialized)
            {
                Return ((\_SB.PCI0.LPC0.EC0.FRPM * 0x64))
            }

            Method (FSSP, 1, NotSerialized)
            {
                \_SB.PCI0.LPC0.EC0.FNSW = One
                \_SB.PCI0.LPC0.EC0.FWPM = (!Arg0 & One)
                \_SB.PCI0.LPC0.EC0.FNSW = Zero
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x1388)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (0x0E8A)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPC0.EC0.CPUT > CMST)
                {
                    CMST = \_SB.PCI0.LPC0.EC0.CPUT
                }

                Return ((0x0AAC + (\_SB.PCI0.LPC0.EC0.CPUT * 0x0A)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return ((0x0AAC + (\_SB.PCI0.LPC0.EC0.CPTP * 0x0A)))
            }
        }

        ThermalZone (TSZ2)
        {
            Name (BOTP, Zero)
            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (0x0E30)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local1 = (FFAL | PDPN)
                If (Local1 || BOTP)
                {
                    Return (0x0E30)
                }
                Else
                {
                    Return (0x0B74)
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (C000, 0x00, 0x00000410, 0x06) {}
        Processor (C001, 0x01, 0x00000410, 0x06) {}
        Processor (C002, 0x02, 0x00000410, 0x06) {}
        Processor (C003, 0x03, 0x00000410, 0x06) {}
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (DAS3 == One)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x03, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        0x04, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        0x05, 
        Zero, 
        Zero
    })
    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
            Notify (\_SB.PCI0.GFX0, 0x02) // Device Wake
        }

        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
        }

        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.XHC0, 0x02) // Device Wake
        }

        Method (_L1C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.LPC0.ECIR, 0x02) // Device Wake
        }
    }

    Name (PICM, Zero)
    Name (GPIC, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        PICM = Arg0
        GPIC = Arg0
        If (PICM)
        {
            \_SB.DSPI ()
            If (NAPC)
            {
                \_SB.PCI0.NAPE ()
            }
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        SPTS (Arg0)
        If (\_SB.PCI0.GPP1.XPDV.LANS == One)
        {
            \_SB.PCI0.LPC0.EC0.LWAK = One
        }
        Else
        {
            \_SB.PCI0.LPC0.EC0.LWAK = Zero
        }

        If (Arg0 == One)
        {
            \_SB.S80H (0x51)
        }

        If (Arg0 == 0x03)
        {
            \_SB.S80H (0x53)
            SLPS = One
        }

        If (Arg0 == 0x04)
        {
            \_SB.S80H (0x54)
            SLPS = One
            RSTU = One
        }

        If (Arg0 == 0x05)
        {
            \_SB.S80H (0x55)
            BCMD = 0x90
            \_SB.BSMI (Zero)
            \_SB.GSMI (0x03)
        }

        \_SB.APTS (Arg0)
    }

    OperationRegion (ECMM, SystemMemory, 0xFF000000, 0x1000)
    Field (ECMM, AnyAcc, Lock, Preserve)
    {
        Offset (0x800), 
        Offset (0x85A), 
        AASD,   8, 
        Offset (0x890), 
        BMFN,   72, 
        BATD,   56, 
        AATL,   1, 
        AACL,   1, 
        AAST,   1, 
        AARW,   1, 
        AAEN,   1, 
            ,   1, 
        WKRN,   1, 
        Offset (0x8A1), 
            ,   1, 
        VIDO,   1, 
        TOUP,   1, 
        Offset (0x8A2), 
        ODTS,   8, 
        OSTY,   4, 
            ,   2, 
        ECRD,   1, 
        ADPT,   1, 
        PWAK,   1, 
        MWAK,   1, 
        LWAK,   1, 
        RWAK,   1, 
        WWAK,   1, 
        UWAK,   1, 
        KWAK,   1, 
        TWAK,   1, 
        CCAC,   1, 
        AOAC,   1, 
        BLAC,   1, 
        PSRC,   1, 
        BOAC,   1, 
        LCAC,   1, 
        AAAC,   1, 
        ACAC,   1, 
        S3ST,   1, 
        S3RM,   1, 
        S4ST,   1, 
        S4RM,   1, 
        S5ST,   1, 
        S5RM,   1, 
        CSST,   1, 
        CSRM,   1, 
        OSTT,   8, 
        OSST,   8, 
        THLT,   8, 
        TCNL,   8, 
        MODE,   1, 
            ,   2, 
        INIT,   1, 
        FAN1,   1, 
        FAN2,   1, 
        FANT,   1, 
        SKNM,   1, 
        SDTM,   8, 
        FSSN,   4, 
        FANU,   4, 
        PCVL,   6, 
        SWTO,   1, 
        TTHR,   1, 
        TTHM,   1, 
        THTL,   1, 
        CTDP,   1, 
        NPST,   5, 
        CTMP,   8, 
        CTML,   8, 
        SKTA,   8, 
        SKTB,   8, 
        SKTC,   8, 
        Offset (0x8B6), 
        NTMP,   8, 
        APLE,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        CTHL,   4, 
            ,   1, 
        LIDF,   1, 
        PMEE,   1, 
        PWBE,   1, 
        RNGE,   1, 
        BTWE,   1, 
        Offset (0x8B9), 
        BRTS,   8, 
        S35M,   1, 
        S35S,   1, 
            ,   2, 
        FFEN,   1, 
        FFST,   1, 
        Offset (0x8BB), 
        WLAT,   1, 
        BTAT,   1, 
        WLEX,   1, 
        BTEX,   1, 
        KLSW,   1, 
        WLOK,   1, 
        AT3G,   1, 
        EX3G,   1, 
        PJID,   8, 
        CPUJ,   3, 
        CPNM,   3, 
        GATY,   2, 
        BOL0,   1, 
        BOL1,   1, 
            ,   2, 
        BCC0,   1, 
        BCC1,   1, 
        Offset (0x8BF), 
        BPU0,   1, 
        BPU1,   1, 
            ,   2, 
        BOS0,   1, 
        BOS1,   1, 
        Offset (0x8C0), 
        BTY0,   1, 
        BAM0,   1, 
        BAL0,   1, 
            ,   1, 
        BMF0,   3, 
        Offset (0x8C1), 
        BST0,   8, 
        BRC0,   16, 
        BSN0,   16, 
        BPV0,   16, 
        BDV0,   16, 
        BDC0,   16, 
        BFC0,   16, 
        GAU0,   8, 
        CYC0,   8, 
        BPC0,   16, 
        BAC0,   16, 
        BTW0,   8, 
        BVL0,   8, 
        BTM0,   8, 
        BAT0,   8, 
        BCG0,   16, 
        BCT0,   8, 
        BCI0,   8, 
        BCM0,   8, 
        BOT0,   8, 
        BSSB,   16, 
        BOV0,   8, 
        BCF0,   8, 
        BAD0,   8, 
        BCV1,   16, 
        BCV2,   16, 
        BCV3,   16, 
        BCV4,   16, 
        Offset (0x8ED), 
        BFCB,   16, 
        Offset (0x8F1), 
            ,   6, 
        ORRF,   1, 
        Offset (0x8F4), 
        BMD0,   16, 
        BACV,   16, 
        BDN0,   8, 
        BTPB,   16, 
        Offset (0x8FC)
    }

    OperationRegion (ECMP, SystemMemory, 0xFF000000, 0x1000)
    Field (ECMP, AnyAcc, Lock, Preserve)
    {
        Offset (0x800), 
        REC1,   8, 
        REC2,   8, 
        WEC1,   8, 
        WEC2,   8, 
        WMIM,   8, 
        ACKM,   1, 
        Offset (0x806), 
        STMS,   2, 
        MBMS,   2, 
        ACLS,   1, 
        MBSS,   1, 
        CSHE,   1, 
        ACSP,   1, 
        PSAC,   1, 
        PSBC,   1, 
        PSED,   1, 
        Offset (0x808), 
        PSPD,   8, 
        BCPD,   8, 
        BSTH,   8, 
        PRDT,   8, 
        PSSE,   8, 
        CPTP,   8, 
        SAID,   8, 
        FANE,   1, 
        CPUO,   1, 
        M4GO,   1, 
        FNSW,   1, 
        SBTC,   1, 
            ,   2, 
        OHP0,   1, 
        IBCL,   8, 
        FRPM,   8, 
        FNMX,   8, 
        FNMN,   8, 
        FWPM,   8, 
        RSTV,   8, 
        CPTV,   8, 
        GPTV,   8, 
        PHTV,   8, 
        FNTV,   8, 
        BTTV,   8, 
        HDTV,   8, 
            ,   6, 
        FNHK,   1, 
        Offset (0x81D), 
        Offset (0x821), 
        BTNO,   8, 
        Offset (0x82D), 
        BCTL,   128, 
        Offset (0x84D), 
        PENS,   120, 
        WACL,   1, 
        AADT,   1, 
        Offset (0x85D), 
        ENSI,   8, 
        ENSB,   8, 
        ENSD,   8, 
        SMBP,   8, 
        SMBS,   5, 
            ,   1, 
        SMAL,   1, 
        SMDN,   1, 
        SMAR,   8, 
        SMCD,   8, 
        SMDA,   256, 
        SMBC,   8, 
        SALA,   8, 
        SAD0,   8, 
        SAD1,   8, 
        BDCM,   64, 
        Offset (0x8AE), 
        CPTR,   8, 
        Offset (0x8B4), 
        GPTP,   8, 
        PHTP,   8, 
        Offset (0x8C1), 
        GBIS,   2, 
        Offset (0x8D7), 
        BTTP,   8, 
        Offset (0x8F2), 
            ,   5, 
        SBIS,   1, 
        Offset (0xAC3), 
            ,   3, 
        GBTC,   1, 
        Offset (0xBB0), 
        Offset (0xBBC), 
        CPUT,   8, 
        Offset (0xBC0), 
        Offset (0xBC2), 
        PRTM,   16, 
        Offset (0xBC5)
    }

    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
    Field (ERAM, ByteAcc, Lock, Preserve)
    {
        Offset (0x5A), 
        Offset (0x5B), 
        Offset (0x5C), 
        Offset (0x5D), 
        ENIB,   16, 
        ENDD,   8, 
        SMPR,   8, 
        SMST,   8, 
        SMAD,   8, 
        SMCM,   8, 
        SMD0,   256, 
        BCNT,   8, 
        SMAA,   24, 
        Offset (0x89)
    }

    OperationRegion (ECPR, EmbeddedControl, Zero, 0xFF)
    Field (ECPR, ByteAcc, Lock, Preserve)
    {
        Offset (0x06), 
            ,   4, 
        GSPN,   1, 
        Offset (0x0E), 
        SADP,   8, 
        Offset (0x10), 
        SAD2,   8, 
        Offset (0x1C), 
        CPBC,   8, 
        Offset (0x2D), 
        Offset (0x45), 
        BFCC,   16, 
        BTPP,   16, 
        Offset (0x64), 
        SMDR,   8, 
        Offset (0x88), 
        BTDC,   64, 
        BMNN,   72, 
        BDVN,   56, 
        Offset (0xEB), 
        MUAC,   16, 
        ATTE,   16, 
        MXER,   8, 
        Offset (0xF1), 
            ,   6, 
        OSRF,   1, 
        Offset (0xF9), 
        RTTE,   16, 
        ATTF,   16
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        SWAK (Arg0)
        \_SB.AWAK (Arg0)
        If ((Arg0 == 0x03) || (Arg0 == 0x04))
        {
            \_SB.PCI0.LPC0.EC0.ECRD = One
            If (GPIC != Zero)
            {
                \_SB.DSPI ()
                If (NAPC)
                {
                    \_SB.PCI0.NAPE ()
                }
            }
        }

        If (Arg0 == 0x03)
        {
            \_SB.S80H (0xE3)
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If (Arg0 == 0x04)
        {
            \_SB.S80H (0xE4)
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)) || (Arg0 == 0x05))
        {
            \_SB.PCI0.LPC0.EC0.RWAK = Zero
        }

        Return (Zero)
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (GPIC != Zero)
                {
                    DSPI ()
                    If (\NAPC)
                    {
                        NAPE ()
                    }
                }

                OSTP ()
                FINI ()
            }

            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If ((SUPP & 0x16) != 0x16)
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & One))
                    {
                        If (CTRL & One) {}
                        If (CTRL & 0x04) {}
                        If (CTRL & 0x10) {}
                    }

                    If (Arg1 != One)
                    {
                        CDW1 |= 0x08
                    }

                    If (CDW3 != CTRL)
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (TOM, 0, NotSerialized)
            {
                Local0 = (TOML * 0x00010000)
                Local1 = (TOMH * 0x01000000)
                Local0 += Local1
                Return (Local0)
            }

            Name (CRES, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, SubDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xF7FFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x78000000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC000000,         // Range Minimum
                    0xFED3FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02D40000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRES, \_SB.PCI0._Y00._MIN, BTMN)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._MAX, BTMX)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._LEN, BTLN)  // _LEN: Length
                CreateDWordField (CRES, \_SB.PCI0._Y01._MIN, BTN1)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._MAX, BTX1)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._LEN, BTL1)  // _LEN: Length
                BTMN = TOM ()
                BTMX = (PCBA - One)
                BTLN = (PCBA - BTMN) /* \_SB_.PCI0._CRS.BTMN */
                BTN1 = (PCBL + One)
                BTL1 = (BTX1 - BTN1) /* \_SB_.PCI0._CRS.BTN1 */
                BTL1 += One
                Return (CRES) /* \_SB_.PCI0.CRES */
            }

            Device (MEMR)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (BAR3, 0xF0100000)
                Name (MEM1, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y02)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y03)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y04)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y02._BAS, MB01)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y02._LEN, ML01)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._BAS, MB02)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._LEN, ML02)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._BAS, MB03)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._LEN, ML03)  // _LEN: Length
                    If (GPIC)
                    {
                        MB01 = 0xFEC00000
                        MB02 = 0xFEE00000
                        ML01 = 0x1000
                        If (\NAPC)
                        {
                            ML01 += 0x1000
                        }

                        ML02 = 0x1000
                    }

                    If (BAR3 != 0xFFF00000)
                    {
                        MB03 = BAR3 /* \_SB_.PCI0.MEMR.BAR3 */
                        ML03 = 0x00100000
                    }

                    Return (MEM1) /* \_SB_.PCI0.MEMR.MEM1 */
                }
            }

            OperationRegion (NAPC, PCI_Config, 0xF8, 0x08)
            Field (NAPC, DWordAcc, NoLock, Preserve)
            {
                NAPX,   32, 
                NAPD,   32
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                NAPX = Zero
                Local0 = NAPD /* \_SB_.PCI0.NAPD */
                Local0 &= 0xFFFFFFEF
                NAPD = Local0
                Release (NAPM)
            }

            Name (PR00, Package (0x1B)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x03, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    Zero, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    One, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x02, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x03, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR00, Package (0x1B)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x03, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    One, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x02, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x03, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Name (NR00, Package (0x1B)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x2B
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x28
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x29
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x2A
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x2C
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    Zero, 
                    0x2D
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    Zero, 
                    0x2E
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    Zero, 
                    0x2F
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    Zero, 
                    0x31
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    One, 
                    Zero, 
                    0x32
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x02, 
                    Zero, 
                    0x33
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x03, 
                    Zero, 
                    0x34
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    Zero, 
                    0x23
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x20
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    Zero, 
                    0x21
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x03, 
                    Zero, 
                    0x22
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    Zero, 
                    Zero, 
                    0x27
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    One, 
                    Zero, 
                    0x24
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x02, 
                    Zero, 
                    0x25
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x03, 
                    Zero, 
                    0x26
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    If (\NAPC)
                    {
                        Return (NR00) /* \_SB_.PCI0.NR00 */
                    }
                    Else
                    {
                        Return (AR00) /* \_SB_.PCI0.AR00 */
                    }
                }
                Else
                {
                    Return (PR00) /* \_SB_.PCI0.PR00 */
                }
            }

            Device (VGA)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (AF7E, 0x80000001)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Name (DOSA, Zero)
                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    DOSA = Arg0
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Return (Package (0x05)
                    {
                        0x00010100, 
                        0x00010110, 
                        0x0200, 
                        0x00010210, 
                        0x00010220
                    })
                }

                Device (LCD)
                {
                    Name (_ADR, 0x0110)  // _ADR: Address
                    Name (BCLB, Package (0x34)
                    {
                        0x5A, 
                        0x3C, 
                        0x02, 
                        0x04, 
                        0x06, 
                        0x08, 
                        0x0A, 
                        0x0C, 
                        0x0E, 
                        0x10, 
                        0x12, 
                        0x14, 
                        0x16, 
                        0x18, 
                        0x1A, 
                        0x1C, 
                        0x1E, 
                        0x20, 
                        0x22, 
                        0x24, 
                        0x26, 
                        0x28, 
                        0x2A, 
                        0x2C, 
                        0x2E, 
                        0x30, 
                        0x32, 
                        0x34, 
                        0x36, 
                        0x38, 
                        0x3A, 
                        0x3C, 
                        0x3E, 
                        0x40, 
                        0x42, 
                        0x44, 
                        0x46, 
                        0x48, 
                        0x4A, 
                        0x4C, 
                        0x4E, 
                        0x50, 
                        0x52, 
                        0x54, 
                        0x56, 
                        0x58, 
                        0x5A, 
                        0x5C, 
                        0x5E, 
                        0x60, 
                        0x62, 
                        0x64
                    })
                    Name (UBBL, Package (0x15)
                    {
                        Package (0x0B)
                        {
                            0x07, 
                            0x0B, 
                            0x0F, 
                            0x14, 
                            0x1D, 
                            0x28, 
                            0x32, 
                            0x3D, 
                            0x44, 
                            0x57, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x19, 
                            0x23, 
                            0x2D, 
                            0x37, 
                            0x3F, 
                            0x4F, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x17, 
                            0x1F, 
                            0x28, 
                            0x30, 
                            0x37, 
                            0x3F, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x1A, 
                            0x23, 
                            0x2D, 
                            0x35, 
                            0x3E, 
                            0x4E, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x04, 
                            0x08, 
                            0x0C, 
                            0x10, 
                            0x17, 
                            0x20, 
                            0x29, 
                            0x32, 
                            0x38, 
                            0x47, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x05, 
                            0x09, 
                            0x0D, 
                            0x12, 
                            0x1A, 
                            0x24, 
                            0x2E, 
                            0x37, 
                            0x40, 
                            0x4F, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x07, 
                            0x0B, 
                            0x0F, 
                            0x14, 
                            0x1D, 
                            0x28, 
                            0x32, 
                            0x3D, 
                            0x48, 
                            0x57, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x19, 
                            0x23, 
                            0x2D, 
                            0x37, 
                            0x3F, 
                            0x4F, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x05, 
                            0x09, 
                            0x0D, 
                            0x11, 
                            0x16, 
                            0x1F, 
                            0x27, 
                            0x30, 
                            0x36, 
                            0x44, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x1A, 
                            0x22, 
                            0x2D, 
                            0x37, 
                            0x3D, 
                            0x4D, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x05, 
                            0x09, 
                            0x0D, 
                            0x11, 
                            0x17, 
                            0x1F, 
                            0x28, 
                            0x30, 
                            0x37, 
                            0x45, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x13, 
                            0x1A, 
                            0x24, 
                            0x2E, 
                            0x39, 
                            0x43, 
                            0x52, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x13, 
                            0x1A, 
                            0x24, 
                            0x2E, 
                            0x39, 
                            0x43, 
                            0x52, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x13, 
                            0x1A, 
                            0x24, 
                            0x2E, 
                            0x39, 
                            0x42, 
                            0x52, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x13, 
                            0x1A, 
                            0x24, 
                            0x2E, 
                            0x39, 
                            0x43, 
                            0x50, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x13, 
                            0x19, 
                            0x24, 
                            0x2D, 
                            0x38, 
                            0x42, 
                            0x4F, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x17, 
                            0x20, 
                            0x29, 
                            0x31, 
                            0x39, 
                            0x48, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x17, 
                            0x20, 
                            0x29, 
                            0x31, 
                            0x39, 
                            0x48, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x05, 
                            0x09, 
                            0x0D, 
                            0x11, 
                            0x17, 
                            0x20, 
                            0x29, 
                            0x32, 
                            0x3A, 
                            0x49, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x06, 
                            0x0A, 
                            0x0E, 
                            0x12, 
                            0x1B, 
                            0x25, 
                            0x2F, 
                            0x39, 
                            0x41, 
                            0x51, 
                            0x64
                        }, 

                        Package (0x0B)
                        {
                            0x05, 
                            0x09, 
                            0x0D, 
                            0x11, 
                            0x15, 
                            0x1D, 
                            0x26, 
                            0x2E, 
                            0x34, 
                            0x47, 
                            0x64
                        }
                    })
                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (BCLB) /* \_SB_.PCI0.VGA_.LCD_.BCLB */
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        BRTL = Arg0
                        Divide (Arg0, 0x0A, Local0, Local1)
                        If (IDPC == 0x0614)
                        {
                            Local2 = DerefOf (UBBL [Zero])
                        }
                        ElseIf (IDPC == 0x4C51)
                        {
                            Local2 = DerefOf (UBBL [One])
                        }
                        ElseIf (IDPC == 0x46EC)
                        {
                            Local2 = DerefOf (UBBL [0x02])
                        }
                        ElseIf (IDPC == 0x15C9)
                        {
                            Local2 = DerefOf (UBBL [0x03])
                        }
                        ElseIf (IDPC == 0x15BE)
                        {
                            Local2 = DerefOf (UBBL [0x04])
                        }
                        ElseIf (IDPC == 0x0465)
                        {
                            Local2 = DerefOf (UBBL [0x05])
                        }
                        ElseIf (IDPC == 0x063B)
                        {
                            Local2 = DerefOf (UBBL [0x06])
                        }
                        ElseIf (IDPC == 0x4E51)
                        {
                            Local2 = DerefOf (UBBL [0x07])
                        }
                        ElseIf (IDPC == 0x45EC)
                        {
                            Local2 = DerefOf (UBBL [0x08])
                        }
                        ElseIf (IDPC == 0x15CA)
                        {
                            Local2 = DerefOf (UBBL [0x09])
                        }
                        ElseIf (IDPC == 0x15BF)
                        {
                            Local2 = DerefOf (UBBL [0x0A])
                        }
                        ElseIf (IDPC == 0x0493)
                        {
                            Local2 = DerefOf (UBBL [0x0B])
                        }
                        ElseIf (IDPC == 0x0468)
                        {
                            Local2 = DerefOf (UBBL [0x0C])
                        }
                        ElseIf (IDPC == 0x044F)
                        {
                            Local2 = DerefOf (UBBL [0x0D])
                        }
                        ElseIf (IDPC == 0x04B3)
                        {
                            Local2 = DerefOf (UBBL [0x0E])
                        }
                        ElseIf (IDPC == 0x5444)
                        {
                            Local2 = DerefOf (UBBL [0x0F])
                        }
                        ElseIf (IDPC == 0x36ED)
                        {
                            Local2 = DerefOf (UBBL [0x10])
                        }
                        ElseIf (IDPC == 0x38ED)
                        {
                            Local2 = DerefOf (UBBL [0x11])
                        }
                        ElseIf (IDPC == 0x0687)
                        {
                            Local2 = DerefOf (UBBL [0x12])
                        }
                        ElseIf (IDPC == 0x0519)
                        {
                            Local2 = DerefOf (UBBL [0x13])
                        }
                        ElseIf (IDPC == 0x3249)
                        {
                            Local2 = DerefOf (UBBL [0x14])
                        }
                        Else
                        {
                            Local2 = Package (0x0B)
                                {
                                    0x06, 
                                    0x0A, 
                                    0x14, 
                                    0x1E, 
                                    0x28, 
                                    0x32, 
                                    0x3C, 
                                    0x46, 
                                    0x50, 
                                    0x5A, 
                                    0x62
                                }
                        }

                        Local0 = DerefOf (Local2 [Local1])
                        If (AF7E == 0x80000001)
                        {
                            Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                            AFN7 (Local0)
                            BRTL = Arg0
                        }
                        Else
                        {
                            Acquire (^^^LPC0.PSMX, 0xFFFF)
                            BRTL = Arg0
                            BCMD = 0x72
                            BSMI (Zero)
                            Release (^^^LPC0.PSMX)
                        }
                    }
                }

                OperationRegion (PCFG, PCI_Config, 0x24, 0x04)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    GMMB,   32
                }

                OperationRegion (GMIO, SystemMemory, (GMMB & 0xFFFFFFF0), 0x00040000)
                Field (GMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x14750), 
                    AZIS,   1
                }

                Device (I2SC)
                {
                    Name (_HID, "I2SC1002")  // _HID: Hardware ID
                    Name (_CID, "AMD1234")  // _CID: Compatible ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (AZIS)
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x18
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x19
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1B
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR01) /* \_SB_.PCI0.GPP0.NR01 */
                        }
                        Else
                        {
                            Return (AR01) /* \_SB_.PCI0.GPP0.AR01 */
                        }
                    }
                    Else
                    {
                        Return (PR01) /* \_SB_.PCI0.GPP0.PR01 */
                    }
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Name (PR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x1C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x1D
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1E
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1F
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR02) /* \_SB_.PCI0.GPP1.NR02 */
                        }
                        Else
                        {
                            Return (AR02) /* \_SB_.PCI0.GPP1.AR02 */
                        }
                    }
                    Else
                    {
                        Return (PR02) /* \_SB_.PCI0.GPP1.PR02 */
                    }
                }

                Device (XPDV)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (LANS, Zero)
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x08, 0x05))
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        If (Arg0)
                        {
                            LANS = One
                            ^^^LPC0.EC0.LWAK = One
                        }
                        Else
                        {
                            LANS = Zero
                            ^^^LPC0.EC0.LWAK = Zero
                        }
                    }
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x20
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x21
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x22
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x23
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR03) /* \_SB_.PCI0.GPP2.NR03 */
                        }
                        Else
                        {
                            Return (AR03) /* \_SB_.PCI0.GPP2.AR03 */
                        }
                    }
                    Else
                    {
                        Return (PR03) /* \_SB_.PCI0.GPP2.PR03 */
                    }
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00020004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x24
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x25
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x26
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x27
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR04) /* \_SB_.PCI0.GPP3.NR04 */
                        }
                        Else
                        {
                            Return (AR04) /* \_SB_.PCI0.GPP3.AR04 */
                        }
                    }
                    Else
                    {
                        Return (PR04) /* \_SB_.PCI0.GPP3.PR04 */
                    }
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00020005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x28
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x29
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x2A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x2B
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR05) /* \_SB_.PCI0.GPP4.NR05 */
                        }
                        Else
                        {
                            Return (AR05) /* \_SB_.PCI0.GPP4.AR05 */
                        }
                    }
                    Else
                    {
                        Return (PR05) /* \_SB_.PCI0.GPP4.PR05 */
                    }
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x2C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x2D
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x2E
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x2F
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR06) /* \_SB_.PCI0.GFX0.NR06 */
                        }
                        Else
                        {
                            Return (AR06) /* \_SB_.PCI0.GFX0.AR06 */
                        }
                    }
                    Else
                    {
                        Return (PR06) /* \_SB_.PCI0.GFX0.PR06 */
                    }
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x05)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x0200, 
                            0x00010210, 
                            0x00010220
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x34)
                        {
                            0x5A, 
                            0x3C, 
                            0x02, 
                            0x04, 
                            0x06, 
                            0x08, 
                            0x0A, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x12, 
                            0x14, 
                            0x16, 
                            0x18, 
                            0x1A, 
                            0x1C, 
                            0x1E, 
                            0x20, 
                            0x22, 
                            0x24, 
                            0x26, 
                            0x28, 
                            0x2A, 
                            0x2C, 
                            0x2E, 
                            0x30, 
                            0x32, 
                            0x34, 
                            0x36, 
                            0x38, 
                            0x3A, 
                            0x3C, 
                            0x3E, 
                            0x40, 
                            0x42, 
                            0x44, 
                            0x46, 
                            0x48, 
                            0x4A, 
                            0x4C, 
                            0x4E, 
                            0x50, 
                            0x52, 
                            0x54, 
                            0x56, 
                            0x58, 
                            0x5A, 
                            0x5C, 
                            0x5E, 
                            0x60, 
                            0x62, 
                            0x64
                        })
                        Name (UBBL, Package (0x15)
                        {
                            Package (0x0B)
                            {
                                0x07, 
                                0x0B, 
                                0x0F, 
                                0x14, 
                                0x1D, 
                                0x28, 
                                0x32, 
                                0x3D, 
                                0x44, 
                                0x57, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x19, 
                                0x23, 
                                0x2D, 
                                0x37, 
                                0x3F, 
                                0x4F, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x17, 
                                0x1F, 
                                0x28, 
                                0x30, 
                                0x37, 
                                0x3F, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x1A, 
                                0x23, 
                                0x2D, 
                                0x35, 
                                0x3E, 
                                0x4E, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x04, 
                                0x08, 
                                0x0C, 
                                0x10, 
                                0x17, 
                                0x20, 
                                0x29, 
                                0x32, 
                                0x38, 
                                0x47, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x05, 
                                0x09, 
                                0x0D, 
                                0x12, 
                                0x1A, 
                                0x24, 
                                0x2E, 
                                0x37, 
                                0x40, 
                                0x4F, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x07, 
                                0x0B, 
                                0x0F, 
                                0x14, 
                                0x1D, 
                                0x28, 
                                0x32, 
                                0x3D, 
                                0x48, 
                                0x57, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x19, 
                                0x23, 
                                0x2D, 
                                0x37, 
                                0x3F, 
                                0x4F, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x05, 
                                0x09, 
                                0x0D, 
                                0x11, 
                                0x16, 
                                0x1F, 
                                0x27, 
                                0x30, 
                                0x36, 
                                0x44, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x1A, 
                                0x22, 
                                0x2D, 
                                0x37, 
                                0x3D, 
                                0x4D, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x05, 
                                0x09, 
                                0x0D, 
                                0x11, 
                                0x17, 
                                0x1F, 
                                0x28, 
                                0x30, 
                                0x37, 
                                0x45, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x13, 
                                0x1A, 
                                0x24, 
                                0x2E, 
                                0x39, 
                                0x43, 
                                0x52, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x13, 
                                0x1A, 
                                0x24, 
                                0x2E, 
                                0x39, 
                                0x43, 
                                0x52, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x13, 
                                0x1A, 
                                0x24, 
                                0x2E, 
                                0x39, 
                                0x42, 
                                0x52, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x13, 
                                0x1A, 
                                0x24, 
                                0x2E, 
                                0x39, 
                                0x43, 
                                0x50, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x13, 
                                0x19, 
                                0x24, 
                                0x2D, 
                                0x38, 
                                0x42, 
                                0x4F, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x17, 
                                0x20, 
                                0x29, 
                                0x31, 
                                0x39, 
                                0x48, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x17, 
                                0x20, 
                                0x29, 
                                0x31, 
                                0x39, 
                                0x48, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x05, 
                                0x09, 
                                0x0D, 
                                0x11, 
                                0x17, 
                                0x20, 
                                0x29, 
                                0x32, 
                                0x3A, 
                                0x49, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x06, 
                                0x0A, 
                                0x0E, 
                                0x12, 
                                0x1B, 
                                0x25, 
                                0x2F, 
                                0x39, 
                                0x41, 
                                0x51, 
                                0x64
                            }, 

                            Package (0x0B)
                            {
                                0x05, 
                                0x09, 
                                0x0D, 
                                0x11, 
                                0x15, 
                                0x1D, 
                                0x26, 
                                0x2E, 
                                0x34, 
                                0x47, 
                                0x64
                            }
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GFX0.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            BRTL = Arg0
                            Divide (Arg0, 0x0A, Local0, Local1)
                            If (IDPC == 0x0614)
                            {
                                Local2 = DerefOf (UBBL [Zero])
                            }
                            ElseIf (IDPC == 0x4C51)
                            {
                                Local2 = DerefOf (UBBL [One])
                            }
                            ElseIf (IDPC == 0x46EC)
                            {
                                Local2 = DerefOf (UBBL [0x02])
                            }
                            ElseIf (IDPC == 0x15C9)
                            {
                                Local2 = DerefOf (UBBL [0x03])
                            }
                            ElseIf (IDPC == 0x15BE)
                            {
                                Local2 = DerefOf (UBBL [0x04])
                            }
                            ElseIf (IDPC == 0x0465)
                            {
                                Local2 = DerefOf (UBBL [0x05])
                            }
                            ElseIf (IDPC == 0x063B)
                            {
                                Local2 = DerefOf (UBBL [0x06])
                            }
                            ElseIf (IDPC == 0x4E51)
                            {
                                Local2 = DerefOf (UBBL [0x07])
                            }
                            ElseIf (IDPC == 0x45EC)
                            {
                                Local2 = DerefOf (UBBL [0x08])
                            }
                            ElseIf (IDPC == 0x15CA)
                            {
                                Local2 = DerefOf (UBBL [0x09])
                            }
                            ElseIf (IDPC == 0x15BF)
                            {
                                Local2 = DerefOf (UBBL [0x0A])
                            }
                            ElseIf (IDPC == 0x0493)
                            {
                                Local2 = DerefOf (UBBL [0x0B])
                            }
                            ElseIf (IDPC == 0x0468)
                            {
                                Local2 = DerefOf (UBBL [0x0C])
                            }
                            ElseIf (IDPC == 0x044F)
                            {
                                Local2 = DerefOf (UBBL [0x0D])
                            }
                            ElseIf (IDPC == 0x04B3)
                            {
                                Local2 = DerefOf (UBBL [0x0E])
                            }
                            ElseIf (IDPC == 0x5444)
                            {
                                Local2 = DerefOf (UBBL [0x0F])
                            }
                            ElseIf (IDPC == 0x36ED)
                            {
                                Local2 = DerefOf (UBBL [0x10])
                            }
                            ElseIf (IDPC == 0x38ED)
                            {
                                Local2 = DerefOf (UBBL [0x11])
                            }
                            ElseIf (IDPC == 0x0687)
                            {
                                Local2 = DerefOf (UBBL [0x12])
                            }
                            ElseIf (IDPC == 0x0519)
                            {
                                Local2 = DerefOf (UBBL [0x13])
                            }
                            ElseIf (IDPC == 0x3249)
                            {
                                Local2 = DerefOf (UBBL [0x14])
                            }
                            Else
                            {
                                Local2 = Package (0x0B)
                                    {
                                        0x06, 
                                        0x0A, 
                                        0x14, 
                                        0x1E, 
                                        0x28, 
                                        0x32, 
                                        0x3C, 
                                        0x46, 
                                        0x50, 
                                        0x5A, 
                                        0x62
                                    }
                            }

                            Local0 = DerefOf (Local2 [Local1])
                            If (^^^^VGA.AF7E == 0x80000001)
                            {
                                Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                                AFN7 (Local0)
                                BRTL = Arg0
                            }
                            Else
                            {
                                Acquire (^^^^LPC0.PSMX, 0xFFFF)
                                BRTL = Arg0
                                BCMD = 0x72
                                BSMI (Zero)
                                Release (^^^^LPC0.PSMX)
                            }
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (GFX1)
            {
                Name (_ADR, 0x00030002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x30
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x31
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x32
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x33
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR07) /* \_SB_.PCI0.GFX1.NR07 */
                        }
                        Else
                        {
                            Return (AR07) /* \_SB_.PCI0.GFX1.AR07 */
                        }
                    }
                    Else
                    {
                        Return (PR07) /* \_SB_.PCI0.GFX1.PR07 */
                    }
                }
            }

            Device (GFX2)
            {
                Name (_ADR, 0x00030003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR08, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR08, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR08, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x34
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x35
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x36
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x37
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR08) /* \_SB_.PCI0.GFX2.NR08 */
                        }
                        Else
                        {
                            Return (AR08) /* \_SB_.PCI0.GFX2.AR08 */
                        }
                    }
                    Else
                    {
                        Return (PR08) /* \_SB_.PCI0.GFX2.PR08 */
                    }
                }
            }

            Device (GFX3)
            {
                Name (_ADR, 0x00030004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR09, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKC, 
                        Zero
                    }
                })
                Name (AR09, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x12
                    }
                })
                Name (NR09, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x1B
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x18
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x19
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1A
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR09) /* \_SB_.PCI0.GFX3.NR09 */
                        }
                        Else
                        {
                            Return (AR09) /* \_SB_.PCI0.GFX3.AR09 */
                        }
                    }
                    Else
                    {
                        Return (PR09) /* \_SB_.PCI0.GFX3.PR09 */
                    }
                }
            }

            Device (GFX4)
            {
                Name (_ADR, 0x00030005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM == One)
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR0A, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKG, 
                        Zero
                    }
                })
                Name (AR0A, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x16
                    }
                })
                Name (NR0A, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x1F
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x1C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1D
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1E
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR0A) /* \_SB_.PCI0.GFX4.NR0A */
                        }
                        Else
                        {
                            Return (AR0A) /* \_SB_.PCI0.GFX4.AR0A */
                        }
                    }
                    Else
                    {
                        Return (PR0A) /* \_SB_.PCI0.GFX4.PR0A */
                    }
                }
            }

            Device (PSP)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
            }

            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (HPEN == One)
                    {
                        If (OSTB >= 0x40)
                        {
                            Return (0x0F)
                        }

                        HPEN = Zero
                        Return (One)
                    }

                    Return (One)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y05)
                    })
                    CreateDWordField (BUF0, \_SB.PCI0.HPET._CRS._Y05._BAS, HPEB)  // _BAS: Base Address
                    Local0 = 0xFED00000
                    HPEB = (Local0 & 0xFFFFFC00)
                    Return (BUF0) /* \_SB_.PCI0.HPET._CRS.BUF0 */
                }
            }

            Device (AZAL)
            {
                Name (_ADR, 0x00090002)  // _ADR: Address
            }

            Name (XUPC, Package (0x04)
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (XUP1, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (XPLD, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 0....... */
            })
            Name (UPLD, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 1....... */
            })
            Name (NPLD, Zero)
            Name (WPLD, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00,  /* ........ */
                    /* 0008 */  0x25, 0x09, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,  /* %....... */
                    /* 0010 */  0x2C, 0x01, 0xBE, 0x00                           /* ,... */
                }
            })
            Name (DPLD, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            })
            Name (BPLD, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x64, 0x00, 0x64, 0x00,  /* ....d.d. */
                    /* 0008 */  0x24, 0x41, 0x80, 0x01, 0x00, 0x00, 0x04, 0x00,  /* $A...... */
                    /* 0010 */  0x00, 0x03, 0xAB, 0x02                           /* .... */
                }
            })
            Name (CPLD, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00,  /* ........ */
                    /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* %....... */
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                }
            })
            Device (EHC1)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                OperationRegion (PCFG, PCI_Config, 0xA0, 0x04)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    OSOW,   32
                }

                Method (STOS, 0, NotSerialized)
                {
                    OSOW |= 0x01000000
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        UWAK = One
                    }
                    Else
                    {
                        UWAK = Zero
                    }
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (GHUB)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (XUPC) /* \_SB_.PCI0.XUPC */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (XPLD) /* \_SB_.PCI0.XPLD */
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (XUPC) /* \_SB_.PCI0.XUPC */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (UPLD) /* \_SB_.PCI0.UPLD */
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (XUPC) /* \_SB_.PCI0.XUPC */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (XPLD) /* \_SB_.PCI0.XPLD */
                            }

                            Device (FCAM)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (XUPC) /* \_SB_.PCI0.XUPC */
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (WPLD) /* \_SB_.PCI0.WPLD */
                                }
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (Zero)
                            }

                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    Zero, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP) /* \_SB_.PCI0.EHC1.RHUB.GHUB.PRT3._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (XPLD) /* \_SB_.PCI0.XPLD */
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (XUPC) /* \_SB_.PCI0.XUPC */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (XPLD) /* \_SB_.PCI0.XPLD */
                            }
                        }
                    }
                }
            }

            Device (XHC0)
            {
                Name (_ADR, 0x00100000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        UWAK = One
                    }
                    Else
                    {
                        UWAK = Zero
                    }
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (HS01)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HS02)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HS03)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HS04)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (Zero)
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC0.RHUB.HS04._UPC.UPCP */
                        }
                    }

                    Device (SSP1)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (SSP2)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (SSP3)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (SSP4)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (Zero)
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC0.RHUB.SSP4._UPC.UPCP */
                        }
                    }
                }

                Method (RHRS, 0, NotSerialized)
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003A
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.XHC0.RHRS.RBUF */
                }
            }

            Device (SMBS)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (SBRV, PCI_Config, 0x08, 0x0100)
                Field (SBRV, AnyAcc, NoLock, Preserve)
                {
                    RVID,   8, 
                    Offset (0x0C), 
                    HPBS,   32, 
                    Offset (0x3B), 
                        ,   3, 
                    HIHP,   1, 
                    Offset (0x5A), 
                    I1F,    1, 
                    I12F,   1, 
                    Offset (0x7A), 
                        ,   2, 
                    G31O,   1, 
                    Offset (0xD9), 
                        ,   6, 
                    ACIR,   1
                }

                OperationRegion (ERMG, SystemMemory, 0xFED81500, 0x03FF)
                Field (ERMG, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x188), 
                    Offset (0x18A), 
                    G98I,   1, 
                        ,   5, 
                    G98O,   1, 
                    G98E,   1
                }

                OperationRegion (ERMM, SystemMemory, 0xFED80000, 0x1000)
                Field (ERMM, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x200), 
                        ,   1, 
                    E01S,   1, 
                        ,   3, 
                    E05S,   1, 
                        ,   9, 
                    E15S,   1, 
                    E16S,   1, 
                        ,   4, 
                    E21S,   1, 
                    E22S,   1, 
                    Offset (0x204), 
                        ,   1, 
                    E01E,   1, 
                        ,   3, 
                    E05E,   1, 
                        ,   4, 
                    E10E,   1, 
                        ,   4, 
                    E15E,   1, 
                    E16E,   1, 
                        ,   5, 
                    E22E,   1, 
                    Offset (0x208), 
                        ,   1, 
                    E01C,   1, 
                        ,   3, 
                    E05C,   1, 
                        ,   4, 
                    E10C,   1, 
                        ,   4, 
                    E15C,   1, 
                    E16C,   1, 
                        ,   4, 
                    E21C,   1, 
                    E22C,   1, 
                    Offset (0x20C), 
                        ,   1, 
                    E01L,   1, 
                        ,   3, 
                    E05L,   1, 
                        ,   9, 
                    E15L,   1, 
                    E16L,   1, 
                        ,   5, 
                    E22L,   1, 
                    Offset (0x288), 
                        ,   1, 
                    CLPS,   1, 
                    Offset (0x299), 
                        ,   7, 
                    G15A,   1, 
                    Offset (0x2B0), 
                        ,   2, 
                    SLPS,   2, 
                    Offset (0x362), 
                        ,   6, 
                    MT3A,   1, 
                    Offset (0x377), 
                    EPNM,   1, 
                    DPPF,   1, 
                    Offset (0x3BB), 
                        ,   6, 
                    PWDE,   1, 
                    Offset (0x3BE), 
                        ,   5, 
                    ALLS,   1, 
                    Offset (0x3C8), 
                        ,   2, 
                    TFTE,   1, 
                    Offset (0x3E4), 
                    BLNK,   2, 
                    Offset (0x3F0), 
                    PHYD,   1, 
                    Offset (0x400), 
                    F0CT,   8, 
                    F0MS,   8, 
                    F0FQ,   8, 
                    F0LD,   8, 
                    F0MD,   8, 
                    F0MP,   8, 
                    LT0L,   8, 
                    LT0H,   8, 
                    MT0L,   8, 
                    MT0H,   8, 
                    HT0L,   8, 
                    HT0H,   8, 
                    LRG0,   8, 
                    LHC0,   8, 
                    Offset (0x410), 
                    F1CT,   8, 
                    F1MS,   8, 
                    F1FQ,   8, 
                    F1LD,   8, 
                    F1MD,   8, 
                    F1MP,   8, 
                    LT1L,   8, 
                    LT1H,   8, 
                    MT1L,   8, 
                    MT1H,   8, 
                    HT1L,   8, 
                    HT1H,   8, 
                    LRG1,   8, 
                    LHC1,   8, 
                    Offset (0x420), 
                    F2CT,   8, 
                    F2MS,   8, 
                    F2FQ,   8, 
                    F2LD,   8, 
                    F2MD,   8, 
                    F2MP,   8, 
                    LT2L,   8, 
                    LT2H,   8, 
                    MT2L,   8, 
                    MT2H,   8, 
                    HT2L,   8, 
                    HT2H,   8, 
                    LRG2,   8, 
                    LHC2,   8, 
                    Offset (0x430), 
                    F3CT,   8, 
                    F3MS,   8, 
                    F3FQ,   8, 
                    F3LD,   8, 
                    F3MD,   8, 
                    F3MP,   8, 
                    LT3L,   8, 
                    LT3H,   8, 
                    MT3L,   8, 
                    MT3H,   8, 
                    HT3L,   8, 
                    HT3H,   8, 
                    LRG3,   8, 
                    LHC3,   8, 
                    Offset (0xD07), 
                    MX07,   8, 
                    Offset (0xD0F), 
                    MX15,   8, 
                    MX16,   8, 
                    Offset (0xD15), 
                    MX21,   8, 
                    Offset (0xD1B), 
                    MX27,   8, 
                    MX28,   8, 
                    Offset (0xD20), 
                    MX32,   8, 
                    Offset (0xD2C), 
                    MX44,   8, 
                    Offset (0xD31), 
                    MX49,   8, 
                    Offset (0xD35), 
                    MX53,   8, 
                    Offset (0xD39), 
                    MX57,   8, 
                    MX58,   8, 
                    MX59,   8, 
                    Offset (0xD42), 
                    MX66,   8, 
                    Offset (0xD66), 
                    M102,   8, 
                    Offset (0xD6E), 
                    M110,   8, 
                    Offset (0xDAF), 
                    M175,   8, 
                    M176,   8, 
                    Offset (0xDB4), 
                    M180,   8, 
                    Offset (0xDB6), 
                    M182,   8, 
                    Offset (0xE02), 
                    MS02,   8, 
                    MS03,   8, 
                    MS04,   8, 
                    Offset (0xE40), 
                    MS40,   8, 
                    Offset (0xE81), 
                        ,   2, 
                    ECES,   1
                }

                OperationRegion (ERM1, SystemMemory, 0xFED80000, 0x1000)
                Field (ERM1, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x208), 
                        ,   1, 
                        ,   1, 
                        ,   3, 
                        ,   1, 
                        ,   9, 
                    Offset (0x20A), 
                        ,   1, 
                        ,   5, 
                        ,   1, 
                        ,   3, 
                    E26C,   1, 
                    Offset (0xD01), 
                    MX01,   8, 
                    Offset (0xD20), 
                    Offset (0xD21), 
                    MX33,   8, 
                    MX34,   8, 
                    Offset (0xD29), 
                    MX41,   8, 
                    Offset (0xDAA), 
                    M170,   8, 
                    Offset (0xDB4), 
                    Offset (0xDB5), 
                    M181,   8, 
                    Offset (0xDB7), 
                    Offset (0xDC7), 
                    M199,   8, 
                    Offset (0xE00), 
                    MS00,   8, 
                    MS01,   8
                }
            }

            Device (MSSE)
            {
                Name (_HID, "SMB0001")  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0B20,             // Range Minimum
                        0x0B20,             // Range Maximum
                        0x20,               // Alignment
                        0x20,               // Length
                        )
                    IRQ (Level, ActiveLow, Shared, )
                        {7}
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPEN == One)
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.RTC_.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.RTC_.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPEN == One)
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.TMR_.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.TMR_.BUF1 */
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, EisaId ("FUJ7401"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("SYN1EF7"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0xD0,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                    })
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFFF00000,         // Address Base
                            0x00100000,         // Address Length
                            _Y06)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._LEN, PSIZ)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._BAS, PBAS)  // _BAS: Base Address
                        PSIZ = ROMS /* \ROMS */
                        Local0 = (ROMS - One)
                        PBAS = (Ones - Local0)
                        Return (MSRC) /* \_SB_.PCI0.LPC0.MEM_.MSRC */
                    }
                }

                Device (ECIR)
                {
                    Name (_HID, EisaId ("AMDC003"))  // _HID: Hardware ID
                    Name (IRWF, One)
                    OperationRegion (LPCS, PCI_Config, Zero, 0x0100)
                    Field (LPCS, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0xA4), 
                        IMCP,   16
                    }

                    OperationRegion (ECIO, SystemIO, (IMCP & 0xFFFE), 0x02)
                    Field (ECIO, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDNM,   8, 
                        Offset (0x30), 
                        ACT,    1, 
                        Offset (0x60), 
                        IOBH,   8, 
                        IOBL,   8, 
                        Offset (0x70), 
                        INT,    4
                    }

                    Mutex (IRCM, 0x00)
                    OperationRegion (IRCP, SystemIO, 0x0550, 0x02)
                    Field (IRCP, ByteAcc, NoLock, Preserve)
                    {
                        IRCX,   8, 
                        IRCD,   8
                    }

                    IndexField (IRCX, IRCD, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xAB), 
                        RXTX,   2, 
                        Offset (0xCA), 
                        LEDB,   1
                    }

                    Method (CFG, 1, NotSerialized)
                    {
                        INDX = 0x5A
                        INDX = 0x5A
                        LDNM = Arg0
                    }

                    Method (XCFG, 0, NotSerialized)
                    {
                        INDX = 0xA5
                    }

                    Mutex (ECMU, 0x00)
                    Method (STA, 1, NotSerialized)
                    {
                        Local0 = Zero
                        If (!Acquire (ECMU, 0x5000))
                        {
                            CFG (Arg0)
                            If (ACT)
                            {
                                Local0 = 0x0F
                            }

                            If (INDX == 0xFF)
                            {
                                Local0 = Zero
                            }

                            XCFG ()
                            Release (ECMU)
                        }

                        Return (Local0)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = Zero
                        If (TPOS >= 0x40)
                        {
                            Local0 = STA (0x05)
                        }

                        Return (Local0)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0550,             // Range Minimum
                            0x0550,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                    }

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1C, 
                        0x04
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        IRWF = Arg0
                    }

                    Name (IRTF, Zero)
                    Method (IRCF, 2, NotSerialized)
                    {
                        Local0 = Zero
                        Local1 = Zero
                        If (Arg0 == One)
                        {
                            If (!Acquire (IRCM, 0x5000))
                            {
                                Local1 = RXTX /* \_SB_.PCI0.LPC0.ECIR.RXTX */
                                Release (IRCM)
                            }

                            If (Local1)
                            {
                                Local0 |= 0x00013000
                                If (Local1 == 0x03)
                                {
                                    Local0 |= 0x0200
                                }
                                Else
                                {
                                    Local0 |= 0x0100
                                }
                            }
                        }

                        If (Arg0 == 0x02)
                        {
                            If (IRTF != Zero)
                            {
                                Local0 = IRTF /* \_SB_.PCI0.LPC0.ECIR.IRTF */
                            }
                            ElseIf (!Acquire (IRCM, 0x5000))
                            {
                                Local0 = RXTX /* \_SB_.PCI0.LPC0.ECIR.RXTX */
                                Release (IRCM)
                            }
                        }

                        If (Arg0 == 0x03)
                        {
                            If (!Acquire (IRCM, 0xFFFF))
                            {
                                If (Arg1 == Zero)
                                {
                                    LEDB = Zero
                                }
                                Else
                                {
                                    LEDB = One
                                    Sleep (0x64)
                                    LEDB = Zero
                                }

                                Release (IRCM)
                            }
                        }

                        If (Arg0 == 0x04)
                        {
                            If (Arg1 == Zero) {}
                            Else
                            {
                            }
                        }

                        If ((Arg0 == Zero) || (Arg0 > 0x05))
                        {
                            Local0 = Ones
                        }

                        Return (Local0)
                    }
                }

                Mutex (PSMX, 0x00)
            }

            Mutex (ESMX, 0x00)
            Device (ACEL)
            {
                Name (_HID, EisaId ("HPQ6007"))  // _HID: Hardware ID
                Name (GSPN, Zero)
                Name (CNST, Zero)
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005A
                        }
                })
                Method (_INI, 0, Serialized)  // _INI: Initialize
                {
                    If (_STA ())
                    {
                        INAL ()
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (^^LPC0.EC0.ACLS)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (INAL, 0, Serialized)
                {
                    AJAL ()
                }

                Method (AJAL, 0, Serialized)
                {
                    If ((^^LPC0.EC0.ADPT == Zero) && (^^LPC0.EC0.LIDF == One)) {}
                }

                Method (CLRI, 0, Serialized)
                {
                    Local0 = Zero
                    If (^^LPC0.ECOK ())
                    {
                        If (^^LPC0.EC0.ADPT == Zero)
                        {
                            If (^^LPC0.BAT1._STA () == 0x1F)
                            {
                                If (^^LPC0.EC0.BAL0 == One)
                                {
                                    Local0 = One
                                }
                            }
                        }
                    }

                    Return (Local0)
                }

                Method (ALID, 1, NotSerialized)
                {
                    Return (^^^LID._LID ())
                }

                Method (ALED, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        ^^SMBS.G98O = Zero
                    }
                    Else
                    {
                        ^^SMBS.G98O = One
                    }
                }

                Method (ADSN, 0, NotSerialized)
                {
                    Local0 = Zero
                    Return (Local0)
                }

                Method (ALRD, 1, NotSerialized)
                {
                    Local0 = Zero
                    If (^^LPC0.ECOK ())
                    {
                        If ((Arg0 == 0x29) || (Arg0 == 0x2B))
                        {
                            If (Arg0 == 0x29)
                            {
                                Local0 = ACCR (0x2B)
                            }
                            Else
                            {
                                Local0 = ACCR (0x29)
                                Local0 = ~Local0
                                Local0++
                            }
                        }
                        Else
                        {
                            Local0 = ACCR (Arg0)
                        }
                    }

                    Return (Local0)
                }

                Method (ALWR, 2, NotSerialized)
                {
                    If (^^LPC0.ECOK ())
                    {
                        If ((Arg0 == 0x29) || (Arg0 == 0x2B))
                        {
                            If (Arg0 == 0x29)
                            {
                                ACCW (0x2B, Arg1)
                            }
                            Else
                            {
                                ~Arg1
                                Arg1++
                                ACCW (0x29, Arg1)
                            }
                        }
                        Else
                        {
                            ACCW (Arg0, Arg1)
                        }
                    }
                }

                Method (ACCR, 1, NotSerialized)
                {
                    Local0 = ESMR (0x52, Arg0)
                    Return (Local0)
                }

                Method (ACCW, 2, NotSerialized)
                {
                    ESMW (0x52, Arg0, Arg1)
                }

                Method (ESMR, 2, NotSerialized)
                {
                    Acquire (ESMX, 0xFFFF)
                    Local2 = 0x1A
                    Local2 <<= 0x08
                    If (^^LPC0.ECOK () && (^^LPC0.EC0.SMPR == Zero))
                    {
                        Local0 = 0x04
                        While (Local0)
                        {
                            ^^LPC0.EC0.SMAD = Arg0
                            ^^LPC0.EC0.SMCM = Arg1
                            ^^LPC0.EC0.SMD0 = Zero
                            ^^LPC0.EC0.SMST = Zero
                            ^^LPC0.EC0.SMPR = 0x07
                            While (^^LPC0.EC0.SMPR)
                            {
                                Sleep (0x02)
                            }

                            If (^^LPC0.EC0.SMST == 0x80)
                            {
                                Local2 = ^^LPC0.EC0.SMDR /* \_SB_.PCI0.LPC0.EC0_.SMDR */
                                Break
                            }
                            Else
                            {
                                Local2 = (^^LPC0.EC0.SMST & 0x1F)
                                Local2 <<= 0x08
                            }

                            Sleep (0x14)
                            Local0 -= One
                        }
                    }

                    Release (ESMX)
                    Return (Local2)
                }

                Method (ESMW, 3, NotSerialized)
                {
                    Acquire (ESMX, 0xFFFF)
                    Local2 = 0x1A
                    Local2 <<= 0x08
                    If (^^LPC0.ECOK () && (^^LPC0.EC0.SMPR == Zero))
                    {
                        Local0 = 0x04
                        While (Local0)
                        {
                            ^^LPC0.EC0.SMAD = Arg0
                            ^^LPC0.EC0.SMCM = Arg1
                            ^^LPC0.EC0.SMDR = Arg2
                            ^^LPC0.EC0.SMST = Zero
                            ^^LPC0.EC0.SMPR = 0x06
                            While (^^LPC0.EC0.SMPR)
                            {
                                Sleep (0x02)
                            }

                            If (^^LPC0.EC0.SMST == 0x80)
                            {
                                Break
                            }
                            Else
                            {
                                Local2 = (^^LPC0.EC0.SMST & 0x1F)
                                Local2 <<= 0x08
                            }

                            Sleep (0x14)
                            Local0 -= One
                        }
                    }

                    Release (ESMX)
                    Return (Local2)
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
                Name (B5EN, Zero)
                Name (BA_5, Zero)
                Name (SBAR, 0xF056C000)
                Name (SAD0, Zero)
                Name (SAD3, Zero)
                PowerResource (P0SA, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (SAD0) /* \_SB_.PCI0.SATA.SAD0 */
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        IO80 = 0xA1
                        SAD0 = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        IO80 = 0xA2
                        SAD0 = Zero
                    }
                }

                PowerResource (P3SA, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (SAD3) /* \_SB_.PCI0.SATA.SAD3 */
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        IO80 = 0xA4
                        SAD3 = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        IO80 = 0xA5
                        SAD3 = Zero
                    }
                }

                OperationRegion (SATX, PCI_Config, Zero, 0x44)
                Field (SATX, AnyAcc, NoLock, Preserve)
                {
                    VIDI,   32, 
                    Offset (0x0A), 
                    STCL,   16, 
                    Offset (0x24), 
                    BA05,   32, 
                    Offset (0x40), 
                    WTEN,   1, 
                    Offset (0x42), 
                    DIS0,   1, 
                    DIS1,   1, 
                    DIS2,   1, 
                    DIS3,   1, 
                    DIS4,   1, 
                    DIS5,   1
                }

                Field (SATX, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x42), 
                    DISP,   6
                }

                Method (GBAA, 0, Serialized)
                {
                    BA_5 = BA05 /* \_SB_.PCI0.SATA.BA05 */
                    If ((BA_5 == Ones) || (STCL != 0x0101))
                    {
                        B5EN = Zero
                        Return (SBAR) /* \_SB_.PCI0.SATA.SBAR */
                    }
                    Else
                    {
                        B5EN = One
                        Return (BA_5) /* \_SB_.PCI0.SATA.BA_5 */
                    }
                }

                OperationRegion (BAR5, SystemMemory, GBAA (), 0x1000)
                Field (BAR5, AnyAcc, NoLock, Preserve)
                {
                    NOPT,   5, 
                    Offset (0x0C), 
                    PTI0,   1, 
                    PTI1,   1, 
                    PTI2,   1, 
                    PTI3,   1, 
                    PTI4,   1, 
                    PTI5,   1, 
                    PTI6,   1, 
                    PTI7,   1, 
                    Offset (0x118), 
                    CST0,   1, 
                    Offset (0x120), 
                        ,   7, 
                    BSY0,   1, 
                    Offset (0x128), 
                    DET0,   4, 
                    Offset (0x129), 
                    IPM0,   4, 
                    Offset (0x12C), 
                    DDI0,   4, 
                    Offset (0x198), 
                    CST1,   1, 
                    Offset (0x1A0), 
                        ,   7, 
                    BSY1,   1, 
                    Offset (0x1A8), 
                    DET1,   4, 
                    Offset (0x1A9), 
                    IPM1,   4, 
                    Offset (0x1AC), 
                    DDI1,   4, 
                    Offset (0x218), 
                    CST2,   1, 
                    Offset (0x220), 
                        ,   7, 
                    BSY2,   1, 
                    Offset (0x228), 
                    DET2,   4, 
                    Offset (0x229), 
                    IPM2,   4, 
                    Offset (0x22C), 
                    DDI2,   4, 
                    Offset (0x298), 
                    CST3,   1, 
                    Offset (0x2A0), 
                        ,   7, 
                    BSY3,   1, 
                    Offset (0x2A8), 
                    DET3,   4, 
                    Offset (0x2A9), 
                    IPM3,   4, 
                    Offset (0x2AC), 
                    DDI3,   4, 
                    Offset (0x318), 
                    CST4,   1, 
                    Offset (0x320), 
                        ,   7, 
                    BSY4,   1, 
                    Offset (0x328), 
                    DET4,   4, 
                    Offset (0x329), 
                    IPM4,   4, 
                    Offset (0x32C), 
                    DDI4,   4, 
                    Offset (0x398), 
                    CST5,   1, 
                    Offset (0x3A0), 
                        ,   7, 
                    BSY5,   1, 
                    Offset (0x3A8), 
                    DET5,   4, 
                    Offset (0x3A9), 
                    IPM5,   4, 
                    Offset (0x3AC), 
                    DDI5,   4
                }

                Field (BAR5, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    PTI,    6
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    GBAA ()
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                           /* .... */
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.PRID.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        SPTM = Arg0
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        GBAA ()
                        If (((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN)
                        {
                            If (IPM2)
                            {
                                Local0 = 0x32
                                While ((BSY2 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If (B5EN == Zero)
                            {
                                Return (Zero)
                            }

                            If (DET0 == 0x03)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If (((TPOS < 0x40) && (TPOS != 0x04)) && B5EN)
                            {
                                Local0 = 0x32
                                While ((BSY0 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         /* .F..... */
                                }
                            Return (Local0)
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If (B5EN == Zero)
                            {
                                Return (Zero)
                            }

                            If (DET2 == 0x03)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If (((TPOS < 0x40) && (TPOS != 0x04)) && B5EN)
                            {
                                Local0 = 0x32
                                While ((BSY2 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         /* .F..... */
                                }
                            Return (Local0)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  /* x....... */
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                           /* .... */
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SECD.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        SPTM = Arg0
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        GBAA ()
                        If (((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN)
                        {
                            If (IPM1)
                            {
                                Local0 = 0x32
                                While ((BSY1 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (IPM3)
                            {
                                Local0 = 0x32
                                While ((BSY3 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If (B5EN == Zero)
                            {
                                Return (Zero)
                            }

                            If (DET1 == 0x03)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If (((TPOS < 0x40) && (TPOS != 0x04)) && B5EN)
                            {
                                Local0 = 0x32
                                While ((BSY1 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         /* .F..... */
                                }
                            Return (Local0)
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If (B5EN == Zero)
                            {
                                Return (Zero)
                            }

                            If (DET3 == 0x03)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If (((TPOS < 0x40) && (TPOS != 0x04)) && B5EN)
                            {
                                Local0 = 0x32
                                While ((BSY3 == One) && Local0)
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         /* .F..... */
                                }
                            Return (Local0)
                        }
                    }
                }

                Method (ENP, 2, NotSerialized)
                {
                    If (Arg0 == Zero)
                    {
                        DIS0 = ~Arg1
                    }
                    ElseIf (Arg0 == One)
                    {
                        DIS1 = ~Arg1
                    }
                    ElseIf (Arg0 == 0x02)
                    {
                        DIS2 = ~Arg1
                    }
                    ElseIf (Arg0 == 0x03)
                    {
                        DIS3 = ~Arg1
                    }
                    ElseIf (Arg0 == 0x04)
                    {
                        DIS4 = ~Arg1
                    }
                    ElseIf (Arg0 == 0x05)
                    {
                        DIS5 = ~Arg1
                    }

                    WTEN = One
                    If (Arg0 == Zero)
                    {
                        PTI0 = Arg1
                    }
                    ElseIf (Arg0 == One)
                    {
                        PTI1 = Arg1
                    }
                    ElseIf (Arg0 == 0x02)
                    {
                        PTI2 = Arg1
                    }
                    ElseIf (Arg0 == 0x03)
                    {
                        PTI3 = Arg1
                    }
                    ElseIf (Arg0 == 0x04)
                    {
                        PTI4 = Arg1
                    }
                    ElseIf (Arg0 == 0x05)
                    {
                        PTI5 = Arg1
                    }

                    If (DISP == 0x3F)
                    {
                        PTI0 = One
                    }
                    ElseIf (DIS0 && ((DISP & 0x3E) ^ 0x3E))
                    {
                        PTI0 = Zero
                    }

                    Local0 = PTI /* \_SB_.PCI0.SATA.PTI_ */
                    Local1 = Zero
                    While (Local0)
                    {
                        If (Local0 & One)
                        {
                            Local1++
                        }

                        Local0 >>= One
                    }

                    NOPT = Local1--
                    WTEN = Zero
                }
            }
        }

        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            If (PICM)
            {
                HDAD = Arg0
                SDCL = Arg0
            }
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            If (PICM)
            {
                USB1 = Arg0
                USB3 = Arg0
            }
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            If (PICM)
            {
                SATA = Arg0
            }
        }

        Name (PRS1, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,5,6,10,11}
        })
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA && (PIRA != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRA = Local0
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB && (PIRB != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRB = Local0
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC && (PIRC != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRC = Local0
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD && (PIRD != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRD = Local0
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE && (PIRE != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF && (PIRF != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG && (PIRG != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH && (PIRH != 0x1F))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }

        Method (GSMI, 1, NotSerialized)
        {
            APMD = Arg0
            APMC = 0xE4
            Sleep (0x02)
        }

        Method (S80H, 1, NotSerialized)
        {
            IO80 = Arg0
        }

        Method (BSMI, 1, NotSerialized)
        {
            APMD = Arg0
            APMC = 0xBE
            Sleep (One)
        }

        Device (WLBU)
        {
            Name (_HID, EisaId ("HPQ6001"))  // _HID: Hardware ID
            Name (WLDP, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (WLDP == 0xFF)
                {
                    Local0 = Zero
                    OSTP ()
                    If (((OSYS == 0x07DC) || (OSYS == 0x07DD)) || (OSYS == 0x07DF))
                    {
                        If ((WLVD != Zero) && (WLVD != 0xFFFF))
                        {
                            Local0 = 0x0F
                        }
                    }

                    WLDP = Local0
                }

                Return (WLDP) /* \_SB_.WLBU.WLDP */
            }
        }

        Name (LSTA, One)
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Local0 = ^^PCI0.LPC0.EC0.LIDF /* \_SB_.PCI0.LPC0.EC0_.LIDF */
                If (Local0)
                {
                    Return (Zero)
                }

                Return (One)
            }
        }

        Method (SDRT, 0, NotSerialized)
        {
        }
    }

    OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
    Field (SMIC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x296), 
        STMR,   15, 
        TMRE,   1, 
            ,   29, 
        TMRS,   1, 
        Offset (0x360), 
        SMIB,   8, 
        Offset (0x3DA), 
            ,   4, 
        RFCS,   2, 
        Offset (0x3DC), 
            ,   30, 
        SM30,   1, 
        Offset (0x3EE), 
        U3PS,   2, 
        Offset (0xE28), 
            ,   29, 
        SARP,   1, 
        U2RP,   1, 
        U3RP,   1, 
        Offset (0x1518), 
            ,   22, 
        G06D,   1, 
        G06E,   1, 
        Offset (0x1564), 
        Offset (0x1566), 
        G19S,   1, 
            ,   5, 
        G19D,   1, 
        G19E,   1, 
        Offset (0x1C00), 
        XH0E,   1, 
            ,   6, 
        U3PY,   1, 
            ,   7, 
        UD3P,   1, 
        U3PR,   1, 
            ,   11, 
        FWLM,   1, 
        FPLS,   1, 
        FPLC,   1, 
        Offset (0x1C04), 
        UA04,   16, 
            ,   15, 
        ROAM,   1, 
        UA08,   32, 
        Offset (0x1E4A), 
        I0TD,   2, 
            ,   1, 
        I0PD,   1, 
        Offset (0x1E4B), 
        I0DS,   3, 
        Offset (0x1E4C), 
        I1TD,   2, 
            ,   1, 
        I1PD,   1, 
        Offset (0x1E4D), 
        I1DS,   3, 
        Offset (0x1E4E), 
        I2TD,   2, 
            ,   1, 
        I2PD,   1, 
        Offset (0x1E4F), 
        I2DS,   3, 
        Offset (0x1E50), 
        I3TD,   2, 
            ,   1, 
        I3PD,   1, 
        Offset (0x1E51), 
        I3DS,   3, 
        Offset (0x1E56), 
        U0TD,   2, 
            ,   1, 
        U0PD,   1, 
        Offset (0x1E57), 
        U0DS,   3, 
        Offset (0x1E58), 
        U1TD,   2, 
            ,   1, 
        U1PD,   1, 
        Offset (0x1E59), 
        U1DS,   3, 
        Offset (0x1E5E), 
        SATD,   2, 
            ,   1, 
        SAPD,   1, 
        Offset (0x1E5F), 
        SADS,   3, 
        Offset (0x1E64), 
        U2TD,   2, 
            ,   1, 
        U2PD,   1, 
        Offset (0x1E65), 
        U2DS,   3, 
        Offset (0x1E6E), 
        U3TD,   2, 
            ,   1, 
        U3PD,   1, 
        Offset (0x1E6F), 
        U3DS,   3, 
        Offset (0x1E70), 
        SDTD,   2, 
            ,   1, 
        SDPD,   1, 
            ,   2, 
        SDRT,   1, 
        SDSC,   1, 
        SDDS,   3, 
        Offset (0x1E80), 
            ,   15, 
        RQ15,   1, 
            ,   2, 
        RQ18,   1, 
            ,   4, 
        RQ23,   1, 
        RQ24,   1, 
            ,   5, 
        RQTY,   1, 
        Offset (0x1E84), 
            ,   15, 
        SASR,   1, 
            ,   2, 
        U2SR,   1, 
            ,   4, 
        U3SR,   1, 
        SDSR,   1, 
        Offset (0x1E88), 
        SRSA,   32, 
        SRSD,   32, 
        Offset (0x1E94), 
        SRDY,   1, 
        Offset (0x1EA0), 
        PG1A,   1, 
        PG2,    1, 
            ,   1, 
        U3PG,   1, 
        Offset (0x1EA3), 
        PGA3,   8, 
        Offset (0x61A8A), 
            ,   1, 
        CCGE,   1, 
        Offset (0x61A9E), 
            ,   1, 
        HCGE,   1
    }

    Mutex (FDAS, 0x00)
    Method (FDDC, 2, Serialized)
    {
        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Acquire (FDAS, 0xFFFF)
        If (Arg1 == Zero)
        {
            While (One)
            {
                _T_0 = ToInteger (Arg0)
                If (Match (Package (0x03)
                                {
                                    0x05, 
                                    0x0F, 
                                    0x18
                                }, MEQ, _T_0, MTR, Zero, Zero) != Ones)
                {
                    PG1A = One
                }
                ElseIf (Match (Package (0x06)
                                {
                                    0x06, 
                                    0x07, 
                                    0x08, 
                                    0x0B, 
                                    0x0C, 
                                    0x12
                                }, MEQ, _T_0, MTR, Zero, Zero) != Ones)
                {
                    PG2 = One
                }
                ElseIf (Match (Package (0x0A)
                                {
                                    0x05, 
                                    0x0F, 
                                    0x18, 
                                    0x06, 
                                    0x07, 
                                    0x08, 
                                    0x0B, 
                                    0x0C, 
                                    0x12, 
                                    0x17
                                }, MEQ, _T_0, MTR, Zero, Zero) != Ones)
                {
                    SRDY = Zero
                }

                Break
            }

            While (One)
            {
                _T_1 = ToInteger (Arg0)
                If (_T_1 == 0x05)
                {
                    I0TD = Zero
                    I0PD = One
                    Local0 = I0DS /* \I0DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = I0DS /* \I0DS */
                    }
                }
                ElseIf (_T_1 == 0x06)
                {
                    I1TD = Zero
                    I1PD = One
                    Local0 = I1DS /* \I1DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = I1DS /* \I1DS */
                    }
                }
                ElseIf (_T_1 == 0x07)
                {
                    I2TD = Zero
                    I2PD = One
                    Local0 = I2DS /* \I2DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = I2DS /* \I2DS */
                    }
                }
                ElseIf (_T_1 == 0x08)
                {
                    I3TD = Zero
                    I3PD = One
                    Local0 = I3DS /* \I3DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = I3DS /* \I3DS */
                    }
                }
                ElseIf (_T_1 == 0x0B)
                {
                    U0TD = Zero
                    U0PD = One
                    Local0 = U0DS /* \U0DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = U0DS /* \U0DS */
                    }
                }
                ElseIf (_T_1 == 0x0C)
                {
                    U1TD = Zero
                    U1PD = One
                    Local0 = U1DS /* \U1DS */
                    While (Local0 != 0x07)
                    {
                        Local0 = U1DS /* \U1DS */
                    }
                }
                ElseIf (_T_1 == 0x0F)
                {
                    STD0 ()
                }
                ElseIf (_T_1 == 0x17)
                {
                    U3D0 ()
                }

                Break
            }
        }
        Else
        {
            While (One)
            {
                _T_2 = ToInteger (Arg0)
                If (_T_2 == 0x05)
                {
                    I0PD = Zero
                    Local0 = I0DS /* \I0DS */
                    While (Local0 != Zero)
                    {
                        Local0 = I0DS /* \I0DS */
                    }

                    I0TD = 0x03
                }
                ElseIf (_T_2 == 0x06)
                {
                    I1PD = Zero
                    Local0 = I1DS /* \I1DS */
                    While (Local0 != Zero)
                    {
                        Local0 = I1DS /* \I1DS */
                    }

                    I1TD = 0x03
                }
                ElseIf (_T_2 == 0x07)
                {
                    I2PD = Zero
                    Local0 = I2DS /* \I2DS */
                    While (Local0 != Zero)
                    {
                        Local0 = I2DS /* \I2DS */
                    }

                    I2TD = 0x03
                }
                ElseIf (_T_2 == 0x08)
                {
                    I3PD = Zero
                    Local0 = I3DS /* \I3DS */
                    While (Local0 != Zero)
                    {
                        Local0 = I3DS /* \I3DS */
                    }

                    I3TD = 0x03
                }
                ElseIf (_T_2 == 0x0B)
                {
                    U0PD = Zero
                    Local0 = U0DS /* \U0DS */
                    While (Local0 != Zero)
                    {
                        Local0 = U0DS /* \U0DS */
                    }

                    U0TD = 0x03
                }
                ElseIf (_T_2 == 0x0C)
                {
                    U1PD = Zero
                    Local0 = U1DS /* \U1DS */
                    While (Local0 != Zero)
                    {
                        Local0 = U1DS /* \U1DS */
                    }

                    U1TD = 0x03
                }
                ElseIf (_T_2 == 0x0F)
                {
                    STD3 ()
                }
                ElseIf (_T_2 == 0x17)
                {
                    U3D3 ()
                }

                Break
            }

            If (I0TD == 0x03)
            {
                If (SATD == 0x03)
                {
                    If (SDTD == 0x03)
                    {
                        PG1A = Zero
                    }
                }
            }

            If (I1TD == 0x03)
            {
                If (I2TD == 0x03)
                {
                    If (I3TD == 0x03)
                    {
                        If (U0TD == 0x03)
                        {
                            If (U1TD == 0x03)
                            {
                                If (U2TD == 0x03)
                                {
                                    PG2 = Zero
                                }
                            }
                        }
                    }
                }
            }

            If (PG1A == Zero)
            {
                If (PG2 == Zero)
                {
                    If (U3PG == Zero)
                    {
                        If (S03D == One)
                        {
                            SRDY = One
                        }
                    }
                }
            }
        }

        Release (FDAS)
    }

    Method (FPTS, 0, Serialized)
    {
        If (U_PS != 0x03)
        {
            IO80 = 0x8C
            BreakPoint
        }

        If (E_PS != 0x03)
        {
            IO80 = 0x8D
            BreakPoint
        }

        If (XHCD == Zero)
        {
            If (XHCE == One)
            {
                If (U3TD != 0x03)
                {
                    IO80 = 0x82
                    FDDC (0x17, 0x03)
                }
            }
        }

        If (EHCD == Zero)
        {
            If (U2TD != 0x03)
            {
                FDDC (0x12, 0x03)
            }
        }

        If (ST_D == One)
        {
            If (SATD != Zero)
            {
                FDDC (0x0F, Zero)
            }
        }
    }

    Method (FWAK, 0, Serialized)
    {
        If (XHCD == Zero)
        {
            If (XHCE == One)
            {
                If (U3TD == 0x03)
                {
                    IO80 = 0x80
                    FDDC (0x17, Zero)
                }
            }
        }

        If (EHCD == Zero)
        {
            If (U2TD == 0x03)
            {
                FDDC (0x12, Zero)
            }
        }

        If (UT0E == Zero)
        {
            If (U0TD != 0x03)
            {
                FDDC (0x0B, 0x03)
            }
        }

        If (UT1E == Zero)
        {
            If (U1TD != 0x03)
            {
                FDDC (0x0C, 0x03)
            }
        }

        If (IC0E == Zero)
        {
            If (I0TD != 0x03)
            {
                FDDC (0x05, 0x03)
            }
        }

        If (IC1E == Zero)
        {
            If (I1TD != 0x03)
            {
                FDDC (0x06, 0x03)
            }
        }

        If (IC2E == Zero)
        {
            If (I2TD != 0x03)
            {
                FDDC (0x07, 0x03)
            }
        }

        If (IC3E == Zero)
        {
            If (I3TD != 0x03)
            {
                FDDC (0x08, 0x03)
            }
        }
    }

    Method (PWGC, 2, Serialized)
    {
        Local0 = (PGA3 & 0xDF)
        If (Arg1)
        {
            Local0 |= Arg0
        }
        Else
        {
            Local1 = ~Arg0
            Local0 &= Local1
        }

        PGA3 = Local0
        If (Arg0 == 0x20)
        {
            Local0 = PGA3 /* \PGA3 */
            Local0 &= Arg0
            While (!Local0)
            {
                Local0 = PGA3 /* \PGA3 */
                Local0 &= Arg0
            }
        }
    }

    Method (STD3, 0, Serialized)
    {
        ST_S ()
        Local0 = (SDS0 << 0x02)
        Local0 += 0xFED81500
        Local1 = (SDS1 << 0x02)
        Local1 += 0xFED81500
        OperationRegion (SDSA, SystemMemory, Local0, 0x04)
        Field (SDSA, ByteAcc, NoLock, Preserve)
        {
                ,   22, 
            GP0D,   1, 
            GP0E,   1
        }

        OperationRegion (SDSB, SystemMemory, Local1, 0x04)
        Field (SDSB, ByteAcc, NoLock, Preserve)
        {
                ,   22, 
            GP1D,   1, 
            GP1E,   1
        }

        RQTY = Zero
        RQ15 = One
        Local0 = SASR /* \SASR */
        While (Local0)
        {
            Local0 = SASR /* \SASR */
        }

        PWGC (0x10, One)
        SM30 = One
        If (SDS0)
        {
            GP0E = One
            GP0D = Zero
        }

        SAPD = Zero
        Local0 = SADS /* \SADS */
        While (Local0 != Zero)
        {
            Local0 = SADS /* \SADS */
        }

        SATD = 0x03
        SARP = One
    }

    Method (STD0, 0, Serialized)
    {
        Local0 = (SDS0 << 0x02)
        Local0 += 0xFED81500
        Local1 = (SDS1 << 0x02)
        Local1 += 0xFED81500
        OperationRegion (SDSA, SystemMemory, Local0, 0x04)
        Field (SDSA, ByteAcc, NoLock, Preserve)
        {
                ,   22, 
            GP0D,   1, 
            GP0E,   1
        }

        OperationRegion (SDSB, SystemMemory, Local1, 0x04)
        Field (SDSB, ByteAcc, NoLock, Preserve)
        {
                ,   22, 
            GP1D,   1, 
            GP1E,   1
        }

        SARP = Zero
        SATD = Zero
        SAPD = One
        Local0 = SADS /* \SADS */
        While (Local0 != 0x07)
        {
            Local0 = SADS /* \SADS */
        }

        Stall (0x78)
        PWGC (0x10, Zero)
        SM30 = Zero
        DSDN = Zero
        ST_R ()
        If (RFCS == One)
        {
            ST84 = Zero
            Stall (0x78)
            ST84 = One
        }

        If (SDS0)
        {
            GP0E = One
            GP0D = One
        }

        RQTY = One
        RQ15 = One
        Local0 = SASR /* \SASR */
        While (!Local0)
        {
            Local0 = SASR /* \SASR */
        }

        ST44 = One
        DDIC = One
        Stall (0x64)
        DDIC = Zero
    }

    Method (SU2P, 0, Serialized)
    {
        PWGC (0x40, Zero)
        U2RP = One
    }

    Method (U2D3, 0, Serialized)
    {
        If (E_PS == 0x03)
        {
            RQTY = Zero
            RQ18 = One
            Local0 = U2SR /* \U2SR */
            While (Local0)
            {
                Local0 = U2SR /* \U2SR */
            }

            U2PD = Zero
            Local0 = U2DS /* \U2DS */
            While (Local0 != Zero)
            {
                Local0 = U2DS /* \U2DS */
            }

            U2TD = 0x03
            If (U3TD == 0x03)
            {
                SU2P ()
            }
        }
    }

    Method (U2D0, 0, Serialized)
    {
        PWGC (0x40, One)
        U2RP = Zero
        U2TD = Zero
        U2TD = Zero
        U2PD = One
        Local0 = U2DS /* \U2DS */
        While (Local0 != 0x07)
        {
            Local0 = U2DS /* \U2DS */
        }

        RQTY = One
        RQ18 = One
        Local0 = U2SR /* \U2SR */
        While (!Local0)
        {
            Local0 = U2SR /* \U2SR */
        }

        EH2C = EHID /* \EHID */
        EHBA = EH10 /* \EH10 */
        EHME = One
        ESIM = SSIM /* \SSIM */
    }

    Method (LXFW, 3, Serialized)
    {
        FWLM = One
        ROAM = Arg0
        UA04 = Arg1
        UA08 = Arg2
        FPLS = One
        Local0 = FPLC /* \FPLC */
        While (!Local0)
        {
            Local0 = FPLC /* \FPLC */
        }

        FPLS = Zero
    }

    Method (X1_S, 0, Serialized)
    {
        RQTY = Zero
        RQ23 = One
        Local0 = U3SR /* \U3SR */
        While (Local0)
        {
            Local0 = U3SR /* \U3SR */
        }
    }

    Method (X1_R, 0, Serialized)
    {
        RQTY = One
        RQ23 = One
        Local0 = U3SR /* \U3SR */
        While (!Local0)
        {
            Local0 = U3SR /* \U3SR */
        }
    }

    Method (U3D3, 0, Serialized)
    {
        If (U_PS == 0x03)
        {
            X0_S ()
            PWGC (0x20, One)
            UD3P = One
            U3PD = Zero
            Local0 = U3DS /* \U3DS */
            While (Local0 != Zero)
            {
                Local0 = U3DS /* \U3DS */
            }

            U3TD = 0x03
            U3RP = One
            If (U2TD == 0x03)
            {
                SU2P ()
            }

            U3PG = Zero
            U3PS = One
        }
    }

    Method (U3D0, 0, Serialized)
    {
        U3PS = Zero
        U3PG = One
        U2RP = Zero
        U3RP = Zero
        PWGC (0x40, One)
        U3TD = Zero
        U3PD = One
        Local0 = U3DS /* \U3DS */
        While (Local0 != 0x07)
        {
            Local0 = U3DS /* \U3DS */
        }

        Local0 = U3PY /* \U3PY */
        While (Local0 != One)
        {
            Local0 = U3PY /* \U3PY */
        }

        U3PR = Zero
        Local0 = AUSS /* \AUSS */
        If (Local0 != One)
        {
            AUSS = One
        }

        Local0 = AUSS /* \AUSS */
        While (Local0 != One)
        {
            Local0 = AUSS /* \AUSS */
        }

        LXFW (One, FW00, FW01)
        LXFW (Zero, FW02, FW03)
        XHID = 0x80BA103C
        XH2C = XHID /* \XHID */
        X0_R ()
        U3PR = One
        UD3P = Zero
        U3TD = One
        XH2C = XHID /* \XHID */
    }

    OperationRegion (ECMC, SystemIO, 0x72, 0x02)
    Field (ECMC, AnyAcc, NoLock, Preserve)
    {
        ECMI,   8, 
        ECMD,   8
    }

    IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
    {
        Offset (0x08), 
        FRTB,   32
    }

    OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
    Field (FRTP, AnyAcc, NoLock, Preserve)
    {
        PEBA,   32, 
            ,   5, 
        IC0E,   1, 
        IC1E,   1, 
        IC2E,   1, 
        IC3E,   1, 
            ,   2, 
        UT0E,   1, 
        UT1E,   1, 
            ,   2, 
        ST_E,   1, 
            ,   2, 
        EHCE,   1, 
            ,   4, 
        XHCE,   1, 
        SD_E,   1, 
            ,   2, 
        ESPI,   1, 
        Offset (0x08), 
            ,   5, 
        IC0D,   1, 
        IC1D,   1, 
        IC2D,   1, 
        IC3D,   1, 
            ,   2, 
        UT0D,   1, 
        UT1D,   1, 
            ,   2, 
        ST_D,   1, 
            ,   2, 
        EHCD,   1, 
            ,   4, 
        XHCD,   1, 
        SD_D,   1, 
            ,   6, 
        S03D,   1, 
        FW00,   16, 
        FW01,   32, 
        FW02,   16, 
        FW03,   32, 
        SDS0,   8, 
        SDS1,   8, 
        Offset (0x20), 
        SD10,   32, 
        EH10,   32, 
        XH10,   32, 
        STBA,   32
    }

    Method (FINI, 0, NotSerialized)
    {
        XHCE = XH0E /* \XH0E */
        If (SDBA != Ones)
        {
            SD10 = SDBA /* \SDBA */
        }

        If (EHBA != Ones)
        {
            EH10 = EHBA /* \EHBA */
        }

        SDID = SD2C /* \SD2C */
        EHID = EH2C /* \EH2C */
        XHID = XH2C /* \XH2C */
        STID = ST2C /* \ST2C */
        SNHG = LDQ0 /* \LDQ0 */
        SF18 = FC18 /* \FC18 */
        SSIM = ESIM /* \ESIM */
        If (TPOS >= 0x60) {}
        Else
        {
            S03D = Zero
            XHCD = Zero
            EHCD = Zero
            ST_D = Zero
            SD_D = Zero
        }

        If (TPOS == 0x80)
        {
            S03D = Zero
            XHCD = Zero
            EHCD = Zero
            ST_D = Zero
            SD_D = Zero
        }

        If (UT0E == Zero)
        {
            If (U0TD != 0x03)
            {
                FDDC (0x0B, 0x03)
            }
        }

        If (UT1E == Zero)
        {
            If (U1TD != 0x03)
            {
                FDDC (0x0C, 0x03)
            }
        }

        If (IC0E == Zero)
        {
            If (I0TD != 0x03)
            {
                FDDC (0x05, 0x03)
            }
        }

        If (IC1E == Zero)
        {
            If (I1TD != 0x03)
            {
                FDDC (0x06, 0x03)
            }
        }

        If (IC2E == Zero)
        {
            If (I2TD != 0x03)
            {
                FDDC (0x07, 0x03)
            }
        }

        If (IC3E == Zero)
        {
            If (I3TD != 0x03)
            {
                FDDC (0x08, 0x03)
            }
        }
    }

    OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
    Field (FCFG, DWordAcc, NoLock, Preserve)
    {
        Offset (0x80010), 
        XHBA,   32, 
        Offset (0x8002C), 
        XH2C,   32, 
        Offset (0x80048), 
        IDEX,   32, 
        DATA,   32, 
        Offset (0x80054), 
        U_PS,   2, 
        Offset (0x88010), 
        ST10,   32, 
        ST14,   32, 
        ST18,   32, 
        ST1C,   32, 
        ST20,   32, 
        ST24,   32, 
        Offset (0x8802C), 
        ST2C,   32, 
        Offset (0x88040), 
        ST40,   1, 
        Offset (0x88044), 
        ST44,   1, 
        Offset (0x8804C), 
            ,   2, 
        DDIC,   1, 
        Offset (0x88064), 
        S_PS,   2, 
        Offset (0x88084), 
            ,   1, 
        ST84,   1, 
            ,   28, 
        DSDN,   1, 
        Offset (0x8808C), 
        ST8C,   8, 
        Offset (0x90004), 
            ,   1, 
        EHME,   1, 
        Offset (0x90010), 
        EHBA,   32, 
        Offset (0x9002C), 
        EH2C,   32, 
        Offset (0x900C4), 
        E_PS,   2, 
        Offset (0xA3078), 
            ,   2, 
        LDQ0,   1, 
        Offset (0xA30CB), 
            ,   7, 
        AUSS,   1, 
        Offset (0xA7004), 
            ,   1, 
        SDME,   1, 
        Offset (0xA7010), 
        SDBA,   32, 
        Offset (0xA702C), 
        SD2C,   32, 
        Offset (0xA7094), 
        D_PS,   2, 
        Offset (0xA7095), 
        SDPE,   1, 
            ,   6, 
        PMES,   1, 
        Offset (0xA70B4), 
        Offset (0xA70B5), 
        SETE,   1, 
        Offset (0xA70D0), 
            ,   17, 
        FC18,   1
    }

    OperationRegion (EHMC, SystemMemory, EH10, 0x0100)
    Field (EHMC, DWordAcc, NoLock, Preserve)
    {
        Offset (0xB0), 
            ,   5, 
        ESIM,   1
    }

    OperationRegion (SDMC, SystemMemory, SD10, 0x0100)
    Field (SDMC, AnyAcc, NoLock, Preserve)
    {
        Offset (0x24), 
            ,   6, 
        CDTC,   2, 
        Offset (0x27), 
        IRWE,   1, 
        ISWE,   1, 
        RMWE,   1
    }

    Method (SDFE, 0, Serialized)
    {
        CDTC = 0x02
        CDTC = 0x03
        CDTC = Zero
        SETE = One
        PMES = One
        SETE = Zero
    }

    Method (SDRE, 0, Serialized)
    {
        CDTC = 0x03
        CDTC = 0x02
        CDTC = Zero
        SETE = One
        PMES = One
        SETE = Zero
    }

    Method (SDSP, 0, Serialized)
    {
        SDME = One
        B600 = SDPE /* \SDPE */
        B601 = IRWE /* \IRWE */
        B602 = ISWE /* \ISWE */
        B603 = RMWE /* \RMWE */
        SDME = Zero
    }

    Method (SDRP, 0, Serialized)
    {
        If (SDFG)
        {
            If (G19S)
            {
                SDFE ()
            }
            Else
            {
                SDRE ()
            }

            SDFG = Zero
        }
    }

    Method (SRAD, 2, Serialized)
    {
        Local0 = (Arg0 << One)
        Local0 += 0xFED81E40
        OperationRegion (ADCR, SystemMemory, Local0, 0x02)
        Field (ADCR, ByteAcc, NoLock, Preserve)
        {
            ADTD,   2, 
            ADPS,   1, 
            ADPD,   1, 
            ADSO,   1, 
            ADSC,   1, 
            ADSR,   1, 
            ADIS,   1, 
            ADDS,   3
        }

        ADIS = One
        ADSR = Zero
        Stall (Arg1)
        ADSR = One
        ADIS = Zero
        Stall (Arg1)
    }

    Name (SVBF, Buffer (0x1000)
    {
         0x00                                             /* . */
    })
    CreateDWordField (SVBF, Zero, S000)
    CreateDWordField (SVBF, 0x04, S004)
    CreateDWordField (SVBF, 0x08, S008)
    CreateDWordField (SVBF, 0x0C, S00C)
    CreateDWordField (SVBF, 0x18, S018)
    CreateDWordField (SVBF, 0x1C, S01C)
    CreateDWordField (SVBF, 0x20, S020)
    CreateDWordField (SVBF, 0x30, S030)
    CreateDWordField (SVBF, 0x0118, S118)
    CreateDWordField (SVBF, 0x0158, S158)
    CreateDWordField (SVBF, 0x0198, S198)
    CreateDWordField (SVBF, 0x01D8, S1D8)
    CreateDWordField (SVBF, 0x0300, S300)
    CreateDWordField (SVBF, 0x0304, S304)
    CreateDWordField (SVBF, 0x0308, S308)
    CreateDWordField (SVBF, 0x030C, S30C)
    CreateDWordField (SVBF, 0x0310, S310)
    CreateDWordField (SVBF, 0x0428, S428)
    CreateDWordField (SVBF, 0x0438, S438)
    CreateDWordField (SVBF, 0x043C, S43C)
    CreateDWordField (SVBF, 0x0458, S458)
    CreateDWordField (SVBF, 0x0468, S468)
    CreateDWordField (SVBF, 0x046C, S46C)
    CreateDWordField (SVBF, 0x0470, S470)
    CreateDWordField (SVBF, 0x0480, S480)
    CreateDWordField (SVBF, 0x0484, S484)
    CreateDWordField (SVBF, 0x0488, S488)
    CreateDWordField (SVBF, 0x048C, S48C)
    CreateByteField (SVBF, 0x0600, B600)
    CreateByteField (SVBF, 0x0601, B601)
    CreateByteField (SVBF, 0x0602, B602)
    CreateByteField (SVBF, 0x0603, B603)
    CreateByteField (SVBF, 0x0700, SDFG)
    CreateByteField (SVBF, 0x0701, SNHG)
    CreateByteField (SVBF, 0x0702, SF18)
    CreateDWordField (SVBF, 0x0704, SDID)
    CreateDWordField (SVBF, 0x0730, EHID)
    CreateDWordField (SVBF, 0x0734, XHID)
    CreateDWordField (SVBF, 0x0738, STID)
    CreateDWordField (SVBF, 0x07B0, SSIM)
    CreateDWordField (SVBF, 0x0810, S810)
    CreateDWordField (SVBF, 0x0814, S814)
    CreateDWordField (SVBF, 0x0818, S818)
    CreateDWordField (SVBF, 0x081C, S81C)
    CreateDWordField (SVBF, 0x0820, S820)
    CreateDWordField (SVBF, 0x0824, S824)
    CreateDWordField (SVBF, 0x082C, S82C)
    CreateByteField (SVBF, 0x088C, S88C)
    Method (ST_S, 0, NotSerialized)
    {
        S810 = ST10 /* \ST10 */
        S814 = ST14 /* \ST14 */
        S818 = ST18 /* \ST18 */
        S81C = ST1C /* \ST1C */
        S820 = ST20 /* \ST20 */
        S824 = ST24 /* \ST24 */
        S88C = ST8C /* \ST8C */
    }

    Method (ST_R, 0, NotSerialized)
    {
        ST10 = S810 /* \S810 */
        ST14 = S814 /* \S814 */
        ST18 = S818 /* \S818 */
        ST1C = S81C /* \S81C */
        ST20 = S820 /* \S820 */
        ST24 = S824 /* \S824 */
        ST40 = One
        ST2C = STID /* \STID */
        ST40 = Zero
        ST8C = S88C /* \S88C */
    }

    Method (X0_S, 0, NotSerialized)
    {
        IDEX = Zero
        S000 = DATA /* \DATA */
        IDEX = 0x04
        S004 = DATA /* \DATA */
        IDEX = 0x08
        S008 = DATA /* \DATA */
        IDEX = 0x0C
        S00C = DATA /* \DATA */
        IDEX = 0x18
        S018 = DATA /* \DATA */
        IDEX = 0x1C
        S01C = DATA /* \DATA */
        IDEX = 0x20
        S020 = DATA /* \DATA */
        IDEX = 0x30
        S030 = DATA /* \DATA */
        IDEX = 0x0118
        S118 = DATA /* \DATA */
        IDEX = 0x0158
        S158 = DATA /* \DATA */
        IDEX = 0x0198
        S198 = DATA /* \DATA */
        IDEX = 0x01D8
        S1D8 = DATA /* \DATA */
        IDEX = 0x0300
        S300 = DATA /* \DATA */
        IDEX = 0x0304
        S304 = DATA /* \DATA */
        IDEX = 0x0308
        S308 = DATA /* \DATA */
        IDEX = 0x030C
        S30C = DATA /* \DATA */
        IDEX = 0x0310
        S310 = DATA /* \DATA */
        IDEX = 0x40000028
        S428 = DATA /* \DATA */
        IDEX = 0x40000038
        S438 = DATA /* \DATA */
        IDEX = 0x4000003C
        S43C = DATA /* \DATA */
        IDEX = 0x40000058
        S458 = DATA /* \DATA */
        IDEX = 0x40000068
        S468 = DATA /* \DATA */
        IDEX = 0x4000006C
        S46C = DATA /* \DATA */
        IDEX = 0x40000070
        S470 = DATA /* \DATA */
        IDEX = 0x40000080
        S480 = DATA /* \DATA */
        IDEX = 0x40000084
        S484 = DATA /* \DATA */
        IDEX = 0x40000088
        S488 = DATA /* \DATA */
        IDEX = 0x4000008C
        S48C = DATA /* \DATA */
    }

    Method (X0_R, 0, NotSerialized)
    {
        IDEX = Zero
        DATA = S000 /* \S000 */
        IDEX = 0x04
        DATA = S004 /* \S004 */
        IDEX = 0x08
        DATA = S008 /* \S008 */
        IDEX = 0x0C
        DATA = S00C /* \S00C */
        IDEX = 0x18
        DATA = S018 /* \S018 */
        IDEX = 0x1C
        DATA = S01C /* \S01C */
        IDEX = 0x20
        DATA = S020 /* \S020 */
        IDEX = 0x30
        DATA = S030 /* \S030 */
        IDEX = 0x0118
        DATA = S118 /* \S118 */
        IDEX = 0x0158
        DATA = S158 /* \S158 */
        IDEX = 0x0198
        DATA = S198 /* \S198 */
        IDEX = 0x01D8
        DATA = S1D8 /* \S1D8 */
        IDEX = 0x0300
        DATA = S300 /* \S300 */
        IDEX = 0x0304
        DATA = S304 /* \S304 */
        IDEX = 0x0308
        DATA = S308 /* \S308 */
        IDEX = 0x030C
        DATA = S30C /* \S30C */
        IDEX = 0x0310
        DATA = S310 /* \S310 */
        IDEX = 0x40000028
        DATA = S428 /* \S428 */
        IDEX = 0x40000038
        DATA = S438 /* \S438 */
        IDEX = 0x4000003C
        DATA = S43C /* \S43C */
        IDEX = 0x40000058
        DATA = S458 /* \S458 */
        IDEX = 0x40000068
        DATA = S468 /* \S468 */
        IDEX = 0x4000006C
        DATA = S46C /* \S46C */
        IDEX = 0x40000070
        DATA = S470 /* \S470 */
        IDEX = 0x40000080
        DATA = S480 /* \S480 */
        IDEX = 0x40000084
        DATA = S484 /* \S484 */
        IDEX = 0x40000088
        DATA = S488 /* \S488 */
        IDEX = 0x4000008C
        DATA = S48C /* \S48C */
    }

    Scope (_SB)
    {
        Name (XHD0, Zero)
        Name (XHD3, Zero)
        PowerResource (P0U3, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (XHD0) /* \_SB_.XHD0 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                XHD0 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                XHD0 = Zero
            }
        }

        PowerResource (P3U3, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (XHD3) /* \_SB_.XHD3 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                XHD3 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                XHD3 = Zero
            }
        }

        Name (EHD0, Zero)
        Name (EHD3, Zero)
        PowerResource (P0U2, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (EHD0) /* \_SB_.EHD0 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                EHD0 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                EHD0 = Zero
            }
        }

        PowerResource (P3U2, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (EHD3) /* \_SB_.EHD3 */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                EHD3 = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                EHD3 = Zero
            }
        }

        Name (D0SD, Zero)
        Name (D3SD, Zero)
        PowerResource (P0SD, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (D0SD) /* \_SB_.D0SD */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                D0SD = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                D0SD = Zero
            }
        }

        PowerResource (P3SD, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (D3SD) /* \_SB_.D3SD */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                D3SD = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                D3SD = Zero
            }
        }

        Name (D0ST, One)
        Name (D3ST, One)
        PowerResource (P0ST, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (D0ST) /* \_SB_.D0ST */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                D0ST = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                D0ST = Zero
            }
        }

        PowerResource (P3ST, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (D3ST) /* \_SB_.D3ST */
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                D3ST = One
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                D3ST = Zero
            }
        }
    }

    Scope (_SB.PCI0.XHC0)
    {
        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            P0U3
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            P3U3
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (XHCD == One)
            {
                Return (0x04)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
        {
            Return (0x04)
        }

        Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
        {
            Return (0x04)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (XHCD == One)
            {
                If (U3TD == 0x03)
                {
                    IO80 = 0x80
                    FDDC (0x17, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (XHCD == One)
            {
                If (U3TD != 0x03)
                {
                    If (U_PS == 0x03)
                    {
                        IO80 = 0x82
                        FDDC (0x17, 0x03)
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC1)
    {
        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            P0U2
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            P3U2
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (EHCD == One)
            {
                Return (0x04)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
        {
            Return (0x04)
        }

        Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
        {
            Return (0x04)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (EHCD == One)
            {
                IO80 = 0x50
                If (U2TD != Zero)
                {
                    FDDC (0x12, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (EHCD == One)
            {
                If (E_PS == 0x03)
                {
                    IO80 = DEB2 /* External reference */
                    If (U2TD != 0x03)
                    {
                        FDDC (0x12, 0x03)
                    }
                }
            }
        }

        Method (RHRS, 0, NotSerialized)
        {
            Name (RBUF, ResourceTemplate ()
            {
                GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0036
                    }
            })
            Return (RBUF) /* \_SB_.PCI0.EHC1.RHRS.RBUF */
        }
    }

    Scope (_SB.PCI0.SATA)
    {
        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            P0ST
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            P3ST
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (ST_D == One)
            {
                Return (0x04)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (ST_D == One)
            {
                IO80 = 0xA0
                If (SATD != Zero)
                {
                    FDDC (0x0F, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (ST_D == One)
            {
                If (SATD != 0x03)
                {
                    If (S_PS == 0x03)
                    {
                        IO80 = 0xA2
                        FDDC (0x0F, 0x03)
                    }
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (GPIO)
        {
            Name (_HID, "AMD0030")  // _HID: Hardware ID
            Name (_CID, "AMD0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000300,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                SDPD = Zero
                If (TPOS >= 0x60)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (AAHB)
        {
            Name (_HID, "AAHB0000")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {7}
                Memory32Fixed (ReadWrite,
                    0xFEDC0000,         // Address Base
                    0x00002000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMD0020")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC6000,         // Address Base
                    0x00002000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (UT0E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (UT0D && UT0E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (UT0D && UT0E)
                {
                    IO80 = 0xD0
                    If (U0TD == 0x03)
                    {
                        FDDC (0x0B, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (UT0D && UT0E)
                {
                    IO80 = 0xD2
                    If (U0TD != 0x03)
                    {
                        FDDC (0x0B, 0x03)
                    }
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMD0020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC8000,         // Address Base
                    0x00002000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (UT1E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (UT1D && UT1E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (UT1D && UT1E)
                {
                    IO80 = 0xD8
                    If (U1TD == 0x03)
                    {
                        FDDC (0x0C, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (UT1D && UT1E)
                {
                    IO80 = 0xDA
                    If (U1TD != 0x03)
                    {
                        FDDC (0x0C, 0x03)
                    }
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMD0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {3}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (IC0E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (IC0D && IC0E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (IC0D && IC0E)
                {
                    IO80 = 0xE0
                    If (I0TD == 0x03)
                    {
                        FDDC (0x05, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (IC0D && IC0E)
                {
                    IO80 = 0xE2
                    If (I0TD != 0x03)
                    {
                        FDDC (0x05, 0x03)
                    }
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMD0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {15}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (IC1E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (IC1D && IC1E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (IC1D && IC1E)
                {
                    IO80 = 0xE4
                    If (I1TD == 0x03)
                    {
                        FDDC (0x06, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (IC1D && IC1E)
                {
                    IO80 = 0xE6
                    If (I1TD != 0x03)
                    {
                        FDDC (0x06, 0x03)
                    }
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMD0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {6}
                Memory32Fixed (ReadWrite,
                    0xFEDC4000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (IC2E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (IC2D && IC2E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (IC2D && IC2E)
                {
                    IO80 = 0xE8
                    If (I2TD == 0x03)
                    {
                        FDDC (0x07, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (IC2D && IC2E)
                {
                    IO80 = 0xEA
                    If (I2TD != 0x03)
                    {
                        FDDC (0x07, 0x03)
                    }
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMD0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {14}
                Memory32Fixed (ReadWrite,
                    0xFEDC5000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPOS >= 0x60)
                {
                    If (IC3E == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (IC3D && IC3E)
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (IC3D && IC3E)
                {
                    IO80 = 0xEA
                    If (I3TD == 0x03)
                    {
                        FDDC (0x08, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (IC3D && IC3E)
                {
                    IO80 = 0xEC
                    If (I3TD != 0x03)
                    {
                        FDDC (0x08, 0x03)
                    }
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (COMP, SystemMemory, 0xDFB75C98, 0x00000200)
        Field (COMP, AnyAcc, Lock, Preserve)
        {
            IDMN,   16, 
            IDPC,   16, 
            BDDD,   8, 
            CPFB,   8, 
            PBTI,   8, 
            BRLV,   8, 
            CAVR,   8, 
            TJMA,   16, 
            CORE,   8, 
            CG12,   8, 
            CG13,   8, 
            CG14,   8, 
            CG15,   8, 
            CG16,   8, 
            CG17,   8, 
            CG18,   8, 
            CG19,   8, 
            CG20,   8, 
            CG21,   8, 
            CG22,   8, 
            CG23,   8, 
            CG24,   8, 
            CG25,   8, 
            CG26,   8, 
            CG27,   8, 
            CG28,   8, 
            CG29,   8, 
            CG30,   8, 
            CG31,   8, 
            SFNO,   16, 
            STDT,   16, 
            BFDT,   1024, 
            RSR1,   736, 
            IDFD,   1024, 
            RSR2,   1024
        }

        OperationRegion (SMIO, SystemIO, 0xB0, 0x02)
        Field (SMIO, ByteAcc, NoLock, Preserve)
        {
            SMMC,   8, 
            SMMD,   8
        }
    }

    Scope (_SB.PCI0.LPC0)
    {
        Method (ECOK, 0, NotSerialized)
        {
            If (^EC0.OKEC == One)
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_GPE, 0x03)  // _GPE: General Purpose Events
            Name (OKEC, One)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
            })
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == 0x03)
                {
                    OKEC = Arg1
                    ECRD = One
                    NPST = 0x04
                }
            }

            OperationRegion (ECMM, SystemMemory, 0xFF000000, 0x1000)
            Field (ECMM, AnyAcc, Lock, Preserve)
            {
                Offset (0x800), 
                Offset (0x85A), 
                AASD,   8, 
                Offset (0x890), 
                BMFN,   72, 
                BATD,   56, 
                AATL,   1, 
                AACL,   1, 
                AAST,   1, 
                AARW,   1, 
                AAEN,   1, 
                    ,   1, 
                WKRN,   1, 
                Offset (0x8A1), 
                    ,   1, 
                VIDO,   1, 
                TOUP,   1, 
                Offset (0x8A2), 
                ODTS,   8, 
                OSTY,   4, 
                    ,   2, 
                ECRD,   1, 
                ADPT,   1, 
                PWAK,   1, 
                MWAK,   1, 
                LWAK,   1, 
                RWAK,   1, 
                WWAK,   1, 
                UWAK,   1, 
                KWAK,   1, 
                TWAK,   1, 
                CCAC,   1, 
                AOAC,   1, 
                BLAC,   1, 
                PSRC,   1, 
                BOAC,   1, 
                LCAC,   1, 
                AAAC,   1, 
                ACAC,   1, 
                S3ST,   1, 
                S3RM,   1, 
                S4ST,   1, 
                S4RM,   1, 
                S5ST,   1, 
                S5RM,   1, 
                CSST,   1, 
                CSRM,   1, 
                OSTT,   8, 
                OSST,   8, 
                THLT,   8, 
                TCNL,   8, 
                MODE,   1, 
                    ,   2, 
                INIT,   1, 
                FAN1,   1, 
                FAN2,   1, 
                FANT,   1, 
                SKNM,   1, 
                SDTM,   8, 
                FSSN,   4, 
                FANU,   4, 
                PCVL,   6, 
                SWTO,   1, 
                TTHR,   1, 
                TTHM,   1, 
                THTL,   1, 
                CTDP,   1, 
                NPST,   5, 
                CTMP,   8, 
                CTML,   8, 
                SKTA,   8, 
                SKTB,   8, 
                SKTC,   8, 
                Offset (0x8B6), 
                NTMP,   8, 
                APLE,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                CTHL,   4, 
                    ,   1, 
                LIDF,   1, 
                PMEE,   1, 
                PWBE,   1, 
                RNGE,   1, 
                BTWE,   1, 
                Offset (0x8B9), 
                BRTS,   8, 
                S35M,   1, 
                S35S,   1, 
                    ,   2, 
                FFEN,   1, 
                FFST,   1, 
                Offset (0x8BB), 
                WLAT,   1, 
                BTAT,   1, 
                WLEX,   1, 
                BTEX,   1, 
                KLSW,   1, 
                WLOK,   1, 
                AT3G,   1, 
                EX3G,   1, 
                PJID,   8, 
                CPUJ,   3, 
                CPNM,   3, 
                GATY,   2, 
                BOL0,   1, 
                BOL1,   1, 
                    ,   2, 
                BCC0,   1, 
                BCC1,   1, 
                Offset (0x8BF), 
                BPU0,   1, 
                BPU1,   1, 
                    ,   2, 
                BOS0,   1, 
                BOS1,   1, 
                Offset (0x8C0), 
                BTY0,   1, 
                BAM0,   1, 
                BAL0,   1, 
                    ,   1, 
                BMF0,   3, 
                Offset (0x8C1), 
                BST0,   8, 
                BRC0,   16, 
                BSN0,   16, 
                BPV0,   16, 
                BDV0,   16, 
                BDC0,   16, 
                BFC0,   16, 
                GAU0,   8, 
                CYC0,   8, 
                BPC0,   16, 
                BAC0,   16, 
                BTW0,   8, 
                BVL0,   8, 
                BTM0,   8, 
                BAT0,   8, 
                BCG0,   16, 
                BCT0,   8, 
                BCI0,   8, 
                BCM0,   8, 
                BOT0,   8, 
                BSSB,   16, 
                BOV0,   8, 
                BCF0,   8, 
                BAD0,   8, 
                BCV1,   16, 
                BCV2,   16, 
                BCV3,   16, 
                BCV4,   16, 
                Offset (0x8ED), 
                BFCB,   16, 
                Offset (0x8F1), 
                    ,   6, 
                ORRF,   1, 
                Offset (0x8F4), 
                BMD0,   16, 
                BACV,   16, 
                BDN0,   8, 
                BTPB,   16, 
                Offset (0x8FC)
            }

            OperationRegion (ECMP, SystemMemory, 0xFF000000, 0x1000)
            Field (ECMP, AnyAcc, Lock, Preserve)
            {
                Offset (0x800), 
                REC1,   8, 
                REC2,   8, 
                WEC1,   8, 
                WEC2,   8, 
                WMIM,   8, 
                ACKM,   1, 
                Offset (0x806), 
                STMS,   2, 
                MBMS,   2, 
                ACLS,   1, 
                MBSS,   1, 
                CSHE,   1, 
                ACSP,   1, 
                PSAC,   1, 
                PSBC,   1, 
                PSED,   1, 
                Offset (0x808), 
                PSPD,   8, 
                BCPD,   8, 
                BSTH,   8, 
                PRDT,   8, 
                PSSE,   8, 
                CPTP,   8, 
                SAID,   8, 
                FANE,   1, 
                CPUO,   1, 
                M4GO,   1, 
                FNSW,   1, 
                SBTC,   1, 
                    ,   2, 
                OHP0,   1, 
                IBCL,   8, 
                FRPM,   8, 
                FNMX,   8, 
                FNMN,   8, 
                FWPM,   8, 
                RSTV,   8, 
                CPTV,   8, 
                GPTV,   8, 
                PHTV,   8, 
                FNTV,   8, 
                BTTV,   8, 
                HDTV,   8, 
                    ,   6, 
                FNHK,   1, 
                Offset (0x81D), 
                Offset (0x821), 
                BTNO,   8, 
                Offset (0x82D), 
                BCTL,   128, 
                Offset (0x84D), 
                PENS,   120, 
                WACL,   1, 
                AADT,   1, 
                Offset (0x85D), 
                ENSI,   8, 
                ENSB,   8, 
                ENSD,   8, 
                SMBP,   8, 
                SMBS,   5, 
                    ,   1, 
                SMAL,   1, 
                SMDN,   1, 
                SMAR,   8, 
                SMCD,   8, 
                SMDA,   256, 
                SMBC,   8, 
                SALA,   8, 
                SAD0,   8, 
                SAD1,   8, 
                BDCM,   64, 
                Offset (0x8AE), 
                CPTR,   8, 
                Offset (0x8B4), 
                GPTP,   8, 
                PHTP,   8, 
                Offset (0x8C1), 
                GBIS,   2, 
                Offset (0x8D7), 
                BTTP,   8, 
                Offset (0x8F2), 
                    ,   5, 
                SBIS,   1, 
                Offset (0xAC3), 
                    ,   3, 
                GBTC,   1, 
                Offset (0xBB0), 
                Offset (0xBBC), 
                CPUT,   8, 
                Offset (0xBC0), 
                Offset (0xBC2), 
                PRTM,   16, 
                Offset (0xBC5)
            }

            OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
            Field (ERAM, ByteAcc, Lock, Preserve)
            {
                Offset (0x5A), 
                Offset (0x5B), 
                Offset (0x5C), 
                Offset (0x5D), 
                ENIB,   16, 
                ENDD,   8, 
                SMPR,   8, 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SMD0,   256, 
                BCNT,   8, 
                SMAA,   24, 
                Offset (0x89)
            }

            OperationRegion (ECPR, EmbeddedControl, Zero, 0xFF)
            Field (ECPR, ByteAcc, Lock, Preserve)
            {
                Offset (0x06), 
                    ,   4, 
                GSPN,   1, 
                Offset (0x0E), 
                SADP,   8, 
                Offset (0x10), 
                SAD2,   8, 
                Offset (0x1C), 
                CPBC,   8, 
                Offset (0x2D), 
                Offset (0x45), 
                BFCC,   16, 
                BTPP,   16, 
                Offset (0x64), 
                SMDR,   8, 
                Offset (0x88), 
                BTDC,   64, 
                BMNN,   72, 
                BDVN,   56, 
                Offset (0xEB), 
                MUAC,   16, 
                ATTE,   16, 
                MXER,   8, 
                Offset (0xF1), 
                    ,   6, 
                OSRF,   1, 
                Offset (0xF9), 
                RTTE,   16, 
                ATTF,   16
            }

            OperationRegion (CCLK, SystemIO, 0x1810, 0x04)
            Field (CCLK, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                DUTY,   3, 
                THEN,   1, 
                Offset (0x01), 
                FTT,    1, 
                    ,   8, 
                TSTS,   1
            }

            OperationRegion (ECRM, EmbeddedControl, Zero, 0xFF)
            Field (ECRM, ByteAcc, Lock, Preserve)
            {
                Offset (0x5D), 
                ERIB,   16, 
                ERBD,   8, 
                Offset (0xAA), 
                Offset (0xAB), 
                Offset (0xAD), 
                    ,   4, 
                Offset (0xAE), 
                PTVL,   4, 
                Offset (0xB0), 
                Offset (0xB1), 
                Offset (0xB2), 
                Offset (0xB3), 
                Offset (0xB4), 
                Offset (0xB5), 
                Offset (0xBC), 
                Offset (0xBD)
            }

            Mutex (FAMX, 0x00)
            Method (FANG, 1, NotSerialized)
            {
                Acquire (FAMX, 0xFFFF)
                ERIB = Arg0
                Local0 = ERBD /* \_SB_.PCI0.LPC0.EC0_.ERBD */
                Release (FAMX)
                Return (Local0)
            }

            Method (FANW, 2, NotSerialized)
            {
                Acquire (FAMX, 0xFFFF)
                ERIB = Arg0
                ERBD = Arg1
                Release (FAMX)
                Return (Arg1)
            }

            Method (TUVR, 1, NotSerialized)
            {
                Return (0x04)
            }

            Method (THRO, 1, NotSerialized)
            {
                ATHR (Arg0)
            }

            Method (CLCK, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (PCLK, 0, NotSerialized)
            {
                APCL ()
            }

            Method (ATHR, 1, NotSerialized)
            {
                If (Arg0 == Zero)
                {
                    Return (0xFF)
                }
                ElseIf (Arg0 == One)
                {
                    Return (\_PR.C000._PPC) /* External reference */
                }
                ElseIf (Arg0 == 0x02)
                {
                    Return (TTHR) /* \_SB_.PCI0.LPC0.EC0_.TTHR */
                }
                Else
                {
                    Return (0xFF)
                }
            }

            Method (APCL, 0, NotSerialized)
            {
                Local0 = PTVL /* \_SB_.PCI0.LPC0.EC0_.PTVL */
                Name (MPEN, 0x04)
                \_PR.C000._PPC = Local0
                If (MPEN >= One)
                {
                    \_PR.C001._PPC = Local0
                    If (MPEN >= 0x02)
                    {
                        \_PR.C002._PPC = Local0
                        If (MPEN >= 0x03)
                        {
                            \_PR.C003._PPC = Local0
                        }
                    }
                }

                Notify (\_PR.C000, 0x80) // Performance Capability Change
                If (MPEN >= One)
                {
                    Notify (\_PR.C001, 0x80) // Performance Capability Change
                    If (MPEN >= 0x02)
                    {
                        Notify (\_PR.C002, 0x80) // Performance Capability Change
                        If (MPEN >= 0x03)
                        {
                            Notify (\_PR.C003, 0x80) // Performance Capability Change
                        }
                    }
                }
            }

            Name (CTSL, Package (0x10)
            {
                0x11, 
                0x12, 
                0x13, 
                0x14, 
                0x15, 
                0x16, 
                0x60, 
                0x61, 
                0x62, 
                0x63, 
                0x64, 
                0x20, 
                0x21, 
                0x22, 
                0x26, 
                0x17
            })
            Mutex (CFMX, 0x00)
            Method (CFUN, 4, Serialized)
            {
                Name (ESRC, 0x05)
                If (Match (CTSL, MEQ, DerefOf (Arg0 [Zero]), MTR, 
                    Zero, Zero) != Ones)
                {
                    Acquire (CFMX, 0xFFFF)
                    SMMD = Arg0
                    SFNO = Arg1
                    BFDT = Arg2
                    SMMC = 0xCE
                    Release (CFMX)
                }
                ElseIf (DerefOf (Arg0 [Zero]) == 0x10)
                {
                    If (DerefOf (Arg1 [Zero]) == One)
                    {
                        CreateByteField (Arg2, Zero, CAPV)
                        CAVR = CAPV /* \_SB_.PCI0.LPC0.EC0_.CFUN.CAPV */
                        STDT = One
                    }
                    ElseIf (DerefOf (Arg1 [Zero]) == 0x02)
                    {
                        Local0 = Buffer (0x80) {}
                        CreateByteField (Local0, Zero, BFD0)
                        BFD0 = 0x11
                        STDT = One
                        BFDT = Local0
                    }
                    ElseIf (DerefOf (Arg1 [Zero]) == 0x04)
                    {
                        Acquire (CFMX, 0xFFFF)
                        SMMD = Arg0
                        SFNO = Arg1
                        BFDT = Arg2
                        SMMC = 0xCE
                        Release (CFMX)
                    }
                    Else
                    {
                        STDT = Zero
                    }
                }
                ElseIf (DerefOf (Arg0 [Zero]) == 0x27)
                {
                    If (DerefOf (Arg1 [Zero]) == One)
                    {
                        STDT = Zero
                        BFDT = Zero
                    }
                    ElseIf (DerefOf (Arg1 [Zero]) == 0x02)
                    {
                        STDT = Zero
                        BFDT = Zero
                        BFDT = Zero
                        STDT = One
                    }
                    Else
                    {
                        STDT = Zero
                    }
                }
                ElseIf (DerefOf (Arg0 [Zero]) == 0x18)
                {
                    Acquire (CFMX, 0xFFFF)
                    If (DerefOf (Arg1 [Zero]) == 0x02)
                    {
                        SMD0 = Zero
                        SMAD = DerefOf (Arg2 [One])
                        SMCM = DerefOf (Arg2 [0x02])
                        SMPR = DerefOf (Arg2 [Zero])
                        While (~(ESRC == Zero) && ~((SMST & 0x80
                            ) == 0x80))
                        {
                            Sleep (0x14)
                            ESRC -= One
                        }

                        Local2 = SMST /* \_SB_.PCI0.LPC0.EC0_.SMST */
                        If ((Local2 & 0x80) == 0x80)
                        {
                            Local1 = Buffer (0x80) {}
                            Local1 [Zero] = Local2
                            If (Local2 == 0x80)
                            {
                                P80H = 0xC4
                                Local1 [One] = BCNT /* \_SB_.PCI0.LPC0.EC0_.BCNT */
                                Local3 = SMD0 /* \_SB_.PCI0.LPC0.EC0_.SMD0 */
                                Local1 [0x02] = DerefOf (Local3 [Zero])
                                Local1 [0x03] = DerefOf (Local3 [One])
                                Local1 [0x04] = DerefOf (Local3 [0x02])
                                Local1 [0x05] = DerefOf (Local3 [0x03])
                                Local1 [0x06] = DerefOf (Local3 [0x04])
                                Local1 [0x07] = DerefOf (Local3 [0x05])
                                Local1 [0x08] = DerefOf (Local3 [0x06])
                                Local1 [0x09] = DerefOf (Local3 [0x07])
                                Local1 [0x0A] = DerefOf (Local3 [0x08])
                                Local1 [0x0B] = DerefOf (Local3 [0x09])
                                Local1 [0x0C] = DerefOf (Local3 [0x0A])
                                Local1 [0x0D] = DerefOf (Local3 [0x0B])
                                Local1 [0x0E] = DerefOf (Local3 [0x0C])
                                Local1 [0x0F] = DerefOf (Local3 [0x0D])
                                Local1 [0x10] = DerefOf (Local3 [0x0E])
                                Local1 [0x11] = DerefOf (Local3 [0x0F])
                                Local1 [0x12] = DerefOf (Local3 [0x10])
                                Local1 [0x13] = DerefOf (Local3 [0x11])
                                Local1 [0x14] = DerefOf (Local3 [0x12])
                                Local1 [0x15] = DerefOf (Local3 [0x13])
                                Local1 [0x16] = DerefOf (Local3 [0x14])
                                Local1 [0x17] = DerefOf (Local3 [0x15])
                                Local1 [0x18] = DerefOf (Local3 [0x16])
                                Local1 [0x19] = DerefOf (Local3 [0x17])
                                Local1 [0x1A] = DerefOf (Local3 [0x18])
                                Local1 [0x1B] = DerefOf (Local3 [0x19])
                                Local1 [0x1C] = DerefOf (Local3 [0x1A])
                                Local1 [0x1D] = DerefOf (Local3 [0x1B])
                                Local1 [0x1E] = DerefOf (Local3 [0x1C])
                                Local1 [0x1F] = DerefOf (Local3 [0x1D])
                                Local1 [0x20] = DerefOf (Local3 [0x1E])
                                Local1 [0x21] = DerefOf (Local3 [0x1F])
                            }

                            BFDT = Local1
                            STDT = One
                        }
                        Else
                        {
                            P80H = 0xC5
                            STDT = Zero
                        }
                    }
                    Else
                    {
                        P80H = 0xC6
                        STDT = Zero
                    }

                    Release (CFMX)
                }
                Else
                {
                    STDT = Zero
                }
            }

            Name (OCSL, Package (0x09)
            {
                0x80, 
                0x81, 
                0x82, 
                0x83, 
                0x84, 
                0x85, 
                0x86, 
                0x92, 
                0x93
            })
            Mutex (PFMX, 0x00)
            Method (PFUN, 4, Serialized)
            {
                Acquire (PFMX, 0xFFFF)
                SMMD = Arg0
                SFNO = Arg1
                BFDT = Arg2
                SMMC = 0xCF
                Release (PFMX)
            }

            Method (CMFC, 4, Serialized)
            {
                Name (RTVL, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                If (ObjectType (Arg0) == One)
                {
                    RTVL [Zero] = 0x8000
                }
                ElseIf (DerefOf (Arg0 [Zero]) < 0xFE)
                {
                    Local1 = Buffer (0x82) {}
                    CreateWordField (Local1, Zero, RTST)
                    CreateField (Local1, 0x10, 0x0400, RTDT)
                    If (ToInteger (Arg0) <= 0x7F)
                    {
                        CFUN (Arg0, Arg1, Arg2, Arg3)
                    }
                    Else
                    {
                        PFUN (Arg0, Arg1, Arg2, Arg3)
                    }

                    RTST = STDT /* \STDT */
                    RTDT = BFDT /* \BFDT */
                    Return (Local1)
                }
                Else
                {
                    RTVL [Zero] = 0x8000
                }

                Return (RTVL) /* \_SB_.PCI0.LPC0.EC0_.CMFC.RTVL */
            }
        }

        Scope (EC0)
        {
            Method (BSHK, 0, NotSerialized)
            {
                If (ECOK ())
                {
                    Local1 = One
                    If (OSYS == 0x07D1)
                    {
                        Local1 = Zero
                    }

                    If (OSYS == 0x07D2)
                    {
                        Local1 = Zero
                    }

                    If (OSYS == 0x07D6)
                    {
                        Local1 = One
                    }

                    If (OSYS == 0x03E8)
                    {
                        Local1 = 0x02
                    }

                    If (OSYS == 0x07D9)
                    {
                        Local1 = 0x03
                    }

                    If (OSYS == 0x07DC)
                    {
                        Local1 = 0x04
                    }

                    If (OSYS == 0x07DD)
                    {
                        Local1 = 0x05
                    }

                    If (OSYS == 0x07DF)
                    {
                        Local1 = 0x06
                    }

                    Sleep (0x14)
                    OSTY = Local1
                    Sleep (0x14)
                }
            }
        }

        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (BMDL, Zero)
            Name (BASC, One)
            Name (BFFW, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ^^EC0.BSHK ()
                If (ECOK ())
                {
                    If (^^EC0.BOL0)
                    {
                        Sleep (Zero)
                        Return (0x1F)
                    }
                    Else
                    {
                        Sleep (Zero)
                        Return (0x0F)
                    }
                }
                Else
                {
                    Sleep (Zero)
                    Return (0x1F)
                }
            }

            Method (XBIF, 0, NotSerialized)
            {
                Return (BIFX (Zero))
            }

            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                Return (BIFX (One))
            }

            Method (BIFX, 1, NotSerialized)
            {
                Name (STAX, Package (0x14)
                {
                    Zero, 
                    One, 
                    0x1770, 
                    0x1770, 
                    One, 
                    0x2A30, 
                    0x0258, 
                    0xB4, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x0108, 
                    0x0EC4, 
                    "PABAS0241231", 
                    "41167", 
                    "LION", 
                    "Hewlett-Packard"
                })
                Name (STAF, Package (0x0D)
                {
                    One, 
                    0x1770, 
                    0x1770, 
                    One, 
                    0x2A30, 
                    0x0258, 
                    0xB4, 
                    0x0108, 
                    0x0EC4, 
                    "PABAS0241231", 
                    "41167", 
                    "LION", 
                    "Hewlett-Packard"
                })
                If (ECOK ())
                {
                    If (^^EC0.BAM0 == Zero)
                    {
                        BASC = 0x0A
                    }

                    STAX [One] = ^^EC0.BAM0 /* \_SB_.PCI0.LPC0.EC0_.BAM0 */
                    Local0 = ^^EC0.BDN0 /* \_SB_.PCI0.LPC0.EC0_.BDN0 */
                    BMDL = Local0
                    STAX [0x02] = (^^EC0.BDC0 * BASC)
                    Sleep (Zero)
                    STAX [0x05] = ^^EC0.BDV0 /* \_SB_.PCI0.LPC0.EC0_.BDV0 */
                    Sleep (Zero)
                    If (BFFW == One)
                    {
                        Local2 = ^^EC0.BFCB /* \_SB_.PCI0.LPC0.EC0_.BFCB */
                    }
                    Else
                    {
                        Local2 = ^^EC0.BFC0 /* \_SB_.PCI0.LPC0.EC0_.BFC0 */
                    }

                    Local2 = (Local2 * BASC)
                    Sleep (Zero)
                    STAX [0x03] = Local2
                    Divide (Local2, 0x64, Local0, Local1)
                    Local1 *= 0x05
                    STAX [0x06] = Local1
                    Divide (Local2, 0x64, Local0, Local1)
                    Local1 *= 0x03
                    STAX [0x07] = Local1
                    STAF [Zero] = DerefOf (STAX [One])
                    STAF [One] = DerefOf (STAX [0x02])
                    STAF [0x02] = DerefOf (STAX [0x03])
                    STAF [0x03] = DerefOf (STAX [0x04])
                    STAF [0x04] = DerefOf (STAX [0x05])
                    STAF [0x05] = DerefOf (STAX [0x06])
                    STAF [0x06] = DerefOf (STAX [0x07])
                    STAF [0x07] = DerefOf (STAX [0x0E])
                    STAF [0x08] = DerefOf (STAX [0x0F])
                    STAF [0x09] = DerefOf (STAX [0x10])
                    STAF [0x0A] = DerefOf (STAX [0x11])
                    STAF [0x0B] = DerefOf (STAX [0x12])
                    STAF [0x0C] = DerefOf (STAX [0x13])
                    If (Arg0 == One)
                    {
                        Return (STAX) /* \_SB_.PCI0.LPC0.BAT1.BIFX.STAX */
                    }
                    Else
                    {
                        Return (STAF) /* \_SB_.PCI0.LPC0.BAT1.BIFX.STAF */
                    }
                }
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Name (PBST, Package (0x04)
                {
                    Zero, 
                    Ones, 
                    Ones, 
                    0x1770
                })
                If (ECOK ())
                {
                    PBST [Zero] = ^^EC0.BST0 /* \_SB_.PCI0.LPC0.EC0_.BST0 */
                    Sleep (Zero)
                    If (^^EC0.BAC0 >> 0x0F)
                    {
                        Local4 = ((~^^EC0.BAC0 & 0xFFFF) + One)
                    }
                    Else
                    {
                        Local4 = ^^EC0.BAC0 /* \_SB_.PCI0.LPC0.EC0_.BAC0 */
                    }

                    If (^^EC0.BAM0 == Zero)
                    {
                        Local4 = ((Local4 * ^^EC0.BPV0) / 0x03E8)
                    }

                    PBST [One] = Local4
                    Sleep (Zero)
                    PBST [0x02] = (^^EC0.BRC0 * BASC)
                    Sleep (Zero)
                    PBST [0x03] = ^^EC0.BPV0 /* \_SB_.PCI0.LPC0.EC0_.BPV0 */
                    Sleep (Zero)
                    If (^^EC0.BDN0 != BMDL)
                    {
                        Notify (BAT1, 0x81) // Information Change
                    }
                }

                Return (PBST) /* \_SB_.PCI0.LPC0.BAT1._BST.PBST */
            }
        }

        Device (ACAD)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (XX00, Buffer (0x03) {})
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Local0 = ^^EC0.ADPT /* \_SB_.PCI0.LPC0.EC0_.ADPT */
                CreateWordField (XX00, Zero, SSZE)
                CreateByteField (XX00, 0x02, ACST)
                SSZE = 0x03
                If (Local0)
                {
                    P80H = 0xB0B0
                    AFN4 (One)
                    ACDE = 0xA1
                    ACST = Zero
                }
                Else
                {
                    P80H = 0xDC
                    AFN4 (0x02)
                    ACDE = 0xA2
                    ACST = One
                }

                ALIB (One, XX00)
                ACDE = 0xB0
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Scope (RTC)
        {
            OperationRegion (RCM0, SystemCMOS, Zero, 0x10)
            Field (RCM0, ByteAcc, NoLock, Preserve)
            {
                AccessAs (ByteAcc, 0x00), 
                RTCS,   8, 
                Offset (0x02), 
                RTCM,   8, 
                Offset (0x04), 
                RTCH,   8, 
                Offset (0x06), 
                RTCW,   8, 
                RTCD,   8
            }
        }
    }

    Scope (_SB.PCI0.LPC0.EC0)
    {
        OperationRegion (DBG1, SystemIO, 0xB0, 0x02)
        Field (DBG1, WordAcc, NoLock, Preserve)
        {
            PB0,    8, 
            PB1,    8
        }

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x11
            Notify (^^^VGA.LCD, 0x87) // Device-Specific
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x12
            Notify (^^^VGA.LCD, 0x86) // Device-Specific
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x13
            If (ECON)
            {
                THSD = One
                Notify (\_TZ.TSZ0, 0x80) // Thermal Status Change
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x14
            If (ECON)
            {
                If (!FANE)
                {
                    FFAL = One
                }

                Notify (\_TZ.TSZ2, 0x80) // Thermal Status Change
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x15
            If (IGDS)
            {
                Notify (LID, 0x80) // Status Change
            }
        }

        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x1D
            Local0 = PCVL /* \_SB_.PCI0.LPC0.EC0_.PCVL */
            \_PR.C000.PPCV = Local0
            Notify (\_PR.C000, 0x80) // Performance Capability Change
        }

        Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x25
            Debug = "=====QUERY_25====="
            Sleep (0x03E8)
            Notify (BAT1, 0x81) // Information Change
            Sleep (0x03E8)
            Notify (BAT1, 0x80) // Status Change
        }

        Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x26
            Local0 = (CPBC & 0x80)
            If (Local0 == 0x80)
            {
                PB1 = 0x48
                PB0 = 0xC7
            }
            Else
            {
                PB1 = 0x49
                PB0 = 0xC7
            }
        }

        Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x37
            Debug = "=====QUERY_37====="
            Notify (ACAD, 0x80) // Status Change
            Sleep (0x03E8)
            Notify (BAT1, 0x80) // Status Change
            ^^^^WMID.WEI1 = 0x03
            ^^^^WMID.WED1 = Zero
            Notify (WMID, 0x80) // Status Change
            PWRS = One
        }

        Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x38
            Debug = "=====QUERY_38====="
            Notify (ACAD, 0x80) // Status Change
            Sleep (0x03E8)
            Notify (BAT1, 0x80) // Status Change
            PWRS = Zero
        }

        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x40
            If (((OSYS == 0x07DC) || (OSYS == 0x07DD)) || (OSYS == 0x07DF))
            {
                Notify (WLBU, 0x80) // Status Change
            }
            Else
            {
            }
        }

        Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x42
            ^^^^WMID.ESDT ()
        }

        Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x44
            If (ECON)
            {
                THSD = One
                \_TZ.TSZ2.BOTP = One
                Notify (\_TZ.TSZ2, 0x80) // Thermal Status Change
            }
        }

        Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
        {
            P80H = 0x45
            Debug = "=====QUERY_45====="
            If (ECON)
            {
                PDPN = One
                Notify (\_TZ.TSZ2, 0x80) // Thermal Status Change
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (SPTS)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "SYNA7501")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (STSC == One)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Debug = "Method _DSM begin"
                If (Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
                {
                    If (Arg2 == Zero)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             /* . */
                            })
                        }
                    }

                    If (Arg2 == One)
                    {
                        Debug = "Method _DSM Function HID"
                        Return (0x20)
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000D
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.SPTS._CRS.RBUF */
            }
        }
    }
}

