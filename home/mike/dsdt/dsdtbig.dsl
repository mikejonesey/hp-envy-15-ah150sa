/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.aml, Wed Apr 20 09:13:17 2016
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
DefinitionBlock ("", "DSDT", 0x01, "HPQOEM", "SLIC-MPC", 0x00040000)
{
    External (_PR_.C000._PPC, MethodObj)    // 0 Arguments
    External (_PR_.C000.PPCV, IntObj)
    External (_PR_.C001._PPC, MethodObj)    // 0 Arguments
    External (_PR_.C002._PPC, MethodObj)    // 0 Arguments
    External (_PR_.C003._PPC, MethodObj)    // 0 Arguments
    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (_SB_.APTS, MethodObj)    // 1 Arguments
    External (_SB_.AWAK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.VGA_.AFN7, MethodObj)    // 1 Arguments
    External (_SB_.WMID, UnknownObj)
    External (_SB_.WMID.ESDT, MethodObj)    // 0 Arguments
    External (_SB_.WMID.WED1, IntObj)
    External (_SB_.WMID.WEI1, IntObj)
    External (AFN4, MethodObj)    // 1 Arguments
    External (AFN7, MethodObj)    // 1 Arguments
    External (DEB2, IntObj)
    External (WLVD, UnknownObj)

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
	Store (Arg0, CMSI)
	Store (Arg1, CMSD)
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
        If ((DAS3 == Zero))
        {
            If ((Arg1 <= 0x03))
            {
                PRWP [One] = Zero
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Method (SPTS, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            BLNK = One
        }

        If (((Arg0 == 0x04) || (Arg0 == 0x05)))
        {
            BLNK = Zero
        }

        If ((Arg0 == 0x03))
        {
            FPTS ()
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        //PEWS = PEWS /* \PEWS */
	Store(PEWS, PEWS)
    }

    Method (SWAK, 1, NotSerialized)
    {
        BLNK = 0x03
        If ((Arg0 == 0x03))
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

    //Mike edit
    //Method (SCMP, 2, NotSerialized)
    Method (SCMP, 2, Serialized)
    {
        Name (STG1, Buffer (0x50) {})
        Name (STG2, Buffer (0x50) {})
        STG1 = Arg0
        STG2 = Arg1
        If ((SizeOf (Arg0) != SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = Zero
        While ((Local0 < SizeOf (Arg0)))
        {
            If ((DerefOf (STG1 [Local0]) != DerefOf (STG2 [Local0]
                )))
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
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0) {})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0) {})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
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
		    Store("Debug: Win06", Debug)
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
		    Store("Debug: Win09", Debug)
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
		    Store("Debug: Win12", Debug)
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
		    Store("Debug: Win13", Debug)
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                    OSYS = 0x07DD
                }

                If (_OSI ("Windows 2015"))
                {
		    Store("Debug: Win15", Debug)
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                    OSYS = 0x07DF
                }

                If (_OSI ("Linux"))
                {
		    Store("Debug: Linux", Debug)
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
        If ((BUFN > 0x0FFF))
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
        If ((Local0 < 0x0A))
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
                If ((\_SB.PCI0.LPC0.EC0.CPUT > CMST))
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
                If ((Local1 || BOTP))
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
    If ((DAS3 == One))
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
        If ((\_SB.PCI0.GPP1.XPDV.LANS == One))
        {
            \_SB.PCI0.LPC0.EC0.LWAK = One
        }
        Else
        {
            \_SB.PCI0.LPC0.EC0.LWAK = Zero
        }

        If ((Arg0 == One))
        {
            \_SB.S80H (0x51)
        }

        If ((Arg0 == 0x03))
        {
            \_SB.S80H (0x53)
            SLPS = One
        }

        If ((Arg0 == 0x04))
        {
            \_SB.S80H (0x54)
            SLPS = One
            RSTU = One
        }

        If ((Arg0 == 0x05))
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
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.LPC0.EC0.ECRD = One
            If ((GPIC != Zero))
            {
                \_SB.DSPI ()
                If (NAPC)
                {
                    \_SB.PCI0.NAPE ()
                }
            }
        }

        If ((Arg0 == 0x03))
        {
            \_SB.S80H (0xE3)
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            \_SB.S80H (0xE4)
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((((Arg0 == 0x03) || (Arg0 == 0x04)) || (Arg0 == 0x05)))
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
                If ((GPIC != Zero))
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
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One)) {}
                        If ((CTRL & 0x04)) {}
                        If ((CTRL & 0x10)) {}
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
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

                    If ((BAR3 != 0xFFF00000))
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

		    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
		    {
		        //Return (0x1E) // = 50, h=30
		        Return (0x26) // = ?, h=20
		    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (BCLB) /* \_SB_.PCI0.VGA_.LCD_.BCLB */
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        BRTL = Arg0
                        Divide (Arg0, 0x0A, Local0, Local1)
                        If ((IDPC == 0x0614))
                        {
                            Local2 = DerefOf (UBBL [Zero])
                        }
                        ElseIf ((IDPC == 0x4C51))
                        {
                            Local2 = DerefOf (UBBL [One])
                        }
                        ElseIf ((IDPC == 0x46EC))
                        {
                            Local2 = DerefOf (UBBL [0x02])
                        }
                        ElseIf ((IDPC == 0x15C9))
                        {
                            Local2 = DerefOf (UBBL [0x03])
                        }
                        ElseIf ((IDPC == 0x15BE))
                        {
                            Local2 = DerefOf (UBBL [0x04])
                        }
                        ElseIf ((IDPC == 0x0465))
                        {
                            Local2 = DerefOf (UBBL [0x05])
                        }
                        ElseIf ((IDPC == 0x063B))
                        {
                            Local2 = DerefOf (UBBL [0x06])
                        }
                        ElseIf ((IDPC == 0x4E51))
                        {
                            Local2 = DerefOf (UBBL [0x07])
                        }
                        ElseIf ((IDPC == 0x45EC))
                        {
                            Local2 = DerefOf (UBBL [0x08])
                        }
                        ElseIf ((IDPC == 0x15CA))
                        {
                            Local2 = DerefOf (UBBL [0x09])
                        }
                        ElseIf ((IDPC == 0x15BF))
                        {
                            Local2 = DerefOf (UBBL [0x0A])
                        }
                        ElseIf ((IDPC == 0x0493))
                        {
                            Local2 = DerefOf (UBBL [0x0B])
                        }
                        ElseIf ((IDPC == 0x0468))
                        {
                            Local2 = DerefOf (UBBL [0x0C])
                        }
                        ElseIf ((IDPC == 0x044F))
                        {
                            Local2 = DerefOf (UBBL [0x0D])
                        }
                        ElseIf ((IDPC == 0x04B3))
                        {
                            Local2 = DerefOf (UBBL [0x0E])
                        }
                        ElseIf ((IDPC == 0x5444))
                        {
                            Local2 = DerefOf (UBBL [0x0F])
                        }
                        ElseIf ((IDPC == 0x36ED))
                        {
                            Local2 = DerefOf (UBBL [0x10])
                        }
                        ElseIf ((IDPC == 0x38ED))
                        {
                            Local2 = DerefOf (UBBL [0x11])
                        }
                        ElseIf ((IDPC == 0x0687))
                        {
                            Local2 = DerefOf (UBBL [0x12])
                        }
                        ElseIf ((IDPC == 0x0519))
                        {
                            Local2 = DerefOf (UBBL [0x13])
                        }
                        ElseIf ((IDPC == 0x3249))
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
                        If ((AF7E == 0x80000001))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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

		        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
		        {
		            //Return (0x1E) // = 50, h=30
		            Return (0x26) // = ?, h=20
		        }

                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GFX0.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            BRTL = Arg0
                            Divide (Arg0, 0x0A, Local0, Local1)
                            If ((IDPC == 0x0614))
                            {
                                Local2 = DerefOf (UBBL [Zero])
                            }
                            ElseIf ((IDPC == 0x4C51))
                            {
                                Local2 = DerefOf (UBBL [One])
                            }
                            ElseIf ((IDPC == 0x46EC))
                            {
                                Local2 = DerefOf (UBBL [0x02])
                            }
                            ElseIf ((IDPC == 0x15C9))
                            {
                                Local2 = DerefOf (UBBL [0x03])
                            }
                            ElseIf ((IDPC == 0x15BE))
                            {
                                Local2 = DerefOf (UBBL [0x04])
                            }
                            ElseIf ((IDPC == 0x0465))
                            {
                                Local2 = DerefOf (UBBL [0x05])
                            }
                            ElseIf ((IDPC == 0x063B))
                            {
                                Local2 = DerefOf (UBBL [0x06])
                            }
                            ElseIf ((IDPC == 0x4E51))
                            {
                                Local2 = DerefOf (UBBL [0x07])
                            }
                            ElseIf ((IDPC == 0x45EC))
                            {
                                Local2 = DerefOf (UBBL [0x08])
                            }
                            ElseIf ((IDPC == 0x15CA))
                            {
                                Local2 = DerefOf (UBBL [0x09])
                            }
                            ElseIf ((IDPC == 0x15BF))
                            {
                                Local2 = DerefOf (UBBL [0x0A])
                            }
                            ElseIf ((IDPC == 0x0493))
                            {
                                Local2 = DerefOf (UBBL [0x0B])
                            }
                            ElseIf ((IDPC == 0x0468))
                            {
                                Local2 = DerefOf (UBBL [0x0C])
                            }
                            ElseIf ((IDPC == 0x044F))
                            {
                                Local2 = DerefOf (UBBL [0x0D])
                            }
                            ElseIf ((IDPC == 0x04B3))
                            {
                                Local2 = DerefOf (UBBL [0x0E])
                            }
                            ElseIf ((IDPC == 0x5444))
                            {
                                Local2 = DerefOf (UBBL [0x0F])
                            }
                            ElseIf ((IDPC == 0x36ED))
                            {
                                Local2 = DerefOf (UBBL [0x10])
                            }
                            ElseIf ((IDPC == 0x38ED))
                            {
                                Local2 = DerefOf (UBBL [0x11])
                            }
                            ElseIf ((IDPC == 0x0687))
                            {
                                Local2 = DerefOf (UBBL [0x12])
                            }
                            ElseIf ((IDPC == 0x0519))
                            {
                                Local2 = DerefOf (UBBL [0x13])
                            }
                            ElseIf ((IDPC == 0x3249))
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
                            If ((^^^^VGA.AF7E == 0x80000001))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((WKPM == One))
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
                    If ((HPEN == One))
                    {
                        If ((OSTB >= 0x40))
                        {
                            Return (0x0F)
                        }

                        HPEN = Zero
                        Return (One)
                    }

                    Return (One)
                }

		//Mike edit
                //Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
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

		//Mike edit
                //Method (RHRS, 0, NotSerialized)
                Method (RHRS, 0, Serialized)
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
                        If ((HPEN == One))
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
                        If ((HPEN == One))
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

                            If ((INDX == 0xFF))
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
                        If ((TPOS >= 0x40))
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
                        If ((Arg0 == One))
                        {
                            If (!Acquire (IRCM, 0x5000))
                            {
                                Local1 = RXTX /* \_SB_.PCI0.LPC0.ECIR.RXTX */
                                Release (IRCM)
                            }

                            If (Local1)
                            {
                                Local0 |= 0x00013000
                                If ((Local1 == 0x03))
                                {
                                    Local0 |= 0x0200
                                }
                                Else
                                {
                                    Local0 |= 0x0100
                                }
                            }
                        }

                        If ((Arg0 == 0x02))
                        {
                            If ((IRTF != Zero))
                            {
                                Local0 = IRTF /* \_SB_.PCI0.LPC0.ECIR.IRTF */
                            }
                            ElseIf (!Acquire (IRCM, 0x5000))
                            {
                                Local0 = RXTX /* \_SB_.PCI0.LPC0.ECIR.RXTX */
                                Release (IRCM)
                            }
                        }

                        If ((Arg0 == 0x03))
                        {
                            If (!Acquire (IRCM, 0xFFFF))
                            {
                                If ((Arg1 == Zero))
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

                        If ((Arg0 == 0x04))
                        {
                            If ((Arg1 == Zero)) {}
                            Else
                            {
                            }
                        }

                        If (((Arg0 == Zero) || (Arg0 > 0x05)))
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
                    If (((^^LPC0.EC0.ADPT == Zero) && (^^LPC0.EC0.LIDF == One))) {}
                }

                Method (CLRI, 0, Serialized)
                {
                    Local0 = Zero
		    If (LEqual (^^LPC0.ZUOK(), One))
                    {
                        If ((^^LPC0.EC0.ADPT == Zero))
                        {
                            If ((^^LPC0.BAT1._STA () == 0x1F))
                            {
                                If ((^^LPC0.EC0.BAL0 == One))
                                {
                                    Local0 = One
                                }
                            }
                        }
                    }
                    Return (Local0)
                }

                Method (ALID, 0, NotSerialized)
                {
//                    Return (^^^LID._LID ())
                    Return (^^^LID._LID)
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
		    If (LEqual (^^LPC0.ZUOK(), One))
                    {
                        If (((Arg0 == 0x29) || (Arg0 == 0x2B)))
                        {
                            If ((Arg0 == 0x29))
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
		    If (LEqual (^^LPC0.ZUOK(), One))
                    {
                        If (((Arg0 == 0x29) || (Arg0 == 0x2B)))
                        {
                            If ((Arg0 == 0x29))
                            {
                                ACCW (0x2B, Arg1)
                            }
                            Else
                            {
				//Mike edit
                                //~Arg1
				Not(Arg1,Arg0)
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
                    If ((LEqual (^^LPC0.ZUOK(), One) && (^^LPC0.EC0.SMPR == Zero)))
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

                            If ((^^LPC0.EC0.SMST == 0x80))
                            {
                                Local2 = ^^LPC0.EC0.SMDR // \_SB_.PCI0.LPC0.EC0_.SMDR
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
                    If ((LEqual (^^LPC0.ZUOK(), One) && (^^LPC0.EC0.SMPR == Zero)))
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

                            If ((^^LPC0.EC0.SMST == 0x80))
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
                    If (((BA_5 == Ones) || (STCL != 0x0101)))
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
                        If ((((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN))
                        {
                            If (IPM2)
                            {
                                Local0 = 0x32
                                While (((BSY2 == One) && Local0))
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
                            If ((B5EN == Zero))
                            {
                                Return (Zero)
                            }

                            If ((DET0 == 0x03))
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
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY0 == One) && Local0))
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
                            If ((B5EN == Zero))
                            {
                                Return (Zero)
                            }

                            If ((DET2 == 0x03))
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
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY2 == One) && Local0))
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
                        If ((((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN))
                        {
                            If (IPM1)
                            {
                                Local0 = 0x32
                                While (((BSY1 == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (IPM3)
                            {
                                Local0 = 0x32
                                While (((BSY3 == One) && Local0))
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
                            If ((B5EN == Zero))
                            {
                                Return (Zero)
                            }

                            If ((DET1 == 0x03))
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
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY1 == One) && Local0))
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
                            If ((B5EN == Zero))
                            {
                                Return (Zero)
                            }

                            If ((DET3 == 0x03))
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
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY3 == One) && Local0))
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
                    If ((Arg0 == Zero))
                    {
                        DIS0 = ~Arg1
                    }
                    ElseIf ((Arg0 == One))
                    {
                        DIS1 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x02))
                    {
                        DIS2 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x03))
                    {
                        DIS3 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x04))
                    {
                        DIS4 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x05))
                    {
                        DIS5 = ~Arg1
                    }

                    WTEN = One
                    If ((Arg0 == Zero))
                    {
                        PTI0 = Arg1
                    }
                    ElseIf ((Arg0 == One))
                    {
                        PTI1 = Arg1
                    }
                    ElseIf ((Arg0 == 0x02))
                    {
                        PTI2 = Arg1
                    }
                    ElseIf ((Arg0 == 0x03))
                    {
                        PTI3 = Arg1
                    }
                    ElseIf ((Arg0 == 0x04))
                    {
                        PTI4 = Arg1
                    }
                    ElseIf ((Arg0 == 0x05))
                    {
                        PTI5 = Arg1
                    }

                    If ((DISP == 0x3F))
                    {
                        PTI0 = One
                    }
                    ElseIf ((DIS0 && ((DISP & 0x3E) ^ 0x3E)))
                    {
                        PTI0 = Zero
                    }

                    Local0 = PTI /* \_SB_.PCI0.SATA.PTI_ */
                    Local1 = Zero
                    While (Local0)
                    {
                        If ((Local0 & One))
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
            Store (PD64, Local1) /* \_SB_.PD64 */
            Store (0x1F, PIRE) /* \_SB_.PIRE */
            Store (0x1F, PIRF) /* \_SB_.PIRF */
            Store (0x1F, PIRG) /* \_SB_.PIRG */
            Store (0x1F, PIRH) /* \_SB_.PIRH */
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
                If ((PIRA && (PIRA != 0x1F)))
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
                If ((PIRB && (PIRB != 0x1F)))
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
                If ((PIRC && (PIRC != 0x1F)))
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
                If ((PIRD && (PIRD != 0x1F)))
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
                If ((PIRE && (PIRE != 0x1F)))
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
                If ((PIRF && (PIRF != 0x1F)))
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
                If ((PIRG && (PIRG != 0x1F)))
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
                If ((PIRH && (PIRH != 0x1F)))
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

	// http://h30434.www3.hp.com/t5/Notebook-Hardware-and-Upgrade-Questions/HP-250-G2-Unknown-Device-ACPI-HPQ6001/td-p/5056511
	// hp wireless button...
	// hp_wmi is loaded...
	// 
	// [    0.744110] ACPI Error: [WLVD] Namespace lookup failure, AE_NOT_FOUND (20160422/psargs-359)
	// [    0.744123] ACPI Error: Method parse/execution failed [\_SB.WLBU._STA] (Node ffff8803ee8b40c8), AE_NOT_FOUND (20160422/psparse-542)
	//
	// WLBU moved to Scope (\_SB)
        Device (WLBU)
        {
            Name (_HID, EisaId ("HPQ6001"))  // _HID: Hardware ID
            Name (WLDP, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WLDP == 0xFF))
                {
                    Local0 = Zero
                    OSTP ()
                    If ((((OSYS == 0x07DC) || (OSYS == 0x07DD)) || (OSYS == 0x07DF)))
                    {
                        If (((WLVD != Zero) && (WLVD != 0xFFFF)))
                        {
                            Local0 = 0x0F
                        }
                    }

                    WLDP = Local0
                }

                Return (WLDP) // \_SB_.WLBU.WLDP
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
//                Local0 = ^^PCI0.LPC0.EC0.LIDF /* \_SB_.PCI0.LPC0.EC0_.LIDF */
		Local0 = Zero
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
        Name (T_2, Zero)  // _T_x: Emitted by ASL Compiler
        Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
        Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Acquire (FDAS, 0xFFFF)
        If ((Arg1 == Zero))
        {
            While (One)
            {
                T_0 = ToInteger (Arg0)
                If ((Match (Package (0x03)
                                {
                                    0x05, 
                                    0x0F, 
                                    0x18
                                }, MEQ, T_0, MTR, Zero, Zero) != Ones))
                {
                    PG1A = One
                }
                ElseIf ((Match (Package (0x06)
                                {
                                    0x06, 
                                    0x07, 
                                    0x08, 
                                    0x0B, 
                                    0x0C, 
                                    0x12
                                }, MEQ, T_0, MTR, Zero, Zero) != Ones))
                {
                    PG2 = One
                }
                ElseIf ((Match (Package (0x0A)
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
                                }, MEQ, T_0, MTR, Zero, Zero) != Ones))
                {
                    SRDY = Zero
                }

                Break
            }

            While (One)
            {
                T_1 = ToInteger (Arg0)
                If ((T_1 == 0x05))
                {
                    I0TD = Zero
                    I0PD = One
                    Local0 = I0DS /* \I0DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = I0DS /* \I0DS */
                    }
                }
                ElseIf ((T_1 == 0x06))
                {
                    I1TD = Zero
                    I1PD = One
                    Local0 = I1DS /* \I1DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = I1DS /* \I1DS */
                    }
                }
                ElseIf ((T_1 == 0x07))
                {
                    I2TD = Zero
                    I2PD = One
                    Local0 = I2DS /* \I2DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = I2DS /* \I2DS */
                    }
                }
                ElseIf ((T_1 == 0x08))
                {
                    I3TD = Zero
                    I3PD = One
                    Local0 = I3DS /* \I3DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = I3DS /* \I3DS */
                    }
                }
                ElseIf ((T_1 == 0x0B))
                {
                    U0TD = Zero
                    U0PD = One
                    Local0 = U0DS /* \U0DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = U0DS /* \U0DS */
                    }
                }
                ElseIf ((T_1 == 0x0C))
                {
                    U1TD = Zero
                    U1PD = One
                    Local0 = U1DS /* \U1DS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = U1DS /* \U1DS */
                    }
                }
                ElseIf ((T_1 == 0x0F))
                {
                    STD0 ()
                }
                ElseIf ((T_1 == 0x17))
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
                T_2 = ToInteger (Arg0)
                If ((T_2 == 0x05))
                {
                    I0PD = Zero
                    Local0 = I0DS /* \I0DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = I0DS /* \I0DS */
                    }

                    I0TD = 0x03
                }
                ElseIf ((T_2 == 0x06))
                {
                    I1PD = Zero
                    Local0 = I1DS /* \I1DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = I1DS /* \I1DS */
                    }

                    I1TD = 0x03
                }
                ElseIf ((T_2 == 0x07))
                {
                    I2PD = Zero
                    Local0 = I2DS /* \I2DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = I2DS /* \I2DS */
                    }

                    I2TD = 0x03
                }
                ElseIf ((T_2 == 0x08))
                {
                    I3PD = Zero
                    Local0 = I3DS /* \I3DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = I3DS /* \I3DS */
                    }

                    I3TD = 0x03
                }
                ElseIf ((T_2 == 0x0B))
                {
                    U0PD = Zero
                    Local0 = U0DS /* \U0DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = U0DS /* \U0DS */
                    }

                    U0TD = 0x03
                }
                ElseIf ((T_2 == 0x0C))
                {
                    U1PD = Zero
                    Local0 = U1DS /* \U1DS */
                    While ((Local0 != Zero))
                    {
                        Local0 = U1DS /* \U1DS */
                    }

                    U1TD = 0x03
                }
                ElseIf ((T_2 == 0x0F))
                {
                    STD3 ()
                }
                ElseIf ((T_2 == 0x17))
                {
                    U3D3 ()
                }

                Break
            }

            If ((I0TD == 0x03))
            {
                If ((SATD == 0x03))
                {
                    If ((SDTD == 0x03))
                    {
                        PG1A = Zero
                    }
                }
            }

            If ((I1TD == 0x03))
            {
                If ((I2TD == 0x03))
                {
                    If ((I3TD == 0x03))
                    {
                        If ((U0TD == 0x03))
                        {
                            If ((U1TD == 0x03))
                            {
                                If ((U2TD == 0x03))
                                {
                                    PG2 = Zero
                                }
                            }
                        }
                    }
                }
            }

            If ((PG1A == Zero))
            {
                If ((PG2 == Zero))
                {
                    If ((U3PG == Zero))
                    {
                        If ((S03D == One))
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
        If ((U_PS != 0x03))
        {
            IO80 = 0x8C
            BreakPoint
        }

        If ((E_PS != 0x03))
        {
            IO80 = 0x8D
            BreakPoint
        }

        If ((XHCD == Zero))
        {
            If ((XHCE == One))
            {
                If ((U3TD != 0x03))
                {
                    IO80 = 0x82
                    FDDC (0x17, 0x03)
                }
            }
        }

        If ((EHCD == Zero))
        {
            If ((U2TD != 0x03))
            {
                FDDC (0x12, 0x03)
            }
        }

        If ((ST_D == One))
        {
            If ((SATD != Zero))
            {
                FDDC (0x0F, Zero)
            }
        }
    }

    Method (FWAK, 0, Serialized)
    {
        If ((XHCD == Zero))
        {
            If ((XHCE == One))
            {
                If ((U3TD == 0x03))
                {
                    IO80 = 0x80
                    FDDC (0x17, Zero)
                }
            }
        }

        If ((EHCD == Zero))
        {
            If ((U2TD == 0x03))
            {
                FDDC (0x12, Zero)
            }
        }

        If ((UT0E == Zero))
        {
            If ((U0TD != 0x03))
            {
                FDDC (0x0B, 0x03)
            }
        }

        If ((UT1E == Zero))
        {
            If ((U1TD != 0x03))
            {
                FDDC (0x0C, 0x03)
            }
        }

        If ((IC0E == Zero))
        {
            If ((I0TD != 0x03))
            {
                FDDC (0x05, 0x03)
            }
        }

        If ((IC1E == Zero))
        {
            If ((I1TD != 0x03))
            {
                FDDC (0x06, 0x03)
            }
        }

        If ((IC2E == Zero))
        {
            If ((I2TD != 0x03))
            {
                FDDC (0x07, 0x03)
            }
        }

        If ((IC3E == Zero))
        {
            If ((I3TD != 0x03))
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
        If ((Arg0 == 0x20))
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
        While ((Local0 != Zero))
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
        While ((Local0 != 0x07))
        {
            Local0 = SADS /* \SADS */
        }

        Stall (0x78)
        PWGC (0x10, Zero)
        SM30 = Zero
        DSDN = Zero
        ST_R ()
        If ((RFCS == One))
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
        If ((E_PS == 0x03))
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
            While ((Local0 != Zero))
            {
                Local0 = U2DS /* \U2DS */
            }

            U2TD = 0x03
            If ((U3TD == 0x03))
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
        While ((Local0 != 0x07))
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
        If ((U_PS == 0x03))
        {
            X0_S ()
            PWGC (0x20, One)
            UD3P = One
            U3PD = Zero
            Local0 = U3DS /* \U3DS */
            While ((Local0 != Zero))
            {
                Local0 = U3DS /* \U3DS */
            }

            U3TD = 0x03
            U3RP = One
            If ((U2TD == 0x03))
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
        While ((Local0 != 0x07))
        {
            Local0 = U3DS /* \U3DS */
        }

        Local0 = U3PY /* \U3PY */
        While ((Local0 != One))
        {
            Local0 = U3PY /* \U3PY */
        }

        U3PR = Zero
        Local0 = AUSS /* \AUSS */
        If ((Local0 != One))
        {
            AUSS = One
        }

        Local0 = AUSS /* \AUSS */
        While ((Local0 != One))
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
        If ((SDBA != Ones))
        {
            SD10 = SDBA /* \SDBA */
        }

        If ((EHBA != Ones))
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
        If ((TPOS >= 0x60)) {}
        Else
        {
            S03D = Zero
            XHCD = Zero
            EHCD = Zero
            ST_D = Zero
            SD_D = Zero
        }

        If ((TPOS == 0x80))
        {
            S03D = Zero
            XHCD = Zero
            EHCD = Zero
            ST_D = Zero
            SD_D = Zero
        }

        If ((UT0E == Zero))
        {
            If ((U0TD != 0x03))
            {
                FDDC (0x0B, 0x03)
            }
        }

        If ((UT1E == Zero))
        {
            If ((U1TD != 0x03))
            {
                FDDC (0x0C, 0x03)
            }
        }

        If ((IC0E == Zero))
        {
            If ((I0TD != 0x03))
            {
                FDDC (0x05, 0x03)
            }
        }

        If ((IC1E == Zero))
        {
            If ((I1TD != 0x03))
            {
                FDDC (0x06, 0x03)
            }
        }

        If ((IC2E == Zero))
        {
            If ((I2TD != 0x03))
            {
                FDDC (0x07, 0x03)
            }
        }

        If ((IC3E == Zero))
        {
            If ((I3TD != 0x03))
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
            If ((XHCD == One))
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
            If ((XHCD == One))
            {
                If ((U3TD == 0x03))
                {
                    IO80 = 0x80
                    FDDC (0x17, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((XHCD == One))
            {
                If ((U3TD != 0x03))
                {
                    If ((U_PS == 0x03))
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
            If ((EHCD == One))
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
            If ((EHCD == One))
            {
                IO80 = 0x50
                If ((U2TD != Zero))
                {
                    FDDC (0x12, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((EHCD == One))
            {
                If ((E_PS == 0x03))
                {
                    IO80 = DEB2 // External reference
                    If ((U2TD != 0x03))
                    {
                        FDDC (0x12, 0x03)
                    }
                }
            }
        }

	//Mike edit
        //Method (RHRS, 0, NotSerialized)
        Method (RHRS, 0, Serialized)
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
            If ((ST_D == One))
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
            If ((ST_D == One))
            {
                IO80 = 0xA0
                If ((SATD != Zero))
                {
                    FDDC (0x0F, Zero)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((ST_D == One))
            {
                If ((SATD != 0x03))
                {
                    If ((S_PS == 0x03))
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
            //Mike edit
            //Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
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
                If ((TPOS >= 0x60))
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
                If ((TPOS >= 0x60))
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
                If ((TPOS >= 0x60))
                {
                    If ((UT0E == One))
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
                If ((UT0D && UT0E))
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
                If ((UT0D && UT0E))
                {
                    IO80 = 0xD0
                    If ((U0TD == 0x03))
                    {
                        FDDC (0x0B, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT0D && UT0E))
                {
                    IO80 = 0xD2
                    If ((U0TD != 0x03))
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
                If ((TPOS >= 0x60))
                {
                    If ((UT1E == One))
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
                If ((UT1D && UT1E))
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
                If ((UT1D && UT1E))
                {
                    IO80 = 0xD8
                    If ((U1TD == 0x03))
                    {
                        FDDC (0x0C, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT1D && UT1E))
                {
                    IO80 = 0xDA
                    If ((U1TD != 0x03))
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
                If ((TPOS >= 0x60))
                {
                    If ((IC0E == One))
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
                If ((IC0D && IC0E))
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
                If ((IC0D && IC0E))
                {
                    IO80 = 0xE0
                    If ((I0TD == 0x03))
                    {
                        FDDC (0x05, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC0D && IC0E))
                {
                    IO80 = 0xE2
                    If ((I0TD != 0x03))
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
                If ((TPOS >= 0x60))
                {
                    If ((IC1E == One))
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
                If ((IC1D && IC1E))
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
                If ((IC1D && IC1E))
                {
                    IO80 = 0xE4
                    If ((I1TD == 0x03))
                    {
                        FDDC (0x06, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC1D && IC1E))
                {
                    IO80 = 0xE6
                    If ((I1TD != 0x03))
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
                If ((TPOS >= 0x60))
                {
                    If ((IC2E == One))
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
                If ((IC2D && IC2E))
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
                If ((IC2D && IC2E))
                {
                    IO80 = 0xE8
                    If ((I2TD == 0x03))
                    {
                        FDDC (0x07, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC2D && IC2E))
                {
                    IO80 = 0xEA
                    If ((I2TD != 0x03))
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
                If ((TPOS >= 0x60))
                {
                    If ((IC3E == One))
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
                If ((IC3D && IC3E))
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
                If ((IC3D && IC3E))
                {
                    IO80 = 0xEA
                    If ((I3TD == 0x03))
                    {
                        FDDC (0x08, Zero)
                    }
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC3D && IC3E))
                {
                    IO80 = 0xEC
                    If ((I3TD != 0x03))
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
        Method (ECOK, 0, Serialized)
        {
            If (LEqual (^EC0.OKEC, One))
            {
		// Mike Dirty Hack1
		// ECOK is always Zero
		// All items using ECOK in dsdt now use ZUOK
		// Something in WMI blobs or hardware, still looks at ECOK
                Return (Zero)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (ZUOK, 0, Serialized)
        {
            If (LEqual (^EC0.OKEC, One))
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
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, OKEC) /* \_SB_.PCI0.LPC0.EC0_.OKEC */
                    Store (One, ECRD) /* \_SB_.PCI0.LPC0.EC0_.ECRD */
                    Store (0x04, NPST) /* \_SB_.PCI0.LPC0.EC0_.NPST */
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
//                ERIB = Arg0
                Store (Arg0, ERIB) /* \_SB_.PCI0.LPC0.EC0_.ERIB */
//                Local0 = ERBD /* \_SB_.PCI0.LPC0.EC0_.ERBD */
                Store (ERBD, Local0)
                Release (FAMX)
                Return (Local0)
            }

            Method (FANW, 2, NotSerialized)
            {
                Acquire (FAMX, 0xFFFF)
//                ERIB = Arg0
//                ERBD = Arg1
                Store (Arg0, ERIB) /* \_SB_.PCI0.LPC0.EC0_.ERIB */
                Store (Arg1, ERBD) /* \_SB_.PCI0.LPC0.EC0_.ERBD */
                Release (FAMX)
                Return (Arg1)
            }

            Method (TUVR, 0, Serialized)
            {
                Return (0x04)
            }

            Method (THRO, 1, NotSerialized)
            {
                ATHR (Arg0)
            }

            Method (CLCK, 0, Serialized)
            {
                Return (Zero)
            }

            Method (PCLK, 0, NotSerialized)
            {
                APCL ()
            }

            Method (ATHR, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (0xFF)
                }
                ElseIf ((Arg0 == One))
                {
                    Return (\_PR.C000._PPC ())
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Return (TTHR) /* \_SB_.PCI0.LPC0.EC0_.TTHR */
                }
                Else
                {
                    Return (0xFF)
                }
            }

            //Mike edit
            //Method (APCL, 0, NotSerialized)
            Method (APCL, 0, Serialized)
            {
                Local0 = PTVL /* \_SB_.PCI0.LPC0.EC0_.PTVL */
                Name (MPEN, 0x04)
                Local0 = \_PR.C000._PPC ()
                If ((MPEN >= One))
                {
                    Local0 = \_PR.C001._PPC ()
                    If ((MPEN >= 0x02))
                    {
                        Local0 = \_PR.C002._PPC ()
                        If ((MPEN >= 0x03))
                        {
                            Local0 = \_PR.C003._PPC ()
                        }
                    }
                }

                Notify (\_PR.C000, 0x80) // Performance Capability Change
                If ((MPEN >= One))
                {
                    Notify (\_PR.C001, 0x80) // Performance Capability Change
                    If ((MPEN >= 0x02))
                    {
                        Notify (\_PR.C002, 0x80) // Performance Capability Change
                        If ((MPEN >= 0x03))
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
                If ((Match (CTSL, MEQ, DerefOf (Arg0 [Zero]), MTR, 
                    Zero, Zero) != Ones))
                {
                    Acquire (CFMX, 0xFFFF)
                    SMMD = Arg0
                    SFNO = Arg1
                    BFDT = Arg2
                    SMMC = 0xCE
                    Release (CFMX)
                }
                ElseIf ((DerefOf (Arg0 [Zero]) == 0x10))
                {
                    If ((DerefOf (Arg1 [Zero]) == One))
                    {
                        CreateByteField (Arg2, Zero, CAPV)
                        CAVR = CAPV /* \_SB_.PCI0.LPC0.EC0_.CFUN.CAPV */
                        STDT = One
                    }
                    ElseIf ((DerefOf (Arg1 [Zero]) == 0x02))
                    {
                        Local0 = Buffer (0x80) {}
                        CreateByteField (Local0, Zero, BFD0)
                        BFD0 = 0x11
                        STDT = One
                        BFDT = Local0
                    }
                    ElseIf ((DerefOf (Arg1 [Zero]) == 0x04))
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
                ElseIf ((DerefOf (Arg0 [Zero]) == 0x27))
                {
                    If ((DerefOf (Arg1 [Zero]) == One))
                    {
                        STDT = Zero
                        BFDT = Zero
                    }
                    ElseIf ((DerefOf (Arg1 [Zero]) == 0x02))
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
                ElseIf ((DerefOf (Arg0 [Zero]) == 0x18))
                {
                    Acquire (CFMX, 0xFFFF)
                    If ((DerefOf (Arg1 [Zero]) == 0x02))
                    {
                        SMD0 = Zero
                        SMAD = DerefOf (Arg2 [One])
                        SMCM = DerefOf (Arg2 [0x02])
                        SMPR = DerefOf (Arg2 [Zero])
                        While ((~(ESRC == Zero) && ~((SMST & 0x80
                            ) == 0x80)))
                        {
                            Sleep (0x14)
                            ESRC -= One
                        }

                        Local2 = SMST /* \_SB_.PCI0.LPC0.EC0_.SMST */
                        If (((Local2 & 0x80) == 0x80))
                        {
                            Local1 = Buffer (0x80) {}
                            Local1 [Zero] = Local2
                            If ((Local2 == 0x80))
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
                If ((ObjectType (Arg0) == One))
                {
                    RTVL [Zero] = 0x8000
                }
                ElseIf ((DerefOf (Arg0 [Zero]) < 0xFE))
                {
                    Local1 = Buffer (0x82) {}
                    CreateWordField (Local1, Zero, RTST)
                    CreateField (Local1, 0x10, 0x0400, RTDT)
                    If ((ToInteger (Arg0) <= 0x7F))
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

        } // END Device (EC0)

        Scope (EC0)
        {
            Method (BSHK, 0, NotSerialized)
            {
		If (LEqual (ZUOK(), One))
                {
                    Local1 = One
                    If ((OSYS == 0x07D1))
                    {
                        Local1 = Zero
                    }

                    If ((OSYS == 0x07D2))
                    {
                        Local1 = Zero
                    }

                    If ((OSYS == 0x07D6))
                    {
                        Local1 = One
                    }

                    If ((OSYS == 0x03E8))
                    {
                        Local1 = 0x02
                    }

                    If ((OSYS == 0x07D9))
                    {
                        Local1 = 0x03
                    }

                    If ((OSYS == 0x07DC))
                    {
                        Local1 = 0x04
                    }

                    If ((OSYS == 0x07DD))
                    {
                        Local1 = 0x05
                    }

                    If ((OSYS == 0x07DF))
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
		If (LEqual (ZUOK(), One))
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
//                Sleep (Zero)
//                Return (0x1F)
            }

            Method (XBIF, 0, NotSerialized)
            {
                Return (BIFX (Zero))
            }

            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                Return (BIFX (One))
            }

            Method (BIFX, 1, Serialized)
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
		If (LEqual (ZUOK(), One))
                {
                    If ((^^EC0.BAM0 == Zero))
                    {
                        BASC = 0x0A
                    }

                    STAX [One] = ^^EC0.BAM0 // \_SB_.PCI0.LPC0.EC0_.BAM0 
                    Local0 = ^^EC0.BDN0 // \_SB_.PCI0.LPC0.EC0_.BDN0 
                    BMDL = Local0
                    STAX [0x02] = (^^EC0.BDC0 * BASC)
                    Sleep (Zero)
                    STAX [0x05] = ^^EC0.BDV0 // \_SB_.PCI0.LPC0.EC0_.BDV0 
                    Sleep (Zero)
                    If ((BFFW == One))
                    {
                        Local2 = ^^EC0.BFCB // \_SB_.PCI0.LPC0.EC0_.BFCB 
                    }
                    Else
                    {
                        Local2 = ^^EC0.BFC0 // \_SB_.PCI0.LPC0.EC0_.BFC0 
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
                    If ((Arg0 == One))
                    {
                        Return (STAX) // \_SB_.PCI0.LPC0.BAT1.BIFX.STAX 
                    }
                    Else
                    {
                        Return (STAF) // \_SB_.PCI0.LPC0.BAT1.BIFX.STAF 
                    }
                }
            }

            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                Name (PBST, Package (0x04)
                {
                    Zero, 
                    Ones, 
                    Ones, 
                    0x1770
                })
		If (LEqual (ZUOK(), One))
                {
                    PBST [Zero] = ^^EC0.BST0 // \_SB_.PCI0.LPC0.EC0_.BST0 
                    Sleep (Zero)
                    If ((^^EC0.BAC0 >> 0x0F))
                    {
                        Local4 = ((~^^EC0.BAC0 & 0xFFFF) + One)
                    }
                    Else
                    {
                        Local4 = ^^EC0.BAC0 // \_SB_.PCI0.LPC0.EC0_.BAC0 
                    }

                    If ((^^EC0.BAM0 == Zero))
                    {
                        Local4 = ((Local4 * ^^EC0.BPV0) / 0x03E8)
                    }

                    PBST [One] = Local4
                    Sleep (Zero)
                    PBST [0x02] = (^^EC0.BRC0 * BASC)
                    Sleep (Zero)
                    PBST [0x03] = ^^EC0.BPV0 // \_SB_.PCI0.LPC0.EC0_.BPV0 
                    Sleep (Zero)
                    If ((^^EC0.BDN0 != BMDL))
                    {
                        Notify (BAT1, 0x81) // Information Change
                    }
                }

                Return (PBST) // \_SB_.PCI0.LPC0.BAT1._BST.PBST 
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
            If ((Local0 == 0x80))
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

	// [ 2304.449089] ACPI Error: [WLBU] Namespace lookup failure, AE_NOT_FOUND (20160422/psargs-359)
	// [ 2304.449114] ACPI Error: Method parse/execution failed [\_SB.PCI0.LPC0.EC0._Q40] (Node ffff8803ee8bf758), AE_NOT_FOUND (20160422/psparse-542)
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
	    Store("Debug: _Q40", Debug)
            P80H = 0x40
            If ((((OSYS == 0x07DC) || (OSYS == 0x07DD)) || (OSYS == 0x07DF)))
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
                If ((STSC == One))
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
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
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

                    If ((Arg2 == One))
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
		// Always return something...
                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }

            //Mike edit
            //Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, ,
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


/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000462 (1122)
 *     Revision         0x01
 *     Checksum         0x5B
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
{

    //External (_SB.WLBU._STA, MethodObj)    // 0 Arguments

    Scope (_SB)
    {

        Device (TPM2)
        {
	    // [    0.000000] ACPI: TPM2 0x00000000DFBC3000 000034 (v03 HPQOEM INSYDE   00000000 HP   00040000)
	    // [    6.887291] tpm_crb MSFT0101:00: can't request region for resource [mem 0xdfb7a000-0xdfb7dfff]
	    // [    6.887296] tpm_crb: probe of MSFT0101:00 failed with error -16
	    //
	    //  need tpm2-tools not tpm-tools
	    //  
	    //
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_CID, "MSFT0101" /* TPM 2.0 Security Device */)  // _CID: Compatible ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xDFB76000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xDFB7A000,         // Address Base
                    0x00004000,         // Address Length
                    )
            })
            OperationRegion (SMIP, SystemIO, 0xB0, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TNVS, SystemMemory, 0xDFB62000, 0x23)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32, 
                CAIN,   8
            }

            OperationRegion (CONA, SystemMemory, 0xDFB61000, 0x30)
            Field (CONA, DWordAcc, NoLock, Preserve)
            {
                HRTB,   32, 
                ERRR,   32, 
                CLFG,   32, 
                STA1,   32, 
                AccessAs (QWordAcc, 0x00), 
                INTC,   64, 
                AccessAs (DWordAcc, 0x00), 
                CMSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                CMDB,   64, 
                AccessAs (DWordAcc, 0x00), 
                RPSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                RESP,   64
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOB2 = MCIN /* \_SB_.TPM2.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = ToInteger (Arg1)
                    If ((T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((T_0 == One))
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM2.HINF.TPMV */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = ToInteger (Arg1)
                    If ((T_0 == Zero))
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       /* .. */
                        })
                    }
                    ElseIf ((T_0 == One))
                    {
                        Return ("1.2")
                    }
                    ElseIf ((T_0 == 0x02))
                    {
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPIP = 0x02
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    ElseIf ((T_0 == 0x03))
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM2.PPRQ */
                        Return (TPM2) /* \_SB_.TPM2.TPM2 */
                    }
                    ElseIf ((T_0 == 0x04))
                    {
                        Return (0x02)
                    }
                    ElseIf ((T_0 == 0x05))
                    {
                        PPIP = 0x05
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM2.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM2.PPRP */
                        Return (TPM3) /* \_SB_.TPM2.TPM3 */
                    }
                    ElseIf ((T_0 == 0x06))
                    {
                        Return (0x03)
                    }
                    ElseIf ((T_0 == 0x07))
                    {
                        PPIP = 0x07
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    ElseIf ((T_0 == 0x08))
                    {
                        PPIP = 0x08
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM2.PPIN */
                        Return (FRET) /* \_SB_.TPM2.FRET */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = ToInteger (Arg1)
                    If ((T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((T_0 == One))
                    {
                        MORD = DerefOf (Arg2 [Zero])
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM2.MCIN */
                        Return (MRET) /* \_SB_.TPM2.MRET */
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (OASM, 3, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = ToInteger (Arg1)
                    If ((T_0 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf ((T_0 == One))
                    {
                        While ((STA1 == One))
                        {
                            If ((STA1 == One))
                            {
                                Sleep (0xC8)
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (OASM (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }
        }
    }
}

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000854 (2132)
 *     Revision         0x01
 *     Checksum         0xD1
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    External (_PR_.C000, DeviceObj)
    External (_PR_.C001, DeviceObj)
    External (_PR_.C002, DeviceObj)
    External (_PR_.C003, DeviceObj)

    Scope (\_PR.C000)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }
        })
        Name (XPSS, Package (0x03)
        {
            Package (0x08)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.C000.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000414, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000000, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.C001)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }
        })
        Name (XPSS, Package (0x03)
        {
            Package (0x08)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.C001.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000414, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000000, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.C002)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }
        })
        Name (XPSS, Package (0x03)
        {
            Package (0x08)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.C002.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000414, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000001, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }

    Scope (\_PR.C003)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000C0010062, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                0x00000000, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                0x00000001, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                0x00000002, 
                0x00000002
            }
        })
        Name (XPSS, Package (0x03)
        {
            Package (0x08)
            {
                0x00000708, 
                0x00001185, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000640, 
                0x00000E48, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }, 

            Package (0x08)
            {
                0x00000514, 
                0x00000A41, 
                0x00000004, 
                0x00000004, 
                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            }
        })
        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00000000, 
                0x000000FC, 
                0x00000004
            }
        })
        Name (PPCV, 0x00)
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCV) /* \_PR_.C003.PPCV */
        }

        Name (_CST, Package (0x02)  // _CST: C-States
        {
            0x01, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000414, // Address
                        0x01,               // Access Size
                        )
                }, 

                0x02, 
                0x0190, 
                0x00000000
            }
        })
        Name (_CSD, Package (0x01)  // _CSD: C-State Dependencies
        {
            Package (0x06)
            {
                0x06, 
                0x00, 
                0x00000001, 
                0x000000FE, 
                0x00000002, 
                0x00000000
            }
        })
    }
}


/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.aml, Wed Apr 20 09:13:17 2016
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

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

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
            If ((Match (Package (0x04)
                        {
                            0x04, 
                            0x06, 
                            0x09, 
                            0x0B
                        }, MEQ, Arg1, MTR, Zero, Zero) == Ones))
            {
                Local0 = 0x1E
            }

            If ((Match (Package (0x01)
                        {
                            0x02
                        }, MEQ, Arg1, MTR, Zero, Zero) == Ones))
            {
                If ((Arg0 % 0x04))
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
            While ((Local0 > M153 (M147, M146)))
            {
                Local0 -= M153 (M147, M146)
                Local1++
            }

            M150 = Local0
            Local0 = Local1
            Local0 += M146 /* \AS34.M146 */
            Local1 = Zero
            While ((Local0 > 0x0C))
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
            If (((Arg3 > 0x0C) || (Arg3 <= Zero)))
            {
                Local7 = 0x00010000
            }

            If (((Arg2 > M153 (Arg4, Arg3)) || (Arg2 <= Zero)))
            {
                Local7 = 0x00010000
            }

            If ((Arg1 >= 0x18))
            {
                Local7 = 0x00010000
            }

            If ((Arg0 >= 0x3C))
            {
                Local7 = 0x00010000
            }

            Local0 = M143 /* \AS34.M143 */
            Local1 = Arg0
            If ((Local1 < Local0))
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
                If ((Local1 == Zero))
                {
                    Local1 += 0x18
                    Local2++
                }

                Local1--
            }

            If ((Local1 < Local0))
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
                If ((Local1 <= One))
                {
                    Local1 += M153 (M147, M146)
                    Local2++
                }

                Local1--
            }

            If ((Local1 < Local0))
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
                If ((Local1 <= One))
                {
                    Local1 += 0x0C
                    Local2++
                }

                Local0++
            }

            If ((Local1 < Local0))
            {
                Local1 += 0x0C
                Local2++
            }

            While ((Local1 > Local0))
            {
                Local7 += (M153 (M147, Local0) * 0x05A0)
                Local0++
            }

            Local0 = M147 /* \AS34.M147 */
            Local1 = Arg4
            If (Local2)
            {
                Local2 = Zero
                If ((Local1 <= Zero))
                {
                    Local2 = One
                }

                Local1--
            }

            If (((Local1 != Local0) || Local2))
            {
                Local7 = 0x00010000
            }

            Return (Local7)
        }

        Method (ASCM, 2, NotSerialized)
        {
//            M135 = M049 // External reference
            //0x13
            Local6 = Zero
//            If ((M049 == M128))
//            {
//                0x6B
//                One
//                If (M156)
//                {
//                    M156 = Zero
//                    M041 ((Local6 + 0x04), Zero)
//                }
//            }

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
            If ((Arg0 == Zero))
            {
//                 = FromBCD (M034, 0x09)
//                M147
//                 = FromBCD (M034, 0x08)
//                M146
//                 = FromBCD (M034, 0x07)
//                M145
//                 = FromBCD (M034, 0x04)
//                M144
//                 = FromBCD (M034, 0x02)
//                M143
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

//                If ((M049 == M128))
//                {
//                    0x6B
//                    One
//                    If ((ENA4 && ((0xFFFF >= Local7) && (Local7 >= One))))
//                    {
//                        M041 ((Local6 + Zero), (Local7 & 0xFF))
//                        M041 ((Local6 + One), ((Local7 >> 0x08) & 0xFF))
//                        ERR4 = Zero
//                    }
//                    Else
//                    {
//                        M041 ((Local6 + Zero), Zero)
//                        M041 ((Local6 + One), Zero)
//                        ERR4 = One
//                    }
//                }

/*
                If ((M049 == M128))
                {
//                    0x6B
//                    0x02
                    M135 += (M049 * M135 (0x10, 0x0100)) // External reference
//                    0x11
//                    Local0
                    If ((ENA4 && ((0xFFFF >= Local7) && (Local7 >= One))))
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

//                    (Local0 + 0x08) = M035 // External reference
                    Local0 = M035 // External reference
                    Local5 = Zero
                    Local1 |= (Local5 & 0xFE)
                    M036 ((Local0 + 0x08), Local1)
                    M036 ((Local0 + 0x09), Local2)
                    M036 ((Local0 + 0x0A), Local3)
                    M036 ((Local0 + 0x0B), Local4)
                    If (One == (M035 & (Local0 + 0x08)))
                    {
//                        Zero
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
*/
            }

            If ((Arg0 == One))
            {
/*
                If ((M049 == M128))
                {
//                    0x6B
//                    0x02
                    M135 += (M049 * M135 (0x10, 0x0100)) // External reference
//                    0x11
                    Local0 = Zero
                    If (((M035 == (Local0 + 0x03)) && 0x41))
                    {
//                        ((M035 == (Local0 + 0x02)) && 0x53)
//                        (M035 == (Local0 + One))
//                        0x33
//                        0x02 = (M035 & (Local0 + 0x08))
//                        Local0
                        EXP4 = (Local0 >> One)
                    }
                    Else
                    {
                        EXP4 = Zero
                    }
                }
*/

/*
                If ((M049 == M128))
                {
//                    0x6B
//                    One
//                    (Local6 + 0x04) = M040 // External reference
//                    Local0
//                    EXP4 = (Local0 & One)
                }
*/
            }

            Return (M137) /* \AS34.M137 */
        }
    }
}

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018B6 (6326)
 *     Revision         0x01
 *     Checksum         0x73
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    /*
     * iASL Warning: There were 27 external control methods found during
     * disassembly, but only 0 were resolved (27 unresolved). Additional
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
//    External (_SB_.ALIB, IntObj)
    External (_SB_.LID_._LID, IntObj)
    External (_SB_.PCI0.GFX0.VGA_.AFN0, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN1, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN2, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN3, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN4, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN5, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN6, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VGA_.AFN8, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.VGA_, DeviceObj)
    External (IDPC, UnknownObj)
    External (M000, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M012, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M019, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M020, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M021, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M023, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M024, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M025, UnknownObj)
    External (M026, MethodObj)    // Warning: Unknown method, guessing 3 arguments
//    External (M049, IntObj)
    External (M084, UnknownObj)
    External (M087, UnknownObj)
    External (M090, IntObj)
    External (M091, IntObj)
    External (M093, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M094, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M095, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (M098, IntObj)
    External (M099, IntObj)
    External (M100, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M101, IntObj)
    External (M102, IntObj)
    External (M103, IntObj)
    External (M104, IntObj)
    External (M105, IntObj)
    External (M106, IntObj)
    External (M111, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M112, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M113, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M131, IntObj)
    External (M133, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M232, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M233, IntObj)
    External (M235, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Scope (_SB.PCI0.VGA)
    {
        Name (ATIB, Buffer (0x0100) {})
        Method (ATIF, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (AF00 ())
            }

            If ((Arg0 == One))
            {
                Return (AF01 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (AF02 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (AF03 (DerefOf (Arg1 [0x02]), DerefOf (Arg1 [0x04])))
            }

            If ((Arg0 == 0x04))
            {
                Return (AF04 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (AF15 ())
            }

            If ((Arg0 == 0x10))
            {
                Return (AF16 (DerefOf (Arg1 [0x02])))
            }
            Else
            {
                CreateWordField (ATIB, Zero, M157)
                CreateWordField (ATIB, 0x02, M158)
                CreateDWordField (ATIB, 0x04, M159)
                CreateDWordField (ATIB, 0x08, M160)
                M157 = Zero
                M158 = Zero
                M159 = Zero
                M160 = Zero
                Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
            }
        }

        Method (AF00, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateWordField (ATIB, 0x02, M158)
            CreateDWordField (ATIB, 0x04, M159)
            CreateDWordField (ATIB, 0x08, M160)
            M157 = 0x0C
            M158 = One
            M159 = M101 /* External reference */
            If (!CondRefOf (\_SB.LID._LID, Local1))
            {
                M102 &= 0xFFFFFFF7
            }

            M160 = M102 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF01, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateDWordField (ATIB, 0x02, M161)
            CreateDWordField (ATIB, 0x06, M162)
            CreateByteField (ATIB, 0x0A, M163)
            Local0 = (M103 & 0xFF000000)
            Local1 = (M103 & 0x03)
            If ((Local1 == 0x02))
            {
                M157 = 0x0B
                M161 = 0x03
                M162 = Local1
                M163 = Local0
            }
            Else
            {
                M157 = 0x0A
                M161 = 0x03
                M162 = M103 /* External reference */
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Name (M164, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           /* .... */
        })
        Name (M210, Zero)
        Name (M211, Zero)
        Name (M212, Zero)
        Name (M213, Zero)
        Name (M214, Zero)
        Name (M215, Zero)
        Name (SSDM, 0x0A)
        Name (SCDY, Zero)
        Method (AF02, 0, NotSerialized)
        {
            CreateBitField (M164, Zero, M165)
            CreateBitField (M164, One, M166)
            CreateBitField (M164, 0x02, M167)
            CreateBitField (M164, 0x03, M168)
            CreateBitField (M164, 0x04, M169)
            CreateBitField (M164, 0x05, M170)
            CreateBitField (M164, 0x06, M171)
            CreateBitField (M164, 0x07, M172)
            CreateBitField (M164, 0x08, M173)
            CreateWordField (ATIB, Zero, M157)
            CreateDWordField (ATIB, 0x02, M174)
            CreateByteField (ATIB, 0x06, M175)
            CreateByteField (ATIB, 0x07, M176)
            CreateByteField (ATIB, 0x08, M177)
            CreateByteField (ATIB, 0x09, M178)
            CreateByteField (ATIB, 0x0A, M179)
            CreateByteField (ATIB, 0x0B, M180)
            CreateByteField (ATIB, 0x0C, M181)
            M157 = 0x0D
            M174 = M164 /* \_SB_.PCI0.VGA_.M164 */
            If (M165)
            {
                M165 = Zero
            }

            If (M166)
            {
                M175 = M210 /* \_SB_.PCI0.VGA_.M210 */
                M210 = Zero
                M166 = Zero
            }

            If (M167)
            {
                M176 = M211 /* \_SB_.PCI0.VGA_.M211 */
                M177 = M212 /* \_SB_.PCI0.VGA_.M212 */
                M211 = Zero
                M212 = Zero
                M167 = Zero
            }

            If (M168)
            {
                M178 = M213 /* \_SB_.PCI0.VGA_.M213 */
                M179 = M214 /* \_SB_.PCI0.VGA_.M214 */
                M213 = Zero
                M214 = Zero
                M168 = Zero
            }

            If (M169)
            {
                M180 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M169 = Zero
            }

            If (M171)
            {
                M171 = Zero
            }

            If (M172)
            {
                M172 = Zero
            }

            If (M173)
            {
                M173 = Zero
            }

            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF03, 2, Serialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateWordField (ATIB, 0x02, M182)
            CreateWordField (ATIB, 0x04, M183)
            M182 = Arg0
            M183 = Arg1
            Name (M184, 0x06)
            Name (M185, 0x06)
            Name (M186, Buffer (0x14)
            {
                 0x00                                             /* . */
            })
            Name (M187, Zero)
//            M133 = M049 /* External reference */

//            0xBF
//            ???

//            M187
            M187 = Zero

            Local1 = Zero
//            While ((Local1 < M187))
//            {
//                M133 = M049 /* External reference */
//                (0xC0 + Local1)
//                Local2
//                M186 [Local1] = Local2
//                ???
//                Local1++
//            }

            Local1 = M182 /* \_SB_.PCI0.VGA_.AF03.M182 */
            Local1 &= 0x8B
            Local2 = M183 /* \_SB_.PCI0.VGA_.AF03.M183 */
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID /* External reference */
                Local2 &= 0xFFFFFFFE
                Local2 |= Local0
            }

            Local0 = Zero
            While ((Local0 < M187))
            {
                Local3 = DerefOf (M186 [Local0])
                If ((Local3 == Local1))
                {
                    M185 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
                Else
                {
                    Local0++
                }
            }

            Local0 = M185 /* \_SB_.PCI0.VGA_.AF03.M185 */
            While ((Local0 < M187))
            {
                Local0++
                If ((Local0 == M187))
                {
                    Local0 = Zero
                }

                Local3 = DerefOf (M186 [Local0])
                If (((Local3 & Local2) == Local3))
                {
                    M184 = Local0
                    Local0 = M187 /* \_SB_.PCI0.VGA_.AF03.M187 */
                }
            }

            If ((M184 == M187))
            {
                M182 = Zero
            }
            Else
            {
                Local0 = M184 /* \_SB_.PCI0.VGA_.AF03.M184 */
                Local3 = DerefOf (M186 [Local0])
                M182 &= 0xFFFFFFF4
                M182 |= Local3
            }

            M157 = 0x04
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF04, 0, NotSerialized)
        {
            CreateWordField (ATIB, Zero, M157)
            CreateByteField (ATIB, 0x02, M188)
            M157 = 0x03
            Local1 = Zero
            If (CondRefOf (\_SB.LID._LID, Local4))
            {
                Local0 = \_SB.LID._LID /* External reference */
                Local1 = (Local0 ^ One)
            }

            M188 = Local1
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF15, 0, NotSerialized)
        {
            ATIB = M104 /* External reference */
            Return (ATIB) /* \_SB_.PCI0.VGA_.ATIB */
        }

        Method (AF16, 1, NotSerialized)
        {
            If ((IDPC == 0x0614))
            {
                Return (ABR0) /* \_SB_.PCI0.VGA_.ABR0 */
            }
            ElseIf ((IDPC == 0x4C51))
            {
                Return (ABR1) /* \_SB_.PCI0.VGA_.ABR1 */
            }
            ElseIf ((IDPC == 0x46EC))
            {
                Return (ABR2) /* \_SB_.PCI0.VGA_.ABR2 */
            }
            ElseIf ((IDPC == 0x15C9))
            {
                Return (ABR3) /* \_SB_.PCI0.VGA_.ABR3 */
            }
            ElseIf ((IDPC == 0x15BE))
            {
                Return (ABR4) /* \_SB_.PCI0.VGA_.ABR4 */
            }
            ElseIf ((IDPC == 0x0465))
            {
                Return (ABR5) /* \_SB_.PCI0.VGA_.ABR5 */
            }
            ElseIf ((IDPC == 0x063B))
            {
                Return (ABR6) /* \_SB_.PCI0.VGA_.ABR6 */
            }
            ElseIf ((IDPC == 0x4E51))
            {
                Return (ABR7) /* \_SB_.PCI0.VGA_.ABR7 */
            }
            ElseIf ((IDPC == 0x45EC))
            {
                Return (ABR8) /* \_SB_.PCI0.VGA_.ABR8 */
            }
            ElseIf ((IDPC == 0x15CA))
            {
                Return (ABR9) /* \_SB_.PCI0.VGA_.ABR9 */
            }
            ElseIf ((IDPC == 0x15BF))
            {
                Return (ABRA) /* \_SB_.PCI0.VGA_.ABRA */
            }
            ElseIf ((IDPC == 0x0493))
            {
                Return (ABRB) /* \_SB_.PCI0.VGA_.ABRB */
            }
            ElseIf ((IDPC == 0x0468))
            {
                Return (ABRC) /* \_SB_.PCI0.VGA_.ABRC */
            }
            ElseIf ((IDPC == 0x044F))
            {
                Return (ABRD) /* \_SB_.PCI0.VGA_.ABRD */
            }
            ElseIf ((IDPC == 0x04B3))
            {
                Return (ABRE) /* \_SB_.PCI0.VGA_.ABRE */
            }
            ElseIf ((IDPC == 0x5444))
            {
                Return (ABRF) /* \_SB_.PCI0.VGA_.ABRF */
            }
            ElseIf ((IDPC == 0x36ED))
            {
                Return (ABRG) /* \_SB_.PCI0.VGA_.ABRG */
            }
            ElseIf ((IDPC == 0x38ED))
            {
                Return (ABRH) /* \_SB_.PCI0.VGA_.ABRH */
            }
            ElseIf ((IDPC == 0x0687))
            {
                Return (ABRI) /* \_SB_.PCI0.VGA_.ABRI */
            }
            ElseIf ((IDPC == 0x0519))
            {
                Return (ABRJ) /* \_SB_.PCI0.VGA_.ABRJ */
            }
            ElseIf ((IDPC == 0x3249))
            {
                Return (ABRK) /* \_SB_.PCI0.VGA_.ABRK */
            }

            Return (ABRT) /* \_SB_.PCI0.VGA_.ABRT */
        }

        Method (AFN0, 0, Serialized)
        {
            If ((M101 & One))
            {
                CreateBitField (M164, Zero, M165)
                M165 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN1, 1, Serialized)
        {
            If ((M101 & 0x02))
            {
                Local0 = Arg0
                M210 = Local0
                CreateBitField (M164, One, M166)
                M166 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN2, 2, Serialized)
        {
            If ((M101 & 0x04))
            {
                Local0 = Arg0
                M212 = Local0
                Local0 = Arg1
                M211 = Local0 &= 0x03
                CreateBitField (M164, 0x02, M167)
                M167 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN3, 2, Serialized)
        {
            If ((M101 & 0x08))
            {
                Local0 = Arg0
                M214 = Local0
                Local0 = Arg1
                M213 = Local0 &= 0x03
                CreateBitField (M164, 0x03, M168)
                M168 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN4, 1, Serialized)
        {
            If ((M101 & 0x10))
            {
                Local0 = Arg0
                Local1 = M215 /* \_SB_.PCI0.VGA_.M215 */
                M215 = Local0
                If ((Local0 == Local1)) {}
                Else
                {
                    CreateBitField (M164, 0x04, M169)
                    M169 = One
                    Notify (VGA, 0x81) // Information Change
                }
            }
        }

        Method (AFN5, 0, Serialized)
        {
            If ((M101 & 0x20))
            {
                CreateBitField (M164, 0x05, M170)
                M170 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN6, 0, Serialized)
        {
            If ((M101 & 0x40))
            {
                CreateBitField (M164, 0x06, M171)
                M171 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN7, 1, Serialized)
        {
            If ((M101 & 0x80))
            {
                CreateBitField (M164, 0x07, M172)
                M172 = One
                CreateByteField (ATIB, 0x0C, M181)
                M181 = Arg0
                Notify (VGA, 0x81) // Information Change
            }
        }

        Method (AFN8, 0, Serialized)
        {
            If ((M101 & 0x0100))
            {
                CreateBitField (M164, 0x08, M173)
                M173 = One
                Notify (VGA, 0x81) // Information Change
            }
        }

        Name (ABRT, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x33, 0x1E, 0x4C,  /* .....3.L */
            /* 0010 */  0x28, 0x66, 0x32, 0x7F, 0x3C, 0x99, 0x46, 0xB2,  /* (f2.<.F. */
            /* 0018 */  0x50, 0xCC, 0x5A, 0xE5                           /* P.Z. */
        })
        Name (ABR0, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x11,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x1C, 0x14, 0x26, 0x1E, 0x33,  /* .....&.3 */
            /* 0010 */  0x28, 0x49, 0x32, 0x66, 0x3C, 0x7F, 0x46, 0x9B,  /* (I2f<.F. */
            /* 0018 */  0x50, 0xAD, 0x5A, 0xDD                           /* P.Z. */
        })
        Name (ABR1, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3F, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x8C,  /* (?2Y<rF. */
            /* 0018 */  0x50, 0xA0, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR2, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x4F, 0x3C, 0x66, 0x46, 0x7A,  /* (:2O<fFz */
            /* 0018 */  0x50, 0x8C, 0x5A, 0xA0                           /* P.Z. */
        })
        Name (ABR3, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x87,  /* (B2Y<rF. */
            /* 0018 */  0x50, 0x9E, 0x5A, 0xC6                           /* P.Z. */
        })
        Name (ABR4, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0A,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x14, 0x14, 0x1E, 0x1E, 0x28,  /* .......( */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7F,  /* (:2Q<hF. */
            /* 0018 */  0x50, 0x8E, 0x5A, 0xB5                           /* P.Z. */
        })
        Name (ABR5, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2D,  /* .....!.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x8C,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xA3, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR6, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x11,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x1C, 0x14, 0x26, 0x1E, 0x33,  /* .....&.3 */
            /* 0010 */  0x28, 0x49, 0x32, 0x66, 0x3C, 0x7F, 0x46, 0x9B,  /* (I2f<.F. */
            /* 0018 */  0x50, 0xB7, 0x5A, 0xDD                           /* P.Z. */
        })
        Name (ABR7, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3F, 0x32, 0x59, 0x3C, 0x72, 0x46, 0x8C,  /* (?2Y<rF. */
            /* 0018 */  0x50, 0xA0, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABR8, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x38, 0x32, 0x4F, 0x3C, 0x63, 0x46, 0x7A,  /* (82O<cFz */
            /* 0018 */  0x50, 0x89, 0x5A, 0xAD                           /* P.Z. */
        })
        Name (ABR9, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x42, 0x32, 0x56, 0x3C, 0x72, 0x46, 0x8C,  /* (B2V<rF. */
            /* 0018 */  0x50, 0x9B, 0x5A, 0xC4                           /* P.Z. */
        })
        Name (ABRA, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x3A, 0x32, 0x4F, 0x3C, 0x66, 0x46, 0x7A,  /* (:2O<fFz */
            /* 0018 */  0x50, 0x8C, 0x5A, 0xAF                           /* P.Z. */
        })
        Name (ABRB, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRC, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRD, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xA8, 0x5A, 0xD1                           /* P.Z. */
        })
        Name (ABRE, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x42, 0x32, 0x5B, 0x3C, 0x75, 0x46, 0x91,  /* (B2[<uF. */
            /* 0018 */  0x50, 0xAA, 0x5A, 0xCC                           /* P.Z. */
        })
        Name (ABRF, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x30,  /* .....#.0 */
            /* 0010 */  0x28, 0x3F, 0x32, 0x5B, 0x3C, 0x72, 0x46, 0x8E,  /* (?2[<rF. */
            /* 0018 */  0x50, 0xA8, 0x5A, 0xC9                           /* P.Z. */
        })
        Name (ABRG, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7C,  /* (:2Q<hF| */
            /* 0018 */  0x50, 0x91, 0x5A, 0xB7                           /* P.Z. */
        })
        Name (ABRH, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7C,  /* (:2Q<hF| */
            /* 0018 */  0x50, 0x91, 0x5A, 0xB7                           /* P.Z. */
        })
        Name (ABRI, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x3A, 0x32, 0x51, 0x3C, 0x68, 0x46, 0x7F,  /* (:2Q<hF. */
            /* 0018 */  0x50, 0x93, 0x5A, 0xBA                           /* P.Z. */
        })
        Name (ABRJ, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0F,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x19, 0x14, 0x23, 0x1E, 0x2D,  /* .....#.- */
            /* 0010 */  0x28, 0x44, 0x32, 0x5E, 0x3C, 0x77, 0x46, 0x91,  /* (D2^<wF. */
            /* 0018 */  0x50, 0xA5, 0x5A, 0xCE                           /* P.Z. */
        })
        Name (ABRK, Buffer (0x0100)
        {
            /* 0000 */  0x6C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x32, 0x0C,  /* l....d2. */
            /* 0008 */  0xFF, 0x09, 0x0A, 0x16, 0x14, 0x21, 0x1E, 0x2B,  /* .....!.+ */
            /* 0010 */  0x28, 0x35, 0x32, 0x49, 0x3C, 0x60, 0x46, 0x75,  /* (52I<`Fu */
            /* 0018 */  0x50, 0x84, 0x5A, 0xB5                           /* P.Z. */
        })
        Name (M189, Buffer (0x0100) {})
        Name (M190, Ones)
        Name (M191, Ones)
        Method (ATPX, 2, Serialized)
        {
//            If ((Arg0 == Zero))
//            {
//                Return (PX00 ())
//            }

            If ((Arg0 == One))
            {
                Return (PX01 ())
            }

            If ((Arg0 == 0x02))
            {
                PX02 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x03))
            {
                PX03 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x04))
            {
                PX04 (DerefOf (Arg1 [0x02]))
                Return (M189) /* \_SB_.PCI0.VGA_.M189 */
            }

            If ((Arg0 == 0x08))
            {
                Return (PX08 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (PX09 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (PX11 ())
            }

            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = Zero
            M158 = Zero
            M160 = Zero
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX00, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M158)
            CreateDWordField (M189, 0x04, M160)
            M157 = 0x08
            M158 = One
            M160 = M098 /* External reference */
/*
            If (M098)
            {
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Store (M019 (M095 (M094 (M093 (0x2C, Local0), Store (M019 (M095 (M094 (
                    Local1 = (M093 (One, Zero) + 0x2C), If ((Local0 != Local5))
                                                {
                                                    M190 = Local0
                                                }, If ((Local1 != Local5))
                                                {
                                                    M191 = Local1
                                                }), Return (M189) ))))) // Return: \_SB_.PCI0.VGA_.M189
            }
*/
        }

        Method (PX01, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateDWordField (M189, 0x02, M161)
            CreateDWordField (M189, 0x06, M162)
            M157 = 0x0A
            M161 = 0x00019FFF
            M162 = M099 /* External reference */
            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX02, 1, Serialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateByteField (M189, 0x02, M192)
            M157 = 0x03
            M192 = (Arg0 & One)
            Local7 = Buffer (0x05) {}
            CreateWordField (Local7, Zero, M197)
            CreateField (Local7, 0x10, 0x03, M200)
            CreateField (Local7, 0x13, 0x05, M199)
            CreateByteField (Local7, 0x03, M198)
            CreateByteField (Local7, 0x04, M201)
            M197 = 0x05
            M198 = Zero
            M199 = M091 /* External reference */
            M200 = M090 /* External reference */
            Name (HPOK, Zero)
//            M133 = M049 /* External reference */

//            0x11

//            Local0
            Local0 = Zero

//            Local0 = M113()

            Local6 = Zero

//            M023 (Zero, M091, M090)

            If ((M192 && Local6))
            {
                M000 (0x86)
                M112 (Local0, Zero)
                M111 (Local0, One)
                Sleep (0x20)
                M112 (Local0, 0x02)
                M112 (Local0, One)
                M000 (0x87)
                HPOK = Zero
                Sleep (0x14)
                M201 = One

//                0x06 = \_SB.ALIB /* External reference */

//                Local7
//                Local6
                Local2 = Zero
                While ((Local2 < 0x0F))
                {
                    M023 (Zero, M091, M090)
                    Local4 = One
                    Local5 = 0xC8
                    While ((Local4 && Local5))
                    {
//                        0xA5 = M021 (Zero, M091, M090)
//                        Local0
//                        Local0 &= 0x7F
                        If (((Local0 >= 0x10) && (Local0 != 0x7F)))
                        {
                            Local4 = Zero
                        }
                        Else
                        {
                            Sleep (0x05)
                            Local5--
                        }
                    }

                    If (!Local4)
                    {
//                        M090 = M024 (Zero, M091)
//                        Local5
                        If (Local5)
                        {
                            M026 (Zero, M091, M090)
                            Sleep (0x05)
                            Local2++
                        }
                        Else
                        {
                            Local0 = Zero
/*
                            If ((M025 == Zero))
                            {
//                                M091
//                                M090
//                                Ones
                                Local0 = One
                            }
*/

                            If (Local0)
                            {
//                                M111 (M049, M133 (0x17, One))
//                                M111 (M049, M133 (0x18, One))
                                HPOK = One
                                Local2 = 0x10
                            }
                            Else
                            {
                                HPOK = Zero
                                Local2 = 0x10
                            }
                        }
                    }
                    Else
                    {
                        Local2 = 0x10
                    }
                }

/*
                If (!HPOK)
                {
                    M000 (0x88)
                    Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x0A), Local4 = One), 
                        Local5 = 0x05, While ((Local4 && Local5))
                                {
                                    0xA5 = M021 (Zero, M091, M090)
                                    Local0
                                    Local0 &= 0x7F
                                    If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                                    {
                                        Local4 = Zero
                                    }
                                    Else
                                    {
                                        Else
                                            {
                                                M000 (0x8A)
                                                M201 = Zero
                                                \_SB.ALIB
                                                0x06
                                                Local7
                                                M000 (0x8B)
                                                M111 (M049, M133 (0x17, Zero))
                                                M111 (M049, M133 (0x18, Zero))
                                                M112 (Local0, Zero)
                                                Sleep (0x0A)
                                                M111 (Local0, Zero)
                                                M023 (Zero, M091, M090)
                                                Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x0A), Local4 = One), 
                                                    Local5 = 0x05, While ((Local4 && Local5))
                                                            {
                                                                0xA5 = M021 (Zero, M091, M090)
                                                                Local0
                                                                Local0 &= 0x7F
                                                                If (((Local0 <= 0x04) || (Local0 == 0x1F)))
                                                                {
                                                                    Local4 = Zero
                                                                }
                                                                Else
                                                                {
                                                                    Store (M019 (M095 (M094 (M093 (Zero, Local1), Sleep (0x05), Local5--), 
                                                                        HPOK = 0x02, M000 (0x8C), If (HPOK)
                                                                                {
                                                                                    Local5 = 0x7FFFFFFF
                                                                                    Local5 |= 0x80000000
                                                                                    Store (M019 (M095 (M094 (M093 (Zero, Local0), If (((HPOK == One) && 
                                                                                        (Local0 != Local5)))
                                                                                                    {
                                                                                                        M020 (M095 (M094 (M093 (0x4C, M190), Sleep (0x0A), If ((M191 != 
                                                                                                            Local5))
                                                                                                                    {
                                                                                                                        M020 (M095 (M094 (M191 = (M093 (One, Zero) + 0x4C), Sleep (0x0A))))
                                                                                                                    })))
                                                                                                    })))
                                                                                }))
                                                                }
                                                            }))
                                            } = M019 (
                                                                                                                            M095 (M094 (M093 (Zero, Local0), Sleep (0x05), Local5--), M201 = Zero, \_SB.ALIB, 
                                                                                                                            0x06), Local7, M000 (0x89))
                                    }
                                }))
                }
*/
            }
        }

        Method (PX03, 1, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M195)
            M157 = 0x04
            M195 = (Arg0 & One)
            If (M195)
            {
//                M111 (M049, M133 (0x17, One))
            }
            Else
            {
//                M111 (M049, M133 (0x17, Zero))
            }
        }

        Method (PX04, 1, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateWordField (M189, 0x02, M196)
            M157 = 0x04
            M196 = (Arg0 & One)
            If (M196)
            {
//                M111 (M049, M133 (0x18, One))
            }
            Else
            {
//                M111 (M049, M133 (0x18, Zero))
            }
        }

        Method (PX08, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M193)
            CreateWordField (M189, 0x02, M157)
//            M133 = M049 /* External reference */
//            0x19
            Local0 = Zero
            M193 = Local0
            M157 = 0x05
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX08.M157 */
//            Local1
            Local1 = Zero
//Method local variable is not initialized ^  (Local2)
            Local2 = Zero
            While ((Local1 < Local0))
            {
//                M133 = M049 /* External reference */
//                (0x1A + Local1)
//                Local2
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX09, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M193)
            CreateWordField (M189, 0x02, M157)
//            M133 = M049 /* External reference */
//            0x7E
//            Local0
            Local0 = Zero
            M193 = Local0
            M157 = 0x03
            Local0 *= M157 /* \_SB_.PCI0.VGA_.PX09.M157 */
            Local1 = Zero
//                M189 [(0x04 + Local1)] = Local2
            Local2 = Zero
            While ((Local1 < Local0))
            {
//                M133 = M049 /* External reference */
//                (0x7F + Local1)
//                Local2
                M189 [(0x04 + Local1)] = Local2
                Local1++
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Method (PX11, 0, NotSerialized)
        {
            CreateWordField (M189, Zero, M157)
            CreateByteField (M189, 0x02, M162)
            Local2 = M162 /* \_SB_.PCI0.VGA_.PX11.M162 */
            Local0 = M131 /* External reference */
            If (Local0)
            {
//                M131 = M049 /* External reference */
//                0x10
//                Local0
//                M131 = M049 /* External reference */
//                0x11
//                Local1
//                Local1 = (M084 + ((Local0 * 0x0100) + Local1))
                Local1 = (M084 + ((Local0 * 0x0100) ))
                M012 (Local1, 0x0A, Zero, 0x08, Local2)
            }

            Return (M189) /* \_SB_.PCI0.VGA_.M189 */
        }

        Name (M207, Buffer (0xFF) {})
        Name (M208, Buffer (0x03) {})
        Name (M204, One)
        Method (ATCS, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                ATC0 ()
            }

            If ((Arg0 == One))
            {
                ATC1 ()
            }

            If ((Arg0 == 0x02))
            {
                ATC2 (Arg1)
            }

            If ((Arg0 == 0x03))
            {
                ATC3 ()
            }

            If ((Arg0 == 0x04))
            {
                ATC4 (Arg1)
            }

            If ((Arg0 == 0x06))
            {
                ATC6 (Arg1)
            }

            If ((Arg0 == 0x07))
            {
                ATC7 (Arg1)
            }

            Return (M207) /* \_SB_.PCI0.VGA_.M207 */
        }

        Method (ATC0, 0, NotSerialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateWordField (M207, 0x02, M158)
            CreateDWordField (M207, 0x04, M160)
            M157 = 0x08
            M158 = One
            M160 = 0x6F
//             = \_SB.ALIB /* External reference */
//            M207
//            M207
        }

        Method (ATC1, 0, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateDWordField (M207, 0x02, M161)
            CreateDWordField (M207, 0x06, M162)
            CreateField (M207, 0x30, One, M203)
            M157 = 0x0A
            M161 = One
//            0x15 = M100 (M162, M133 = M049 /* External reference */)
            Local0 = Zero

            If ((Local0 & 0x80))
            {
                M204 = (Local0 & One)
            }
            ElseIf ((Local0 & 0x7F))
            {
//                Local0 = M113 ()
//                M204
            }

            M203 = M204 /* \_SB_.PCI0.VGA_.M204 */
        }

        Method (ATC2, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M205)
            M157 = 0x03
            M205 = One
//            0x02 = \_SB.ALIB /* External reference */
//            Arg0
//            M207
        }

        Method (ATC3, 0, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M205)
            CreateWordField (M208, Zero, M197)
            CreateByteField (M208, 0x02, M206)
            M157 = 0x03
            M205 = One
            M197 = 0x03
            M206 = One
//            0x03 = \_SB.ALIB /* External reference */
//            M208
//            M207
        }

        Method (ATC4, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateByteField (M207, 0x02, M209)
            M157 = 0x03
            M209 = One
//            0x04 = \_SB.ALIB /* External reference */
//            Arg0
//            M207
        }

        Method (ATC6, 1, Serialized)
        {
            CreateWordField (M207, Zero, M157)
            CreateDWordField (M207, 0x02, M234)
            M157 = 0x06
            M234 = M233 /* External reference */
        }

        Method (ATC7, 1, Serialized)
        {
//            M232 (M235 (Zero, One))
        }

        Name (M202, Buffer (0xFF00)
        {
             0x00                                             /* . */
        })
        Method (XTRM, 2, Serialized)
        {
            Local0 = (Arg0 + Arg1)
            Local4 = M105 /* External reference */
            If ((Local4 > 0xFF00))
            {
                Local4 = 0xFF00
            }

            If ((Local0 <= Local4))
            {
                Local1 = (Arg1 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEMP)
                Name (RETB, Buffer (Arg1) {})
                RETB = TEMP /* \_SB_.PCI0.VGA_.XTRM.TEMP */
                Return (RETB) /* \_SB_.PCI0.VGA_.XTRM.RETB */
            }
            ElseIf ((Arg0 < Local4))
            {
                Local3 = (M105 - Arg0)
                Local1 = (Local3 * 0x08)
                Local2 = (Arg0 * 0x08)
                M202 = M106 /* External reference */
                CreateField (M202, Local2, Local1, TEM)
                Name (RETC, Buffer (Local3) {})
                RETC = TEM /* \_SB_.PCI0.VGA_.XTRM.TEM_ */
                Return (RETC) /* \_SB_.PCI0.VGA_.XTRM.RETC */
            }
            Else
            {
                Name (RETD, Buffer (One) {})
                Return (RETD) /* \_SB_.PCI0.VGA_.XTRM.RETD */
            }
        }
    }

    Method (AFN0, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN0 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN0 ()
        }
    }

    Method (AFN1, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN1 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN1 (Arg0)
        }
    }

    Method (AFN2, 2, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN2 (Arg0, Arg1)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN2 (Arg0, Arg1)
        }
    }

    Method (AFN3, 2, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN3 (Arg0, Arg1)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN3 (Arg0, Arg1)
        }
    }

    Method (AFN4, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN4 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN4 (Arg0)
        }
    }

    Method (AFN5, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN5 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN5 ()
        }
    }

    Method (AFN6, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN6 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN6 ()
        }
    }

    Method (AFN7, 1, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN7 (Arg0)
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN7 (Arg0)
        }
    }

    Method (AFN8, 0, Serialized)
    {
        If ((M087 == Zero))
        {
            \_SB.PCI0.VGA.AFN8 ()
        }

        If ((M087 == One))
        {
            \_SB.PCI0.GFX0.VGA.AFN8 ()
        }
    }
}

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000015F0 (5616)
 *     Revision         0x01
 *     Checksum         0xF1
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
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
    External (_SB_.ALIB, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M038, IntObj)
    External (M039, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (MOEM, IntObj)

    OperationRegion (CPNV, SystemMemory, 0xDFB22018, 0x0001009A)
    Field (CPNV, AnyAcc, Lock, Preserve)
    {
        M082,   32, 
        M083,   32, 
//        M084,   32, 
        M085,   8, 
        M221,   8, 
        M086,   16, 
        M229,   8, 
        M231,   16, 
//        M235,   8, 
//        M233,   32, 
            ,   1, 
            ,   2, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x19), 
//        M087,   1, 
            ,   1, 
        Offset (0x1C), 
        M088,   16, 
        M089,   16, 
//        M090,   3, 
//        M091,   5, 
        M092,   8, 
//        M093,   3, 
//        M094,   5, 
//        M095,   8, 
        M096,   8, 
        M097,   8, 
//        M098,   32, 
//        M099,   32, 
//        M100,   32, 
//        M101,   32, 
//        M102,   32, 
//        M103,   32, 
//        M104,   224, 
//        M105,   32, 
//        M106,   522240, 
        Offset (0x1005E), 
        M107,   64, 
//        M128,   32, 
        M108,   32, 
        M109,   32, 
        M110,   32, 
        M122,   32, 
//        M131,   32, 
        M132,   32, 
//        M133,   32, 
        M134,   32, 
//        M135,   32, 
        M136,   32, 
        M220,   32, 
        M226,   32
    }

    Method (M000, 1, Serialized)
    {
        Local0 = (Arg0 + 0x0C00)
        OperationRegion (VARM, SystemIO, 0x80, 0x02)
        Field (VARM, WordAcc, NoLock, Preserve)
        {
            VARR,   16
        }

        VARR = Local0
    }

    Method (M019, 4, Serialized)
    {
        Return (M017 (Arg0, Arg1, Arg2, Arg3, Zero, 0x20))
    }

    Method (M020, 5, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, Arg3, Zero, 0x20, Arg4)
    }

    Method (M021, 4, Serialized)
    {
        Local0 = (M083 + (Arg0 << 0x14))
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Local0 += 0xE0
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Local0 = VAR2 /* \M021.VAR2 */
        Return (Local0)
    }

    Method (M022, 5, Serialized)
    {
        Local0 = (M083 + (Arg0 << 0x14))
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Local0 += 0xE0
        OperationRegion (VARM, SystemMemory, Local0, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg3, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        VAR2 = Arg4
    }

    Method (M023, 3, Serialized)
    {
        M018 (Arg0, Arg1, Arg2, 0x70, 0x03, One, Zero)
        M018 (Arg0, Arg1, Arg2, 0x70, 0x13, One, One)
    }

    Method (M024, 3, Serialized)
    {
        Local0 = M019 (Arg0, Arg1, Arg2, 0x0128)
        If ((Local0 & 0x00020000))
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M026, 3, Serialized)
    {
        Local0 = M021 (Arg0, Arg1, Arg2, 0xA2)
        Local0 &= 0xFFFFFFF8
        Local1 = (Local0 >> 0x04)
        Local1 &= 0x07
        Local0 |= Local1
        Local0 |= 0x0100
        M022 (Arg0, Arg1, Arg2, 0xA2, Local0)
    }

    Method (M025, 3, Serialized)
    {
        Local0 = M019 (Arg0, Arg1, Arg2, 0x68)
        Local0 &= 0xFFFFFFDF
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Local0 |= 0x20
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        Local1 = 0x64
        Local2 = One
        While ((Local1 && Local2))
        {
            Sleep (One)
            Local3 = M019 (Arg0, Arg1, Arg2, 0x68)
            If ((Local3 & 0x08000000))
            {
                Local1--
            }
            Else
            {
                Local2 = Zero
            }
        }

        Local0 &= 0xFFFFFFDF
        M020 (Arg0, Arg1, Arg2, 0x68, Local0)
        If (!Local2)
        {
            Return (Ones)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (M009, 1, Serialized)
    {
        Local0 = (Arg0 >> 0x08)
        Local1 = (Arg0 & 0xFF)
        Local2 = Zero
        If ((Local0 == Zero))
        {
            If ((M085 >= 0x02))
            {
                Local2 = M011 ((M084 + 0x1502), (Local1 * 0x04), Zero, 
                    One)
            }
            Else
            {
                Local2 = M011 ((M084 + 0x0100), Local1, 0x07, One)
            }
        }
        ElseIf ((Local0 == One))
        {
            Local1 = M038 /* External reference */
//            Local2
            Local2 = Zero
        }
        ElseIf ((Local0 == 0x02))
        {
//            (Local1 + 0x08) = M038 /* External reference */
//            Local2
            Local2 = Zero
        }

        Return (Local2)
    }

    Method (M010, 2, Serialized)
    {
        Local0 = (Arg0 >> 0x08)
        Local1 = (Arg0 & 0xFF)
        If ((Local0 == Zero))
        {
            If ((M085 >= 0x02))
            {
                M012 ((M084 + 0x1502), (Local1 * 0x04), 0x06, 0x02, (
                    0x02 | Arg1))
            }
            Else
            {
                M012 ((M084 + 0x0100), Local1, 0x06, One, Arg1)
                M012 ((M084 + 0x0100), Local1, 0x05, One, Zero)
            }
        }
        ElseIf ((Local0 == One))
        {
            M039 (Local1, Arg1)
        }
        ElseIf ((Local0 == 0x02))
        {
            M039 ((Local1 + 0x08), Arg1)
        }
    }

    Name (M037, Buffer (0x17)
    {
        /* 0000 */  0x7E, 0x81, 0x03, 0x16, 0x04, 0x15, 0x0E, 0x05,  /* ~....... */
        /* 0008 */  0x02, 0x20, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,  /* . ...... */
        /* 0010 */  0x17, 0x19, 0x0B, 0x01, 0x0F, 0x0D, 0x09         /* ....... */
    })
    Name (M227, Buffer (0x18)
    {
        /* 0000 */  0x41, 0x42, 0x03, 0x16, 0x04, 0x15, 0x0E, 0x05,  /* AB...... */
        /* 0008 */  0x02, 0x44, 0x06, 0x07, 0x10, 0x11, 0x12, 0x18,  /* .D...... */
        /* 0010 */  0x17, 0x45, 0x0B, 0x01, 0x0F, 0x0D, 0x09, 0x08   /* .E...... */
    })
    Method (M029, 1, Serialized)
    {
        Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
        While (One)
        {
            T_0 = M085 /* \M085 */
            If ((T_0 == 0x02))
            {
                Return (M011 ((M084 + 0x1502), (DerefOf (M037 [Arg0]) * 
                    0x04), Zero, One))
            }
            ElseIf ((Match (Package (0x04)
                            {
                                0x03, 
                                0x04, 
                                0x05, 
                                0x06
                            }, MEQ, T_0, MTR, Zero, Zero) != Ones))
            {
                Return (M011 ((M084 + 0x1502), (DerefOf (M227 [Arg0]) * 
                    0x04), Zero, One))
            }
            Else
            {
                Return (M011 ((M084 + 0x0160), Arg0, 0x07, One))
            }

            Break
        }
    }

    Method (M031, 1, Serialized)
    {
        Local0 = M011 ((M084 + 0x0240), Arg0, Zero, 0x05)
        Return (M011 ((M084 + 0x0208), (Local0 / 0x08), (Local0 & 
            0x07), One))
    }

    Method (M032, 2, Serialized)
    {
        Local0 = M011 ((M084 + 0x0240), Arg0, Zero, 0x05)
        M012 ((M084 + 0x0208), (Local0 / 0x08), (Local0 & 0x07
            ), One, Arg1)
    }

    Method (M013, 4, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Local1 = VARR /* \M013.VARR */
        Local5 = 0x7FFFFFFF
        Local5 |= 0x80000000
        Local2 = ((Local1 >> Arg2) & (Local5 >> (0x20 - Arg3)
            ))
        Return (Local2)
    }

    Method (M014, 5, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Local1 = VARR /* \M014.VARR */
        Local5 = 0x7FFFFFFF
        Local5 |= 0x80000000
        Local2 = (Arg2 + Arg3)
        Local2 = (0x20 - Local2)
        Local2 = (((Local5 << Local2) & Local5) >> Local2)
        Local2 = ((Local2 >> Arg2) << Arg2)
        Local3 = (Arg4 << Arg2)
        Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
        VARR = Local4
    }

    Method (M011, 4, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, One)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Local1 = VARR /* \M011.VARR */
        Local2 = ((Local1 >> Arg2) & (0xFF >> (0x08 - Arg3)
            ))
        Return (Local2)
    }

    Method (M012, 5, Serialized)
    {
        Local0 = (Arg0 + Arg1)
        OperationRegion (VARM, SystemMemory, Local0, One)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VARR,   8
        }

        Local1 = VARR /* \M012.VARR */
        Local2 = (Arg2 + Arg3)
        Local2 = (0x08 - Local2)
        Local2 = (((0xFF << Local2) & 0xFF) >> Local2)
        Local2 = ((Local2 >> Arg2) << Arg2)
        Local3 = (Arg4 << Arg2)
        Local4 = ((Local1 & (0xFF ^ Local2)) | Local3)
        VARR = Local4
    }

    Method (M017, 6, Serialized)
    {
        Local0 = M083 /* \M083 */
        Local0 += (Arg0 << 0x14)
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        Return (M013 (Local0, Arg3, Arg4, Arg5))
    }

    Method (M018, 7, Serialized)
    {
        Local0 = M083 /* \M083 */
        Local0 += (Arg0 << 0x14)
        Local0 += (Arg1 << 0x0F)
        Local0 += (Arg2 << 0x0C)
        M014 (Local0, Arg3, Arg4, Arg5, Arg6)
    }

    Method (M033, 3, Serialized)
    {
        Local0 = Zero
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08)
        While ((Local1 != Zero))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08)
            If (((Local2 == Zero) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                Local0 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x0C), 0x0A, 0x02)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero, 0x08)
        }

        Return (Local0)
    }

    Method (M027, 3, Serialized)
    {
        Local0 = Zero
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08)
        While ((Local1 != Zero))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08)
            If (((Local2 == Zero) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                Local0 = M017 (Arg0, Arg1, Arg2, (Local1 + 0x10), Zero, 0x02)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero, 0x08)
        }

        Return (Local0)
    }

    Method (M028, 4, Serialized)
    {
        Local0 = Zero
        Local1 = M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08)
        While (((Local1 != Zero) && (Local1 < 0xFF)))
        {
            Local2 = M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08)
            If (((Local2 == Zero) || (Local2 == 0xFF)))
            {
                Break
            }

            If ((Local2 == 0x10))
            {
                M018 (Arg0, Arg1, Arg2, (Local1 + 0x10), Zero, 0x02, Arg3)
                Break
            }

            Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero, 0x08)
        }
    }

    Method (M034, 1, Serialized)
    {
        Return (M011 ((M084 + 0x0700), Arg0, Zero, 0x08))
    }

    Method (M015, 1, Serialized)
    {
        Return (M011 ((M084 + 0x0400), Arg0, Zero, 0x08))
    }

    Method (M016, 2, Serialized)
    {
        M012 ((M084 + 0x0400), Arg0, Zero, 0x08, Arg1)
    }

    Method (M035, 1, Serialized)
    {
        Return (M011 (M084, Arg0, Zero, 0x08))
    }

    Method (M036, 2, Serialized)
    {
        M012 (M084, Arg0, Zero, 0x08, Arg1)
    }

    Method (M001, 2, Serialized)
    {
        Local0 = Zero
        If ((Arg0 == 0x15))
        {
            Local0 = One
        }

        Return (Local0)
    }

    Method (M003, 3, Serialized)
    {
        Local0 = (Arg0 << 0x05)
        Local1 = (Local0 + Arg1)
        Local2 = (Local1 << 0x18)
        Local3 = (Local2 + Arg2)
        Return (Local3)
    }

    Method (M004, 1, Serialized)
    {
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        Local0 = VAR2 /* \M004.VAR2 */
        Return (Local0)
    }

    Method (M005, 2, Serialized)
    {
        Local0 = Arg0
        OperationRegion (VARM, SystemIO, 0x0CD8, 0x08)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VAR1,   32
        }

        BankField (VARM, VAR1, Arg0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            VAR2,   32
        }

        VAR2 = Arg1
    }

    Method (M006, 3, Serialized)
    {
        Local0 = (M004 (Arg0) & Arg1)
        Local1 = (Local0 | Arg2)
        M005 (Arg0, Local1)
    }

    Method (M002, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            If ((Arg1 == Zero))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFEFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFEFE, Zero)
            }

            If ((Arg1 == One))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFDFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFDFD, Zero)
            }

            If ((Arg1 == 0x02))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFBFFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFBFB, Zero)
            }

            If ((Arg1 == 0x03))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFF7FFF, Zero)
                M006 (M003 (One, Zero, 0x65), 0xFFFFF7F7, Zero)
            }

            Sleep (One)
        }

        If ((Arg0 == One))
        {
            If ((Arg1 == Zero))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFEFFF, 0x1000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFEFE, 0x0101)
            }

            If ((Arg1 == One))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFDFFF, 0x2000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFDFD, 0x0202)
            }

            If ((Arg1 == 0x02))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFFBFFF, 0x4000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFFBFB, 0x0404)
            }

            If ((Arg1 == 0x03))
            {
                M006 (M003 (0x06, Zero, 0xC0), 0xFFFF7FFF, 0x8000)
                M006 (M003 (One, Zero, 0x65), 0xFFFFF7F7, 0x0808)
            }

            Sleep (One)
        }

        If ((Arg0 == Zero))
        {
            M008 (Arg1)
            Local0 = M004 (M003 (0x03, Arg1, 0xA5))
            Local0 &= 0xFF
            Local1 = 0x01F4
            While (((Local1 > Zero) && (Local0 != 0x10)))
            {
                Local0 = M004 (M003 (0x03, Arg1, 0xA5))
                Local0 &= 0xFF
                Local1--
                Sleep (One)
            }

            If ((Local0 != 0x10))
            {
                M007 (Arg1)
            }
        }
    }

    Method (M008, 1, Serialized)
    {
        Local0 = M019 (Zero, 0x15, Arg0, 0x88)
        Local1 = ((Local0 & 0xFFFFFFF0) | 0x02)
        M020 (Zero, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, One)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        M006 (M003 (0x03, Arg0, 0xC0), 0xFFFF7FFF, 0x8000)
        M006 (M003 (0x03, Arg0, 0xA4), 0xDFFFFFFF, 0x20000000)
        Sleep (One)
    }

    Method (M007, 1, Serialized)
    {
        Local0 = M019 (Zero, 0x15, Arg0, 0x88)
        Local1 = ((Local0 & 0xFFFFFFF0) | One)
        M020 (Zero, 0x15, Arg0, 0x88, Local1)
        M006 (M003 (0x03, Arg0, 0xA4), 0xFFFFFFFE, Zero)
        M006 (M003 (0x03, Arg0, 0xA2), 0xFFFFDFFF, 0x2000)
        Sleep (One)
    }

    Method (M111, 2, Serialized)
    {
        If ((Arg0 != Zero))
        {
            Local0 = M110 /* \M110 */
            If (Local0)
            {
                Local0 += 0x10
                Local1 = Zero
                Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                While (((Local2 != 0xFF) && (Local2 != Zero)))
                {
                    Local3 = M013 ((Local0 + Local1), One, Zero, 0x08)
                    If (((Local2 == Arg0) && (Local3 == Arg1)))
                    {
                        Local4 = M013 ((Local0 + Local1), 0x02, Zero, 0x08)
                        If ((Local4 == Zero))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            M010 (Local5, Local6)
                        }

                        If ((Local4 == One))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            While ((M009 (Local5) != Local6)) {}
                        }

                        If ((Local4 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x20)
                            Sleep (((Local5 + 0x03E7) / 0x03E8))
                        }
                    }

                    Local1 += 0x08
                    Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                }
            }
        }
    }

    Method (M228, 1, Serialized)
    {
        If ((Arg0 > 0x03))
        {
            Local0 = M110 /* \M110 */
            If (Local0)
            {
                Local0 += 0x10
                Local1 = Zero
                Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                While (((Local2 != 0xFF) && (Local2 != Zero)))
                {
                    Local3 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                    If ((Local3 == Arg0))
                    {
                        Local4 = M013 ((Local0 + Local1), 0x02, Zero, 0x08)
                        If ((Local4 == Zero))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            M010 (Local5, Local6)
                        }

                        If ((Local4 == One))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                            While ((M009 (Local5) != Local6)) {}
                        }

                        If ((Local4 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x20)
                            Sleep (((Local5 + 0x03E7) / 0x03E8))
                        }
                    }

                    Local1 += 0x08
                    Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                }
            }
        }
    }

    Method (M219, 2, Serialized)
    {
        If ((Arg0 != Zero))
        {
            Local0 = M221 /* \M221 */
            If ((Local0 & 0x02))
            {
                Local0 = M220 /* \M220 */
                If (Local0)
                {
                    Local0 += 0x10
                    Local1 = Zero
                    Local2 = One
                    While ((Local2 != 0xFF))
                    {
                        Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                        Local3 = M013 ((Local0 + Local1), One, Zero, 0x08)
                        Local4 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                        Local5 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                        If ((Local4 == Arg0))
                        {
                            If (((Local2 < 0x0A) && (Local5 & 0x80)))
                            {
                                If ((Arg1 == Zero))
                                {
                                    If ((M085 >= 0x04))
                                    {
                                        M012 ((M084 + 0x0E00), Zero, (Local2 * 0x02), 0x02, Zero)
                                    }
                                    Else
                                    {
                                        M012 ((M084 + 0x0E00), (Local2 / 0x02), ((Local2 & 
                                            One) * 0x04), 0x04, Zero)
                                    }
                                }
                                ElseIf ((Local5 & 0x04))
                                {
                                    If ((Arg1 == One))
                                    {
                                        If ((M085 >= 0x04))
                                        {
                                            M012 ((M084 + 0x0E00), Zero, (Local2 * 0x02), 0x02, 0x03)
                                        }
                                        Else
                                        {
                                            M012 ((M084 + 0x0E00), (Local2 / 0x02), ((Local2 & 
                                                One) * 0x04), 0x04, 0x0F)
                                        }
                                    }

                                    If ((Arg1 == 0x02))
                                    {
                                        Local6 = M019 (Zero, M013 ((Local0 + Local1), 0x05, Zero, 0x08), 
                                            M013 ((Local0 + Local1), 0x06, Zero, 0x08), 0x68)
                                        If (((Local6 & 0x0100) && (Local6 != Ones)))
                                        {
                                            If ((M085 >= 0x04))
                                            {
                                                M012 ((M084 + 0x0E00), Zero, (Local2 * 0x02), 0x02, One)
                                            }
                                            Else
                                            {
                                                M012 ((M084 + 0x0E00), (Local2 / 0x02), ((Local2 & 
                                                    One) * 0x04), 0x04, Local3)
                                            }
                                        }
                                    }
                                }
                                ElseIf ((M085 >= 0x04))
                                {
                                    M012 ((M084 + 0x0E00), Zero, (Local2 * 0x02), 0x02, One)
                                }
                                Else
                                {
                                    M012 ((M084 + 0x0E00), (Local2 / 0x02), ((Local2 & 
                                        One) * 0x04), 0x04, Local3)
                                }

                                Local2 = 0xFF
                            }
                        }

                        Local1 += 0x0C
                    }
                }
            }
        }
    }

    Method (M112, 2, Serialized)
    {
        If ((Arg0 != Zero))
        {
            Local0 = M109 /* \M109 */
            If (Local0)
            {
                Local0 += 0x10
                Local1 = Zero
                Local2 = One
                While (((Local2 != 0xFF) && (Local2 != Zero)))
                {
                    Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                    Local3 = M013 ((Local0 + Local1), One, Zero, 0x08)
                    If (((Local2 == Arg0) && (Local3 == Arg1)))
                    {
                        If ((Local3 < 0x02))
                        {
                            Local4 = M013 ((Local0 + Local1), 0x02, Zero, 0x08)
                            If ((Local4 == Zero))
                            {
                                Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x10)
                                Local6 = M013 ((Local0 + Local1), 0x03, 0x10, 0x08)
                                M010 (Local5, Local6)
                            }
                        }

                        If ((Local3 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x03, Zero, 0x20)
                            Sleep (((Local5 + 0x03E7) / 0x03E8))
                        }
                    }

                    Local1 += 0x08
                }
            }
        }
    }

    Method (M113, 1, Serialized)
    {
        If ((Arg0 != Zero))
        {
            Local0 = M108 /* \M108 */
            Local7 = One
            If (Local0)
            {
                Local0 += 0x10
                Local1 = Zero
                Local2 = One
                While (((Local2 != 0xFF) && (Local2 != Zero)))
                {
                    Local2 = M013 ((Local0 + Local1), Zero, Zero, 0x08)
                    If ((Local2 == Arg0))
                    {
                        Local2 = 0xFF
                        Local3 = M013 ((Local0 + Local1), One, Zero, 0x08)
                        If ((Local3 == Zero))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                        }

                        If ((Local3 == One))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x02))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x08, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x0A, Zero, 0x08)
                            Local7 &= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x03))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                        }

                        If ((Local3 == 0x04))
                        {
                            Local5 = M013 ((Local0 + Local1), 0x02, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x04, Zero, 0x08)
                            Local7 = (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x05, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x07, Zero, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                            Local5 = M013 ((Local0 + Local1), 0x08, Zero, 0x10)
                            Local6 = M013 ((Local0 + Local1), 0x0A, Zero, 0x08)
                            Local7 |= (M009 (Local5) == Local6)
                        }
                    }
                    Else
                    {
                        Local1 += 0x0B
                    }
                }
            }
        }
        Else
        {
            Local7 = Zero
        }

        If (Local7)
        {
            Local7 = One
        }

        Return (Local7)
    }

    Method (M114, 3, Serialized)
    {
        Local7 = Zero
        If (!M001 (Arg0, Arg1))
        {
            Name (M115, Buffer (0x05) {})
            CreateWordField (M115, Zero, M116)
            CreateField (M115, 0x10, 0x03, M117)
            CreateField (M115, 0x13, 0x05, M118)
            CreateByteField (M115, 0x03, M119)
            CreateByteField (M115, 0x04, M120)
            M116 = 0x05
            M119 = Zero
            M118 = Arg0
            M117 = Arg1
            If ((Arg2 == Zero))
            {
                M120 = Zero
                \_SB.ALIB (0x06, M115)
            }
            Else
            {
                M120 = One
                \_SB.ALIB (0x06, M115)
                Local0 = M017 (Zero, Arg0, Arg1, 0x19, Zero, 0x08)
                If (((Local0 != Zero) && (Local0 != 0xFF)))
                {
                    Local1 = M019 (Local0, Zero, Zero, Zero)
                    Local2 = 0x7FFFFFFF
                    Local2 |= 0x80000000
                    If (((Local1 != Zero) && (Local1 != Local2)))
                    {
                        Local7 = One
                    }
                }
            }
        }
        ElseIf ((Arg2 == Zero))
        {
            M002 (One, Arg1)
        }
        Else
        {
            M002 (Zero, Arg1)
            Local0 = M017 (Zero, Arg0, Arg1, 0x19, Zero, 0x08)
            If (((Local0 != Zero) && (Local0 != 0xFF)))
            {
                Local1 = M019 (Local0, Zero, Zero, Zero)
                Local2 = 0x7FFFFFFF
                Local2 |= 0x80000000
                If (((Local1 != Zero) && (Local1 != Local2)))
                {
                    Local7 = One
                }
            }
        }

        Return (Local7)
    }

    Name (M046, Zero)
    Name (M047, Ones)
    Method (M045, 0, Serialized)
    {
        Local0 = Zero
        If ((M047 == Ones))
        {
            M047 = Zero
            M046 = Zero
            If (CondRefOf (\_OSI))
            {
                If (\_OSI ("Windows 2012"))
                {
                    M046 = One
                }

                If (\_OSI ("Windows 2013"))
                {
                    M046 = One
                }

                If (\_OSI ("Windows 2014"))
                {
                    M046 = One
                }

                If (\_OSI ("Windows 2015"))
                {
                    M046 = One
                }

                If (\_OSI ("Linux"))
                {
                    M046 = 0x02
                }
            }
        }

        If ((M046 == One))
        {
            Local0 = One
        }

        Return (Local0)
    }

    Method (M044, 0, Serialized)
    {
        M045 ()
        Local0 = Zero
        If ((M046 == 0x02))
        {
            Local0 = One
        }

        Return (Local0)
    }

    Method (M049, 2, Serialized)
    {
        Local0 = Zero
        If ((Arg0 != Zero))
        {
            Local0 = M011 (Arg0, Arg1, Zero, 0x08)
        }

        Return (Local0)
    }

    Mutex (M230, 0x00)
    Method (M232, 3, Serialized)
    {
        Local0 = Arg0
        Local1 = Arg1
        Local2 = Arg2
        Acquire (M230, 0xFFFF)
        Local0 = Arg0
        OperationRegion (VARM, SystemIO, M231, 0x02)
        Field (VARM, ByteAcc, NoLock, Preserve)
        {
            VAR1,   8, 
            VAR2,   8
        }

        VAR2 = Local1
        VAR1 = Local0
        Sleep (Local2)
        Release (M230)
    }

    Method (M043, 3, Serialized)
    {
        If (CondRefOf (MOEM))
        {
            Return (MOEM) /* External reference */
//            Arg0
//            Arg1
//            Arg2
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (MLIB, 2, Serialized)
    {
        Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
        Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
        While (One)
        {
            T_0 = Arg0
            If ((T_0 == Zero))
            {
                Local0 = DerefOf (Arg1 [0x02])
                While (One)
                {
                    T_1 = Local0
                    If ((T_1 == 0x03))
                    {
                        M228 (0x04)
                        M228 (0x05)
                    }
                    ElseIf ((T_1 == 0x04))
                    {
                        M228 (0x04)
                        M228 (0x06)
                    }
                    ElseIf ((T_1 == 0x03))
                    {
                        M228 (0x04)
                        M228 (0x07)
                    }

                    Break
                }
            }

            Break
        }
    }
}


/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000FDB (4059)
 *     Revision         0x01
 *     Checksum         0x5F
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00000001)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    /*
     * iASL Warning: There were 14 external control methods found during
     * disassembly, but only 0 were resolved (14 unresolved). Additional
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
    External (_ADR, IntObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (M000, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M013, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M014, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (M017, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M018, MethodObj)    // Warning: Unknown method, guessing 7 arguments
    External (M019, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M029, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M031, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M032, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M044, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M045, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M049, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M111, MethodObj)    // Warning: Unknown method, guessing 4 arguments
//    External (M128, UnknownObj)
    External (M134, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Scope (_SB.PCI0.SATA)
    {
        Name (M048, One)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((XCMP (Arg0, ToUUID ("e4db149b-fcfe-425b-a6d8-92357d78fc7f") /* SATA Controller */) == One))
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             /* . */
                    })
                }
                ElseIf ((Arg2 == One))
                {
                    Name (ADDR, Package (0x01)
                    {
                        0x0001FFFF
                    })
//                     = 0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero)
//                    ADDR [Zero]
                    Return (Package (0x01)
                    {
                        ADDR
                    })
                }
                ElseIf ((Arg2 == 0x02))
                {
                    Local0 = DerefOf (Arg3 [Zero])
/*
                    If (((Local0 == (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))) || Zero))
                    {
                        (Local0 == Ones)
                        Local1 = DerefOf (Arg3 [One])
                        If ((Local1 == Zero))
                        {
                            STPT (Zero)
                            Return (Zero)
                        }
                        ElseIf ((Local1 == One))
                        {
                            If (M045 ())
                            {
                                \_SB.PCI0.SATA.ODD8._PS0 ()
                            }
                            ElseIf (M044 ())
                            {
                                \_SB.PCI0.SATA.ODDL._PS0 ()
                            }
                            Else
                            {
                                \_SB.PCI0.SATA.ODDZ._PS0 ()
                            }

                            Return (Zero)
                        }
                    }
*/
                }
            }

            Return (One)
        }

        Method (XCMP, 2, NotSerialized)
        {
            If ((0x10 != SizeOf (Arg0)))
            {
                Return (Zero)
            }

            If ((0x10 != SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Local0 = Zero
            While ((Local0 < 0x10))
            {
                If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                    )))
                {
                    Return (Zero)
                }

                Local0++
            }

            Return (One)
        }

        Method (STDV, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 >> 0x10))
        }

        Method (STFN, 0, Serialized)
        {
            Local0 = _ADR /* External reference */
            Return ((Local0 & 0xFFFF))
        }

        Method (PBAA, 0, Serialized)
        {
//            0x24 = M019 (Zero, STDV (), STFN ())
//            Local0
            Local0 = Zero
            If ((Local0 == Ones))
            {
                Local0 = Zero
            }

            Return (Local0)
        }

        Method (STPT, 1, Serialized)
        {
            M018 (Zero, STDV (), STFN (), 0x42, M049 (), M134 (0x15), One)
//            (Arg0 ^ One)
        }

        Method (STPP, 1, Serialized)
        {
            M018 (Zero, STDV (), STFN (), 0x42, M049 (), M134 (0x15), One)
//            (Arg0 ^ One)
            If ((M017 (Zero, STDV (), STFN (), 0x0A, Zero) == 0x10))
            {
//                0x0106
                If ((PBAA () != Zero))
                {
                    M018 (Zero, STDV (), STFN (), 0x40, Zero, One, One)
                    M014 (PBAA (), 0x0C, M049 (), M134 (0x15))
//                    One
//                    Arg0
//                    0x06 = M017 (Zero, STDV (), STFN (), 0x42, Zero)
//                    Local0
                    Local0 = Arg0
                    If ((Local0 == 0x3F))
                    {
                        M014 (PBAA (), 0x0C, Zero, One)
//                        One
                    }
                    ElseIf ((M017 (Zero, STDV (), STFN (), 0x42, Zero) && One))
                    {
//                        ((Local0 & 0x3E) ^ 0x3E)
                        M014 (PBAA (), 0x0C, Zero, One)
//                        Zero
                    }

//                    0x06 = M013 (PBAA (), 0x0C, Zero)
//                    Local1
                    Local1 = M013 (PBAA (), 0x0C, Zero)
                    Local2 = Zero
                    While (Local1)
                    {
                        If ((Local1 & One))
                        {
                            Local2++
                        }

                        Local1 >>= One
                    }

                    M014 (PBAA (), Zero, Zero, 0x05)
                    Local2--
                    M018 (Zero, STDV (), STFN (), 0x40, Zero, One, Zero)
                }
            }
        }

        Method (STPM, 0, Serialized)
        {
            Local1 = Zero
            If ((PBAA () != Zero))
            {
//                 = 0x15 = (0x0118 + (M134 = (0x80 * M049 ())))
//                Zero
//                Local0
//                One = M013 (PBAA (), Local0, Zero)
//                Local0
            }

            Return (Local1)
        }

        Method (STPR, 0, Serialized)
        {
            If ((M017 (Zero, STDV (), STFN (), 0x0A, Zero) == 0x10))
            {
//                0x0106
                If ((PBAA () != Zero))
                {
//                     = 0x15 = (0x0118 + (M134 = (0x80 * M049 ())))
//                    Zero
//                    Local0
                    Local0 = (0x0118 + (M134 = (0x80 * M049 ())))
                    M014 (PBAA (), Local0, Zero, One)
//                    Zero
                    Sleep (One)
//                     = 0x15 = (0x012C + (M134 = (0x80 * M049 ())))
//                    Zero
//                    Local0
                    M014 (PBAA (), Local0, Zero, 0x04)
//                    One
                    Sleep (0x02)
                    M014 (PBAA (), Local0, Zero, 0x04)
//                    Zero
                }
            }
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
/*
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
*/
		Return (0x0F)
            }

            Device (ODD)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (M049 ())
                    M134 (0x15)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (ODD8)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
/*
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) )) // External reference
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
*/
		Return (M049 ())
            }

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
/*
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))
                        ), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
*/
                }
            }

            Method (ZSTA, 0, NotSerialized)
            {
/*
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) ) // External reference
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
*/
		Return (Zero)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

/*
            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128)) && 0x02)) // External reference
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }
*/
/*
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }
*/

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M045 ())
                {
                    Return (ZSTA ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = One
                }
                Else
                {
                    WDSW = Zero
                }
            }

            Name (ZPRW, Package (0x02)
            {
                0x07, 
                0x03
            })
            Method (XPRW, 0, NotSerialized)
            {
                If (!M045 ())
                {
                    M134 = M049 ()
//                    0x13
//                    ZPRW [Zero]
                    ZPRW [Zero] = 0x13
                }

                Return (ZPRW) /* \_SB_.PCI0.SATA.ODD8.ZPRW */
            }
        }

        Device (ODDZ)
        {
/*
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) )) // External reference
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
            }
*/

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
/*
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
            }
*/

/*
            Method (ZSTA, 0, NotSerialized)
            {
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) ) // External reference
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
*/

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

/*
            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128))  && 0x02)) // External reference
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }
*/
/*
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }
*/

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!(M045 () || M044 ()))
                {
//                    Return (ZSTA ())
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (ODDL)
        {
/*
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (((M045 () || M044 ()) && (0x67 = (M049 () & M128)) )) // External reference
                {
                    One
                    Zero
                    Return (0xFFFF = ((0x00010000 = (M049 () * M134 (0x15))) + Zero))
                    Zero
                }
                Else
                {
                    Return (M049 ())
                    M134 (0x15)
                }
            }
*/

            Name (ODPS, Zero)
            Name (ODDB, Zero)
            Name (WDSW, One)
/*
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((PBAA () != Zero))
                {
                    If ((M013 (PBAA (), (0x0129 + (0x80 = (M049 () * M134 (0x15)))
                        ), Zero) != Zero))
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
            }
*/

/*
            Method (ZSTA, 0, NotSerialized)
            {
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x02
                        Zero
                        If (M029 (M049 (), M134 (0x12), Return (Zero))) {}
                        ElseIf (0x67 = (M049 () & M128) ) // External reference
                        {
                            0x04
                            Zero
                            ODDB = One
                        }
                    }
                    ElseIf (0x67 = (M049 () & M128) ) // External reference
                    {
                        0x04
                        Zero
                        ODDB = One
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
*/

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (M048)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

/*
            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (!((0x67 = (M049 () & M128))  && 0x02)) // External reference
                {
                    Zero
                    M029 (M049 (), M134 (0x12), M000 (0x84))
                    If (0x67 = (M049 () & M128) ) // External reference
                    {
                        One
                        Zero
                        If (((ODDB == One) || ((ODDB == Zero) && (STPM () != 
                            Zero))))
                        {
                            STPT (One)
                            Sleep (0x28)
                            M111 (M049 (), M134 (0x10), One, M048 = One)
                            Sleep (0x28)
                        }
                    }

                    ODDB = One
                    ODPS = Zero
                }
            }
*/

/*
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                M000 (0x85)
                If (0x67 = (M049 () & M128) ) // External reference
                {
                    One
                    Zero
                    If ((WDSW == One))
                    {
                        Sleep (0x28)
                        M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                        Sleep (0x28)
                        STPT (Zero)
                        M032 (M049 (), M134 (0x11), ODDB = One = (M029 (M049 (), M134 (0x11), 
                            One) ^ Zero))
                    }
                }

                ODPS = 0x03
            }
*/

            Method (XEJ0, 1, NotSerialized)
            {
                _PS3 ()
                STPP (Zero)
            }

            Device (ODD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    M111 (M049 (), M134 (0x10), Zero, M048 = Zero)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (M044 ())
                {
//                    Return (ZSTA ())
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, Serialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0)
                {
                    WDSW = One
                }
                Else
                {
                    WDSW = Zero
                }
            }

            Name (ZPRW, Package (0x02)
            {
                0x07, 
                0x03
            })
            Method (XPRW, 0, NotSerialized)
            {
                If (!M045 ())
                {
                    M134 = M049 ()
//                    0x13
//                    ZPRW [Zero]
                    ZPRW [Zero] = 0x13
                }

                Return (ZPRW) /* \_SB_.PCI0.SATA.ODDL.ZPRW */
            }
        }
    }

    Scope (\_GPE)
    {
/*
        Method (XL06, 0, NotSerialized)
        {
            If (((0x67 = (M049 () & M128))  && One)) // External reference
            {
                Zero
                (M029 (M049 (), M134 (0x12), Zero) == If (M031 (M049 (), M134 (0x11), Sleep (
                    0x14)))
                    {
                        If (M029 (M049 (), M134 (0x11), If (0x67 = (M049 () & M128) ) // External reference
                                {
                                    0x10
                                    Zero
                                    \_SB.PCI0.SATA.STPR ()
                                }))
                        {
                            If (M045 ())
                            {
                                Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                            }
                            ElseIf (M044 ())
                            {
                                Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                            }
                            Else
                            {
                                Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                            }

                            Sleep (0x01F4)
                            M000 (0x80)
                        }
                    })
                Else
                {
                    Sleep (0x14)
                    If (!M029 (M049 (), M134 (0x11), If (M045 ())
                                {
                                    Notify (\_SB.PCI0.SATA.ODD8, 0x02) // Device Wake
                                }))
                    {
                        ElseIf (M044 ())
                        {
                            Notify (\_SB.PCI0.SATA.ODDL, 0x02) // Device Wake
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SATA.ODDZ, 0x80) // Status Change
                        }

                        Sleep (0x01F4)
                        M000 (0x81)
                    }
                }
            }

            M032 (M049 (), M134 (0x11), XOr (M029 (M049 (), M134 (0x11), One) ^ Zero))
        }
*/

/*
        Method (XL10, 0, NotSerialized)
        {
            Sleep (0xC8)
            If (M031 (M049 (), M134 (0x12), If (M029 (M049 (), M134 (0x12), M000 (0x82)))
                    {
                        M111 (M049 (), M134 (0x10), Zero, \_SB.PCI0.SATA.M048 = Zero)
                        Sleep (0x28)
                        \_SB.PCI0.SATA.STPP (Zero)
                        If (M045 ())
                        {
                            \_SB.PCI0.SATA.ODD8.ODPS = 0x03
                        }
                        ElseIf (M044 ())
                        {
                            \_SB.PCI0.SATA.ODDL.ODPS = 0x03
                        }
                        Else
                        {
                            \_SB.PCI0.SATA.ODDZ.ODPS = 0x03
                        }

                        M032 (M049 (), M134 (0x12), Else
                                {
                                    Sleep (0x14)
                                    If (!M029 (M049 (), M134 (0x12), M000 (0x83)))
                                    {
                                        \_SB.PCI0.SATA.STPP (One)
                                        Sleep (0x28)
                                        M111 (M049 (), M134 (0x10), One, \_SB.PCI0.SATA.M048 = One)
                                        Sleep (0x28)
                                        If (M045 ())
                                        {
                                            \_SB.PCI0.SATA.ODD8.ODPS = Zero
                                        }
                                        ElseIf (M044 ())
                                        {
                                            \_SB.PCI0.SATA.ODDL.ODPS = Zero
                                        }
                                        Else
                                        {
                                            \_SB.PCI0.SATA.ODDZ.ODPS = Zero
                                        }

                                        M032 (M049 (), M134 (0x12), Sleep (0x28) = (M029 (M049 (), M134 (0x12), One) ^ 
                                            Zero))
                                    }
                                } = (M029 (M049 (), M134 (0x12), One) ^ Zero))
                    })) {}
            If (0x67 = (M049 () & M128) ) // External reference
            {
                One
                Zero
                If (M045 ())
                {
                    Notify (\_SB.PCI0.SATA.ODD8, One) // Device Check
                }
                ElseIf (M044 ())
                {
                    Notify (\_SB.PCI0.SATA.ODDL, One) // Device Check
                }
                Else
                {
                    Notify (\_SB.PCI0.SATA.ODDZ, One) // Device Check
                    Notify (\_SB.PCI0.SATA.ODDZ, 0x81) // Information Change
                }
            }
            Else
            {
                Notify (\_SB.PCI0.SATA.PRT1, One) // Device Check
                If (!(M045 () || M044 ()))
                {
                    Notify (\_SB.PCI0.SATA.PRT1, 0x81) // Information Change
                }
            }
        }
*/
    }
}

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000873A (34618)
 *     Revision         0x02
 *     Checksum         0x6E
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "HPQOEM", "INSYDE  ", 0x00000002)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
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
    External (_SB_.ALIC, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Scope (_SB)
    {
        Name (AGRB, 0xF8000000)
        Name (ADBG, Buffer (0x0100) {})
        Name (ADAT, Buffer (0x0200)
        {
            /* 0000 */  0x03, 0x76, 0x76, 0x6E, 0x00, 0x05, 0x00, 0x00,  /* .vvn.... */
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0020 */  0x03, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x04,  /* ........ */
            /* 0028 */  0x04, 0x00, 0x03, 0x00, 0x00, 0x02, 0x02, 0x00,  /* ........ */
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x03, 0x01, 0x01, 0x01,  /* ........ */
            /* 0038 */  0x00, 0x00, 0x00, 0x05, 0x05, 0x04, 0x05, 0x01,  /* ........ */
            /* 0040 */  0x00, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0048 */  0x03, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x06,  /* ........ */
            /* 0050 */  0x06, 0x06, 0x06, 0x02, 0x00, 0x02, 0x04, 0x00,  /* ........ */
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0060 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0070 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 0088 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0098 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 00B0 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00C0 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  /* ........ */
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  /* ........ */
            /* 00D8 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
        })
        Method (ALIB, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                CreateWordField (Arg1, 0x00, A010)
                CreateWordField (Arg1, 0x02, A011)
                CreateDWordField (Arg1, 0x04, A012)
                Local0 = Buffer (0x0100) {}
                CreateWordField (Local0, 0x00, A013)
                A013 = A010 /* \_SB_.ALIB.A010 */
                CreateWordField (Local0, 0x02, A014)
                A014 = A011 /* \_SB_.ALIB.A011 */
                CreateDWordField (Local0, 0x04, A015)
                A015 = A012 /* \_SB_.ALIB.A012 */
                A015 &= ~0x0F
                If ((DerefOf (\_SB.ADAT [0x00]) > 0x00))
                {
                    Local1 = 0x0F
                }
                Else
                {
                    Local1 = 0x01
                }

                A015 |= Local1
                Return (Local0)
            }

            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A016 (Local0))
            }

            If ((Arg0 == 0x02))
            {
                Return (A017 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A018 (Local0))
            }

            If ((Arg0 == 0x06))
            {
                Local0 = DerefOf (Arg1 [0x04])
                Local1 = DerefOf (Arg1 [0x02])
                Return (A021 (Local0, Local1))
            }

            If ((Arg0 == 0x0A))
            {
                Local0 = DerefOf (Arg1 [0x02])
//                Return (A022 (Local0))
                Return
            }

            If ((Arg0 == 0x0B))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Local1 = DerefOf (Arg1 [0x03])
                Local2 = DerefOf (Arg1 [0x04])
                Local2 |= (DerefOf (Arg1 [0x05]) << 0x08)
                Local2 |= (DerefOf (Arg1 [0x06]) << 0x10)
                Local2 |= (DerefOf (Arg1 [0x07]) << 0x18)
                Local3 = DerefOf (Arg1 [0x08])
                Local3 |= (DerefOf (Arg1 [0x09]) << 0x08)
                Local3 |= (DerefOf (Arg1 [0x0A]) << 0x10)
                Local3 |= (DerefOf (Arg1 [0x0B]) << 0x18)
                Local4 = DerefOf (Arg1 [0x0C])
                Local4 |= (DerefOf (Arg1 [0x0D]) << 0x08)
                Local4 |= (DerefOf (Arg1 [0x0E]) << 0x10)
                Local4 |= (DerefOf (Arg1 [0x0F]) << 0x18)
//                Return (A023 (Local0, Local1, Local2, Local3, Local4))
                Return
            }

            If ((Arg0 == 0x0C))
            {
                A024 (Arg1)
            }

            Return (0x00)
        }

        Method (A021, 2, NotSerialized)
        {
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A085 (Local0, Arg1)
                If ((Local1 == 0x01))
                {
                    Local1 = A086 (Local0, Arg0)
                    Break
                }

                Local0++
            }

            Local7 = Buffer (0x0A) {}
            CreateWordField (Local7, 0x00, A013)
            CreateByteField (Local7, 0x02, A025)
            CreateByteField (Local7, 0x03, A087)
            A013 = 0x04
            A025 = 0x00
            A087 = Local1
            Return (Local7)
        }

        Method (A085, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A077 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A077 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A077 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A077 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A077 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A077 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A077 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A077 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A077 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A077 (Arg1))
            }
        }

        Method (A086, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A078 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A078 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A078 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A078 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A078 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A078 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A078 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A078 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A078 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A078 (Arg1))
            }
        }

        Name (AD00, 0x00)
        Name (DK00, 0x00)
        Method (A016, 1, NotSerialized)
        {
            If ((AD00 == Arg0))
            {
                Return (0x00)
            }

            AD00 = Arg0
            A007 ()
        }

        Method (A022, 1, NotSerialized)
        {
            DK00 = Arg0
        }

        Method (A023, 5, NotSerialized)
        {
        }

        Name (AP01, 0x00)
        Name (AP02, 0x00)
        Name (AP03, 0x00)
        Name (AP05, 0x00)
        Name (AP0B, 0xFF)
        Name (AP10, 0x00)
        Method (A017, 1, NotSerialized)
        {
            Local7 = Buffer (0x0100) {}
            CreateWordField (Local7, 0x00, A013)
            A013 = 0x03
            CreateByteField (Local7, 0x02, A025)
            A025 = 0x01
            If ((DerefOf (\_SB.ADAT [0x00]) == 0x01))
            {
                A025 = 0x02
                Return (Local7)
            }

            If ((DerefOf (\_SB.ADAT [0x00]) == 0x00))
            {
                A025 = 0x01
                Return (Local7)
            }

            A026 (Arg0)
            If ((AP05 != 0x01))
            {
                Return (Local7)
            }

            A027 ()
            A025 = 0x02
            Return (Local7)
        }

        Method (A008, 0, NotSerialized)
        {
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            If ((AP05 != 0x01))
            {
                Return (0x00)
            }

            A027 ()
        }

        Method (A003, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                AP01 = 0x00
            }
        }

        Method (A006, 1, NotSerialized)
        {
            AP10 = 0x01
        }

        Method (A018, 1, NotSerialized)
        {
            AP05 = Arg0
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            Local1 = AP0B /* \_SB_.AP0B */
            If ((AP05 == 0x00))
            {
                Local0 = 0x00
                While ((Local0 < 0x0A))
                {
//                    A028 (Local0)
                    Local0++
                }

                AP0B = 0x00
            }

            A027 ()
            AP0B = Local1
            Local7 = Buffer (0x0100) {}
            Local7 [0x00] = 0x03
            Local7 [0x01] = 0x00
            Local7 [0x02] = 0x00
            Return (Local7)
        }

        Method (A029, 0, NotSerialized)
        {
            If ((AP0B != 0xFF))
            {
                Return (AP0B) /* \_SB_.AP0B */
            }

            Return (AD00) /* \_SB_.AD00 */
        }

        Method (A026, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, AP06)
            CreateWordField (Arg0, 0x04, AP07)
            CreateWordField (Arg0, 0x06, AP08)
            CreateByteField (Arg0, 0x08, AP09)
            CreateByteField (Arg0, 0x09, AP0A)
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                If ((A030 (Local0, AP06) == 0x01))
                {
/*
                    If (((AP07 & AP08) == 0x01))
                    {
                        Local1 = A031 (Local0)
                        A032 (Local0, Local1)
                    }
                    Else
                    {
                        A032 (Local0, AP0A)
                    }
*/

                    Break
                }

                Local0++
            }
        }

        Method (A033, 0, NotSerialized)
        {
            AP02 = 0x01
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A034 (Local0)
                If ((Local1 > AP02))
                {
                    AP02 = Local1
                }

                Local0++
            }
        }

        Method (A035, 0, NotSerialized)
        {
            AP03 = 0x00
            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A036 (Local0)
                If ((Local1 > AP03))
                {
                    AP03 = Local1
                }

                Local0++
            }
        }

        Method (A027, 0, NotSerialized)
        {
            A035 ()
            A033 ()
            If ((AP02 != AP01))
            {
                A009 (AP02, AP01)
            }

            If ((AP02 > AP01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            Local0 = 0x00
            While ((Local0 < 0x0A))
            {
                Local1 = A034 (Local0)
                Local2 = A038 (Local0)
/*
                If ((Local1 != Local2))
                {
                    A039 (Local0, Local1)
                }
                ElseIf ((AP10 == 0x01))
                {
                    A039 (Local0, Local1)
                }
*/

                Local0++
            }

            If ((AP02 < AP01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }
            ElseIf ((AP10 == 0x01))
            {
                \_SB.A037 (AP02)
                AP01 = AP02 /* \_SB_.AP02 */
            }

            AP10 = 0x00
        }

/*
        Method (A039, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A040 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A040 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A040 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A040 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A040 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A040 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A040 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A040 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A040 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A040 (Arg1))
            }
        }
*/

        Method (A038, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A041 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A041 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A041 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A041 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A041 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A041 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A041 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A041 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A041 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A041 ())
            }
        }

        Method (A034, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A042 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A042 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A042 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A042 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A042 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A042 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A042 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A042 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A042 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A042 ())
            }
        }

        Method (A036, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A043 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A043 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A043 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A043 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A043 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A043 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A043 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A043 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A043 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A043 ())
            }
        }

        Method (A031, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A044 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A044 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A044 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A044 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A044 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A044 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A044 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A044 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A044 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A044 ())
            }
        }

/*
        Method (A032, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A045 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A045 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A045 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A045 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A045 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A045 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A045 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A045 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A045 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A045 (Arg1))
            }
        }
*/

        Method (A030, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A046 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A046 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A046 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A046 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A046 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A046 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A046 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A046 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A046 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A046 (Arg1))
            }
        }

/*
        Method (A028, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A047 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A047 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A047 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A047 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A047 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR1.ABR5.A047 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR1.ABR6.A047 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR1.ABR7.A047 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A047 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A047 ())
            }
        }
*/

        OperationRegion (A106, SystemMemory, (AGRB + 0x000C4000), 0x1000)
        Field (A106, ByteAcc, NoLock, Preserve)
        {
            Offset (0x124), 
                ,   22, 
            A107,   1, 
            A108,   4
        }

        OperationRegion (A109, SystemMemory, (AGRB + 0x000C5000), 0x1000)
        Field (A109, ByteAcc, NoLock, Preserve)
        {
            Offset (0x170), 
                ,   14, 
            A110,   1
        }

        OperationRegion (A092, SystemMemory, AGRB, 0x1000)
        Field (A092, ByteAcc, NoLock, Preserve)
        {
            Offset (0x60), 
            A093,   32, 
            Offset (0xB8), 
            A094,   32, 
            Offset (0xC8), 
            A095,   32
        }

        BankField (A092, A094, 0x13000000, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A096,   32
        }

        BankField (A092, A094, 0x13000010, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A097,   32
        }

        BankField (A092, A094, 0x13000020, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A098,   32
        }

        BankField (A092, A094, 0x13000024, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A099,   32
        }

        BankField (A092, A094, 0x13000028, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A100,   32
        }

        BankField (A092, A094, 0x1300002C, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A101,   32
        }

        BankField (A092, A094, 0x13000030, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A102,   32
        }

        BankField (A092, A094, 0x13000034, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A103,   32
        }

        OperationRegion (A104, SystemMemory, (AGRB + 0x8000), 0x1000)
        Field (A104, DWordAcc, NoLock, Preserve)
        {
            A105,   32
        }

        OperationRegion (A111, SystemMemory, AGRB, 0x1000)
        Field (A111, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            A112,   32
        }

        BankField (A111, A112, 0x01110004, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
                ,   12, 
            A113,   1
        }

        BankField (A111, A112, 0x01318070, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
            A114,   1
        }

        BankField (A111, A112, 0x01410129, DWordAcc, NoLock, Preserve)
        {
            Offset (0xE4), 
            A115,   16
        }

        Method (A037, 1, NotSerialized)
        {
            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (\_SB.ADAT [0x01])
            }

            If ((Arg0 == 0x02))
            {
                Local0 = DerefOf (\_SB.ADAT [0x02])
            }

            If ((Arg0 == 0x03))
            {
                Local0 = DerefOf (\_SB.ADAT [0x03])
            }

            If ((Local0 > 0xF7))
            {
                Local0 = 0xF7
            }

            Local2 = (0x0271 * ((Local1 = (0xF7 - Local0)) + 0x01))
            Divide (Local2 *= 0x04, 0x64, Local3, Local4)
            Local7 = Buffer (0x18) {}
            CreateDWordField (Local7, 0x00, A116)
            CreateDWordField (Local7, 0x04, A117)
            CreateDWordField (Local7, 0x08, A118)
            CreateDWordField (Local7, 0x0C, A119)
            CreateDWordField (Local7, 0x10, A120)
            CreateDWordField (Local7, 0x14, A121)
            A116 = Local4
            A122 (0x3A, Local7)
        }

        Method (A123, 3, NotSerialized)
        {
        }

        Method (A081, 3, NotSerialized)
        {
            If (((Arg1 >= 0x08) && (Arg2 >= 0x08)))
            {
                If ((Arg0 == 0x01))
                {
                    A114 = 0x01
                }
                ElseIf ((Arg1 > Arg2))
                {
                    Local1 = (Arg1 - Arg2)
                    Local2 = (Arg2 - 0x08)
                }
                Else
                {
                    Local1 = (Arg2 - Arg1)
                    Local2 = (Arg1 - 0x08)
                }
            }
        }

        Method (A083, 3, NotSerialized)
        {
            If (((Arg1 >= 0x08) && (Arg2 >= 0x08)))
            {
                If ((Arg0 == 0x01))
                {
                    A113 = 0x01
                }
                ElseIf (((A115 & 0xFF) == 0x00))
                {
                    A114 = 0x00
                }
            }
        }

        Method (A122, 2, Serialized)
        {
            CreateDWordField (Arg1, 0x00, A124)
            CreateDWordField (Arg1, 0x04, A125)
            CreateDWordField (Arg1, 0x08, A126)
            CreateDWordField (Arg1, 0x0C, A127)
            CreateDWordField (Arg1, 0x10, A128)
            CreateDWordField (Arg1, 0x14, A129)
            A097 = 0x00
            While ((A097 != 0x00)) {}
            A098 = A124 /* \_SB_.A122.A124 */
            A099 = A125 /* \_SB_.A122.A125 */
            A100 = A126 /* \_SB_.A122.A126 */
            A101 = A127 /* \_SB_.A122.A127 */
            A102 = A128 /* \_SB_.A122.A128 */
            A103 = A129 /* \_SB_.A122.A129 */
            A096 = Arg0
            While ((A097 == 0x00)) {}
        }

        Method (A050, 1, NotSerialized)
        {
        }

        Method (A005, 1, NotSerialized)
        {
            Local0 = A110 /* \_SB_.A110 */
            Return (Local0)
        }

        Name (A130, 0x00)
        Name (A131, 0x00)
        Method (A004, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                If ((A130 == 0x00))
                {
                    A130 = 0x01
                }
            }
            ElseIf ((A130 == 0x01))
            {
                If ((A131 == 0x01)) {}
            }
        }

        Method (A024, 1, Serialized)
        {
            CreateWordField (Arg0, 0x00, A132)
            Local7 = Buffer (0x18) {}
            CreateDWordField (Local7, 0x00, A116)
            CreateDWordField (Local7, 0x04, A117)
            CreateDWordField (Local7, 0x08, A118)
            CreateDWordField (Local7, 0x0C, A119)
            CreateDWordField (Local7, 0x10, A120)
            CreateDWordField (Local7, 0x14, A121)
            Local0 = 0x02
            While ((Local0 < A132))
            {
                Local1 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x08)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x10)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x18)
                Local0++
                A116 = 0x00
                A117 = 0x00
                A118 = 0x00
                A119 = 0x00
                A120 = 0x00
                A121 = 0x00
                If ((Local1 == 0x00))
                {
                    A116 = Local2
                    A122 (0x69, Local7)
                }

                If ((Local1 == 0x01))
                {
                    A118 = Local2
                    A122 (0x6C, Local7)
                }

                If ((Local1 == 0x02))
                {
                    A116 = Local2
                    A122 (0x6C, Local7)
                }

                If ((Local1 == 0x03))
                {
                    A116 = Local2
                    A122 (0x7C, Local7)
                }
            }
        }

        OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            A088,   8, 
            A089,   8
        }

        IndexField (A088, A089, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            A090,   32
        }

        OperationRegion (ACFG, SystemIO, A090, 0x08)
        Field (ACFG, DWordAcc, NoLock, Preserve)
        {
            A091,   32
        }

        BankField (ACFG, A091, 0x80000068, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            A058,   2
        }

        Name (ABSM, 0x00)
        Method (A055, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                ABSM = A058 /* \_SB_.A058 */
                A058 = 0x00
            }
            Else
            {
                A058 = ABSM /* \_SB_.ABSM */
            }
        }

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Name (WRBS, 0x0150)
            Name (CORE, 0x0140)
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                Name (AB12, 0x20)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR0.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR0.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR0.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR0.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR0.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR0.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR0.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR0.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR0.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR0.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR0.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR0.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR1)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x81)  // _UID: Unique ID
                Name (AB12, 0x34)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR1.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR1.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR1.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR1.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR1.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR1.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR1.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR1.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR1.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR1.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR1.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR1.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR2)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x82)  // _UID: Unique ID
                Name (AB12, 0x48)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR2.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR2.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR2.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR2.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR2.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR2.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR2.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR2.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR2.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR2.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR2.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR2.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR3)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x83)  // _UID: Unique ID
                Name (AB12, 0x5C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR3.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR3.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR3.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR3.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR3.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR3.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR3.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR3.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR3.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR3.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR3.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR3.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR4)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x84)  // _UID: Unique ID
                Name (AB12, 0x70)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR4.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR4.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR0.ABR4.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR0.ABR4.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR4.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR0.ABR4.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR0.ABR4.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR0.ABR4.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR0.ABR4.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR0.ABR4.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR0.ABR4.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR0.ABR4.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }
        }

        Device (AWR1)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x91)  // _UID: Unique ID
            Name (WRBS, 0x0151)
            Name (CORE, 0x0141)
            Device (ABR5)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x85)  // _UID: Unique ID
                Name (AB12, 0x84)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR5.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR5.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR5.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR5.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR5.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR5.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR5.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR5.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR5.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR5.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR5.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR5.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR5.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR5.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR5.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR6)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x86)  // _UID: Unique ID
                Name (AB12, 0x98)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR6.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR6.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR6.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR6.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR6.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR6.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR6.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR6.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR6.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR6.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR6.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR6.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR6.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR6.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR6.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR7)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x87)  // _UID: Unique ID
                Name (AB12, 0xAC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR7.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR7.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR7.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR7.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR7.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR7.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR7.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR7.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR7.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR7.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR7.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR7.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR7.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR7.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR7.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR7.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR7.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR7.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR8)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x88)  // _UID: Unique ID
                Name (AB12, 0xC0)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR8.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR8.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR8.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR8.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR8.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR8.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR8.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR8.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR8.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR8.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR8.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR8.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }

            Device (ABR9)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x89)  // _UID: Unique ID
                Name (AB12, 0xD4)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A071, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A071, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A062,   8, 
                    A063,   8, 
                    Offset (0x68), 
                    A058,   2, 
                        ,   2, 
                    A053,   1, 
                    A059,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A060,   1, 
                    Offset (0x88), 
                    A070,   4, 
                        ,   1, 
                    A067,   1, 
                    Offset (0xE0), 
                    A072,   32
                }

                BankField (A071, A072, 0xA1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   12, 
                    A054,   1
                }

                BankField (A071, A072, 0xA2, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                        ,   13, 
                    A069,   1
                }

                BankField (A071, A072, 0xA4, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A065,   1, 
                    A066,   1, 
                        ,   11, 
                    A061,   2, 
                        ,   14, 
                    A068,   1
                }

                BankField (A071, A072, 0xA5, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A052,   6
                }

                OperationRegion (A073, SystemMemory, AGRB, 0x1000)
                Field (A073, ByteAcc, NoLock, Preserve)
                {
                    Offset (0xE0), 
                    A074,   32
                }

                BankField (A073, A074, ((^WRBS << 0x10) | (0x0800 + (0x0100 * DerefOf (
                    \_SB.ADAT [(AB12 + 0x0B)])))), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A075,   1
                }

                BankField (A073, A074, ((^CORE << 0x10) | 0x0129), DWordAcc, NoLock, Preserve)
                {
                    Offset (0xE4), 
                    A076,   16
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A048, 0, NotSerialized)
                {
                    Local0 = A029 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR9.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }
                }

                Method (A043, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A049, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A042, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }

                    Local0 = A049 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A048 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR9.AB02 */
                }

                Method (A044, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                }

                Method (A040, 1, Serialized)
                {
                    AB02 = Arg0
                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x01)
                    }

                    A051 (Arg0)
                    If (((A052 >= 0x10) && (A053 == 0x00)))
                    {
                        If ((AB10 != 0x00))
                        {
                            A054 = 0x00
                        }
                        Else
                        {
                            A054 = 0x01
                        }

                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x00)
                        }
                        Else
                        {
                            A056 (0x00)
                        }

                        Name (A057, 0x00)
                        A057 = A058 /* \_SB_.AWR1.ABR9.A058 */
                        A058 = 0x00
                        Local0 = 0x01
                        While (Local0)
                        {
                            A059 = 0x01
                            Sleep (0x1E)
                            While ((A060 == 0x01))
                            {
                                Sleep (0x0A)
                            }

                            If ((Arg0 == 0x01))
                            {
                                If ((A061 == 0x00))
                                {
                                    Break
                                }
                            }
                            Else
                            {
                                Break
                            }
                        }

                        A058 = A057 /* \_SB_.AWR1.ABR9.A040.A057 */
                        If ((AB03 == 0x01))
                        {
                            \_SB.A055 (0x01)
                        }
                        Else
                        {
                            A056 (0x01)
                        }
                    }

                    If ((AB03 == 0x01))
                    {
                        \_SB.A050 (0x00)
                    }
                }

                Method (A045, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A046, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A062) && (Local0 <= A063)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A064, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A047, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A051, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02))
                    {
                        A065 = 0x01
                        A066 = 0x00
                    }

                    If ((Arg0 >= 0x03))
                    {
                        A065 = 0x01
                        A066 = 0x01
                    }

                    If ((Arg0 == 0x01))
                    {
                        A067 = 0x01
                        A065 = 0x00
                        A066 = 0x00
                        A068 = 0x00
                        If ((AB04 == 0x01))
                        {
                            A069 = 0x01
                        }
                    }
                    Else
                    {
                        A067 = 0x00
                        A068 = 0x01
                        A069 = 0x00
                    }

                    A070 = Arg0
                }

                Method (A084, 2, NotSerialized)
                {
                    If ((A079 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A079 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A079 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A056, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A079 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A079 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A084 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A079 (Local0, (Local1 + 0x10))
                                A080 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A080 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A080, 3, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A079, 2, Serialized)
                {
                    Local0 = (AGRB + (A062 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR9.A079.ADRR */
                }

                Method (A077, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A064 (Arg0))
                }

                Method (A078, 1, Serialized)
                {
                    Name (A057, 0x00)
                    A057 = A058 /* \_SB_.AWR1.ABR9.A058 */
                    If ((Arg0 == 0x01))
                    {
                        A053 = 0x00
                        Local0 = 0x01
                    }
                    Else
                    {
                        A056 (0x00)
                        Local0 = A079 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A080 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A079 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A080 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A053 = 0x01
                        Local0 = 0x05
                    }

                    A058 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01))
                        {
                            If ((AB0E > 0x01))
                            {
                                AB05 = AB0E /* \_SB_.AWR1.ABR9.AB0E */
                                A027 ()
                            }

                            \_SB.A081 (0x01, AB06, AB07)
                            A082 (0x01)
                            \_SB.A083 (0x01, AB06, AB07)
                            A075 = 0x00
                            Local0 = 0x03
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x3C))
                            {
                                If ((A052 > 0x04))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x04
                            }
                            Else
                            {
                                Local0 = 0x05
                            }
                        }

                        If ((Local0 == 0x04))
                        {
                            Local1 = 0x00
                            Local2 = 0x00
                            While ((Local1 < 0x50))
                            {
                                If (((A052 >= 0x10) && (A052 <= 0x13)))
                                {
                                    Local2 = 0x01
                                    Break
                                }

                                Sleep (0x01)
                                Local1++
                            }

                            If ((Local2 == 0x01))
                            {
                                Local0 = 0x07
                            }
                            ElseIf ((AB04 == 0x01))
                            {
                                Local0 = 0x05
                            }
                            Else
                            {
                                Local0 = 0x06
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            AB04 = 0x01
                            AB05 = 0x01
                            A051 (0x01)
                            If (CondRefOf (\_SB.ALIC, Local6))
                            {
                                Local1 = ((AB0C << 0x03) | AB0D) /* \_SB_.AWR1.ABR9.AB0D */
                                \_SB.ALIC (Local1, 0x00)
                                Sleep (0x02)
                                \_SB.ALIC (Local1, 0x01)
                                Local0 = 0x03
                                Continue
                            }

                            Local0 = 0x05
                        }

                        If ((Local0 == 0x05))
                        {
                            A079 (0x00, 0x00)
                            A075 = 0x01
                            \_SB.A081 (0x00, AB06, AB07)
                            A082 (0x00)
                            \_SB.A083 (0x00, AB06, AB07)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }

                        If ((Local0 == 0x07))
                        {
                            Local2 = 0x01
                            Local0 = 0x08
                        }
                    }

                    If ((AB04 == 0x00))
                    {
                        AB05 = 0x00
                    }

                    If (((AB0E > 0x01) || (AP05 == 0x01)))
                    {
                        If ((DerefOf (\_SB.ADAT [0x00]) > 0x01))
                        {
                            If ((Arg0 != 0x00))
                            {
                                A027 ()
                            }
                        }
                    }

                    A058 = A057 /* \_SB_.AWR1.ABR9.A078.A057 */
                    If ((A057 != 0x00))
                    {
                        A056 (0x01)
                    }

                    Return (Local2)
                }

                Method (A082, 1, NotSerialized)
                {
                    If ((AB06 > AB07))
                    {
                        Local0 = (AB06 - AB07) /* \_SB_.AWR1.ABR9.AB07 */
                    }
                    Else
                    {
                        Local0 = (AB07 - AB06) /* \_SB_.AWR1.ABR9.AB06 */
                    }

                    Local0++
                    Local0 = (0x01 << Local0)
                    Local0--
                    Local0 <<= AB08 /* \_SB_.AWR1.ABR9.AB08 */
                    If ((Arg0 == 0x01))
                    {
                        A076 |= Local0
                    }
                    Else
                    {
                        Local1 = (A076 & ~Local0)
                        If ((Local1 == 0x00))
                        {
                            A076 &= ~Local0
                        }
                    }
                }
            }
        }

        Name (A001, 0x01)
        Name (A002, 0x00)
        Method (APTS, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                A003 (Arg0)
                A004 (0x00)
                A002 = A005 (0x00)
            }
        }

        Method (AWAK, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                A006 (Arg0)
                If ((A002 == 0x00))
                {
                    A005 (0x01)
                }
            }
        }

        Method (A007, 0, NotSerialized)
        {
            A008 ()
        }

        Method (A009, 2, NotSerialized)
        {
        }
    }
}

/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160318-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.aml, Wed Apr 20 09:13:17 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000654D (25933)
 *     Revision         0x01
 *     Checksum         0x11
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "INSYDE  "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "INSYDE  ", 0x00001000)
{

    External (\_SB.WLBU._STA, MethodObj)    // 0 Arguments

    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
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
    External (_SB_.PCI0.LPC0.EC0_.ATTE, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.ATTF, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BAC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BACV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BAM0, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.BAT0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCG0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCTL, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV1, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV3, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BCV4, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDV0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BDVN, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BFC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BMD0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BMNN, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BOL0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BPC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BPV0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BRC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BRTS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BSN0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BSSB, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BST0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTDC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTNO, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.BTTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CPTR, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.CPTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CPUT, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.CYC0, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.FNTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.FRPM, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.GBIS, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.GBTC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.GPTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.GPTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MBMS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MBSS, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.MUAC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.MXER, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PHTP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PHTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.PRDT, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.PRTM, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.REC1, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.REC2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.RSTV, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.RTTE, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SAD2, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SADP, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SBIS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.SBTC, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.STMS, IntObj)
    External (_SB_.PCI0.LPC0.EC0_.WACL, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WEC1, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WEC2, UnknownObj)
    External (_SB_.PCI0.LPC0.EC0_.WMIM, IntObj)
    External (_SB_.PCI0.LPC0.ECOK, MethodObj)
    External (_SB_.RTC_.RTCH, UnknownObj)
    External (_SB_.RTC_.RTCM, UnknownObj)
    External (_SB_.RTC_.RTCW, IntObj)
    External (GP15, UnknownObj)
    External (GP68, UnknownObj)
    External (OSYS, UnknownObj)
    External (SSMP, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Mutex (MSMT, 0x00)
    Scope (_SB)
    {
        Name (ETYP, Buffer (One) {})
        Device (\_SB.WMID)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WEI1, Zero)
            Name (WED1, Zero)
            Name (WEI2, Zero)
            Name (WED2, Zero)
            Name (WEVT, Zero)
            Name (_WDG, Buffer (0x0104)
            {
                /* 0000 */  0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,  /* 4.._c,.E */
                /* 0008 */  0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,  /* ..=D.... */
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,  /* AA..yB.. */
                /* 0018 */  0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,  /* {M4C.... */
                /* 0020 */  0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,  /* .~...... */
                /* 0028 */  0x18, 0x43, 0x81, 0x2B, 0xE8, 0x4B, 0x07, 0x47,  /* .C.+.K.G */
                /* 0030 */  0x9D, 0x84, 0xA1, 0x90, 0xA8, 0x59, 0xB5, 0xD0,  /* .....Y.. */
                /* 0038 */  0xA0, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  /* ....!... */
                /* 0040 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  /* f....... */
                /* 0048 */  0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00,  /* ..).AB.. */
                /* 0050 */  0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,  /* ..L.\..F */
                /* 0058 */  0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,  /* .....K.^ */
                /* 0060 */  0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,  /* BA..IK.- */
                /* 0068 */  0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,  /* .-0A..J< */
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x43, 0x27, 0x00,  /* ..Q3BC'. */
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,  /* .....h5L */
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,  /* .>j....< */
                /* 0088 */  0x42, 0x44, 0x0D, 0x00, 0x46, 0x97, 0xEA, 0x14,  /* BD..F... */
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,  /* ...@..pE */
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x02, 0x00,  /* .M.EBE.. */
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,  /* ( /2...I */
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,  /* ...Qv..- */
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,  /* BF..=.2. */
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,  /* =f'C.... */
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,  /* ....BG.. */
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,  /* 6d..B..B */
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,  /* ....$... */
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,  /* BH..5d.. */
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,  /* B..B.... */
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,  /* $...BI.. */
                /* 00F0 */  0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,  /* .cN..;XH */
                /* 00F8 */  0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,  /* .7.O..!. */
                /* 0100 */  0x42, 0x4A, 0x00, 0x00                           /* BJ.. */
            })
            OperationRegion (HNVS, SystemMemory, 0xDFB5E000, 0x000012E8)
            Field (HNVS, AnyAcc, NoLock, Preserve)
            {
                SERN,   80, 
                MDID,   256, 
                GUID,   64, 
                UUID,   128, 
                SKUN,   96, 
                LCOD,   24, 
                MACA,   48, 
                KBMX,   8, 
                CHID,   8, 
                OSKU,   8, 
                QKPM,   8, 
                WPFL,   8, 
                DBSW,   8, 
                WPCR,   8, 
                WINA,   8, 
                GPSA,   8, 
                MSME,   8, 
                PREV,   24, 
                ODDC,   8, 
                WIN7,   8, 
                IMID,   8, 
                WSDY,   32, 
                WSDM,   16, 
                WSDD,   16, 
                CTNU,   152, 
                ESTL,   8, 
                SKN1,   104, 
                NISC,   8, 
                MACF,   8, 
                OSSV,   8, 
                CCAV,   56, 
                FFBT,   1600, 
                BUID,   168, 
                TAVL,   8, 
                UBFG,   8, 
                HBDC,   8, 
                MECT,   16, 
                FFLG,   8, 
                Offset (0x1000), 
                SIGN,   32, 
                REVN,   32, 
                HWCT,   8, 
                HWBC,   8, 
                HWRC,   8, 
                HWBF,   1024, 
                EHWB,   4096, 
                IAOR,   8, 
                CDAT,   32, 
                WLVD,   16, 
                WLDD,   16, 
                WLSV,   16, 
                WLSS,   16, 
                BTVD,   16, 
                BTDD,   16, 
                WWVD,   16, 
                WWDD,   16, 
                GPVD,   16, 
                GPDD,   16, 
                FACM,   16, 
                SMA4,   8, 
                WIVD,   16, 
                WIDD,   16, 
                RCKP,   8, 
                HDSM,   16, 
                HD1H,   64, 
                HD2H,   64, 
                OD1H,   64, 
                EBUR,   8, 
                HD1P,   16, 
                HD1M,   16, 
                HD2P,   16, 
                HD2M,   16, 
                OD1P,   16, 
                OD1M,   16, 
                HBUP,   8, 
                HSIN,   8, 
                HJVS,   8, 
                HTVS,   8, 
                HRSV,   136
            }

            Name (WQAB, Buffer (0x2135)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,  /* %!...... */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,  /* ('.....B */
                /* 0020 */  0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,  /* .M..Fb.. */
                /* 0028 */  0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,  /* ........ */
                /* 0030 */  0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,  /* I...A. . */
                /* 0038 */  0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,  /* .@~. t(@ */
                /* 0040 */  0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,  /* .....".. */
                /* 0048 */  0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,  /* W.6...`Q */
                /* 0050 */  0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,  /* .v.....  */
                /* 0058 */  0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,  /* ....G..G */
                /* 0060 */  0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,  /* ...n.... */
                /* 0068 */  0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,  /* h.Q... ] */
                /* 0070 */  0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,  /* .R..7... */
                /* 0078 */  0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,  /* .w.....' */
                /* 0080 */  0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,  /* . .`.T.. */
                /* 0088 */  0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,  /*  iD!..D. */
                /* 0090 */  0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,  /* .......q */
                /* 0098 */  0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,  /* ...F..t~ */
                /* 00A0 */  0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,  /* H.p.*~:. */
                /* 00A8 */  0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,  /* ...`..r< */
                /* 00B0 */  0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,  /* H. ...., */
                /* 00B8 */  0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,  /* 4."k.... */
                /* 00C0 */  0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,  /* c..N..a. */
                /* 00C8 */  0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,  /* ...$8... */
                /* 00D0 */  0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,  /* ........ */
                /* 00D8 */  0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,  /* .%$..... */
                /* 00E0 */  0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,  /* @hl'..E, */
                /* 00E8 */  0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,  /* yJ.I.QD6 */
                /* 00F0 */  0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,  /* .'(..%.B */
                /* 00F8 */  0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,  /* ..X.&.v/ */
                /* 0100 */  0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,  /* ...s.... */
                /* 0108 */  0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,  /* ...q.1.. */
                /* 0110 */  0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,  /* ......,^ */
                /* 0118 */  0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,  /* .....B.H */
                /* 0120 */  0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,  /* ..h.Q*.. */
                /* 0128 */  0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,  /* L.0\...F */
                /* 0130 */  0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,  /* ..)V.. . */
                /* 0138 */  0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,  /* -@T..H.A */
                /* 0140 */  0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,  /* ..<\...= */
                /* 0148 */  0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,  /* ...r.g.. */
                /* 0150 */  0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,  /* p..I...O */
                /* 0158 */  0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,  /* ..8.5.f| */
                /* 0160 */  0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,  /* .L..j..h */
                /* 0168 */  0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,  /* ..8D..I= */
                /* 0170 */  0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,  /* R`.w2... */
                /* 0178 */  0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,  /* ..^..... */
                /* 0180 */  0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,  /* ~.&..... */
                /* 0188 */  0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,  /* ...=.... */
                /* 0190 */  0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,  /* .1....!. */
                /* 0198 */  0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,  /* ....o... */
                /* 01A0 */  0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,  /* ........ */
                /* 01A8 */  0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,  /* !#..x.(| */
                /* 01B0 */  0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,  /* .8...g.. */
                /* 01B8 */  0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,  /*  ....Q.. */
                /* 01C0 */  0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,  /* .a...v38 */
                /* 01C8 */  0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,  /* .G.....+ */
                /* 01D0 */  0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,  /* ........ */
                /* 01D8 */  0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,  /* .....}.. */
                /* 01E0 */  0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,  /* ..(|...) */
                /* 01E8 */  0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,  /* ..O..5N. */
                /* 01F0 */  0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,  /* w..8|dqD */
                /* 01F8 */  0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,  /* .99...O. */
                /* 0200 */  0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,  /* ."..'.@. */
                /* 0208 */  0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,  /* ....y... */
                /* 0210 */  0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,  /* ....?@~. */
                /* 0218 */  0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,  /* x.H..#D. */
                /* 0220 */  0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,  /* k<B,.SE. */
                /* 0228 */  0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,  /* .!c..... */
                /* 0230 */  0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,  /* |...}... */
                /* 0238 */  0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,  /* ..t..... */
                /* 0240 */  0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,  /* ..z..7.. */
                /* 0248 */  0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,  /* .=..>... */
                /* 0250 */  0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,  /* .F....~. */
                /* 0258 */  0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,  /* .......L */
                /* 0260 */  0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,  /* ..>..:v. */
                /* 0268 */  0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,  /* .?..K.!. */
                /* 0270 */  0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,  /* .#...|.. */
                /* 0278 */  0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,  /* ........ */
                /* 0280 */  0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,  /*  O....t. */
                /* 0288 */  0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,  /* ....2... */
                /* 0290 */  0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,  /* ..A...6. */
                /* 0298 */  0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,  /* ..[@.... */
                /* 02A0 */  0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,  /* .E0"..EN */
                /* 02A8 */  0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,  /* Z.cDy.2. */
                /* 02B0 */  0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,  /* ...@..{. */
                /* 02B8 */  0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,  /* 2F...\,. */
                /* 02C0 */  0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,  /* .._...p. */
                /* 02C8 */  0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,  /* .?p...z. */
                /* 02D0 */  0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,  /* B..S9... */
                /* 02D8 */  0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,  /* S..5L.g( */
                /* 02E0 */  0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,  /* .-| .... */
                /* 02E8 */  0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,  /* ....Dp.) */
                /* 02F0 */  0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,  /* .3.x|.@  */
                /* 02F8 */  0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,  /* ..C.`A.. */
                /* 0300 */  0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,  /* .'.*..u. */
                /* 0308 */  0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,  /* ..\a.F.. */
                /* 0310 */  0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,  /* Y....J.c */
                /* 0318 */  0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,  /* .......^ */
                /* 0320 */  0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,  /* I}.1T... */
                /* 0328 */  0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,  /* .7P.7.g. */
                /* 0330 */  0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,  /* .......5 */
                /* 0338 */  0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,  /* L.J5..j. */
                /* 0340 */  0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,  /* ..?..... */
                /* 0348 */  0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,  /* .j.GG.8G */
                /* 0350 */  0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,  /* F...\.R. */
                /* 0358 */  0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,  /* p4..G!0_ */
                /* 0360 */  0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,  /* h|...... */
                /* 0368 */  0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,  /* ..e..PB. */
                /* 0370 */  0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,  /* B....S.. */
                /* 0378 */  0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,  /* ./?...^. */
                /* 0380 */  0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,  /* }..!.G!. */
                /* 0388 */  0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,  /* c(_.|.bP */
                /* 0390 */  0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,  /* .A....." */
                /* 0398 */  0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,  /* H.g..... */
                /* 03A0 */  0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,  /* ........ */
                /* 03A8 */  0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,  /* ...?.... */
                /* 03B0 */  0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,  /* ..@7.G!. */
                /* 03B8 */  0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,  /* .YN..|.. */
                /* 03C0 */  0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,  /* ....B..( */
                /* 03C8 */  0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,  /* t.g.*... */
                /* 03D0 */  0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,  /* ..#.;.K& */
                /* 03D8 */  0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,  /* ......,. */
                /* 03E0 */  0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,  /* .}....Y. */
                /* 03E8 */  0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,  /* P....... */
                /* 03F0 */  0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,  /* .?...!.. */
                /* 03F8 */  0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,  /* .v...B.. */
                /* 0400 */  0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,  /* ..G../.. */
                /* 0408 */  0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,  /* .....A.g */
                /* 0410 */  0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,  /* !.3..... */
                /* 0418 */  0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,  /* :.....$_ */
                /* 0420 */  0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,  /* /=...g!. */
                /* 0428 */  0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,  /* u.>.1..M */
                /* 0430 */  0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,  /* C.p.0..? */
                /* 0438 */  0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,  /* ^.WN.... */
                /* 0440 */  0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,  /* ,.0..... */
                /* 0448 */  0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,  /* ..F....m */
                /* 0450 */  0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,  /* ........ */
                /* 0458 */  0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,  /* g!.A.#.! */
                /* 0460 */  0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,  /* L....... */
                /* 0468 */  0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,  /* )......E */
                /* 0470 */  0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,  /* .1..5.., */
                /* 0478 */  0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,  /* d..x.x.. */
                /* 0480 */  0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,  /* .....a.{ */
                /* 0488 */  0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,  /* .2..c... */
                /* 0490 */  0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,  /* .Y..}..< */
                /* 0498 */  0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,  /* .......% */
                /* 04A0 */  0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,  /* .^...... */
                /* 04A8 */  0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,  /* ..5.3|.. */
                /* 04B0 */  0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,  /* .....V.. */
                /* 04B8 */  0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,  /* ..{..q.. */
                /* 04C0 */  0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,  /* #.: ..s) */
                /* 04C8 */  0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,  /* .|rl.V.. */
                /* 04D0 */  0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,  /* 3.O..B!. */
                /* 04D8 */  0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,  /* 4......D */
                /* 04E0 */  0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,  /* A....m.. */
                /* 04E8 */  0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,  /* P{...9.. */
                /* 04F0 */  0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,  /* .vt6..p. */
                /* 04F8 */  0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,  /* .:%..j.. */
                /* 0500 */  0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,  /* .g..3.S. */
                /* 0508 */  0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,  /* .|...... */
                /* 0510 */  0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,  /* .1..^... */
                /* 0518 */  0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,  /* ..d .... */
                /* 0520 */  0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,  /* ..@..... */
                /* 0528 */  0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,  /* Q..l"!.D */
                /* 0530 */  0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,  /* 3:b..... */
                /* 0538 */  0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,  /*  ..cM.=. */
                /* 0540 */  0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,  /* _t..1!.. */
                /* 0548 */  0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,  /* .&..."XC */
                /* 0550 */  0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,  /* .c...7e0 */
                /* 0558 */  0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,  /* ..].|... */
                /* 0560 */  0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,  /* .......: */
                /* 0568 */  0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,  /* yt...... */
                /* 0570 */  0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,  /* ~2....|. */
                /* 0578 */  0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,  /* ..z...ha */
                /* 0580 */  0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,  /* ..=...C. */
                /* 0588 */  0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,  /* .......8 */
                /* 0590 */  0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,  /* .Y...... */
                /* 0598 */  0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,  /* ...0.... */
                /* 05A0 */  0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,  /* .N...5.. */
                /* 05A8 */  0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,  /* .}...... */
                /* 05B0 */  0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,  /* .c...5.] */
                /* 05B8 */  0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,  /* ........ */
                /* 05C0 */  0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,  /* .Rs..... */
                /* 05C8 */  0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,  /* /...).F. */
                /* 05D0 */  0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,  /* .0...... */
                /* 05D8 */  0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,  /* ........ */
                /* 05E0 */  0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,  /* e.....m. */
                /* 05E8 */  0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,  /* xC...... */
                /* 05F0 */  0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,  /* m...o.(. */
                /* 05F8 */  0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,  /* ..m@<.3. */
                /* 0600 */  0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,  /* ..n..\7. */
                /* 0608 */  0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,  /* ...0*..) */
                /* 0610 */  0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,  /* .'.h..P. */
                /* 0618 */  0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,  /* .n.~^... */
                /* 0620 */  0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,  /* .......o */
                /* 0628 */  0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,  /* .oX~..|. */
                /* 0630 */  0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,  /* .1...... */
                /* 0638 */  0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,  /* .......o */
                /* 0640 */  0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,  /* ......`. */
                /* 0648 */  0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,  /* ..7.(m.. */
                /* 0650 */  0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,  /* .=!x|... */
                /* 0658 */  0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,  /* ...98.y. */
                /* 0660 */  0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,  /* .v...... */
                /* 0668 */  0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,  /* ...Lp<.h */
                /* 0670 */  0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,  /* .b...r48 */
                /* 0678 */  0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,  /* ?...a... */
                /* 0680 */  0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,  /* G8.... . */
                /* 0688 */  0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,  /* ...Vm... */
                /* 0690 */  0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,  /* P....... */
                /* 0698 */  0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,  /* a......: */
                /* 06A0 */  0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,  /* ..>..8t7 */
                /* 06A8 */  0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,  /* 8T...... */
                /* 06B0 */  0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,  /* q..2i.(. */
                /* 06B8 */  0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,  /* S.).I... */
                /* 06C0 */  0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,  /* C....... */
                /* 06C8 */  0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,  /* ...<.1.l */
                /* 06D0 */  0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,  /* ...d...u */
                /* 06D8 */  0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,  /* K2Do8... */
                /* 06E0 */  0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,  /* .Dy..bg. */
                /* 06E8 */  0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,  /* ...,..B. */
                /* 06F0 */  0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,  /* (/.F.... */
                /* 06F8 */  0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,  /* #....... */
                /* 0700 */  0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,  /* ..A.XO.. */
                /* 0708 */  0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,  /* ..F.:.x. */
                /* 0710 */  0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,  /* >.x..!.9 */
                /* 0718 */  0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,  /* .s{T8N_% */
                /* 0720 */  0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,  /* L....... */
                /* 0728 */  0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,  /* ...3.X.. */
                /* 0730 */  0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,  /* >......l */
                /* 0738 */  0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,  /* ..,..... */
                /* 0740 */  0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,  /* ....!..L */
                /* 0748 */  0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,  /* `.'.:... */
                /* 0750 */  0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,  /* c./|2.|M */
                /* 0758 */  0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,  /* 0"....}. */
                /* 0760 */  0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,  /* .\o....: */
                /* 0768 */  0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,  /* h.N.>(.. */
                /* 0770 */  0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,  /* .....*`. */
                /* 0778 */  0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,  /* ..U`.... */
                /* 0780 */  0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,  /* ......!. */
                /* 0788 */  0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,  /* C..=...s */
                /* 0790 */  0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,  /* >...\g.p */
                /* 0798 */  0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,  /* ....p.qi */
                /* 07A0 */  0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,  /* .....ppM */
                /* 07A8 */  0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,  /* ..p.q.`. */
                /* 07B0 */  0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,  /* ...,I&.# */
                /* 07B8 */  0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,  /* ..0(.... */
                /* 07C0 */  0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,  /* ..)..... */
                /* 07C8 */  0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,  /* )....... */
                /* 07D0 */  0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,  /* ...0hz.. */
                /* 07D8 */  0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,  /* .L...... */
                /* 07E0 */  0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,  /* .*...?0. */
                /* 07E8 */  0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,  /* ..c9.... */
                /* 07F0 */  0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,  /* ...3.$.. */
                /* 07F8 */  0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,  /* Q.'...;W */
                /* 0800 */  0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,  /* ..q...w) */
                /* 0808 */  0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,  /* ...+.cF. */
                /* 0810 */  0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,  /* .r..../u */
                /* 0818 */  0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,  /* l.`9.... */
                /* 0820 */  0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,  /* ...Xg.<. */
                /* 0828 */  0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,  /* i1....Va */
                /* 0830 */  0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,  /* ..Au.... */
                /* 0838 */  0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,  /* ....?... */
                /* 0840 */  0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,  /* +....i.G */
                /* 0848 */  0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,  /* ......<. */
                /* 0850 */  0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,  /* .....c.. */
                /* 0858 */  0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,  /* .KX....l */
                /* 0860 */  0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,  /* .\X.!... */
                /* 0868 */  0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,  /* !`...IF. */
                /* 0870 */  0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,  /* ......>. */
                /* 0878 */  0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,  /* .8.G.... */
                /* 0880 */  0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,  /* ......#. */
                /* 0888 */  0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,  /* }.3{:.." */
                /* 0890 */  0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,  /* .{.....- */
                /* 0898 */  0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,  /* |.x.4B8v */
                /* 08A0 */  0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,  /* ..H....N */
                /* 08A8 */  0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,  /* ..0.9y.. */
                /* 08B0 */  0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,  /* ..@..... */
                /* 08B8 */  0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,  /* 6*.....b */
                /* 08C0 */  0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,  /* .e...... */
                /* 08C8 */  0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,  /* ..,...T7 */
                /* 08D0 */  0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,  /* ._.._.^. */
                /* 08D8 */  0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,  /* .pq.=... */
                /* 08E0 */  0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,  /* .t...... */
                /* 08E8 */  0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,  /* l.`<.0.. */
                /* 08F0 */  0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,  /* .Q.1.... */
                /* 08F8 */  0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,  /* .9..Jx;. */
                /* 0900 */  0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,  /* r...hBO. */
                /* 0908 */  0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,  /* O.>).... */
                /* 0910 */  0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,  /* .&P...>. */
                /* 0918 */  0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,  /* (>.x-.N. */
                /* 0920 */  0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,  /* ....j8.. */
                /* 0928 */  0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,  /* ..c..8.. */
                /* 0930 */  0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,  /* .5..$=-# */
                /* 0938 */  0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,  /* .8.<2... */
                /* 0940 */  0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,  /* ........ */
                /* 0948 */  0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,  /* !.y....q */
                /* 0950 */  0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,  /* ..|g.e.| */
                /* 0958 */  0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,  /* ...hh.d| */
                /* 0960 */  0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,  /* A0....w. */
                /* 0968 */  0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,  /* P.....B. */
                /* 0970 */  0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,  /* ...y.V.5 */
                /* 0978 */  0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,  /* .J.g._.p */
                /* 0980 */  0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,  /* Sd....SL */
                /* 0988 */  0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,  /* .uG.Q..M */
                /* 0990 */  0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,  /* ..TvZ`g! */
                /* 0998 */  0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,  /* v..]I... */
                /* 09A0 */  0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,  /* ./Y.p... */
                /* 09A8 */  0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,  /* .8...... */
                /* 09B0 */  0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,  /* u.p/D... */
                /* 09B8 */  0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,  /* 2..Q..'. */
                /* 09C0 */  0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,  /* ...Y.I.0 */
                /* 09C8 */  0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,  /* q....... */
                /* 09D0 */  0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,  /* ..W...C. */
                /* 09D8 */  0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,  /*  ..).8.. */
                /* 09E0 */  0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,  /* p.dxP... */
                /* 09E8 */  0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,  /* .F.{.... */
                /* 09F0 */  0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,  /* .....>-. */
                /* 09F8 */  0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,  /* .....9!. */
                /* 0A00 */  0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,  /* S.....1. */
                /* 0A08 */  0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,  /* .*..i.vK */
                /* 0A10 */  0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,  /* ~sxU.i.. */
                /* 0A18 */  0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,  /* "./{.1.. */
                /* 0A20 */  0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,  /* ...}#J.. */
                /* 0A28 */  0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,  /* ..=-.c.. */
                /* 0A30 */  0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,  /* ......wz */
                /* 0A38 */  0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,  /* ...8.zz. */
                /* 0A40 */  0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,  /* .y....q. */
                /* 0A48 */  0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,  /* G...P8~l */
                /* 0A50 */  0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,  /* ......G. */
                /* 0A58 */  0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,  /* . qC...y */
                /* 0A60 */  0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,  /* ........ */
                /* 0A68 */  0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,  /* ..%..... */
                /* 0A70 */  0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,  /* .Rp..... */
                /* 0A78 */  0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,  /* .;..k.(! */
                /* 0A80 */  0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,  /* 0.3...O. */
                /* 0A88 */  0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,  /* .1{..3.8 */
                /* 0A90 */  0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,  /* .G...... */
                /* 0A98 */  0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,  /* v.x#.C.. */
                /* 0AA0 */  0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,  /* ........ */
                /* 0AA8 */  0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,  /* 6vp.!.@. */
                /* 0AB0 */  0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,  /* ....d... */
                /* 0AB8 */  0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,  /* .C...... */
                /* 0AC0 */  0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,  /* .;.`.... */
                /* 0AC8 */  0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,  /* 0....... */
                /* 0AD0 */  0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,  /* .......& */
                /* 0AD8 */  0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,  /* ..L.G... */
                /* 0AE0 */  0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,  /* ..-..... */
                /* 0AE8 */  0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,  /* .c....&. */
                /* 0AF0 */  0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,  /* ....<.!" */
                /* 0AF8 */  0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,  /* .@..>. . */
                /* 0B00 */  0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,  /* c....... */
                /* 0B08 */  0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,  /* ..W<x~Z. */
                /* 0B10 */  0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,  /* ]..9..,O */
                /* 0B18 */  0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,  /* .q..Y... */
                /* 0B20 */  0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,  /* ..]..k.) */
                /* 0B28 */  0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,  /* .C.'._.= */
                /* 0B30 */  0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,  /* Y....... */
                /* 0B38 */  0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,  /* O.uL9.W. */
                /* 0B40 */  0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,  /* v..!.wI6 */
                /* 0B48 */  0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,  /* ..!.g$~. */
                /* 0B50 */  0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,  /* .0<..3xG */
                /* 0B58 */  0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,  /* 8....... */
                /* 0B60 */  0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,  /* ...|.`.. */
                /* 0B68 */  0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,  /* .u...Q.. */
                /* 0B70 */  0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,  /* 2...;... */
                /* 0B78 */  0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,  /* ...7K>.v */
                /* 0B80 */  0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,  /* .y.3.... */
                /* 0B88 */  0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,  /* `..|4A.. */
                /* 0B90 */  0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,  /* .....M.. */
                /* 0B98 */  0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,  /* .{...D.. */
                /* 0BA0 */  0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,  /* ....8_.` */
                /* 0BA8 */  0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,  /* ...E.... */
                /* 0BB0 */  0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,  /* ..C..... */
                /* 0BB8 */  0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,  /* 8....P.. */
                /* 0BC0 */  0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,  /* .$..8../ */
                /* 0BC8 */  0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,  /* .>...4.y */
                /* 0BD0 */  0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,  /* >.p{...P */
                /* 0BD8 */  0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,  /* @....=!. */
                /* 0BE0 */  0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,  /* 3.....=. */
                /* 0BE8 */  0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,  /* .F...... */
                /* 0BF0 */  0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,  /* N.....wf */
                /* 0BF8 */  0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,  /* ..?<.~.. */
                /* 0C00 */  0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,  /* .=...... */
                /* 0C08 */  0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,  /* ..S..... */
                /* 0C10 */  0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,  /* ...._.>. */
                /* 0C18 */  0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,  /* 3p...... */
                /* 0C20 */  0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,  /* ....M... */
                /* 0C28 */  0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,  /* p...a... */
                /* 0C30 */  0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,  /* Q..j../. */
                /* 0C38 */  0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,  /* S...`... */
                /* 0C40 */  0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,  /* .hg1T... */
                /* 0C48 */  0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,  /* ....Pg1z */
                /* 0C50 */  0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,  /* ..\.>... */
                /* 0C58 */  0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,  /*  ....... */
                /* 0C60 */  0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,  /* ....S..= */
                /* 0C68 */  0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,  /* .Y...|.. */
                /* 0C70 */  0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,  /* ....l... */
                /* 0C78 */  0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,  /* ..O.>i.. */
                /* 0C80 */  0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,  /* ?i..Q.a. */
                /* 0C88 */  0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,  /* F.#..... */
                /* 0C90 */  0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,  /* .`h..... */
                /* 0C98 */  0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,  /* .s8v@>.. */
                /* 0CA0 */  0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,  /* ?G...;.. */
                /* 0CA8 */  0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,  /* ...~c... */
                /* 0CB0 */  0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,  /* o....Q.. */
                /* 0CB8 */  0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,  /* W...l... */
                /* 0CC0 */  0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,  /* ...!'.C. */
                /* 0CC8 */  0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,  /* 2....... */
                /* 0CD0 */  0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,  /* .".3.#.. */
                /* 0CD8 */  0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,  /* .....,.. */
                /* 0CE0 */  0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,  /* ...Gx... */
                /* 0CE8 */  0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,  /* ......#; */
                /* 0CF0 */  0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,  /* .3{..... */
                /* 0CF8 */  0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,  /* .c...... */
                /* 0D00 */  0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,  /* .cC.R|.. */
                /* 0D08 */  0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,  /* qT2...|b */
                /* 0D10 */  0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,  /* 8. o..\. */
                /* 0D18 */  0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,  /* Hc0_Z|.. */
                /* 0D20 */  0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,  /* C...!..P */
                /* 0D28 */  0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,  /* CD...... */
                /* 0D30 */  0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,  /* !....... */
                /* 0D38 */  0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,  /* ..pCC..| */
                /* 0D40 */  0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,  /* .`...... */
                /* 0D48 */  0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,  /* .B...(.. */
                /* 0D50 */  0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,  /* ........ */
                /* 0D58 */  0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,  /* ^..G.J.. */
                /* 0D60 */  0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,  /* <...v... */
                /* 0D68 */  0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,  /* .abp.8.. */
                /* 0D70 */  0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,  /* .....8.. */
                /* 0D78 */  0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,  /* xP...... */
                /* 0D80 */  0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,  /* q.|....c */
                /* 0D88 */  0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,  /* "..C.... */
                /* 0D90 */  0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,  /* .k.k1.h. */
                /* 0D98 */  0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,  /* ..G..t.. */
                /* 0DA0 */  0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,  /* .=.G;..= */
                /* 0DA8 */  0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,  /* ..7..... */
                /* 0DB0 */  0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,  /* GA..t... */
                /* 0DB8 */  0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,  /* .:.a...7 */
                /* 0DC0 */  0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,  /* 0D...... */
                /* 0DC8 */  0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,  /* 8C=h_.<k */
                /* 0DD0 */  0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,  /* ...9.\.. */
                /* 0DD8 */  0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,  /* I.8..... */
                /* 0DE0 */  0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,  /* ..yX...9 */
                /* 0DE8 */  0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,  /* ..N..... */
                /* 0DF0 */  0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,  /* ........ */
                /* 0DF8 */  0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,  /* VG|..C.. */
                /* 0E00 */  0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,  /* ......3. */
                /* 0E08 */  0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,  /* .E.p.G.. */
                /* 0E10 */  0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,  /* .......N */
                /* 0E18 */  0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,  /* @......G */
                /* 0E20 */  0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,  /* .v.`.(.. */
                /* 0E28 */  0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,  /* ..O..5.. */
                /* 0E30 */  0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,  /* ....!... */
                /* 0E38 */  0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,  /* ..{..s.. */
                /* 0E40 */  0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,  /* ...:..?= */
                /* 0E48 */  0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,  /* x.o.>=0. */
                /* 0E50 */  0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,  /* .....pL. */
                /* 0E58 */  0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,  /* .1....-. */
                /* 0E60 */  0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,  /* .Pt.x... */
                /* 0E68 */  0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,  /* .."....G */
                /* 0E70 */  0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,  /* ..0.a... */
                /* 0E78 */  0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,  /*  c...,J. */
                /* 0E80 */  0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,  /* W..G.V.. */
                /* 0E88 */  0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,  /* 8...=l.. */
                /* 0E90 */  0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,  /* ..U....U */
                /* 0E98 */  0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,  /* ........ */
                /* 0EA0 */  0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,  /* uu..}... */
                /* 0EA8 */  0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,  /* ..KP. P# */
                /* 0EB0 */  0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,  /* 3...6c.' */
                /* 0EB8 */  0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,  /* '.X...h. */
                /* 0EC0 */  0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,  /* .i..v... */
                /* 0EC8 */  0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,  /* 8....s.` */
                /* 0ED0 */  0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,  /* h8....+. */
                /* 0ED8 */  0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,  /* ?.....~. */
                /* 0EE0 */  0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,  /* >T..x... */
                /* 0EE8 */  0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,  /* ..E...k. */
                /* 0EF0 */  0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,  /* ..y..8p. */
                /* 0EF8 */  0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,  /* T}6.3... */
                /* 0F00 */  0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,  /* ..@."... */
                /* 0F08 */  0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,  /* <;...... */
                /* 0F10 */  0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,  /* ...St.c. */
                /* 0F18 */  0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,  /* ...8...\ */
                /* 0F20 */  0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,  /* ..m.74.. */
                /* 0F28 */  0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,  /* ......O. */
                /* 0F30 */  0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,  /* u...../~ */
                /* 0F38 */  0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,  /* ...K;... */
                /* 0F40 */  0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,  /* ...).... */
                /* 0F48 */  0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,  /* ..r../.. */
                /* 0F50 */  0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,  /* ...1^... */
                /* 0F58 */  0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,  /* ........ */
                /* 0F60 */  0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,  /* ..8f.'.` */
                /* 0F68 */  0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,  /* .".N...^ */
                /* 0F70 */  0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,  /* '....... */
                /* 0F78 */  0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,  /* ..q}..*' */
                /* 0F80 */  0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,  /* *...0..? */
                /* 0F88 */  0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,  /* ...:...w */
                /* 0F90 */  0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,  /* `;...... */
                /* 0F98 */  0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,  /* .x....x. */
                /* 0FA0 */  0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,  /* %Q ..A.8 */
                /* 0FA8 */  0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,  /* ....;.@. */
                /* 0FB0 */  0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,  /* ....3..` */
                /* 0FB8 */  0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,  /* `?...S.> */
                /* 0FC0 */  0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,  /* ...=..M. */
                /* 0FC8 */  0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,  /* {..6.... */
                /* 0FD0 */  0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,  /* {5.l.c1. */
                /* 0FD8 */  0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,  /* ..!.t... */
                /* 0FE0 */  0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,  /* N.K...a. */
                /* 0FE8 */  0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,  /* 1!.....8 */
                /* 0FF0 */  0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,  /* .N...wZ. */
                /* 0FF8 */  0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,  /* p8.g.,.D */
                /* 1000 */  0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,  /* .q.t.... */
                /* 1008 */  0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,  /* .....a.O */
                /* 1010 */  0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,  /* ..<.w#.N */
                /* 1018 */  0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,  /* ._...... */
                /* 1020 */  0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,  /* .......: */
                /* 1028 */  0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,  /* ....z6.. */
                /* 1030 */  0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,  /* ....x.{. */
                /* 1038 */  0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,  /* ..;@.G=. */
                /* 1040 */  0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,  /* .}<HD... */
                /* 1048 */  0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,  /* .....C.~ */
                /* 1050 */  0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,  /* .....^.B */
                /* 1058 */  0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,  /* ..Q..zy. */
                /* 1060 */  0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,  /* p...`... */
                /* 1068 */  0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,  /* .....?.. */
                /* 1070 */  0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,  /* ....?... */
                /* 1078 */  0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,  /* .`;?.... */
                /* 1080 */  0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,  /* .'0...'0 */
                /* 1088 */  0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,  /* .....qVD */
                /* 1090 */  0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,  /* .......H */
                /* 1098 */  0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,  /* .(....Q. */
                /* 10A0 */  0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,  /* 8.Y.BN.. */
                /* 10A8 */  0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,  /* .....W.~ */
                /* 10B0 */  0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,  /* .`....:, */
                /* 10B8 */  0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,  /* ......U` */
                /* 10C0 */  0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,  /* ...f...O */
                /* 10C8 */  0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,  /* O.1.8C.. */
                /* 10D0 */  0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,  /* I....... */
                /* 10D8 */  0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,  /* _^|..1.. */
                /* 10E0 */  0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,  /* B..?]..t */
                /* 10E8 */  0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,  /* .1...... */
                /* 10F0 */  0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,  /* .w..R..c */
                /* 10F8 */  0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,  /*  p..z.g. */
                /* 1100 */  0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,  /* ........ */
                /* 1108 */  0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,  /* ...z.x.. */
                /* 1110 */  0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,  /* ....(... */
                /* 1118 */  0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,  /* z.4f.`.. */
                /* 1120 */  0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,  /* 1..=.h.. */
                /* 1128 */  0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,  /* ........ */
                /* 1130 */  0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,  /* .....#OP */
                /* 1138 */  0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,  /* ........ */
                /* 1140 */  0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,  /* ..|..... */
                /* 1148 */  0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,  /* .>Z...1_ */
                /* 1150 */  0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,  /* ....$... */
                /* 1158 */  0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,  /* ..P@:w8. */
                /* 1160 */  0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,  /* ..}P.... */
                /* 1168 */  0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,  /* <.S...(. */
                /* 1170 */  0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,  /* .|...C.5 */
                /* 1178 */  0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,  /* ........ */
                /* 1180 */  0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,  /* ....g... */
                /* 1188 */  0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,  /* .g..o... */
                /* 1190 */  0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,  /* <|}`'O.. */
                /* 1198 */  0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,  /* .Ey..qN9 */
                /* 11A0 */  0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,  /* .:...... */
                /* 11A8 */  0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,  /* ...e.).K */
                /* 11B0 */  0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,  /* .w&.ss.. */
                /* 11B8 */  0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,  /* ......4. */
                /* 11C0 */  0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,  /* .b..}T1j */
                /* 11C8 */  0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,  /* .....u.% */
                /* 11D0 */  0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,  /* ...g-... */
                /* 11D8 */  0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,  /* .P:...'. */
                /* 11E0 */  0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,  /* `..U..|. */
                /* 11E8 */  0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,  /* b....... */
                /* 11F0 */  0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,  /* .=..NT.7 */
                /* 11F8 */  0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,  /* .....;.. */
                /* 1200 */  0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,  /* .?..D.gN */
                /* 1208 */  0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,  /* ....2... */
                /* 1210 */  0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,  /* {g.g.(o. */
                /* 1218 */  0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,  /* F8.x.z.. */
                /* 1220 */  0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,  /* ......i. */
                /* 1228 */  0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,  /* X.....E> */
                /* 1230 */  0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,  /* #..'.... */
                /* 1238 */  0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,  /* ........ */
                /* 1240 */  0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,  /* ;.....8. */
                /* 1248 */  0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,  /* `......& */
                /* 1250 */  0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,  /* .#....G& */
                /* 1258 */  0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,  /* ..Xa..'{ */
                /* 1260 */  0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,  /* ....E... */
                /* 1268 */  0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,  /* .Y|X.... */
                /* 1270 */  0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,  /* .<...I.E */
                /* 1278 */  0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,  /* >w.C..!. */
                /* 1280 */  0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,  /* ....9X.. */
                /* 1288 */  0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,  /* ..9..f.. */
                /* 1290 */  0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,  /* ...8]... */
                /* 1298 */  0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,  /* 0.8.P..] */
                /* 12A0 */  0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,  /* =Mv$...R */
                /* 12A8 */  0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,  /* '....`.. */
                /* 12B0 */  0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,  /* D.1..... */
                /* 12B8 */  0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,  /*  >.8.... */
                /* 12C0 */  0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,  /* ...PA.%t */
                /* 12C8 */  0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,  /* ....w..b */
                /* 12D0 */  0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,  /* `.N.1... */
                /* 12D8 */  0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,  /* E..h.S.S */
                /* 12E0 */  0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,  /* .....}a. */
                /* 12E8 */  0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,  /* .....>pp */
                /* 12F0 */  0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,  /* .c...,4. */
                /* 12F8 */  0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,  /* .l...Vr. */
                /* 1300 */  0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,  /* !....`.. */
                /* 1308 */  0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,  /* g.F@.... */
                /* 1310 */  0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,  /* g.6}g.P. */
                /* 1318 */  0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,  /* ...s.... */
                /* 1320 */  0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,  /* ......5. */
                /* 1328 */  0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,  /* &P*n...7 */
                /* 1330 */  0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,  /* .'..=.7. */
                /* 1338 */  0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,  /* .?b..pHg */
                /* 1340 */  0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,  /* k.y .~.e */
                /* 1348 */  0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,  /* .?...... */
                /* 1350 */  0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,  /* .7..A..3 */
                /* 1358 */  0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,  /* ..0..T.. */
                /* 1360 */  0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,  /* .JP...z. */
                /* 1368 */  0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,  /* ..0...og */
                /* 1370 */  0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,  /* .%.p...0 */
                /* 1378 */  0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,  /* ...@.... */
                /* 1380 */  0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,  /* ..L0..P. */
                /* 1388 */  0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,  /* .Z.....K */
                /* 1390 */  0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,  /* ...>.x.. */
                /* 1398 */  0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,  /* [0...^]. */
                /* 13A0 */  0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,  /* .'....M. */
                /* 13A8 */  0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,  /* `.=..o1> */
                /* 13B0 */  0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,  /* _....u.. */
                /* 13B8 */  0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,  /* ...c..Ez */
                /* 13C0 */  0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,  /* ...|..q. */
                /* 13C8 */  0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,  /* .|.4.+.. */
                /* 13D0 */  0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,  /* ?F.9.... */
                /* 13D8 */  0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,  /* .8...K.. */
                /* 13E0 */  0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,  /* ..]0...X */
                /* 13E8 */  0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,  /* .9...d.. */
                /* 13F0 */  0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,  /* ...1.k.7 */
                /* 13F8 */  0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,  /* |3...... */
                /* 1400 */  0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,  /* ;.}.>... */
                /* 1408 */  0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,  /* ........ */
                /* 1410 */  0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,  /* .-.c...B */
                /* 1418 */  0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,  /* .;u....+ */
                /* 1420 */  0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,  /* y.....r. */
                /* 1428 */  0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,  /* K."~.... */
                /* 1430 */  0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,  /* ...q.... */
                /* 1438 */  0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,  /* .Q..(... */
                /* 1440 */  0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,  /* ".2X.... */
                /* 1448 */  0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,  /* .F.it... */
                /* 1450 */  0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,  /* a.g...7. */
                /* 1458 */  0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,  /* ......:. */
                /* 1460 */  0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,  /* ....g.., */
                /* 1468 */  0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,  /* .i.....c */
                /* 1470 */  0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,  /* O..a.... */
                /* 1478 */  0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,  /* w....... */
                /* 1480 */  0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,  /* ........ */
                /* 1488 */  0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,  /* .u.k.UQ. */
                /* 1490 */  0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,  /* ....A... */
                /* 1498 */  0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,  /* ........ */
                /* 14A0 */  0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,  /* ...=.... */
                /* 14A8 */  0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,  /* z6...... */
                /* 14B0 */  0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,  /* .._.F... */
                /* 14B8 */  0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,  /* (.'....` */
                /* 14C0 */  0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,  /* .Q1.T8.g */
                /* 14C8 */  0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,  /* |..A...z */
                /* 14D0 */  0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,  /* ..2...]" */
                /* 14D8 */  0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,  /* .6...C.. */
                /* 14E0 */  0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,  /* .....p.7 */
                /* 14E8 */  0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,  /* BD...... */
                /* 14F0 */  0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,  /* 4.%^.... */
                /* 14F8 */  0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,  /* ...B..B. */
                /* 1500 */  0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,  /* .Q...... */
                /* 1508 */  0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,  /* .go..e.. */
                /* 1510 */  0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,  /* ....o..| */
                /* 1518 */  0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,  /* .q...!x. */
                /* 1520 */  0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,  /* ......k@ */
                /* 1528 */  0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,  /* .......F */
                /* 1530 */  0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,  /* ...5^. P */
                /* 1538 */  0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,  /* ..~..... */
                /* 1540 */  0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,  /* ..b.n>.. */
                /* 1548 */  0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,  /* ........ */
                /* 1550 */  0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,  /* W_...{9. */
                /* 1558 */  0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,  /* .....|.. */
                /* 1560 */  0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,  /* ..x...+' */
                /* 1568 */  0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,  /* ...k.A.. */
                /* 1570 */  0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,  /* ...\We.j */
                /* 1578 */  0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,  /* |.../p.. */
                /* 1580 */  0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,  /* LOe0.)>. */
                /* 1588 */  0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,  /* a....... */
                /* 1590 */  0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,  /* g....... */
                /* 1598 */  0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,  /* .A.1..<' */
                /* 15A0 */  0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,  /* .{...... */
                /* 15A8 */  0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,  /* ...q.... */
                /* 15B0 */  0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,  /* .w.c...= */
                /* 15B8 */  0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,  /* .x...xD. */
                /* 15C0 */  0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,  /* .?..! .b */
                /* 15C8 */  0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,  /* ........ */
                /* 15D0 */  0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,  /* ...7..}u */
                /* 15D8 */  0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,  /* ...'0... */
                /* 15E0 */  0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,  /* <...@.pt */
                /* 15E8 */  0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,  /* ........ */
                /* 15F0 */  0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,  /* ...p..q. */
                /* 15F8 */  0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,  /* ..+...or */
                /* 1600 */  0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,  /* ..c.70v. */
                /* 1608 */  0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,  /*  .9.w... */
                /* 1610 */  0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,  /* .-|...'. */
                /* 1618 */  0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,  /* .>Z..... */
                /* 1620 */  0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,  /* ........ */
                /* 1628 */  0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,  /* e.O.W@.. */
                /* 1630 */  0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,  /* `..>.... */
                /* 1638 */  0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,  /* ;Fy&...  */
                /* 1640 */  0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,  /* .Hr..... */
                /* 1648 */  0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,  /* .....6pF */
                /* 1650 */  0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,  /* ......a. */
                /* 1658 */  0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,  /* ...!`... */
                /* 1660 */  0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,  /* ........ */
                /* 1668 */  0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,  /* ....fxt. */
                /* 1670 */  0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,  /* ..+.;... */
                /* 1678 */  0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,  /* .k...8.= */
                /* 1680 */  0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,  /* .T...|.. */
                /* 1688 */  0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,  /* .P.,}h.@ */
                /* 1690 */  0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,  /* ........ */
                /* 1698 */  0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,  /* ..[..].& */
                /* 16A0 */  0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,  /* .7.,PIn. */
                /* 16A8 */  0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,  /* .a...... */
                /* 16B0 */  0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,  /* .ou..... */
                /* 16B8 */  0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,  /* .=..0~.. */
                /* 16C0 */  0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,  /* ...).Y.w */
                /* 16C8 */  0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,  /* .0...'.. */
                /* 16D0 */  0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,  /* .F~7x... */
                /* 16D8 */  0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,  /* }/.....? */
                /* 16E0 */  0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,  /* Q.)..... */
                /* 16E8 */  0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,  /* .yDF..._ */
                /* 16F0 */  0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,  /* ..x$.... */
                /* 16F8 */  0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,  /* ..P..~x. */
                /* 1700 */  0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,  /* ....V.p. */
                /* 1708 */  0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,  /* ..r..\.@ */
                /* 1710 */  0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,  /* u....{m. */
                /* 1718 */  0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,  /* ......P. */
                /* 1720 */  0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,  /* $....... */
                /* 1728 */  0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,  /* 8..K.... */
                /* 1730 */  0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,  /* %..0,... */
                /* 1738 */  0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,  /* a *..E`y */
                /* 1740 */  0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,  /* .V...`.) */
                /* 1748 */  0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,  /* .IcG...* */
                /* 1750 */  0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,  /* .....b.. */
                /* 1758 */  0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,  /* .=.|...@ */
                /* 1760 */  0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,  /* Q`...... */
                /* 1768 */  0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,  /* .....#.] */
                /* 1770 */  0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,  /* ..N..%.s */
                /* 1778 */  0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,  /* 9...j... */
                /* 1780 */  0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,  /* . .8.<.. */
                /* 1788 */  0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,  /* ........ */
                /* 1790 */  0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,  /* ..oJ../; */
                /* 1798 */  0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,  /* 1..}J.y. */
                /* 17A0 */  0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,  /* ...G.1.. */
                /* 17A8 */  0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,  /* =..&.... */
                /* 17B0 */  0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,  /* . b4C... */
                /* 17B8 */  0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,  /* .}.x/.L. */
                /* 17C0 */  0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,  /* [A.._..C */
                /* 17C8 */  0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,  /* ...2.?.. */
                /* 17D0 */  0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,  /* >O..K5.N */
                /* 17D8 */  0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,  /* 6....... */
                /* 17E0 */  0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,  /* .}...h.. */
                /* 17E8 */  0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,  /* M.'..... */
                /* 17F0 */  0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,  /* .p<.I... */
                /* 17F8 */  0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,  /* |....<.w */
                /* 1800 */  0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,  /* ...e.... */
                /* 1808 */  0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,  /* y}..c$.F */
                /* 1810 */  0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,  /* ........ */
                /* 1818 */  0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,  /* .....`.. */
                /* 1820 */  0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,  /* S$.yvy.. */
                /* 1828 */  0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,  /* .H...... */
                /* 1830 */  0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,  /* .<....#. */
                /* 1838 */  0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,  /* /.... p> */
                /* 1840 */  0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,  /* .......1 */
                /* 1848 */  0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,  /* ..G.>~.. */
                /* 1850 */  0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,  /* V.@.cQ.G */
                /* 1858 */  0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,  /* $~N...s" */
                /* 1860 */  0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,  /* .8..8-.. */
                /* 1868 */  0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,  /* .3%v.'.. */
                /* 1870 */  0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,  /* %....r.. */
                /* 1878 */  0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,  /* ..$..z.. */
                /* 1880 */  0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,  /* .I.w._d| */
                /* 1888 */  0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,  /* (zl.V... */
                /* 1890 */  0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,  /* .`*..... */
                /* 1898 */  0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,  /* |.P.l.|. */
                /* 18A0 */  0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,  /* ........ */
                /* 18A8 */  0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,  /* .@.....s */
                /* 18B0 */  0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,  /* F....v.. */
                /* 18B8 */  0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,  /* .M...... */
                /* 18C0 */  0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,  /* =.....C. */
                /* 18C8 */  0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,  /* .t..0f.. */
                /* 18D0 */  0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,  /* ...~d.9. */
                /* 18D8 */  0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,  /* ..P..... */
                /* 18E0 */  0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,  /* ..X.q... */
                /* 18E8 */  0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,  /* .....A<. */
                /* 18F0 */  0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,  /* .:...... */
                /* 18F8 */  0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,  /* 3:.o..5. */
                /* 1900 */  0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,  /* ..Q.r8.. */
                /* 1908 */  0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,  /* t......S */
                /* 1910 */  0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,  /* 9U.U..!. */
                /* 1918 */  0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,  /* ...5.(.k */
                /* 1920 */  0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,  /* D.....Fp */
                /* 1928 */  0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,  /* ..I...:h */
                /* 1930 */  0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,  /* %.=2.v.. */
                /* 1938 */  0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,  /* ......r. */
                /* 1940 */  0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,  /* 5@..bp_R */
                /* 1948 */  0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,  /* `\.|I... */
                /* 1950 */  0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,  /* <...E..h */
                /* 1958 */  0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,  /* .s....r] */
                /* 1960 */  0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,  /* ../..-.l */
                /* 1968 */  0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,  /* ........ */
                /* 1970 */  0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,  /* .{n..<7. */
                /* 1978 */  0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,  /* .=...... */
                /* 1980 */  0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,  /* ........ */
                /* 1988 */  0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,  /* ..8.zt.. */
                /* 1990 */  0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,  /* <:.%..Z. */
                /* 1998 */  0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,  /* .\...... */
                /* 19A0 */  0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,  /* N....... */
                /* 19A8 */  0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,  /* ........ */
                /* 19B0 */  0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,  /* ....a.y. */
                /* 19B8 */  0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,  /* `.x.@.<a */
                /* 19C0 */  0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,  /* `.._.... */
                /* 19C8 */  0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,  /* .....K.G */
                /* 19D0 */  0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,  /* ...G.... */
                /* 19D8 */  0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,  /* !zX..... */
                /* 19E0 */  0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,  /* ......`. */
                /* 19E8 */  0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,  /* x|`.w7.. */
                /* 19F0 */  0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,  /* .OB>.... */
                /* 19F8 */  0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,  /* 1.M...<. */
                /* 1A00 */  0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,  /* .t..)`tv */
                /* 1A08 */  0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,  /* 1.o$V..c */
                /* 1A10 */  0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,  /* ......)x */
                /* 1A18 */  0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,  /* .&..R'O8 */
                /* 1A20 */  0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,  /* ....?H.. */
                /* 1A28 */  0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,  /* ........ */
                /* 1A30 */  0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,  /* m......l */
                /* 1A38 */  0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,  /* ~.xRb... */
                /* 1A40 */  0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,  /* o..z;_.. */
                /* 1A48 */  0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,  /* .!.2XC<. */
                /* 1A50 */  0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,  /* 2}..q... */
                /* 1A58 */  0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,  /* @..+.... */
                /* 1A60 */  0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,  /* =].].... */
                /* 1A68 */  0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,  /* ./T>|... */
                /* 1A70 */  0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,  /* ".0.6... */
                /* 1A78 */  0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,  /* .2T..o.. */
                /* 1A80 */  0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,  /* ,.c....e */
                /* 1A88 */  0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,  /* .&..1.#. */
                /* 1A90 */  0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,  /* ........ */
                /* 1A98 */  0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,  /* .....I.. */
                /* 1AA0 */  0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,  /* j.W._... */
                /* 1AA8 */  0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,  /* ...I.A.. */
                /* 1AB0 */  0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,  /* ..!...?a */
                /* 1AB8 */  0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,  /* ....C~t. */
                /* 1AC0 */  0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,  /* ..xL..<C */
                /* 1AC8 */  0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,  /* .b...... */
                /* 1AD0 */  0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,  /* .|/1"v@. */
                /* 1AD8 */  0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,  /* .=..Q..< */
                /* 1AE0 */  0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,  /* "...a... */
                /* 1AE8 */  0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,  /* $|j..... */
                /* 1AF0 */  0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,  /* P....... */
                /* 1AF8 */  0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,  /* x......3 */
                /* 1B00 */  0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,  /* ..#..... */
                /* 1B08 */  0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,  /* ........ */
                /* 1B10 */  0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,  /* 3.O.>.1. */
                /* 1B18 */  0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,  /* G{.....? */
                /* 1B20 */  0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,  /* ..w].~0. */
                /* 1B28 */  0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,  /* 3...X.d. */
                /* 1B30 */  0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,  /* y..)..&. */
                /* 1B38 */  0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,  /* +/...[9. */
                /* 1B40 */  0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,  /* ..>..... */
                /* 1B48 */  0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,  /* .<Ce..u. */
                /* 1B50 */  0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,  /* .5.a?.x. */
                /* 1B58 */  0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,  /* .y./k.X_ */
                /* 1B60 */  0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,  /* J8...... */
                /* 1B68 */  0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,  /* ...w...  */
                /* 1B70 */  0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,  /* ...`.... */
                /* 1B78 */  0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,  /* .Y...... */
                /* 1B80 */  0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,  /* A..G..7. */
                /* 1B88 */  0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,  /* ....G..x */
                /* 1B90 */  0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,  /* .... ... */
                /* 1B98 */  0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,  /* ....P... */
                /* 1BA0 */  0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,  /* !.S.;B.P */
                /* 1BA8 */  0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,  /* .^....e" */
                /* 1BB0 */  0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,  /* J.(.B..\ */
                /* 1BB8 */  0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,  /* ..^j.=&. */
                /* 1BC0 */  0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,  /* ~r...c|. */
                /* 1BC8 */  0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,  /* f./2.'.. */
                /* 1BD0 */  0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,  /* .8.._..u */
                /* 1BD8 */  0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,  /* q....0wq */
                /* 1BE0 */  0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,  /* ..pa...y */
                /* 1BE8 */  0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,  /* O.PB.... */
                /* 1BF0 */  0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,  /* %......F */
                /* 1BF8 */  0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,  /* 3z.x.8.G */
                /* 1C00 */  0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,  /* ...C..>. */
                /* 1C08 */  0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,  /* ....\... */
                /* 1C10 */  0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,  /* .[.(.'O( */
                /* 1C18 */  0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,  /* ...,F..O */
                /* 1C20 */  0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,  /* %.`.. .. */
                /* 1C28 */  0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,  /* K......> */
                /* 1C30 */  0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,  /* ....w.E. */
                /* 1C38 */  0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,  /* .|L..... */
                /* 1C40 */  0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,  /* _....w.. */
                /* 1C48 */  0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,  /* .^...... */
                /* 1C50 */  0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,  /* .N...... */
                /* 1C58 */  0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,  /* ....>.u. */
                /* 1C60 */  0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,  /* uL...w.s */
                /* 1C68 */  0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,  /* .....8.. */
                /* 1C70 */  0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,  /* ....'... */
                /* 1C78 */  0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,  /* ...8.... */
                /* 1C80 */  0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,  /* ........ */
                /* 1C88 */  0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,  /* .}8..... */
                /* 1C90 */  0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,  /* k.ooF.q. */
                /* 1C98 */  0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,  /* ...z.... */
                /* 1CA0 */  0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,  /* g@..^.., */
                /* 1CA8 */  0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,  /* .(.w.... */
                /* 1CB0 */  0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,  /* 7...1g.. */
                /* 1CB8 */  0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,  /* ]W}..>.. */
                /* 1CC0 */  0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,  /* X.9 .8Y. */
                /* 1CC8 */  0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,  /* v..d.... */
                /* 1CD0 */  0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,  /* .|....+. */
                /* 1CD8 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,  /* .S.Q..ej */
                /* 1CE0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,  /* .iP.O... */
                /* 1CE8 */  0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,  /* .;U)..A. */
                /* 1CF0 */  0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,  /* .<..X..B */
                /* 1CF8 */  0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,  /*  ..B#... */
                /* 1D00 */  0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,  /* b.G,.X.. */
                /* 1D08 */  0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,  /* ...M"p.F */
                /* 1D10 */  0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,  /* .8y&...A */
                /* 1D18 */  0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,  /* .P. ,&.. */
                /* 1D20 */  0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,  /* ...I.... */
                /* 1D28 */  0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,  /* ..a..... */
                /* 1D30 */  0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,  /* ...@,... */
                /* 1D38 */  0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,  /* ..B.i.a. */
                /* 1D40 */  0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,  /* ...@ T.+ */
                /* 1D48 */  0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,  /* ] .....] */
                /* 1D50 */  0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,  /*  ....... */
                /* 1D58 */  0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,  /* .B..h... */
                /* 1D60 */  0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,  /* .C ,.#.& */
                /* 1D68 */  0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,  /* .i"....q */
                /* 1D70 */  0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,  /* S.bM@L.' */
                /* 1D78 */  0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,  /*  ..D@... */
                /* 1D80 */  0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,  /* ..5..b.A */
                /* 1D88 */  0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,  /* .d!..X^W */
                /* 1D90 */  0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,  /* @,<..... */
                /* 1D98 */  0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,  /* * +xt=.. */
                /* 1DA0 */  0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,  /* .....D@. */
                /* 1DA8 */  0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,  /* ........ */
                /* 1DB0 */  0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,  /* ..... .. */
                /* 1DB8 */  0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,  /* .h...A.D */
                /* 1DC0 */  0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,  /* ~..../.@ */
                /* 1DC8 */  0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,  /* ..O..... */
                /* 1DD0 */  0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,  /* \.I...s. */
                /* 1DD8 */  0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,  /* .\ ...w@ */
                /* 1DE0 */  0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,  /* L....... */
                /* 1DE8 */  0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,  /* ..)...7. */
                /* 1DF0 */  0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,  /* .......) */
                /* 1DF8 */  0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,  /* A.hU...R */
                /* 1E00 */  0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,  /* ........ */
                /* 1E08 */  0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,  /* ..:,...9 */
                /* 1E10 */  0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,  /* :......} */
                /* 1E18 */  0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,  /* f...@... */
                /* 1E20 */  0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,  /*  T..#... */
                /* 1E28 */  0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,  /* B..0..-/ */
                /* 1E30 */  0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,  /* ..Y...." */
                /* 1E38 */  0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,  /* 0g..yAh~ */
                /* 1E40 */  0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,  /* 0..(...B */
                /* 1E48 */  0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,  /* ........ */
                /* 1E50 */  0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,  /* .@.J..9. */
                /* 1E58 */  0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,  /* ...B..Q. */
                /* 1E60 */  0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,  /* ......|  */
                /* 1E68 */  0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,  /* :....... */
                /* 1E70 */  0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,  /* .j...... */
                /* 1E78 */  0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,  /* . T..$.. */
                /* 1E80 */  0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,  /* ." k..." */
                /* 1E88 */  0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,  /* .A..L 4# */
                /* 1E90 */  0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,  /* .U...q.. */
                /* 1E98 */  0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,  /* .D ..y.. */
                /* 1EA0 */  0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,  /* ...*A.f. */
                /* 1EA8 */  0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,  /* .L.8!.Uo */
                /* 1EB0 */  0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,  /* ..@..... */
                /* 1EB8 */  0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,  /* Z... 4.. */
                /* 1EC0 */  0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,  /* ........ */
                /* 1EC8 */  0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,  /* .:A4d.D. */
                /* 1ED0 */  0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,  /* ...`4..E */
                /* 1ED8 */  0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,  /* . _%.... */
                /* 1EE0 */  0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,  /* 1.Q.m..s */
                /* 1EE8 */  0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,  /* ?.4P.).B */
                /* 1EF0 */  0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,  /* ....9.h6 */
                /* 1EF8 */  0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,  /* ....fU}. */
                /* 1F00 */  0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,  /* .O.Cc/=. */
                /* 1F08 */  0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,  /* X....... */
                /* 1F10 */  0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,  /* ..OY`.2. */
                /* 1F18 */  0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,  /* 1..P=.3. */
                /* 1F20 */  0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,  /* .......f */
                /* 1F28 */  0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,  /* ...A.... */
                /* 1F30 */  0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,  /* @.....$. */
                /* 1F38 */  0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,  /* ....A... */
                /* 1F40 */  0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,  /* ..I.j... */
                /* 1F48 */  0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,  /* .(p...9@ */
                /* 1F50 */  0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,  /* 4P.D...5 */
                /* 1F58 */  0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,  /* P."0g..9 */
                /* 1F60 */  0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,  /* A..... . */
                /* 1F68 */  0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,  /* r....... */
                /* 1F70 */  0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,  /* ?..B...p */
                /* 1F78 */  0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,  /* A.... 4E */
                /* 1F80 */  0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,  /* .....H+. */
                /* 1F88 */  0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,  /* nh.p.... */
                /* 1F90 */  0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,  /* .....A.h */
                /* 1F98 */  0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,  /* .%. .... */
                /* 1FA0 */  0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,  /* ....i@tD */
                /* 1FA8 */  0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,  /*  `TG.!Q. */
                /* 1FB0 */  0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,  /* .Z(..>.. */
                /* 1FB8 */  0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,  /* ...B..P. */
                /* 1FC0 */  0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,  /* 1@.r..:9 */
                /* 1FC8 */  0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,  /* ........ */
                /* 1FD0 */  0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,  /* P. TN..& */
                /* 1FD8 */  0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,  /* ........ */
                /* 1FE0 */  0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,  /* D.&.F..P */
                /* 1FE8 */  0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,  /* I=..>..: */
                /* 1FF0 */  0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,  /* =...$.A. */
                /* 1FF8 */  0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,  /* .P.E@.`. */
                /* 2000 */  0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,  /* .....,#. */
                /* 2008 */  0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,  /* ...B..P! */
                /* 2010 */  0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,  /* Q@Y...$. */
                /* 2018 */  0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,  /* ...B...x */
                /* 2020 */  0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,  /* E..1. 4. */
                /* 2028 */  0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,  /* ..."@... */
                /* 2030 */  0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,  /* ... 4+.. */
                /* 2038 */  0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,  /* ^..%.... */
                /* 2040 */  0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,  /* .9.P..9. */
                /* 2048 */  0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,  /* .M.B..Py */
                /* 2050 */  0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,  /* m@Xz.... */
                /* 2058 */  0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,  /* .Q...BS. */
                /* 2060 */  0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,  /* ..C..x(. */
                /* 2068 */  0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,  /* U....).. */
                /* 2070 */  0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,  /* t&:..F.. */
                /* 2078 */  0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,  /* ......j* */
                /* 2080 */  0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,  /* .0u T?.. */
                /* 2088 */  0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,  /* ."P..t.. */
                /* 2090 */  0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,  /*  4...@.. */
                /* 2098 */  0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,  /* .N.. :.. */
                /* 20A0 */  0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,  /* T....... */
                /* 20A8 */  0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,  /* ..z.2. T */
                /* 20B0 */  0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,  /* 8...N... */
                /* 20B8 */  0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,  /* ....A..` */
                /* 20C0 */  0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,  /* .L.....D */
                /* 20C8 */  0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,  /* .% 4) .. */
                /* 20D0 */  0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,  /* H..;FQ.. */
                /* 20D8 */  0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,  /* .D...... */
                /* 20E0 */  0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,  /* Iv.. T,. */
                /* 20E8 */  0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,  /* ...D...F */
                /* 20F0 */  0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,  /* c.P).... */
                /* 20F8 */  0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,  /* ..:5...! */
                /* 2100 */  0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,  /* .!...h.@ */
                /* 2108 */  0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,  /* YP...H70 */
                /* 2110 */  0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,  /* &.....!A */
                /* 2118 */  0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,  /* h.r.8.B. */
                /* 2120 */  0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,  /* ..aa@..| */
                /* 2128 */  0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,  /* G;.....a */
                /* 2130 */  0xF1, 0x40, 0xE8, 0xFF, 0x1F                     /* .@... */
            })
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

            Method (CMSR, 1, NotSerialized)
            {
                CMSI = Arg0
                Return (CMSD) /* \_SB_.WMID.CMSD */
            }

            OperationRegion (EXCO, SystemIO, 0x72, 0x02)
            Field (EXCO, ByteAcc, NoLock, Preserve)
            {
                INDX,   8, 
                DATA,   8
            }

            IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
            {
                Offset (0xC0), 
                WTCP,   8, 
                WTGP,   8, 
                WTSP,   8, 
                WTFP,   8, 
                WTBP,   8, 
                WTHP,   8, 
                Offset (0xC7), 
                BTLS,   1, 
                WLAN,   1, 
                BLTH,   1, 
                WWAN,   1
            }

            Name (WMIE, Zero)
            Name (WMIR, Zero)
            Name (SUBC, Zero)
            Name (SIZE, Zero)
            Name (TDA0, Zero)
            Name (RCDS, Package (0x3A)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                One, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (WCDS, Package (0x3A)
            {
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0C, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x08, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x80, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x80, 
                0x04, 
                Zero, 
                0x04
            })
            Name (RTCC, Zero)
            Method (GHWI, 2, NotSerialized)
            {
                HWCT = Arg0
                HWBC = Arg1
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xC3
                }
                Else
                {
                }

                If ((HWRC != Zero))
                {
                    RTCC = HWRC /* \_SB_.WMID.HWRC */
                }

                Return (Zero)
            }

            Method (RDCF, 2, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = Arg0
                    If ((T_0 == 0x04))
                    {
                        RTCC = Zero
                        Return (GDKS ())
                    }
                    ElseIf ((T_0 == 0x07))
                    {
                        CreateByteField (Arg1, 0x10, GTDA)
                        RTCC = Zero
                        Return (BATT (GTDA))
                    }
                    ElseIf ((T_0 == 0x08))
                    {
                        RTCC = Zero
                        Return (GBBT ())
                    }
                    ElseIf ((T_0 == 0x09))
                    {
                        RTCC = Zero
                        Return (GHKS ())
                    }
                    ElseIf ((T_0 == 0x0A))
                    {
                        If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                        {
                            RTCC = Zero
                        }

                        Return (GHKF ())
                    }
                    ElseIf ((T_0 == 0x0C))
                    {
                        If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                        {
                            RTCC = Zero
                        }

                        Return (GBBV ())
                    }
                    ElseIf ((T_0 == 0x0D))
                    {
                        RTCC = Zero
                        Return (GFRT ())
                    }
                    ElseIf ((T_0 == 0x0F))
                    {
                        RTCC = Zero
                        Return (GADP ())
                    }
                    ElseIf ((T_0 == 0x10))
                    {
                        RTCC = Zero
                        Return (GWSD ())
                    }
                    ElseIf ((T_0 == 0x1B))
                    {
                        RTCC = Zero
                        Return (GWDS ())
                    }
                    ElseIf ((T_0 == 0x1D))
                    {
                        RTCC = Zero
                        Return (GDLC ())
                    }
                    ElseIf ((T_0 == 0x1E))
                    {
                        RTCC = Zero
                        Return (GBUS ())
                    }
                    ElseIf ((T_0 == 0x28))
                    {
                        CreateDWordField (Arg1, 0x10, DDWD)
                        RTCC = Zero
                        Return (GTDC (DDWD))
                    }
                    ElseIf ((T_0 == 0x29))
                    {
                        RTCC = Zero
                        Return (GFCC ())
                    }
                    ElseIf ((T_0 == 0x2A))
                    {
                        RTCC = Zero
                        Return (GPES ())
                    }
                    ElseIf ((T_0 == 0x2B))
                    {
                        RTCC = Zero
                        Return (GBCO ())
                    }
                    ElseIf ((T_0 == 0x2C))
                    {
                        RTCC = Zero
                        Return (GTCS ())
                    }
                    ElseIf ((T_0 == 0x2E))
                    {
                        RTCC = Zero
                        Return (GHTP ())
                    }
                    ElseIf ((T_0 == 0x35))
                    {
                        RTCC = Zero
                        Return (GJVS ())
                    }
                    ElseIf ((T_0 == 0x36))
                    {
                        RTCC = Zero
                        Return (GPST ())
                    }
                    ElseIf ((T_0 == 0x37))
                    {
                        RTCC = Zero
                        Return (GBCT ())
                    }
                    ElseIf ((T_0 == 0x38))
                    {
                        RTCC = Zero
                        Return (GBST ())
                    }
                    Else
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                    Break
                }
            }

            Method (WRCF, 2, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                CreateDWordField (Arg1, 0x10, DDWD)
                While (One)
                {
                    T_0 = Arg0
                    If ((T_0 == 0x09))
                    {
                        RTCC = Zero
                        Return (SHKS (DDWD))
                    }
                    ElseIf ((T_0 == 0x0A))
                    {
                        RTCC = Zero
                        Return (SHKF (DDWD))
                    }
                    ElseIf ((T_0 == 0x0B))
                    {
                        RTCC = Zero
                        Return (SHKS (DDWD))
                    }
                    ElseIf ((T_0 == 0x10))
                    {
                        CreateDWordField (Arg1, 0x10, DAB0)
                        CreateWordField (Arg1, 0x14, DAB1)
                        CreateWordField (Arg1, 0x16, DAB2)
                        RTCC = Zero
                        Return (SWSD (DAB0, DAB1, DAB2))
                    }
                    ElseIf ((T_0 == 0x1B))
                    {
                        RTCC = Zero
                        Return (SWDS (DDWD))
                    }
                    ElseIf ((T_0 == 0x1D))
                    {
                        RTCC = Zero
                        Return (SDLC (DDWD))
                    }
                    ElseIf ((T_0 == 0x1E))
                    {
                        RTCC = Zero
                        Return (SBUS (DDWD))
                    }
                    ElseIf ((T_0 == 0x1F))
                    {
                        RTCC = Zero
                        Return (SBCR (DDWD))
                    }
                    ElseIf ((T_0 == 0x27))
                    {
                        RTCC = Zero
                        Return (0xFF)
                    }
                    ElseIf ((T_0 == 0x28))
                    {
                        RTCC = Zero
                        Return (STDC (DDWD))
                    }
                    ElseIf ((T_0 == 0x29))
                    {
                        RTCC = Zero
                        Return (SFCC (DDWD))
                    }
                    ElseIf ((T_0 == 0x2A))
                    {
                        RTCC = Zero
                        Return (SPES (DDWD))
                    }
                    ElseIf ((T_0 == 0x2B))
                    {
                        RTCC = Zero
                        Return (SBCO (DDWD))
                    }
                    ElseIf ((T_0 == 0x2C))
                    {
                        RTCC = Zero
                        Return (STCS (DDWD))
                    }
                    ElseIf ((T_0 == 0x35))
                    {
                        RTCC = Zero
                        Return (SJVS (DDWD))
                    }
                    ElseIf ((T_0 == 0x36))
                    {
                        RTCC = Zero
                        Return (SPST (Arg1))
                    }
                    ElseIf ((T_0 == 0x37))
                    {
                        RTCC = Zero
                        Return (SBCT (Arg1))
                    }
                    ElseIf ((T_0 == 0x38))
                    {
                        RTCC = Zero
                        Return (SBST (Arg1))
                    }
                    Else
                    {
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x04, 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }
                            }
                        RTCC = 0x04
                        Return (Local0)
                    }

                    Break
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Concatenate (WEI1, WED1, Local0)
                Return (Local0)
            }

            Method (GDKS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x04 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        One, 
                        Buffer (One)
                        {
                             0x00                                             /* . */
                        }
                    }
                Return (Local0)
            }

            Mutex (BTMX, 0x00)
            Method (BATT, 1, Serialized)
            {
                Debug = "Get Battery Information-----"
                If ((Arg0 != Zero))
                {
                    Local0 = Package (0x02)
                        {
                            0x06, 
                            Zero
                        }
                }
                ElseIf (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    If ((\_SB.PCI0.LPC0.EC0.BOL0 == Zero))
                    {
                        Local0 = Package (0x02)
                            {
                                0x34, 
                                Zero
                            }
                    }
                    Else
                    {
                        Acquire (BTMX, 0xFFFF)
                        Local0 = Package (0x03)
                            {
                                Zero, 
                                0x80, 
                                Buffer (0x80) {}
                            }
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local2 = (\_SB.PCI0.LPC0.EC0.BDC0 * 0x2710)
                            Divide (Local2, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local2)
                        }
                        Else
                        {
                            Local2 = \_SB.PCI0.LPC0.EC0.BDC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [Zero] = Local2
                        DerefOf (Local0 [0x02]) [One] = (Local2 >> 0x08
                            )
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local3 = (\_SB.PCI0.LPC0.EC0.BFC0 * 0x2710)
                            Divide (Local3, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local3)
                        }
                        Else
                        {
                            Local3 = \_SB.PCI0.LPC0.EC0.BFC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [0x02] = Local3
                        DerefOf (Local0 [0x02]) [0x03] = (Local3 >> 0x08
                            )
                        If ((\_SB.PCI0.LPC0.EC0.BAM0 == Zero))
                        {
                            Local2 = (\_SB.PCI0.LPC0.EC0.BRC0 * 0x2710)
                            Divide (Local2, \_SB.PCI0.LPC0.EC0.BDV0, Local1, Local2)
                        }
                        Else
                        {
                            Local2 = \_SB.PCI0.LPC0.EC0.BRC0 /* External reference */
                        }

                        DerefOf (Local0 [0x02]) [0x04] = Local2
                        DerefOf (Local0 [0x02]) [0x05] = (Local2 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x06] = \_SB.PCI0.LPC0.EC0.MXER /* External reference */
                        DerefOf (Local0 [0x02]) [0x07] = (\_SB.PCI0.LPC0.EC0.MXER >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x08] = \_SB.PCI0.LPC0.EC0.CYC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x09] = (\_SB.PCI0.LPC0.EC0.CYC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x0A] = \_SB.PCI0.LPC0.EC0.BAT0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0C] = \_SB.PCI0.LPC0.EC0.BPV0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0D] = (\_SB.PCI0.LPC0.EC0.BPV0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x0E] = \_SB.PCI0.LPC0.EC0.BPC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x0F] = (\_SB.PCI0.LPC0.EC0.BPC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x10] = \_SB.PCI0.LPC0.EC0.BDV0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x11] = (\_SB.PCI0.LPC0.EC0.BDV0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x12] = \_SB.PCI0.LPC0.EC0.BSSB /* External reference */
                        DerefOf (Local0 [0x02]) [0x13] = (\_SB.PCI0.LPC0.EC0.BSSB >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x14] = \_SB.PCI0.LPC0.EC0.BCV1 /* External reference */
                        DerefOf (Local0 [0x02]) [0x15] = (\_SB.PCI0.LPC0.EC0.BCV1 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x16] = \_SB.PCI0.LPC0.EC0.BCV2 /* External reference */
                        DerefOf (Local0 [0x02]) [0x17] = (\_SB.PCI0.LPC0.EC0.BCV2 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x18] = \_SB.PCI0.LPC0.EC0.BCV3 /* External reference */
                        DerefOf (Local0 [0x02]) [0x19] = (\_SB.PCI0.LPC0.EC0.BCV3 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x1A] = \_SB.PCI0.LPC0.EC0.BCV4 /* External reference */
                        DerefOf (Local0 [0x02]) [0x1B] = (\_SB.PCI0.LPC0.EC0.BCV4 >> 0x08
                            )
                        Local7 = \_SB.PCI0.LPC0.EC0.BSN0 /* External reference */
                        Name (SERN, Buffer (0x06)
                        {
                             0x30, 0x30, 0x30, 0x30, 0x30, 0x20               /* 00000  */
                        })
                        Local6 = 0x04
                        While (Local7)
                        {
                            Divide (Local7, 0x0A, Local5, Local7)
                            SERN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        CreateField (DerefOf (Local0 [0x02]), 0xE0, (SizeOf (SERN) * 0x08), 
                            BSNO)
                        BSNO = SERN /* \_SB_.WMID.BATT.SERN */
                        Local7 = \_SB.PCI0.LPC0.EC0.BMD0 /* External reference */
                        Name (BMDN, Buffer (0x0A)
                        {
                            /* 0000 */  0x30, 0x30, 0x2F, 0x30, 0x30, 0x2F, 0x20, 0x20,  /* 00/00/   */
                            /* 0008 */  0x20, 0x20                                       /*    */
                        })
                        Local4 = ((Local7 >> 0x05) & 0x0F)
                        Local6 = One
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        Local4 = (Local7 & 0x1F)
                        Local6 = 0x04
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        Local4 = (Local7 >> 0x09)
                        Local4 += 0x07BC
                        Local6 = 0x09
                        While (Local4)
                        {
                            Divide (Local4, 0x0A, Local5, Local4)
                            BMDN [Local6] = (Local5 + 0x30)
                            Local6--
                        }

                        CreateField (DerefOf (Local0 [0x02]), 0x0110, (SizeOf (BMDN) * 0x08), 
                            BMNO)
                        BMNO = BMDN /* \_SB_.WMID.BATT.BMDN */
                        Local1 = \_SB.PCI0.LPC0.EC0.BMNN /* External reference */
                        Local2 = Buffer (0x09)
                            {
                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x00                                             /* . */
                            }
                        CreateField (DerefOf (Local0 [0x02]), 0x0160, (SizeOf (Local1) * 0x08), 
                            BMA0)
                        CreateField (DerefOf (Local0 [0x02]), 0x01A8, 0x48, BMA1)
                        BMA0 = Local1
                        BMA1 = Local2
                        Local3 = \_SB.PCI0.LPC0.EC0.BCTL /* External reference */
                        Local2 = 0x3E
                        Local4 = Zero
                        Local1 = 0x0F
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        DerefOf (Local0 [0x02]) [Local2] = Zero
                        Local3 = \_SB.PCI0.LPC0.EC0.BDVN /* External reference */
                        Local2 = 0x4F
                        Local4 = Zero
                        Local1 = 0x07
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        Local3 = \_SB.PCI0.LPC0.EC0.BTDC /* External reference */
                        Local2 = 0x56
                        Local4 = Zero
                        Local1 = 0x04
                        While (Local1)
                        {
                            Local5 = DerefOf (Local3 [Local4])
                            DerefOf (Local0 [0x02]) [Local2] = Local5
                            Local1--
                            Local2++
                            Local4++
                        }

                        DerefOf (Local0 [0x02]) [0x5A] = \_SB.PCI0.LPC0.EC0.MUAC /* External reference */
                        DerefOf (Local0 [0x02]) [0x5B] = (\_SB.PCI0.LPC0.EC0.MUAC >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x5C] = \_SB.PCI0.LPC0.EC0.BMD0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x5D] = (\_SB.PCI0.LPC0.EC0.BMD0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x5E] = \_SB.PCI0.LPC0.EC0.BCG0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x5F] = (\_SB.PCI0.LPC0.EC0.BCG0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x60] = \_SB.PCI0.LPC0.EC0.BACV /* External reference */
                        DerefOf (Local0 [0x02]) [0x61] = (\_SB.PCI0.LPC0.EC0.BACV >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x62] = \_SB.PCI0.LPC0.EC0.BAC0 /* External reference */
                        DerefOf (Local0 [0x02]) [0x63] = (\_SB.PCI0.LPC0.EC0.BAC0 >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x64] = \_SB.PCI0.LPC0.EC0.RTTE /* External reference */
                        DerefOf (Local0 [0x02]) [0x65] = (\_SB.PCI0.LPC0.EC0.RTTE >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x66] = \_SB.PCI0.LPC0.EC0.ATTE /* External reference */
                        DerefOf (Local0 [0x02]) [0x67] = (\_SB.PCI0.LPC0.EC0.ATTE >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x68] = \_SB.PCI0.LPC0.EC0.ATTF /* External reference */
                        DerefOf (Local0 [0x02]) [0x69] = (\_SB.PCI0.LPC0.EC0.ATTF >> 0x08
                            )
                        DerefOf (Local0 [0x02]) [0x6A] = One
                        Release (BTMX)
                    }
                }

                Debug = Local0
                Return (Local0)
            }

            Method (GBBT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x31, 0x01, 0x9B, 0x01, 0xFF, 0x01, 0x63, 0x02,  /* 1.....c. */
                            /* 0008 */  0xAE, 0x01, 0x64, 0x02, 0x9D, 0x01, 0xB6, 0x01,  /* ..d..... */
                            /* 0010 */  0xB7, 0x01, 0x65, 0x02, 0x66, 0x02, 0x67, 0x02,  /* ..e.f.g. */
                            /* 0018 */  0x68, 0x02, 0xFF, 0xFF, 0x9A, 0x21, 0x9B, 0x21,  /* h....!.! */
                            /* 0020 */  0x00, 0x00                                       /* .. */
                        }
                    }
                Return (Local0)
            }

            Method (GHKS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    DerefOf (Local0 [0x02]) [Zero] = \_SB.PCI0.LPC0.EC0.WMIM /* External reference */
                }

                Return (Local0)
            }

            Method (SHKS, 1, Serialized)
            {
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    \_SB.PCI0.LPC0.EC0.WMIM = Arg0
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (HKFR, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    Local1 = \_SB.PCI0.LPC0.EC0.REC1 /* External reference */
                    \_SB.PCI0.LPC0.EC0.REC1 = Zero
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    Local2 = \_SB.PCI0.LPC0.EC0.REC2 /* External reference */
                    \_SB.PCI0.LPC0.EC0.REC2 = Zero
                    DerefOf (Local0 [0x02]) [One] = Local2
                }

                If (((Local1 == 0xB6) && (Local2 == One)))
                {
                    Sleep (0x01F4)
                    DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.BRTS /* External reference */
                    DerefOf (Local0 [0x02]) [0x03] = 0x0A
                }

                If (((Local1 == 0xB7) && (Local2 == One)))
                {
                    Sleep (0x01F4)
                    DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.BRTS /* External reference */
                    DerefOf (Local0 [0x02]) [0x03] = 0x0A
                }

                Return (Local0)
            }

            Method (GHKF, 0, NotSerialized)
            {
                Local1 = HKFR ()
                Return (Local1)
            }

            Method (SHKF, 1, NotSerialized)
            {
                Local0 = (Local0 = Arg0 & 0xFF)
                Local1 = ((Local1 = (Local1 = Arg0 >> 0x08)) & 0xFF)
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    \_SB.PCI0.LPC0.EC0.WEC1 = Local0
                    \_SB.PCI0.LPC0.EC0.WEC2 = Local1
                    \_SB.PCI0.LPC0.EC0.REC1 = Local0
                    \_SB.PCI0.LPC0.EC0.REC2 = Local1
                }

                Return (HKFR ())
            }

            Method (GBBV, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Zero
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                DerefOf (Local0 [0x02]) [0x03] = Zero
                Return (Local0)
            }

            Method (GFRT, 0, NotSerialized)
            {
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                Local0 |= 0x02
                Local0 |= 0x10
                Local0 |= 0x20
                Local0 |= 0x80
                Local1 |= One
                Local1 |= 0x08
                Local1 |= 0x10
                Local1 |= 0x40
                Local1 |= 0x80
                Local2 |= One
                Local2 |= 0x02
                DerefOf (Local3 [0x02]) [Zero] = Local0
                DerefOf (Local3 [0x02]) [One] = Local1
                DerefOf (Local3 [0x02]) [0x02] = Local2
                Return (Local3)
            }

            Method (GADP, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04) {}
                    }
                DerefOf (Local0 [0x02]) [Zero] = One
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    Local1 = \_SB.PCI0.LPC0.EC0.SADP /* External reference */
                    Local1 &= 0xF0
                    Local2 = \_SB.PCI0.LPC0.EC0.SAD2 /* External reference */
                    Local2 &= 0x02
                    If ((Local1 == 0x80))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x03
                    }

                    If ((Local1 == 0x20))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x02
                    }

                    If ((Local1 == 0x10))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = One
                    }

                    If ((Local2 == 0x02))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x04
                    }
                }

                Return (Local0)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x08, 
                        Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    }
                GHWI (0x10, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x40, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateQWordField (Local1, Zero, HWQ1)
                BUFS = HWQ1 /* \_SB_.WMID.GWSD.HWQ1 */
                Return (Local0)
            }

            Method (SWSD, 3, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                CreateWordField (Local0, 0x04, HWW1)
                CreateWordField (Local0, 0x06, HWW2)
                HWD1 = Arg0
                HWW1 = Arg1
                HWW2 = Arg2
                HWBF = Local0
                GHWI (0x10, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GWDS, 0, NotSerialized)
            {
                WMIE = One
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                If ((OSYS >= 0x07DC))
                {
                    Local0 = Package (0x03)
                        {
                            0x04, 
                            0x80, 
                            Buffer (0x80) {}
                        }
                    Return (Local0)
                }
                Else
                {
                    Local0 = Package (0x03)
                        {
                            Zero, 
                            0x80, 
                            Buffer (0x80) {}
                        }
                }

                DerefOf (Local0 [0x02]) [Zero] = One
                DerefOf (Local0 [0x02]) [One] = Zero
                DerefOf (Local0 [0x02]) [0x02] = Zero
                DerefOf (Local0 [0x02]) [0x03] = Zero
                DerefOf (Local0 [0x02]) [0x04] = Zero
                DerefOf (Local0 [0x02]) [0x05] = Zero
                DerefOf (Local0 [0x02]) [0x06] = 0x02
                DerefOf (Local0 [0x02]) [0x07] = Zero
                DerefOf (Local0 [0x02]) [0x08] = Zero
                DerefOf (Local0 [0x02]) [0x09] = Zero
                DerefOf (Local0 [0x02]) [0x0A] = Zero
                DerefOf (Local0 [0x02]) [0x0B] = Zero
                DerefOf (Local0 [0x02]) [0x0C] = Zero
                DerefOf (Local0 [0x02]) [0x0D] = Zero
                DerefOf (Local0 [0x02]) [0x0E] = Zero
                DerefOf (Local0 [0x02]) [0x0F] = Zero
                Local1 = Zero
                If ((WLVD != Zero))
                {
                    Local1 += One
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                    DerefOf (Local0 [0x02]) [(Local1 * 0x10)] = 
                        Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        One)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x02)] = (WLVD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x03)] = ((WLVD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x04)] = (WLDD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x05)] = ((WLDD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x06)] = (WLSV & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x07)] = ((WLSV >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x08)] = (WLSS & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x09)] = ((WLSS >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local2 * 0x10) + 
                        0x0A)] = Zero
                    Local2 = Zero
                    If ((GP15 && One))
                    {
                        Local2 |= One
                    }

                    If (WLAN)
                    {
                        Local2 |= 0x02
                    }

                    Local2 |= 0x04
                    If (BTLS)
                    {
                        Local2 |= 0x08
                    }

                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0B)] = Local2
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0C)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0D)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0E)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0F)] = Zero
                }

                If ((BTVD != Zero))
                {
                    Local1 += One
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                    DerefOf (Local0 [0x02]) [(Local1 * 0x10)] = 
                        One
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        One)] = One
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x02)] = (BTVD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x03)] = ((BTVD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x04)] = (BTDD & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x05)] = ((BTDD >> 0x08) & 0xFF)
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x06)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x07)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x08)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x09)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0A)] = One
                    Local2 = Zero
                    If (!GP68)
                    {
                        Local2 |= One
                    }

                    If (BLTH)
                    {
                        Local2 |= 0x02
                    }

                    Local2 |= 0x04
                    If (BTLS)
                    {
                        Local2 |= 0x08
                    }

                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0B)] = Local2
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0C)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0D)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0E)] = Zero
                    DerefOf (Local0 [0x02]) [((Local1 * 0x10) + 
                        0x0F)] = Zero
                }

                Return (Local0)
            }

            Method (SWDS, 1, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                WMIE = One
                //Local0 = Zero
                //Local1 = Zero
                //Local2 = Zero
                //Local3 = Zero
                WMIR = One
                While (One)
                {
                    T_0 = (Arg0 & Ones)
                    If ((T_0 == 0x01000001))
                    {
                        GP15 = One
                        WLAN = One
                    }
                    ElseIf ((T_0 == One))
                    {
                        GP15 = Zero
                        WLAN = Zero
                    }
                    ElseIf ((T_0 == 0x01010001))
                    {
                        GP68 = One
                        BLTH = One
                    }
                    ElseIf ((T_0 == 0x00010001))
                    {
                        GP68 = Zero
                        BLTH = Zero
                    }
                    ElseIf ((T_0 == 0x01FE0001))
                    {
                        GP15 = One
                        WLAN = One
                        GP68 = One
                        BLTH = One
                    }
                    ElseIf ((T_0 == 0x00FE0001))
                    {
                        GP15 = Zero
                        WLAN = Zero
                        GP68 = Zero
                        BLTH = Zero
                    }
                    ElseIf ((T_0 == 0x01FF0001))
                    {
                        GP68 = One
                        GP15 = One
                        WLAN = One
                        BLTH = One
                        BTLS = One
                    }
                    ElseIf ((T_0 == 0x00FF0001))
                    {
                        GP68 = Zero
                        GP15 = Zero
                        WLAN = Zero
                        BLTH = Zero
                        BTLS = Zero
                    }
                    ElseIf ((T_0 == 0x01FF0000))
                    {
                        GP68 = One
                        GP15 = One
                        WLAN = One
                        BLTH = One
                        BTLS = One
                    }
                    Else
                    {
                        WMIR = Zero
                    }

                    Break
                }

                Sleep (0xC8)
                WEI1 = 0x05
                WED1 = Zero
                Notify (WMID, 0x80) // Status Change
                If ((OSYS >= 0x07DC))
                {
                    Return (Package (0x02)
                    {
                        0x04, 
                        Zero
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }
            }

            Method (GDLC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x1D, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GDLC.HWD1 */
                Return (Local0)
            }

            Method (SDLC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x1D, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x1E, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBUS.HWD1 */
                Return (Local0)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x1E, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCR, 0, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (GBAC, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x01, 0x02, 0x03, 0x04                           /* .... */
                        }
                    }
                CreateByteField (GBAC, Zero, GBL0)
                CreateByteField (GBAC, One, GBL1)
                CreateByteField (GBAC, 0x02, GBL2)
                CreateByteField (GBAC, 0x03, GBL3)
                If (\_SB.PCI0.LPC0.EC0.BOL0)
                {
                    GBL0 = \_SB.PCI0.LPC0.EC0.BST0 /* External reference */
                    GBL0 &= 0x03 /* \_SB_.WMID.GBCR.GBL0 */
                    While (One)
                    {
                        T_0 = GBL0 /* \_SB_.WMID.GBCR.GBL0 */
                        If ((T_0 == Zero))
                        {
                            GBL0 = Zero
                        }
                        ElseIf ((T_0 == One))
                        {
                            GBL0 = 0x02
                        }
                        ElseIf ((T_0 == 0x02))
                        {
                            GBL0 = One
                        }

                        Break
                    }
                }
                Else
                {
                    GBL0 = 0xFF
                }

                GBL1 = 0xFF
                DerefOf (Local0 [0x02]) [Zero] = GBL0 /* \_SB_.WMID.GBCR.GBL0 */
                DerefOf (Local0 [0x02]) [One] = GBL1 /* \_SB_.WMID.GBCR.GBL1 */
                Return (Local0)
            }

            Method (SBCR, 1, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = (Arg0 & 0x0302)
                    If ((T_0 == Zero))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                    }
                    ElseIf ((T_0 == 0x0100))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                    }
                    ElseIf ((T_0 == 0x0200))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = One
                    }

                    Break
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GTDC, 1, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                If ((Arg0 == Zero))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.CPUT /* External reference */
                }

                If ((Arg0 == One))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.GPTP /* External reference */
                }

                If ((Arg0 == 0x02))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.PHTP /* External reference */
                }

                If ((Arg0 == 0x03))
                {
                    Local1 = Zero
                    Local2 = Zero
                    DerefOf (Local0 [0x02]) [Zero] = One
                    Divide ((\_SB.PCI0.LPC0.EC0.FRPM * 0x64), 0x17D4, Local2, Local1)
                    Local2 = (Local1 * 0x64)
                    DerefOf (Local0 [0x02]) [One] = Local2
                }

                If ((Arg0 == 0x04))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.BTTP /* External reference */
                }

                If ((Arg0 == 0x06))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    If (((\_SB.PCI0.LPC0.EC0.CPTR & 0x3F) == Zero))
                    {
                        DerefOf (Local0 [0x02]) [One] = Zero
                    }
                    Else
                    {
                        DerefOf (Local0 [0x02]) [One] = One
                    }
                }

                If ((Arg0 == 0x10))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTCP /* \_SB_.WMID.WTCP */
                }

                If ((Arg0 == 0x11))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTGP /* \_SB_.WMID.WTGP */
                }

                If ((Arg0 == 0x12))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTSP /* \_SB_.WMID.WTSP */
                }

                If ((Arg0 == 0x13))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTFP /* \_SB_.WMID.WTFP */
                }

                If ((Arg0 == 0x14))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTBP /* \_SB_.WMID.WTBP */
                }

                If ((Arg0 == 0x15))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = WTHP /* \_SB_.WMID.WTHP */
                }

                If ((Arg0 == 0x20))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.CPTV /* External reference */
                }

                If ((Arg0 == 0x21))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.GPTV /* External reference */
                }

                If ((Arg0 == 0x22))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.PHTV /* External reference */
                }

                If ((Arg0 == 0x23))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.FNTV /* External reference */
                }

                If ((Arg0 == 0x24))
                {
                    DerefOf (Local0 [0x02]) [Zero] = One
                    DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.BTTV /* External reference */
                }

                If ((Arg0 == 0xAA))
                {
                    DerefOf (Local0 [0x02]) [Zero] = \_SB.PCI0.LPC0.EC0.RSTV /* External reference */
                }

                Return (Local0)
            }

            Method (STDC, 1, NotSerialized)
            {
                Local1 = Arg0
                SUBC = (Local1 & 0xFF)
                Local1 >>= 0x08
                SIZE = (Local1 & 0xFF)
                Local1 >>= 0x08
                TDA0 = (Local1 & 0xFF)
                If ((SIZE >= 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x06, 
                        Zero
                    })
                }

                If ((SUBC == 0x10))
                {
                    WTCP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x11))
                {
                    WTGP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x12))
                {
                    WTSP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x13))
                {
                    WTFP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x14))
                {
                    WTBP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x15))
                {
                    WTHP = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x20))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.CPTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x21))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.GPTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x22))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.PHTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x23))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.FNTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0x24))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = One
                    \_SB.PCI0.LPC0.EC0.BTTV = TDA0 /* \_SB_.WMID.TDA0 */
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                If ((SUBC == 0xAA))
                {
                    \_SB.PCI0.LPC0.EC0.RSTV = TDA0 /* \_SB_.WMID.TDA0 */
                    \_SB.PCI0.LPC0.EC0.CPTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.GPTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.PHTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.FNTV = 0xFF
                    \_SB.PCI0.LPC0.EC0.BTTV = 0xFF
                    Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                }

                Return (Package (0x02)
                {
                    0x06, 
                    Zero
                })
            }

            Method (GFCC, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x29, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GFCC.HWD1 */
                Return (Local0)
            }

            Method (SFCC, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x29, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x2A, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GPES.HWD1 */
                Return (Local0)
            }

            Method (SPES, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x2A, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCO, 0, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (GBAC, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           /* .... */
                })
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x01, 0x02, 0x03, 0x04                           /* .... */
                        }
                    }
                CreateByteField (GBAC, Zero, GBL0)
                CreateByteField (GBAC, One, GBL1)
                CreateByteField (GBAC, 0x02, GBL2)
                CreateByteField (GBAC, 0x03, GBL3)
                If (\_SB.PCI0.LPC0.EC0.BOL0)
                {
                    If (\_SB.PCI0.LPC0.EC0.BTNO)
                    {
                        GBL0 = \_SB.PCI0.LPC0.EC0.BST0 /* External reference */
                        GBL0 &= 0x07 /* \_SB_.WMID.GBCO.GBL0 */
                        While (One)
                        {
                            T_0 = GBL0 /* \_SB_.WMID.GBCO.GBL0 */
                            If ((T_0 == Zero))
                            {
                                GBL0 = Zero
                            }
                            ElseIf ((T_0 == One))
                            {
                                GBL0 = 0x02
                            }
                            ElseIf ((T_0 == 0x02))
                            {
                                GBL0 = One
                            }
                            ElseIf ((T_0 == 0x03))
                            {
                                GBL0 = Zero
                            }
                            ElseIf ((T_0 == 0x04))
                            {
                                GBL0 = Zero
                            }

                            Break
                        }

                        If (\_SB.PCI0.LPC0.EC0.SBTC)
                        {
                            If (\_SB.PCI0.LPC0.EC0.GBTC)
                            {
                                GBL0 = 0x03
                                \_SB.PCI0.LPC0.EC0.SBTC = Zero
                            }
                        }

                        If (\_SB.PCI0.LPC0.EC0.SBIS)
                        {
                            If ((\_SB.PCI0.LPC0.EC0.GBIS == Zero))
                            {
                                GBL0 = 0x04
                                \_SB.PCI0.LPC0.EC0.SBIS = Zero
                            }
                        }
                    }
                    Else
                    {
                        GBL0 = Zero
                    }
                }
                Else
                {
                    GBL0 = 0xFF
                }

                GBL1 = 0xFF
                DerefOf (Local0 [0x02]) [Zero] = GBL0 /* \_SB_.WMID.GBCO.GBL0 */
                DerefOf (Local0 [0x02]) [One] = GBL1 /* \_SB_.WMID.GBCO.GBL1 */
                Return (Local0)
            }

            Method (SBCO, 1, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    T_0 = (Arg0 & 0x0702)
                    If ((T_0 == Zero))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = Zero
                    }
                    ElseIf ((T_0 == 0x0100))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((T_0 == 0x0200))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = One
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((T_0 == 0x0300))
                    {
                        \_SB.PCI0.LPC0.EC0.SBTC = One
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }
                    ElseIf ((T_0 == 0x0400))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = Zero
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = Zero
                    }
                    ElseIf ((T_0 == 0x0500))
                    {
                        \_SB.PCI0.LPC0.EC0.WACL = Zero
                        \_SB.PCI0.LPC0.EC0.SBIS = One
                        \_SB.PCI0.LPC0.EC0.SBTC = Zero
                        \_SB.PCI0.LPC0.EC0.BTNO = One
                    }

                    Break
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GTCS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                Local1 = Zero
                Local1 |= One
                If ((\_SB.PCI0.LPC0.EC0.MBSS == One))
                {
                    Local1 |= 0x02
                }

                Local1 |= 0x04
                DerefOf (Local0 [0x02]) [Zero] = Local1
                DerefOf (Local0 [0x02]) [One] = \_SB.PCI0.LPC0.EC0.MBMS /* External reference */
                DerefOf (Local0 [0x02]) [0x02] = \_SB.PCI0.LPC0.EC0.STMS /* External reference */
                Return (Local0)
            }

            Method (STCS, 1, NotSerialized)
            {
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local3 = Arg0
                Local1 = (Local3 >> 0x08)
                \_SB.PCI0.LPC0.EC0.MBMS = (Local1 & 0xFF)
                Local2 = (Local3 >> 0x10)
                \_SB.PCI0.LPC0.EC0.STMS = (Local2 & 0xFF)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GHTP, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                Local1 = Zero
                DerefOf (Local0 [0x02]) [Zero] = Local1
                Return (Local0)
            }

            Method (CSTA, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                IAOR = One
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == One))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                    DerefOf (Local0 [0x02]) [Zero] = (CDAT & 0xFF
                        )
                }

                Return (Local0)
            }

            Method (CACT, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x02
                CDAT = Arg0
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x02))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CDAC, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x03
                CDAT = Arg0
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x03))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CAIP, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x06
                CreateDWordField (Arg0, Zero, CMTK)
                CDAT = CMTK /* \_SB_.WMID.CAIP.CMTK */
                EHWB = Arg0
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xC6
                }
                Else
                {
                }

                If ((IAOR == 0x06))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \_SB_.WMID.IAOR */
                }

                HWBF = Zero
                Return (Local0)
            }

            Method (GJVS, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x35, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GJVS.HWD1 */
                Return (Local0)
            }

            Method (SJVS, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateDWordField (Local0, Zero, HWD1)
                HWD1 = Arg0
                HWBF = Local0
                GHWI (0x35, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GPST.BUFS */
                GHWI (0x36, One)
                BUFS = HWBF /* \_SB_.WMID.HWBF */
                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SPST.BUFS */
                HWBF = Local0
                GHWI (0x36, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCT, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80) {}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GBCT.BUFS */
                GHWI (0x37, One)
                BUFS = HWBF /* \_SB_.WMID.HWBF */
                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Local0 = Buffer (0x80) {}
                CreateField (Arg0, 0x80, 0x0400, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SBCT.BUFS */
                HWBF = Local0
                GHWI (0x37, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBST, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    }
                GHWI (0x38, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80) {}
                Local1 = HWBF /* \_SB_.WMID.HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBST.HWD1 */
                Return (Local0)
            }

            Method (SBST, 1, NotSerialized)
            {
                Local0 = Buffer (0x04) {}
                CreateDWordField (Arg0, 0x10, BUFS)
                Local0 = BUFS /* \_SB_.WMID.SBST.BUFS */
                HWBF = Local0
                GHWI (0x38, 0x02)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (CPST, 3, NotSerialized)
            {
                CreateField (Arg0, (0x08 * Arg1), (0x08 * Arg2), BUFF)
                Return (BUFF) /* \_SB_.WMID.CPST.BUFF */
            }

            Method (ECMT, 2, Serialized)
            {
                Local0 = (Arg0 * 0x3C)
                Local0 += Arg1
                Local2 = HLSW (Local0)
                Return (Local2)
            }

            Method (HLSW, 1, Serialized)
            {
                Divide (Arg0, 0x0100, Local0, Local1)
                Local0 *= 0x0100
                Local0 += Local1
                Return (Local0)
            }

            Method (ESDT, 0, NotSerialized)
            {
                If (LEqual (\_SB.PCI0.LPC0.ZUOK(), One))
                {
                    Local0 = \_SB.RTC.RTCW /* External reference */
                    If (Local0)
                    {
                        Local0--
                        \_SB.PCI0.LPC0.EC0.PRDT = (One << Local0)
                    }
                    Else
                    {
                        \_SB.PCI0.LPC0.EC0.PRDT = 0x40
                    }

                    \_SB.PCI0.LPC0.EC0.PRTM = ECMT (FromBCD (\_SB.RTC.RTCH), FromBCD (\_SB.RTC.RTCM))
                }
            }

            Method (WHCM, 2, Serialized)
            {
                Name (T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                CreateDWordField (Arg1, Zero, SNIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMTP)
                CreateDWordField (Arg1, 0x0C, DASI)
                While (One)
                {
                    T_0 = Arg0
                    If ((T_0 == One))
                    {
                        Local0 = Zero
                    }
                    ElseIf ((T_0 == 0x02))
                    {
                        Local0 = 0x04
                    }
                    ElseIf ((T_0 == 0x03))
                    {
                        Local0 = 0x80
                    }
                    ElseIf ((T_0 == 0x04))
                    {
                        Local0 = 0x0400
                    }
                    ElseIf ((T_0 == 0x05))
                    {
                        Local0 = 0x1000
                    }

                    Break
                }

                Local1 = Buffer ((0x08 + Local0)) {}
                CreateDWordField (Local1, Zero, SNOU)
                CreateDWordField (Local1, 0x04, RTCD)
                SNOU = 0x4C494146
                If ((DASI > 0x2000))
                {
                    RTCD = 0x05
                    Release (MSMT)
                    Return (Local1)
                }

                Local5 = DASI /* \_SB_.WMID.WHCM.DASI */
                CreateField (Arg1, Zero, ((Local5 + 0x10) * 0x08), DAIN)
                RTCD = 0x02
                If ((SNIN == 0x55434553))
                {
                    RTCD = 0x03
                    Sleep (0x32)
                    Sleep (0x32)
                    Sleep (0x32)
                    Sleep (0x32)
                    While (One)
                    {
                        T_1 = COMD /* \_SB_.WMID.WHCM.COMD */
                        If ((T_1 == One))
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x3A)))
                            {
                                If ((DASI < DerefOf (RCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = RDCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        ElseIf ((T_1 == 0x02))
                        {
                            If (((CMTP > Zero) && (CMTP <= 0x3A)))
                            {
                                If ((DASI < DerefOf (WCDS [(CMTP - One)])))
                                {
                                    RTCD = 0x05
                                }
                                Else
                                {
                                    Local2 = WRCF (CMTP, Arg1)
                                    RTCD = RTCC /* \_SB_.WMID.RTCC */
                                }
                            }
                        }
                        ElseIf ((T_1 == 0x00020002))
                        {
                            While (One)
                            {
                                T_2 = CMTP /* \_SB_.WMID.WHCM.CMTP */
                                If ((T_2 == One))
                                {
                                    Local2 = CSTA ()
                                    RTCD = Zero
                                }
                                ElseIf ((T_2 == 0x02))
                                {
                                    Local2 = CACT (DAIN)
                                    RTCD = Zero
                                }
                                ElseIf ((T_2 == 0x03))
                                {
                                    Local2 = CDAC (DAIN)
                                    RTCD = Zero
                                }
                                ElseIf ((T_2 == 0x06))
                                {
                                    CreateField (Arg1, 0x80, (Local5 * 0x08), DANH)
                                    Local2 = CAIP (DANH)
                                    RTCD = Zero
                                }

                                Break
                            }
                        }

                        Break
                    }
                }

                If ((RTCD == Zero))
                {
                    RTCD = DerefOf (Local2 [Zero])
                    If ((RTCD == Zero))
                    {
                        If ((DerefOf (Local2 [One]) <= Local0))
                        {
                            Local0 = Zero
                            While ((Local0 < DerefOf (Local2 [One])))
                            {
                                Local1 [(Local0 + 0x08)] = DerefOf (DerefOf (
                                    Local2 [0x02]) [Local0])
                                Local0++
                            }

                            SNOU = 0x53534150
                        }
                        Else
                        {
                            RTCD = 0x05
                        }
                    }
                }

                Release (MSMT)
                Return (Local1)
            }

//            OperationRegion (HSMI, SystemIO, \SSMP (0x02), Field (HSMI, ByteAcc, NoLock, Preserve)
            OperationRegion (HSMI, SystemIO, \SSMP, 0x02)
	    Field (HSMI, ByteAcc, NoLock, Preserve)
                {
                    HSMC,   8, 
                    HSMS,   8
                }
            Method (HTS3, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    HSMS = Zero
                    HSMC = 0xD6
                }

                If ((Arg0 == One))
                {
                    HSMS = One
                    HSMC = 0xD6
                }
            }

            Method (WMAA, 3, Serialized)
            {
                Acquire (MSMT, 0xFFFF)
                Return (WHCM (Arg1, Arg2))
            }

            Name (S001, Buffer (0x32) {})
            Name (S002, Buffer (0x8C) {})
            Name (S003, Buffer (0x8C) {})
            Name (S014, Buffer (0x32) {})
            Name (BF01, Buffer (0x32) {})
            Name (BF02, Buffer (0x32) {})
            Name (BF03, Buffer (0x96) {})
            Name (TMP0, Buffer (0x32) {})
            Name (TMP1, Buffer (0x1E) {})
            Name (TMP2, Buffer (0x1E) {})
            Name (S004, "serial port")
            Name (S010, "Parallel Port")
            Name (S015, "My asset tag")
            Name (S006, "Enable")
            Name (S007, "Disable")
            Name (S008, " Disable, *Enable")
            Name (S009, "*Disable,  Enable")
            Name (S020, Buffer (0x1F) {})
            Name (S019, " 0, 5, 10, 15, 20, 25, 30, 35")
            Name (BF3C, "   ")
            Name (BF2S, "                                                                                             ")
            Name (BSTR, "                                                                                             ")
            Method (STCP, 3, Serialized)
            {
                Name (ST01, Buffer (0x80) {})
                Name (ST02, Buffer (0x80) {})
                ST01 = Arg0
                ST02 = Arg1
                Local0 = Arg2
                Local1 = Zero
                While ((Local1 < Local0))
                {
                    Local2 = DerefOf (ST01 [Local1])
                    Local3 = DerefOf (ST02 [Local1])
                    If ((Local2 != Local3))
                    {
                        Return (Zero)
                    }

                    Local1++
                }

                Return (One)
            }

            Method (WMBH, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WMBA, 3, Serialized)
            {
                Name (DBUF, Buffer (0x0200) {})
                If ((Arg1 == One))
                {
                    Local0 = Arg0 // Junk Line
                    Local0 = Arg2
                    //Local1 = SizeOf (Local0)
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0200))
                        {
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFD
                    If (CondRefOf (\SSMP))
                    {
//                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    Local0 = Arg2
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0200))
                        {
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFC
                    If (CondRefOf (\SSMP))
                    {
//                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    Return (HWRC) /* \_SB_.WMID.HWRC */
                }

                Return (One)
            }

            Method (WQBC, 1, Serialized)
            {
                Local0 = Arg0
                HWBF = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFE
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xD7
                }
                Else
                {
                }

                If ((Zero == HWRC))
                {
                    Local1 = Buffer (0x80) {}
                    Local1 = HWBF /* \_SB_.WMID.HWBF */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBC.VSTL */
                    CreateWordField (Local1, Local0, CSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * CSTL), CSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBC.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBC.VSTL */
                    Local0 += 0x02
                    Local0 += CSTL /* \_SB_.WMID.WQBC.CSTL */
                    CreateWordField (Local1, Local0, NOPV)
                    Local0 += 0x02
                    CreateWordField (Local1, Local0, PBL1)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL1), PBV1)
                    Local0 += PBL1
                    CreateWordField (Local1, Local0, PBL2)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL2), PBV2)
                    Local0 += PBL2
                    CreateWordField (Local1, Local0, PBL3)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL3), PBV3)
                    Local0 += PBL3
                    CreateWordField (Local1, Local0, PBL4)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL4), PBV4)
                    Local0 += PBL4
                    CreateWordField (Local1, Local0, PBL5)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL5), PBV5)
                    Local0 += PBL5
                    Name (BERP, Package (0x18)
                    {
                        "Name", 
                        "Value", 
                        "System Configuration", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        "Enable", 
                        0x0C, 
                        "Enable", 
                        "Disable", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    Name (BF2S, Buffer (0x46) {})
                    Name (STRB, "                                                                      ")
                    BF2S = NSTR /* \_SB_.WMID.WQBC.NSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [Zero] = STRB /* \_SB_.WMID.WQBC.STRB */
                    If (STCP (BF2S, "Manufacturing Programming Mode", 0x1E))
                    {
                        BERP [0x04] = Zero
                    }

                    BF2S = VSTR /* \_SB_.WMID.WQBC.VSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [One] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = CSTR /* \_SB_.WMID.WQBC.CSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0A] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV1 /* \_SB_.WMID.WQBC.PBV1 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0C] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV2 /* \_SB_.WMID.WQBC.PBV2 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0D] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV3 /* \_SB_.WMID.WQBC.PBV3 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0E] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV4 /* \_SB_.WMID.WQBC.PBV4 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x0F] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BF2S = PBV5 /* \_SB_.WMID.WQBC.PBV5 */
                    STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                    BERP [0x10] = STRB /* \_SB_.WMID.WQBC.STRB */
                    BERP [0x06] = Arg0
                    Return (BERP) /* \_SB_.WMID.WQBC.BERP */
                }

                Return (Package (0x18)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    " ", 
                    Zero, 
                    " ", 
                    0x0C, 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " "
                })
            }

            Method (WQBD, 1, Serialized)
            {
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xF9
//                \SSMP = 0xD7
                If ((Zero == HWRC))
                {
                    Local1 = Buffer (0x0200) {}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBD.NSTL */
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Name (BERP, Package (0x0C)
                    {
                        "", 
                        "", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x0200, 
                        Zero
                    })
                    If ((NSTL != Zero))
                    {
                        BERP [Zero] = ToString (NSTR, NSTL)
                    }

                    If ((VSTL != Zero))
                    {
                        Name (CONL, Zero)
                        Local3 = Zero
                        Local4 = Zero
                        Local6 = Zero
                        Divide (VSTL, 0xC8, Local7, Local6)
                        While ((Local4 <= Local6))
                        {
                            If ((Local4 == Local6))
                            {
                                If ((Local7 == Zero))
                                {
                                    Break
                                }
                                Else
                                {
                                    CONL = Local7
                                }
                            }
                            Else
                            {
                                CONL = 0xC8
                            }

                            CopyObject (CPST (VSTR, Local3, CONL), Local0)
                            Concatenate (DerefOf (BERP [One]), ToString (Local0, CONL), BERP [
                                One])
                            Local4++
                            Local3 = (Local4 * 0xC8)
                        }
                    }

                    BERP [0x06] = Arg0
                    Return (BERP) /* \_SB_.WMID.WQBD.BERP */
                }
                Else
                {
                    Return (Package (0x0C)
                    {
                        "", 
                        "", 
                        "", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }
            }

            Method (WQBE, 1, Serialized)
            {
                EHWB = Zero
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFB
                If (CondRefOf (\SSMP))
                {
//                    \SSMP = 0xD7
                }
                Else
                {
                }

                If ((Zero == HWRC))
                {
                    Name (BPTR, Zero)
                    Name (BF2S, Buffer (0xC8) {})
                    Name (STB1, "                                                                                                    ")
                    Name (STB2, "                                                                                                    ")
                    Concatenate (STB1, STB2, STB1) /* \_SB_.WMID.WQBE.STB1 */
                    Local1 = Buffer (0x0200) {}
                    Local1 = EHWB /* \_SB_.WMID.EHWB */
                    CreateByteField (Local1, BPTR, CNSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CNSL), CNST)
                    BPTR += CNSL /* \_SB_.WMID.WQBE.CNSL */
                    CreateByteField (Local1, BPTR, CVSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CVSL), CVST)
                    BPTR += CVSL /* \_SB_.WMID.WQBE.CVSL */
                    CreateByteField (Local1, BPTR, TSL1)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL1), TSR1)
                    BPTR += TSL1 /* \_SB_.WMID.WQBE.TSL1 */
                    CreateByteField (Local1, BPTR, TSL2)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL2), TSR2)
                    BPTR += TSL2 /* \_SB_.WMID.WQBE.TSL2 */
                    CreateByteField (Local1, BPTR, TSL3)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL3), TSR3)
                    BPTR += TSL3 /* \_SB_.WMID.WQBE.TSL3 */
                    CreateByteField (Local1, BPTR, TSL4)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL4), TSR4)
                    BPTR += TSL4 /* \_SB_.WMID.WQBE.TSL4 */
                    CreateByteField (Local1, BPTR, TSL5)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL5), TSR5)
                    BPTR += TSL5 /* \_SB_.WMID.WQBE.TSL5 */
                    CreateByteField (Local1, BPTR, TSL6)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL6), TSR6)
                    BPTR += TSL6 /* \_SB_.WMID.WQBE.TSL6 */
                    CreateByteField (Local1, BPTR, TSL7)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL7), TSR7)
                    BPTR += TSL7 /* \_SB_.WMID.WQBE.TSL7 */
                    CreateByteField (Local1, BPTR, TSL8)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL8), TSR8)
                    BPTR += TSL8 /* \_SB_.WMID.WQBE.TSL8 */
                    Name (OLRP, Package (0x13)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x08, 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    BF2S = CNST /* \_SB_.WMID.WQBE.CNST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [Zero] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = CVST /* \_SB_.WMID.WQBE.CVST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [One] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR1 /* \_SB_.WMID.WQBE.TSR1 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0B] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR2 /* \_SB_.WMID.WQBE.TSR2 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0C] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR3 /* \_SB_.WMID.WQBE.TSR3 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0D] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR4 /* \_SB_.WMID.WQBE.TSR4 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0E] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR5 /* \_SB_.WMID.WQBE.TSR5 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0F] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR6 /* \_SB_.WMID.WQBE.TSR6 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x10] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR7 /* \_SB_.WMID.WQBE.TSR7 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x11] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR8 /* \_SB_.WMID.WQBE.TSR8 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x12] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    OLRP [0x06] = Arg0
                    Return (OLRP) /* \_SB_.WMID.WQBE.OLRP */
                }

                Return (HWRC) /* \_SB_.WMID.HWRC */
            }

            Method (WQBF, 1, Serialized)
            {
                Local0 = Arg0
                If ((Local0 == Zero))
                {
                    HWBF = Local0
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFA
                    If (CondRefOf (\SSMP))
                    {
//                        \SSMP = 0xD7
                    }
                    Else
                    {
                    }

                    If ((Zero == HWRC))
                    {
                        Local0 = Buffer (0x80) {}
                        Local0 = HWBF /* \_SB_.WMID.HWBF */
                        CreateDWordField (Local0, Zero, PSET)
                        Name (PWDP, Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            Zero, 
                            One
                        })
                        Name (BF2S, Buffer (0x46) {})
                        Name (STRB, "                                                                      ")
                        PWDP [0x0E] = PSET /* \_SB_.WMID.WQBF.PSET */
                        PWDP [0x06] = Arg0
			STRB = BF2S /* \_SB_.WMID.WQBC.BF2S */
                        Return (PWDP) /* \_SB_.WMID.WQBF.PWDP */
                    }
                    Else
                    {
                        Return (Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x10, 
                            "utf-16", 
                            "", 
                            One, 
                            One
                        })
                    }
                }

                Return (Package (0x10)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    "0", 
                    Zero, 
                    Zero, 
                    Zero, 
                    "", 
                    "", 
                    Zero, 
                    Zero
                })
            }

            Method (WQBG, 0, NotSerialized)
            {
            }

            Method (WQBH, 0, NotSerialized)
            {
            }

            Method (WQBI, 0, NotSerialized)
            {
            }
        }
    }
}

