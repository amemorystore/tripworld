SECTION "ROM Bank $000", ROM0[$0]
;. ......_ .......
RST_00::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_08::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_10::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_18::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_20::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_28::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_30::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_2547


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_26dc


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_2853


    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "TRIP WORLD", $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $03

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $bb

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $41

HeaderGlobalChecksum::
    db $17, $17

Jump_000_0150:
    di
    call Call_000_2961
    ld sp, $c6ff
    call Call_000_2949
    call Call_000_2997
    call Call_000_3302
    call Call_000_32e5
    call Call_000_368e
    ld bc, $0680
    ld hl, $c000
    call Call_000_297f
    ld bc, $1900
    ld hl, $c700
    call Call_000_297f
    ld bc, $0074
    ld hl, $ff8a
    call Call_000_297f
    ld e, $90
    call Call_000_3476
    ld e, $92
    call Call_000_3476
    ld e, $93
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld de, $5970
    call Call_000_29b9
    ld de, $597c
    call Call_000_29b9
    ld de, $598e
    call Call_000_29b9
    ld de, $599a
    call Call_000_29b9
    ld de, $59a0
    call Call_000_29b9
    ld a, $08
    call Call_000_3572
    ld a, $01
    ld [$c0f3], a
    ld a, $0c
    ld [$c0f5], a
    ld a, $0c
    ld [$2000], a
    call $4000
    ld a, $1c
    ldh [rLYC], a
    ld a, $02
    ld [$2000], a
    ldh [$9b], a
    ld a, $ff
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$8b], a
    ldh [$8c], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    ld a, $bb
    ldh [rTIMA], a
    ldh [rTMA], a
    ld a, $04
    ldh [rTAC], a
    xor a
    ldh [rIF], a
    ld a, $07
    ldh [rIE], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $e3
    ldh [rLCDC], a
    ei
    jp $6ac2


    call Call_000_3be8
    ld a, $ff
    ld [$c0ea], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ld [$c0eb], a
    ldh [rOBP1], a
    ld [$c0ec], a
    call Call_000_2961
    ld e, $94
    call Call_000_3476
    ld e, $95
    call Call_000_3476
    ld a, $09
    call Call_000_3572
    ld a, $05
    ld [$c0f3], a
    ld a, $58
    ld [$c11c], a
    xor a
    ld [$c2e7], a
    ld [$c202], a
    ld a, $04
    ld [$c203], a
    ld a, $08
    ld [$c204], a
    ld a, $0c
    ld [$c205], a
    ld a, $03
    ld [$2000], a
    ldh [$9b], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    ld a, $e3
    ldh [rLCDC], a
    jp $6dba


    ld e, $92
    call Call_000_3476
    ld a, $03
    ldh [$9b], a
    ld [$2000], a
    jp $70a5


    di
    call Call_000_2961
    ld sp, $c6ff
    call Call_000_2949
    call Call_000_2997
    call Call_000_3302
    call Call_000_32e5
    call Call_000_368e
    ld bc, $0680
    ld hl, $c000
    call Call_000_297f
    ld bc, $1900
    ld hl, $c700
    call Call_000_297f
    ld bc, $0074
    ld hl, $ff8a
    call Call_000_297f
    ld e, $8e
    call Call_000_3476
    ld e, $8f
    call Call_000_3476
    ld e, $90
    call Call_000_3476
    ld a, $06
    call Call_000_3572
    ld a, $01
    ld [$c0f3], a
    ld a, $03
    ld [$c0e1], a
    ld a, $50
    ld [$c0e2], a
    ld [$c0e3], a
    ld [$c0e4], a
    ld [$c0e5], a
    ld [$c0e6], a
    ld a, $0c
    ld [$c0f5], a
    ld a, $0c
    ld [$2000], a
    call $4000
    ld a, $02
    ld [$2000], a
    ldh [$9b], a
    ld a, $ff
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [$9d], a
    ldh [$9e], a
    ldh [$9f], a
    ld [$c2e0], a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$8b], a
    ldh [$8c], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ld a, $05
    ldh [rIE], a
    ld a, $e7
    ldh [rLCDC], a
    ei
    jp $6898


    di
    call Call_000_2961
    call Call_000_2997
    call Call_000_32e5
    call Call_000_368e
    ld bc, $1900
    ld hl, $c700
    call Call_000_297f
    ld bc, $0045
    ld hl, $ff8a
    call Call_000_297f
    ld e, $90
    call Call_000_3476
    ld e, $9a
    call Call_000_3476
    ld a, $0c
    call Call_000_3572
    ld a, $01
    ld [$c0f3], a
    ld a, $1c
    ld [$c202], a
    ld a, $26
    ld [$c203], a
    ld [$c204], a
    ld [$c205], a
    xor a
    ld [$c207], a
    ld [$c0e0], a
    ld [$c0e7], a
    ld [$c2e1], a
    ld a, $03
    ld [$2000], a
    ldh [$9b], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $90
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$9d], a
    ldh [$9e], a
    ldh [$9f], a
    ld [$c2e0], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ld a, $05
    ldh [rIE], a
    ld a, $e3
    ldh [rLCDC], a
    ei
    ld e, $02
    call Call_000_2a4a
    jp $71b8


Jump_000_03fd:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    call Call_000_2961
    di
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    call Call_000_2997
    call Call_000_32e5
    call Call_000_368e
    ld a, $01
    ld [$c0f3], a
    ld a, [$c0e0]
    inc a
    call Call_000_3572
    ld e, $91
    call Call_000_3476
    ld e, $90
    call Call_000_3476
    ld a, $02
    ldh [$9b], a
    ld [$2000], a
    ld a, $ff
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $90
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$9d], a
    ldh [$9e], a
    ldh [$9f], a
    ld [$c2e0], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ld a, $05
    ldh [rIE], a
    ld a, $e7
    ldh [rLCDC], a
    ei
    ld e, $02
    call Call_000_2a4a
    jp $6e4e


Jump_000_047a:
    call Call_000_2961
    di
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    call Call_000_2988
    call Call_000_32f3
    call Call_000_32e5
    call Call_000_368e
    ld bc, $0046
    ld hl, $ff8a
    call Call_000_297f
    ld bc, $0023
    ld hl, $ffdc
    call Call_000_297f
    ld bc, $0040
    ld hl, $c0a0
    call Call_000_297f
    ld bc, $0217
    ld hl, $c0e8
    call Call_000_297f
    ld bc, $0180
    ld hl, $c480
    call Call_000_297f
    ld bc, $1900
    ld hl, $c700
    call Call_000_297f
    call Call_000_3455
    ld e, $01
    call Call_000_34c4
    ld e, $30
    call Call_000_3476
    ld a, [$c0e0]
    ld e, a
    call Call_000_3476
    ld e, $32
    call Call_000_3476
    ld e, $33
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld de, $594c
    call Call_000_29b9
    ld de, $5961
    call Call_000_29b9
    call Call_000_3311
    call Call_000_34e3
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld a, [$c0f7]
    ld b, a
    and $f0
    swap a
    ld c, a
    ld a, b
    and $0f
    ld b, a
    call Call_000_2ad5
    call Call_000_2b98
    call Call_000_3c35
    ld a, $04
    ldh [$a0], a
    call Call_000_3b00
    ld a, $10
    ldh [$ad], a
    ldh [$bb], a
    ld [$c2da], a
    ld a, $02
    ldh [$bc], a
    xor a
    ld [$c0f3], a
    ld a, $7f
    ldh [rLYC], a
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $7d10
    ld a, [hl+]
    ldh [$a9], a
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    ldh [$ac], a
    ld a, [hl+]
    ldh [$b1], a
    ld a, [hl+]
    ldh [$b0], a
    ld a, [hl+]
    ldh [$e3], a
    ld a, [hl+]
    ldh [$e4], a
    ld a, [hl+]
    ldh [$e5], a
    ld a, [hl+]
    ldh [$e6], a
    ld hl, $ded8

jr_000_0562:
    ldh a, [$9d]
    ld b, [hl]
    cp b
    jr nz, jr_000_057a

    inc l
    ldh a, [$9f]
    ld b, [hl]
    cp b
    jr nz, jr_000_057b

    inc l
    ld a, [hl+]
    ld [$c0f5], a
    ld a, [hl]
    ld [$c4a4], a
    jr jr_000_0583

jr_000_057a:
    inc l

jr_000_057b:
    inc l
    inc l
    inc l
    ld a, [hl]
    cp $ff
    jr nz, jr_000_0562

jr_000_0583:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    ld [$c2e0], a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$8c], a
    ldh [$8b], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $80
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ldh [$98], a
    ld a, $07
    ldh [rIE], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $e7
    ldh [rLCDC], a
    ei
    ld a, $08
    call Call_000_3ddb
    ld a, [$c4a4]
    ld e, a
    call Call_000_2a30

Jump_000_05ca:
jr_000_05ca:
    ld a, $01
    ldh [$97], a

jr_000_05ce:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_05ce

    xor a
    ldh [$98], a
    ld a, [$c2d7]
    and a
    jr z, jr_000_05e3

    xor a
    ld [$c2d7], a
    jr jr_000_05ca

jr_000_05e3:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld a, [$c4a5]
    and a
    jp nz, Jump_000_1f32

    ldh a, [$8c]
    bit 3, a
    jr z, jr_000_0632

    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_000_0632

    call Call_000_2a15
    ld a, $01
    ld [$c2db], a

jr_000_0607:
    ld a, $01
    ldh [$97], a

jr_000_060b:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_060b

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jr z, jr_000_0607

    xor a
    ld [$c0f6], a
    ld [$c2db], a
    ld a, $0c
    ldh [$9b], a
    ld [$2000], a
    call $4083
    ld a, $01
    ldh [$9b], a
    ld [$2000], a

jr_000_0632:
    jp $4a50


    xor a
    ld [$c0fb], a
    ld [$c0fc], a
    ldh [$e7], a
    ldh [$e8], a
    ldh [$af], a
    ld [$c2d5], a
    ld [$c2ce], a
    ldh a, [$e3]
    and $0f
    swap a
    ld b, a
    ldh a, [$e3]
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    add b
    ldh a, [$a1]
    adc c
    cp $50
    jr c, jr_000_0666

    ld a, $10
    ldh [$e7], a
    jr jr_000_068c

jr_000_0666:
    ld b, a
    ldh a, [$e4]
    and $0f
    swap a
    ld c, a
    ldh a, [$e4]
    and $f0
    swap a
    ld d, a
    ldh a, [$a4]
    sub c
    ldh a, [$a3]
    sbc d
    ld c, a
    ld h, a
    call Call_000_2aa4
    ldh [$e7], a
    ldh a, [$ba]
    cp $16
    jr nc, jr_000_068c

    cp $01
    jr nz, jr_000_06a3

jr_000_068c:
    ldh a, [$a8]
    ld [$c2c8], a
    xor a
    ldh [$a8], a
    ldh a, [$e3]
    swap a
    cpl
    inc a
    ldh [$a2], a
    ld a, $40
    ld [$c2ce], a
    jr jr_000_06e8

jr_000_06a3:
    ldh a, [$e3]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    sub b
    ldh a, [$a1]
    sbc c
    cp $50
    jr c, jr_000_06c2

    ld a, $10
    ldh [$e8], a
    jr jr_000_06d3

jr_000_06c2:
    ld b, a
    ld c, h
    call Call_000_2aa4
    ldh [$e8], a
    ldh a, [$ba]
    cp $16
    jr nc, jr_000_06d3

    cp $01
    jr nz, jr_000_06e8

jr_000_06d3:
    ldh a, [$a8]
    ld [$c2c8], a
    xor a
    ldh [$a8], a
    ldh a, [$e3]
    swap a
    or $0f
    ldh [$a2], a
    ld a, $80
    ld [$c2ce], a

jr_000_06e8:
    ldh a, [$e5]
    and $0f
    swap a
    ld b, a
    ldh a, [$e5]
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    add b
    ldh a, [$a1]
    adc c
    ld b, a
    ldh a, [$e6]
    and $0f
    swap a
    ld c, a
    ldh a, [$e6]
    and $f0
    swap a
    ld d, a
    ldh a, [$a4]
    sub c
    ldh a, [$a3]
    sbc d
    ld c, a
    ld h, a
    cp $40
    jr c, jr_000_071f

    ld a, $10
    ldh [$e9], a
    ldh [$ea], a
    jr jr_000_0754

jr_000_071f:
    call Call_000_2aa4
    ldh [$e9], a
    ldh a, [$ba]
    ld [$c2c3], a
    ldh a, [$e5]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    sub b
    ldh a, [$a1]
    sbc c
    ld b, a
    ld c, h
    call Call_000_2aa4
    ldh [$ea], a
    ldh a, [$ba]
    ld b, a
    ld a, [$c2c3]
    or b
    cp $16
    jr nc, jr_000_0754

    cp $01
    jr nz, jr_000_0779

jr_000_0754:
    ldh a, [$e6]
    and $0f
    swap a
    ld b, a
    ldh a, [$a4]
    sub b
    cpl
    inc a
    ld b, a
    ldh a, [$a4]
    add b
    ldh [$a4], a
    ldh a, [$a3]
    adc $00
    ldh [$a3], a
    ldh a, [$aa]
    ld [$c2c9], a
    xor a
    ldh [$aa], a
    ld a, $20
    ld [$c2ce], a

jr_000_0779:
    ldh a, [$a1]
    ld b, a
    ldh a, [$a3]
    ld c, a
    call Call_000_2aa4
    ldh [$eb], a
    ldh a, [$ba]
    bit 4, a
    jp nz, Jump_000_080e

    cp $01
    jr z, jr_000_07ed

    cp $02
    jr z, jr_000_07ed

    ldh a, [$e5]
    and $0f
    swap a
    ld b, a
    ldh a, [$e5]
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    add b
    ldh a, [$a1]
    adc c
    ld b, a
    ldh a, [$a3]
    ld c, a
    call Call_000_2aa4
    cp $18
    jr c, jr_000_07b3

    xor a

jr_000_07b3:
    ldh [$ec], a
    ldh a, [$ba]
    cp $01
    jr z, jr_000_07ed

    cp $02
    jr z, jr_000_07ed

    ldh a, [$e5]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$a2]
    sub b
    ldh a, [$a1]
    sbc c
    ld b, a
    ldh a, [$a3]
    ld c, a
    call Call_000_2aa4
    cp $18
    jr c, jr_000_07e0

    xor a

jr_000_07e0:
    ldh [$ed], a
    ldh a, [$ba]
    cp $02
    jr z, jr_000_07ed

    cp $01
    jp nz, Jump_000_0875

jr_000_07ed:
    ldh a, [$aa]
    ld [$c2c9], a
    bit 7, a
    jr nz, jr_000_0875

    xor a
    ldh [$aa], a
    ld a, $01
    ldh [$af], a
    ldh a, [$ad]
    res 3, a
    ldh [$ad], a
    ld a, [$c2c0]
    and a
    jr nz, jr_000_0875

    xor a
    ldh [$a4], a
    jr jr_000_0875

Jump_000_080e:
    cp $16
    jr nc, jr_000_0845

    and $0f
    swap a
    add $a0
    ld l, a
    ldh a, [$a2]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld b, [hl]
    ldh a, [$a4]
    sub b
    jr c, jr_000_0875

    ld a, b
    ldh [$a4], a
    ldh a, [$aa]
    ld [$c2c9], a
    ldh a, [$a8]
    ld [$c2c8], a
    xor a
    ldh [$aa], a
    ld a, $01
    ldh [$af], a
    ldh a, [$ad]
    res 3, a
    ldh [$ad], a
    jr jr_000_0875

jr_000_0845:
    sub $16
    swap a
    add $a0
    ld l, a
    ldh a, [$a2]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a4], a
    ldh a, [$a3]
    dec a
    ldh [$a3], a
    ld a, $01
    ldh [$af], a
    ldh a, [$aa]
    ld [$c2c9], a
    ldh a, [$a8]
    ld [$c2c8], a
    xor a
    ldh [$aa], a
    ldh a, [$ad]
    res 3, a
    ldh [$ad], a

Jump_000_0875:
jr_000_0875:
    ld a, $02
    ldh [$bc], a
    ldh a, [$e7]
    sla a
    ld hl, $500a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$a5]
    set 7, a
    ldh [$a5], a
    jr jr_000_08b9

    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$a5]
    or b
    ldh [$a5], a
    jr jr_000_08b9

    ldh a, [$ad]
    and $f0
    cp $50
    jr nz, jr_000_08b9

    ld a, [$c2c8]
    cpl
    inc a
    and a
    jr nz, jr_000_08b0

    ld a, $f0

jr_000_08b0:
    ldh [$a8], a
    ld a, $2f
    ldh [$a7], a
    ld [$c2d5], a

jr_000_08b9:
    ldh a, [$e8]
    sla a
    ld hl, $504a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$a5]
    set 7, a
    ldh [$a5], a
    jr jr_000_08f9

    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$a5]
    or b
    ldh [$a5], a
    jr jr_000_08f9

    ldh a, [$ad]
    and $f0
    cp $50
    jr nz, jr_000_08f9

    ld a, [$c2c8]
    cpl
    inc a
    and a
    jr nz, jr_000_08f0

    ld a, $10

jr_000_08f0:
    ldh [$a8], a
    ld a, $2e
    ldh [$a7], a
    ld [$c2d5], a

jr_000_08f9:
    ldh a, [$e9]
    ld b, a
    cp $01
    jr z, jr_000_0947

    ldh a, [$ea]
    cp $01
    jr z, jr_000_0947

    xor b
    jr nz, jr_000_096a

    ld a, b
    sla a
    ld hl, $508a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_000_096a

    cp $80
    jr z, jr_000_096a

    cp $50
    jr nz, jr_000_092d

    xor a
    ldh [$a0], a
    jp Jump_000_1ef8


jr_000_092d:
    ld a, [$c2c1]
    and a
    jr nz, jr_000_096a

    ldh a, [$a0]
    dec a
    bit 7, a
    jr z, jr_000_093b

    xor a

jr_000_093b:
    ldh [$a0], a
    ldh a, [$ad]
    set 1, a
    res 0, a
    ldh [$ad], a
    jr jr_000_096a

jr_000_0947:
    ldh a, [$a5]
    set 7, a
    ldh [$a5], a
    jr jr_000_096a

    ldh a, [$ad]
    and $f0
    cp $50
    jr nz, jr_000_096a

    ld a, [$c2c9]
    cpl
    inc a
    ldh [$aa], a
    ld a, $31
    ldh [$a7], a
    ld [$c2d5], a
    ld e, $1d
    call Call_000_29fb

jr_000_096a:
    ldh a, [$eb]
    ldh [$ae], a
    sla a
    ld hl, $50c8
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$ec]
    ldh [$ae], a
    sla a
    ld hl, $5108
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$ed]
    ldh [$ae], a
    sla a
    ld hl, $5148
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$ae]
    xor $01
    jr nz, jr_000_09a9

    ldh a, [$a5]
    set 7, a
    ldh [$a5], a

Jump_000_09a9:
jr_000_09a9:
    ldh a, [$ad]
    res 2, a
    ldh [$ad], a
    ld a, [$c2c0]
    and a
    jr z, jr_000_09bc

    ld a, $10
    ldh [$ae], a
    jp Jump_000_0e40


jr_000_09bc:
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $5188
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_09d9

    cpl
    inc a

jr_000_09d9:
    ld b, a
    cp $1b
    jr c, jr_000_0a0e

    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    rra
    srl a
    and $f0
    swap a
    ld b, a
    ldh a, [$a8]
    rra
    rra
    ld c, a
    ldh a, [$a5]
    xor c
    and $20
    swap a
    rla
    add b
    add $18
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    ld a, $02
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


jr_000_0a0e:
    ld b, $0b

Jump_000_0a10:
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0a17

    inc b

Jump_000_0a17:
jr_000_0a17:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


    ld b, $20
    ldh a, [$aa]
    and a
    jr z, jr_000_0a2a

    inc b
    bit 7, a
    jr z, jr_000_0a2a

    inc b

jr_000_0a2a:
    ld a, b
    ldh [$a7], a
    ld a, $1c
    ldh [$e2], a
    ld a, $01
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


    ld a, [$c2ca]
    and a
    jr nz, jr_000_0aad

    ldh a, [$a8]
    and a
    jr nz, jr_000_0a81

    ldh a, [$e2]
    add $06
    and $7f
    jr nz, jr_000_0a51

    ld a, $01

jr_000_0a51:
    ldh [$e2], a
    and $f0
    swap a
    add $28
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    ld a, l
    cp $2c
    jr c, jr_000_0a70

    cp $2f
    jr nc, jr_000_0a70

    ldh a, [$a5]
    set 5, a
    ldh [$a5], a
    jr jr_000_0a76

jr_000_0a70:
    ldh a, [$a5]
    res 5, a
    ldh [$a5], a

jr_000_0a76:
    ld a, $33
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


jr_000_0a81:
    bit 7, a
    jr z, jr_000_0a87

    cpl
    inc a

jr_000_0a87:
    ldh a, [$e2]
    cp $9f
    jr c, jr_000_0ab1

    inc a
    cp $b0
    jr nc, jr_000_0ab1

    ldh [$e2], a
    and $0f
    srl a
    srl a
    ld b, a
    ld hl, $7f00
    ld a, l
    add b
    add $20
    ld l, a
    ld a, [hl]
    ldh [$a7], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


jr_000_0aad:
    ld a, $f3
    ldh [$b6], a

jr_000_0ab1:
    xor a
    ldh [$a7], a
    ldh [$e2], a
    ld [$c2ca], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


Jump_000_0ac0:
    ld a, [$c2d5]
    and a
    jp nz, Jump_000_155a

    ld a, $2d
    ldh [$a7], a
    jp Jump_000_155a


    ldh a, [$aa]
    bit 7, a
    jr z, jr_000_0ae1

    ld b, $41
    cp $f0
    jr c, jr_000_0adb

    dec b

jr_000_0adb:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0ae1:
    ld b, $42
    cp $10
    jr nc, jr_000_0ae8

    inc b

jr_000_0ae8:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


    ld b, $4e
    jp Jump_000_0a10


    ld b, $59
    jp Jump_000_0a10


    ld b, $60
    ld a, [$c481]
    and a
    jp z, Jump_000_0a10

    cp $09
    jp nc, Jump_000_0a10

    inc b
    jp Jump_000_0a17


    ldh a, [$ae]
    add $40
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_0b17

    ld a, $10

jr_000_0b17:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ld a, [$c2c0]
    and a
    jr z, jr_000_0b2b

    ld a, $13
    ldh [$ae], a
    jr jr_000_0b31

jr_000_0b2b:
    ldh a, [$ae]
    cp $02
    jr z, jr_000_0b43

jr_000_0b31:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_0b3c

    cp b
    jp nc, Jump_000_0e40

jr_000_0b3c:
    ld a, c
    inc a
    ldh [$a8], a
    jp Jump_000_0e40


jr_000_0b43:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_0b4e

    cp b
    jp nc, Jump_000_09a9

jr_000_0b4e:
    ld a, c
    add $02
    ldh [$a8], a
    jp Jump_000_09a9


    ldh a, [$ae]
    add $a0
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_0b63

    ld a, $10

jr_000_0b63:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ld a, [$c2c0]
    and a
    jr z, jr_000_0b77

    ld a, $14
    ldh [$ae], a
    jr jr_000_0b7d

jr_000_0b77:
    ldh a, [$ae]
    cp $03
    jr z, jr_000_0b8f

jr_000_0b7d:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_0b88

    cp b
    jp c, Jump_000_0e40

jr_000_0b88:
    ld a, c
    dec a
    ldh [$a8], a
    jp Jump_000_0e40


jr_000_0b8f:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_0b9a

    cp b
    jp c, Jump_000_09a9

jr_000_0b9a:
    ld a, c
    sub $02
    ldh [$a8], a
    jp Jump_000_09a9


    ldh a, [$ae]
    cp $05
    jp z, Jump_000_0cc1

    cp $06
    jp z, Jump_000_0d0e

Jump_000_0bae:
    ldh a, [$ad]
    res 2, a
    ldh [$ad], a
    ld a, [$c2c0]
    and a
    jr z, jr_000_0bc1

    ld a, $0f
    ldh [$ae], a
    jp Jump_000_1100


jr_000_0bc1:
    ld a, $01
    ldh [$bc], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$a5]
    or b
    ldh [$a5], a
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $519e
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor a
    ldh [$e2], a
    ldh a, [$a8]
    and a
    jr nz, jr_000_0c02

    ldh a, [$99]
    and $d0
    jr nz, jr_000_0bfc

    ld a, $00
    add $03
    ldh [$a7], a
    jr jr_000_0c2a

jr_000_0bfc:
    ld a, $00
    ldh [$a7], a
    jr jr_000_0c2a

jr_000_0c02:
    bit 7, a
    jr z, jr_000_0c08

    cpl
    inc a

jr_000_0c08:
    srl a
    ld b, a
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    ld b, a
    ldh a, [$ad]
    and $f0
    cp $50
    jr c, jr_000_0c23

    sub $30

jr_000_0c23:
    add b
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a

jr_000_0c2a:
    jp Jump_000_1390


    ld b, $0b
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0c36

    inc b

jr_000_0c36:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


    ldh a, [$aa]
    sub $02
    ldh [$aa], a
    ld a, $01
    ldh [$b9], a
    ld a, $01
    ldh [$b6], a
    xor a
    ldh [$a7], a
    ldh [$e2], a
    jp Jump_000_1390


    ldh a, [$aa]
    sub $02
    ldh [$aa], a
    jp Jump_000_0ac0


    ld b, $41
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0c64

    inc b

jr_000_0c64:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_0c72

    cpl
    inc a

jr_000_0c72:
    ld b, a
    and a
    jr nz, jr_000_0c8e

    ldh a, [$8b]
    and $30
    jr nz, jr_000_0ca0

    xor a
    ldh [$b7], a

jr_000_0c7f:
    ld b, $60
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0c88

    inc b

jr_000_0c88:
    ld a, b
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0c8e:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_0ca0

    ld a, b
    cp $14
    jr c, jr_000_0c7f

    ld a, $61
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0ca0:
    ld a, b
    cp $0f
    jr nc, jr_000_0ca7

    ld b, $18

jr_000_0ca7:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $70
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


Jump_000_0cc1:
    ldh a, [$ae]
    add $40
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_0cce

    ld a, $10

jr_000_0cce:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ld a, [$c2c0]
    and a
    jr z, jr_000_0ce2

    ld a, $15
    ldh [$ae], a
    jr jr_000_0ce8

jr_000_0ce2:
    ldh a, [$ae]
    cp $05
    jr z, jr_000_0cfb

jr_000_0ce8:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_0cf3

    cp b
    jp nc, Jump_000_1100

jr_000_0cf3:
    ld a, c
    add $01
    ldh [$a8], a
    jp Jump_000_1100


jr_000_0cfb:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_0d06

    cp b
    jp nc, Jump_000_0bae

jr_000_0d06:
    ld a, c
    add $01
    ldh [$a8], a
    jp Jump_000_0bae


Jump_000_0d0e:
    ldh a, [$ae]
    add $a0
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_0d1b

    ld a, $10

jr_000_0d1b:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ld a, [$c2c0]
    and a
    jr z, jr_000_0d2f

    ld a, $16
    ldh [$ae], a
    jr jr_000_0d35

jr_000_0d2f:
    ldh a, [$ae]
    cp $06
    jr z, jr_000_0d48

jr_000_0d35:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_0d40

    cp b
    jp c, Jump_000_1100

jr_000_0d40:
    ld a, c
    sub $01
    ldh [$a8], a
    jp Jump_000_1100


jr_000_0d48:
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_0d53

    cp b
    jp c, Jump_000_0bae

jr_000_0d53:
    ld a, c
    sub $01
    ldh [$a8], a
    jp Jump_000_0bae


    ldh a, [$a4]
    and $f0
    cp $d0
    jr nc, jr_000_0d6e

    xor a
    ldh [$ae], a
    ld a, $01
    ld [$c2ca], a
    jp Jump_000_09a9


jr_000_0d6e:
    ld a, [$c2c0]
    and a
    jr z, jr_000_0d7b

    ld a, $07
    ldh [$ae], a
    jp Jump_000_1100


jr_000_0d7b:
    ld a, $01
    ldh [$bc], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$a5]
    or b
    ldh [$a5], a
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $51b4
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor a
    ldh [$e2], a
    ld a, $20
    ldh [$a7], a
    jr jr_000_0e05

    ld b, $0b

Jump_000_0dab:
jr_000_0dab:
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0db2

    inc b

Jump_000_0db2:
jr_000_0db2:
    ld a, b
    ldh [$a7], a
    jr jr_000_0e05

    ldh a, [$aa]
    sub $02
    ldh [$aa], a
    ld a, $01
    ldh [$b9], a
    ld a, $31
    ldh [$b6], a
    xor a
    ldh [$a7], a
    ldh [$e2], a
    jr jr_000_0e05

    ld a, [$c2d5]
    and a
    jr nz, jr_000_0dd6

    ld a, $2d
    ldh [$a7], a

jr_000_0dd6:
    ld a, $01
    ldh [$b9], a
    jr jr_000_0e05

    ld b, $41
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_0de5

    inc b

jr_000_0de5:
    ld a, b
    ldh [$a7], a
    jr jr_000_0e05

    ld b, $4e
    jp Jump_000_0dab


    ld b, $57
    jp Jump_000_0dab


    ld b, $60
    ld a, [$c481]
    and a
    jp z, Jump_000_0dab

    cp $09
    jr nc, jr_000_0dab

    inc b
    jp Jump_000_0db2


jr_000_0e05:
    ldh a, [$ad]
    bit 2, a
    jp nz, Jump_000_1390

    set 2, a
    ldh [$ad], a
    ld hl, $c490

jr_000_0e13:
    ld a, [hl]
    and a
    jr z, jr_000_0e22

    ld a, l
    add $05
    ld l, a
    cp $a4
    jp z, Jump_000_1390

    jr jr_000_0e13

jr_000_0e22:
    ld a, $29
    ld [hl+], a
    inc l
    ldh a, [$a2]
    and $f0
    ld [hl+], a
    ldh a, [$a1]
    ld [hl+], a
    ldh a, [$a3]
    ld [hl], a
    ld e, $25
    call Call_000_29fb
    jp Jump_000_1390


    ldh a, [$ae]
    cp $0f
    jp z, Jump_000_1100

Jump_000_0e40:
    ldh a, [$ad]
    res 2, a
    ldh [$ad], a
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $51ca
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_0e63

    cpl
    inc a

jr_000_0e63:
    ld b, a
    and a
    jr nz, jr_000_0e89

    ld a, [$c2dd]
    and a
    jr nz, jr_000_0e73

    ldh a, [$8b]
    and $30
    jr nz, jr_000_0ea5

jr_000_0e73:
    xor a
    ldh [$b7], a
    ldh a, [$99]
    and $d0
    jr nz, jr_000_0e83

    ld a, $03
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0e83:
    xor a
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0e89:
    cp $1b
    jr nc, jr_000_0ec6

    ldh a, [$a7]
    cp $0f
    jr nc, jr_000_0ec6

jr_000_0e93:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_0ea5

    ld a, b
    cp $14
    jr c, jr_000_0e83

    ld a, $0c
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0ea5:
    ld a, b
    cp $0f
    jr nc, jr_000_0eac

    ld b, $18

jr_000_0eac:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $10
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0ec6:
    ld a, b
    cp $09
    jr c, jr_000_0e93

    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    ld b, a
    ldh a, [$a8]
    rra
    rra
    ld c, a
    ldh a, [$a5]
    xor c
    and $20
    swap a
    rla
    add b
    add $18
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    ld a, $02
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


    ldh a, [$e2]
    cp $1c
    jr c, jr_000_0f05

    dec a
    jr jr_000_0f23

jr_000_0f05:
    cp $10
    jr nc, jr_000_0f0f

    ld b, $00
    ld c, $f3
    jr jr_000_0f27

jr_000_0f0f:
    cp $14
    jr nc, jr_000_0f19

    ld b, $1f
    ld c, $f3
    jr jr_000_0f27

jr_000_0f19:
    cp $18
    jr nc, jr_000_0f23

    ld b, $21
    ld c, $f3
    jr jr_000_0f27

jr_000_0f23:
    ld b, $20
    ld c, $00

jr_000_0f27:
    inc a
    ldh [$e2], a
    ld a, b
    ldh [$a7], a
    ld a, c
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


    ldh a, [$a8]
    and a
    jr z, jr_000_0f58

    bit 7, a
    jr z, jr_000_0f42

    cpl
    inc a

jr_000_0f42:
    cp $04
    jr nc, jr_000_0f4d

    ld a, $13
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0f4d:
    ld a, $14
    ldh [$a7], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


jr_000_0f58:
    ldh a, [$e2]
    and a
    jr nz, jr_000_0f64

    ld a, $13
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0f64:
    cp $80
    jr nc, jr_000_0f6a

    ld a, $80

jr_000_0f6a:
    inc a
    ldh [$e2], a
    ld b, $1c
    cp $88
    jr c, jr_000_0f90

    inc b
    cp $90
    jr c, jr_000_0f90

    ld b, $01
    cp $98
    jr c, jr_000_0f90

    xor a
    ldh [$e2], a
    ld a, $13
    ldh [$a7], a
    ld a, $01
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


jr_000_0f90:
    ld a, b
    ldh [$a7], a
    ld a, $f3
    ldh [$b6], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


Jump_000_0f9e:
    ld a, $30
    ldh [$a7], a
    ld e, $1d
    call Call_000_29fb
    jp Jump_000_155a


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_0fb2

    cpl
    inc a

jr_000_0fb2:
    ld b, a
    and a
    jr nz, jr_000_0fd3

    ldh a, [$8b]
    and $30
    jr nz, jr_000_0fe5

    xor a
    ldh [$b7], a
    ldh a, [$99]
    and $d0
    jr nz, jr_000_0fcc

    ld a, $3d
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0fcc:
    ld a, $3a
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0fd3:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_0fe5

    ld a, b
    cp $14
    jr c, jr_000_0fcc

    ld a, $42
    ldh [$a7], a
    jp Jump_000_1390


jr_000_0fe5:
    ld a, b
    cp $0f
    jr nc, jr_000_0fec

    ld b, $18

jr_000_0fec:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $30
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_100e

    cpl
    inc a

jr_000_100e:
    ld b, a
    and a
    jr nz, jr_000_102f

    ldh a, [$8b]
    and $30
    jr nz, jr_000_1041

    xor a
    ldh [$b7], a
    ldh a, [$99]
    and $d0
    jr nz, jr_000_1028

    ld a, $4c
    ldh [$a7], a
    jp Jump_000_1390


jr_000_1028:
    ld a, $49
    ldh [$a7], a
    jp Jump_000_1390


jr_000_102f:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_1041

    ld a, b
    cp $14
    jr c, jr_000_1028

    ld a, $4f
    ldh [$a7], a
    jp Jump_000_1390


jr_000_1041:
    ld a, b
    cp $0f
    jr nc, jr_000_1048

    ld b, $18

jr_000_1048:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $40
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


Jump_000_1062:
    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_106a

    cpl
    inc a

jr_000_106a:
    ld b, a
    and a
    jr nz, jr_000_107e

    ldh a, [$8b]
    and $30
    jr nz, jr_000_1090

    xor a
    ldh [$b7], a

jr_000_1077:
    ld a, $54
    ldh [$a7], a
    jp Jump_000_1390


jr_000_107e:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_1090

    ld a, b
    cp $14
    jr c, jr_000_1077

    ld a, $5a
    ldh [$a7], a
    jp Jump_000_1390


jr_000_1090:
    ld a, b
    cp $0f
    jr nc, jr_000_1097

    ld b, $14

jr_000_1097:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $50
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_10b9

    cpl
    inc a

jr_000_10b9:
    ld b, a
    and a
    jr nz, jr_000_10cd

    ldh a, [$8b]
    and $30
    jr nz, jr_000_10df

    xor a
    ldh [$b7], a

jr_000_10c6:
    ld a, $5b
    ldh [$a7], a
    jp Jump_000_1390


jr_000_10cd:
    ldh a, [$8b]
    and $30
    jr nz, jr_000_10df

    ld a, b
    cp $14
    jr c, jr_000_10c6

    ld a, $61
    ldh [$a7], a
    jp Jump_000_1390


jr_000_10df:
    ld a, b
    cp $0f
    jr nc, jr_000_10e6

    ld b, $18

jr_000_10e6:
    srl b
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    add $70
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_1390


Jump_000_1100:
    ld a, $01
    ldh [$bc], a
    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ldh a, [$a5]
    or b
    ldh [$a5], a
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $51e0
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor a
    ldh [$e2], a
    ldh a, [$a8]
    and a
    jr nz, jr_000_1141

    ldh a, [$99]
    and $d0
    jr nz, jr_000_113b

    ld a, $00
    add $03
    ldh [$a7], a
    jr jr_000_1169

jr_000_113b:
    ld a, $00
    ldh [$a7], a
    jr jr_000_1169

jr_000_1141:
    bit 7, a
    jr z, jr_000_1147

    cpl
    inc a

jr_000_1147:
    srl a
    ld b, a
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    ld b, a
    ldh a, [$ad]
    and $f0
    cp $50
    jr c, jr_000_1162

    sub $30

jr_000_1162:
    add b
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a

jr_000_1169:
    jp Jump_000_1390


    ldh a, [$a8]
    and a
    jr nz, jr_000_1185

    ldh a, [$99]
    and $d0
    jr nz, jr_000_117f

    ld a, $00
    add $03
    ldh [$a7], a
    jr jr_000_11ad

jr_000_117f:
    ld a, $00
    ldh [$a7], a
    jr jr_000_11ad

jr_000_1185:
    bit 7, a
    jr z, jr_000_118b

    cpl
    inc a

jr_000_118b:
    srl a
    ld b, a
    ldh a, [$b7]
    add b
    ldh [$b7], a
    srl a
    srl a
    and $f0
    swap a
    ld b, a
    ldh a, [$ad]
    and $f0
    cp $50
    jr c, jr_000_11a6

    sub $30

jr_000_11a6:
    add b
    ld l, a
    ld h, $7f
    ld a, [hl]
    ldh [$a7], a

jr_000_11ad:
    jp Jump_000_1390


    ld a, $13
    ldh [$a7], a
    ldh a, [$aa]
    sub $02
    ldh [$aa], a
    xor a
    ldh [$e2], a
    jp Jump_000_1390


    ldh a, [$aa]
    sub $02
    ldh [$aa], a
    ld e, $1d
    call Call_000_29fb
    jp Jump_000_0f9e


    ldh a, [$a2]
    add $08
    ldh [$a2], a
    ldh a, [$a1]
    adc $00
    ldh [$a1], a
    jp Jump_000_0e40


    ldh a, [$a2]
    sub $08
    ldh [$a2], a
    ldh a, [$a1]
    sbc $00
    ldh [$a1], a
    jp Jump_000_0e40


    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $51f6
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$c2c1]
    and a
    jp nz, Jump_000_0e40

    ldh a, [$a0]
    dec a
    bit 7, a
    jr z, jr_000_1210

    xor a

jr_000_1210:
    ldh [$a0], a
    ldh a, [$ad]
    set 1, a
    res 0, a
    ldh [$ad], a
    jp Jump_000_1390


    ld a, [$c2c1]
    and a
    jp nz, Jump_000_0e40

    ldh a, [$a0]
    dec a
    bit 7, a
    jr z, jr_000_122c

    xor a

jr_000_122c:
    ldh [$a0], a
    ldh a, [$ad]
    set 1, a
    res 0, a
    ldh [$ad], a
    xor a
    ldh [$e2], a
    jp Jump_000_1390


    xor a
    ldh [$a0], a
    jp Jump_000_1ef8


    jp Jump_000_1062


    ldh a, [$ae]
    ld d, a
    and $0f
    swap a
    add $20
    ld l, a
    ldh a, [$a2]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld b, [hl]
    ldh a, [$a4]
    sub b
    jp c, Jump_000_09a9

    ld a, b
    ldh [$a4], a
    ld a, d
    cp $1a
    jr nc, jr_000_12ba

    bit 0, a
    jr nz, jr_000_1294

    ldh a, [$ae]
    add $a0
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_1279

    ld a, $10

jr_000_1279:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_128d

    cp b
    jr z, jr_000_1308

    jr c, jr_000_1308

jr_000_128d:
    ld a, c
    sub $03
    ldh [$a8], a
    jr jr_000_1308

jr_000_1294:
    ldh a, [$ae]
    add $40
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_12a1

    ld a, $10

jr_000_12a1:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_12b3

    cp b
    jr nc, jr_000_1308

jr_000_12b3:
    ld a, c
    add $03
    ldh [$a8], a
    jr jr_000_1308

jr_000_12ba:
    bit 0, a
    jr nz, jr_000_12e5

    ldh a, [$ae]
    add $a0
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_12cb

    ld a, $10

jr_000_12cb:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr z, jr_000_12df

    cp b
    jr z, jr_000_1308

    jr c, jr_000_1308

jr_000_12df:
    ld a, c
    dec a
    ldh [$a8], a
    jr jr_000_1308

jr_000_12e5:
    ldh a, [$ae]
    add $40
    ld l, a
    ldh a, [$ad]
    cp $30
    jr c, jr_000_12f2

    ld a, $10

jr_000_12f2:
    and $f0
    rla
    add l
    ld l, a
    ld h, $7c
    ld b, [hl]
    ldh a, [$a8]
    ld c, a
    bit 7, a
    jr nz, jr_000_1304

    cp b
    jr nc, jr_000_1308

jr_000_1304:
    ld a, c
    inc a
    ldh [$a8], a

jr_000_1308:
    ldh a, [$ad]
    and $f0
    ld c, a
    srl c
    srl c
    srl c
    ld hl, $520c
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, $21
    ldh [$a7], a
    ld a, $1c
    ldh [$e2], a
    ld a, $01
    ldh [$b9], a
    jp Jump_000_1390


    ld a, $21
    ldh [$a7], a
    xor a
    ldh [$e2], a
    jp Jump_000_1390


    ld e, $1d
    call Call_000_29fb
    ldh a, [$ae]
    sub $18
    ld c, a
    sla c
    ld b, $00
    ld hl, $134c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, b
    inc de
    ld h, [hl]
    inc de
    ld [hl], h
    inc de
    add d
    inc de
    ld [hl], h
    inc de
    add d
    inc de
    ld a, [$c2c9]
    cpl
    inc a
    ldh [$aa], a
    ld a, $32
    ldh [$a7], a
    jp Jump_000_155a


    ld a, [$c2c9]
    cpl
    inc a
    ldh [$aa], a
    ld a, $33
    ldh [$a7], a
    jp Jump_000_155a


    ld a, [$c2c8]
    sub $08
    ldh [$a8], a
    ld a, $35
    ldh [$a7], a
    jp Jump_000_155a


    ld a, [$c2c8]
    add $08
    ldh [$a8], a
    ld a, $34
    ldh [$a7], a
    jp Jump_000_155a


Jump_000_1390:
    ldh a, [$ad]
    res 2, a
    res 3, a
    cp $30
    jp z, Jump_000_14cc

    and $03
    jp z, Jump_000_1537

    bit 1, a
    jp nz, Jump_000_149b

    ldh a, [$b6]
    set 1, a
    ldh [$b6], a
    ldh a, [$ad]
    and $f0
    srl a
    srl a
    srl a
    ld c, a
    ld hl, $13c0
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub $13
    xor $13
    scf
    dec d
    scf
    dec d
    scf
    dec d
    scf
    dec d
    ld c, c
    inc d
    ld [hl], b
    inc d
    scf
    dec d
    xor $13
    adc h
    inc d
    ld a, $1f
    inc a
    ldh [$e2], a
    cp $28
    jr c, jr_000_13e7

    xor a
    ldh [$e2], a
    ldh [$ad], a
    jp Jump_000_155a


jr_000_13e7:
    ld a, $1e
    ldh [$a7], a
    jp Jump_000_155a


    ldh a, [$e2]
    inc a
    ldh [$e2], a
    cp $08
    jr nc, jr_000_142f

    ldh a, [$a4]
    sub $80
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_141d

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    ld a, $0d
    jr jr_000_1444

jr_000_141d:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a
    ld a, $0d
    jr jr_000_1444

jr_000_142f:
    cp $10
    jr nc, jr_000_1437

    ld a, $0e
    jr jr_000_1444

jr_000_1437:
    xor a
    ldh [$e2], a
    ld [$c480], a
    ldh a, [$ad]
    and $fe
    ldh [$ad], a
    xor a

jr_000_1444:
    ldh [$a7], a
    jp Jump_000_155a


    ldh a, [$e2]
    inc a
    ldh [$e2], a
    srl a
    srl a
    ld c, a
    ld b, $00
    ld hl, $5289
    add hl, bc
    ld a, [hl]
    cp $3a
    ldh [$a7], a
    jp nz, Jump_000_155a

    xor a
    ldh [$e2], a
    ld [$c480], a
    ldh a, [$ad]
    and $fe
    ldh [$ad], a
    jp Jump_000_155a


    ldh a, [$e2]
    inc a
    ldh [$e2], a
    ld b, $50
    cp $08
    jr c, jr_000_1486

    xor a
    ldh [$e2], a
    ldh a, [$ad]
    and $fe
    ldh [$ad], a
    ld b, $49

jr_000_1486:
    ld a, b
    ldh [$a7], a
    jp Jump_000_155a


    ld a, [$c481]
    cp $09
    jp nc, Jump_000_155a

    ld a, $61
    ldh [$a7], a
    jp Jump_000_155a


Jump_000_149b:
    ld a, [$c2c1]
    inc a
    ld [$c2c1], a
    ld b, a
    cp $01
    jr z, jr_000_14b4

    cp $30
    jr c, jr_000_14b9

    ldh a, [$ad]
    res 1, a
    ldh [$ad], a
    jp Jump_000_155a


jr_000_14b4:
    ld e, $23
    call Call_000_29fb

jr_000_14b9:
    ldh a, [$ad]
    and $f0
    swap a
    ld hl, $5222
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ldh [$a7], a
    jp Jump_000_155a


Jump_000_14cc:
    ldh a, [$b4]
    cp $41
    jr nc, jr_000_1507

    srl a
    srl a
    sla a
    ld hl, $4fe8
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$c2c6]
    ldh [$a7], a
    jr jr_000_1501

    ld a, [$c2c7]
    ldh [$a7], a
    jr jr_000_1501

    ld a, $05
    ldh [$a7], a
    jr jr_000_1501

    ld a, $06
    ldh [$a7], a
    jr jr_000_1501

    ld a, $07
    ldh [$a7], a

jr_000_1501:
    ld a, $f3
    ldh [$b6], a
    jr jr_000_1537

jr_000_1507:
    xor a
    ldh [$b4], a
    ldh [$b7], a
    ldh a, [$bb]
    ldh [$ad], a
    cp $50
    jr c, jr_000_1516

    sub $20

jr_000_1516:
    ld l, a
    ld h, $7d
    ld a, [hl+]
    ldh [$a9], a
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    ldh [$ac], a
    ld a, [hl+]
    ldh [$b1], a
    ld a, [hl+]
    ldh [$b0], a
    ld a, [hl+]
    ldh [$e3], a
    ld a, [hl+]
    ldh [$e4], a
    ld a, [hl+]
    ldh [$e5], a
    ld a, [hl+]
    ldh [$e6], a

Jump_000_1537:
jr_000_1537:
    ld a, [$c2dd]
    and a
    jr nz, jr_000_155a

    ldh a, [$b9]
    and a
    jr nz, jr_000_155a

    ldh a, [$8b]
    bit 4, a
    jr nz, jr_000_1554

    bit 5, a
    jr z, jr_000_155a

    ldh a, [$a5]
    set 5, a
    ldh [$a5], a
    jr jr_000_155a

jr_000_1554:
    ldh a, [$a5]
    res 5, a
    ldh [$a5], a

Jump_000_155a:
jr_000_155a:
    ld a, [$c2c1]
    and a
    jr z, jr_000_1569

    inc a
    cp $80
    jr c, jr_000_1566

    xor a

jr_000_1566:
    ld [$c2c1], a

jr_000_1569:
    ld a, [$c2c4]
    ld h, a
    ld a, [$c2c5]
    ld l, a
    dec hl
    bit 7, h
    jr nz, jr_000_15a8

    ld a, h
    ld [$c2c4], a
    ld a, l
    ld [$c2c5], a
    or h
    jr nz, jr_000_15a8

    ld a, $30
    ldh [$ad], a
    xor a
    ld [$c480], a
    ld [$c481], a
    ld [$c2c1], a
    ldh [$e2], a
    inc a
    ldh [$b4], a
    ld e, $22
    call Call_000_29fb
    ld a, $09
    ld [$c2c6], a
    ld [$c2c7], a
    ld a, $10
    ldh [$bb], a
    jp Jump_000_14cc


jr_000_15a8:
    ld a, [$c481]
    and a
    jp nz, Jump_000_16f5

    ld a, [$c480]
    rlca
    ld c, a
    ld b, $00
    ld hl, $522d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ldh a, [$a7]
    sub $44
    rlca
    rlca
    ld c, a
    ld b, $00
    ld hl, $5294
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_15d5

    ld e, $14
    ld d, $00
    add hl, de

jr_000_15d5:
    add hl, bc
    ld a, [hl+]
    ld c, a
    ldh a, [$a2]
    add c
    ld [$c483], a
    ld a, [hl+]
    ld b, a
    ldh a, [$a1]
    adc b
    ld [$c484], a
    ld a, [hl]
    ld [$c48b], a
    ld a, $02
    ld [$c48c], a
    ldh a, [$a4]
    sub $40
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    jp Jump_000_1b14


    ldh a, [$a4]
    sub $40
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    xor a
    ld [$c489], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_162e

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    ld a, $20
    ld [$c482], a
    jp Jump_000_16f5


jr_000_162e:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a
    xor a
    ld [$c482], a
    jp Jump_000_16f5


    ldh a, [$a4]
    sub $80
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    ldh a, [$aa]
    bit 7, a
    jr nz, jr_000_1658

    xor a

jr_000_1658:
    add $f0
    ld [$c489], a
    ld a, $01
    ld [$c481], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_1680

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    ldh a, [$a8]
    add $f0
    ld [$c488], a
    jp Jump_000_16f5


jr_000_1680:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a
    ldh a, [$a8]
    add $10
    ld [$c488], a
    jp Jump_000_16f5


    ldh a, [$a4]
    sub $e0
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    xor a
    ld [$c489], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_16d5

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    ld a, $20
    ld [$c482], a
    ldh a, [$a8]
    bit 7, a
    jr nz, jr_000_16ce

    cp $22
    jp nc, Jump_000_16f5

jr_000_16ce:
    add $20
    ldh [$a8], a
    jp Jump_000_16f5


jr_000_16d5:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a
    xor a
    ld [$c482], a
    ldh a, [$a8]
    bit 7, a
    jr z, jr_000_16f1

    cp $de
    jr c, jr_000_16f5

jr_000_16f1:
    sub $20
    ldh [$a8], a

Jump_000_16f5:
jr_000_16f5:
    ldh a, [$b6]
    set 1, a
    ldh [$b6], a
    ld a, [$c481]
    cp $10
    jp nc, Jump_000_1a8a

    ld a, [$c488]
    ld b, a
    bit 7, a
    jr z, jr_000_171c

    ld a, [$c483]
    add b
    ld [$c483], a
    ld a, [$c484]
    adc $ff
    ld [$c484], a
    jr jr_000_172b

jr_000_171c:
    ld a, [$c483]
    add b
    ld [$c483], a
    ld a, [$c484]
    adc $00
    ld [$c484], a

jr_000_172b:
    ld a, [$c489]
    ld b, a
    bit 7, a
    jr z, jr_000_1744

    ld a, [$c485]
    add b
    ld [$c485], a
    ld a, [$c486]
    adc $ff
    ld [$c486], a
    jr jr_000_1753

jr_000_1744:
    ld a, [$c485]
    add b
    ld [$c485], a
    ld a, [$c486]
    adc $00
    ld [$c486], a

jr_000_1753:
    ldh a, [$9d]
    ld b, a
    ld a, [$c484]
    sub b
    jr c, jr_000_1763

    cp $0e
    jp nc, Jump_000_1b04

    jr jr_000_1768

jr_000_1763:
    cp $fd
    jp c, Jump_000_1b04

jr_000_1768:
    ldh a, [$9f]
    ld b, a
    ld a, [$c486]
    sub b
    jp c, Jump_000_1b04

    cp $09
    jp nc, Jump_000_1b04

    ld a, [$c480]
    cp $04
    jp nc, Jump_000_1b14

    ld a, [$c484]
    ld b, a
    ld a, [$c486]
    ld c, a
    call Call_000_2aa4
    sla a
    ld hl, $5239
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$c482]
    set 7, a
    ld [$c482], a
    jr jr_000_17df

    ld a, [$c480]
    ld c, a
    ld b, $00
    ld hl, $5279
    add hl, bc
    ld b, [hl]
    ld a, [$c488]
    bit 7, a
    jr nz, jr_000_17b6

    cp b
    jr nc, jr_000_17df

jr_000_17b6:
    ld a, [$c488]
    add $02
    ld [$c488], a
    jr jr_000_17df

    ld a, [$c480]
    add $04
    ld c, a
    ld b, $00
    ld hl, $5279
    add hl, bc
    ld b, [hl]
    ld a, [$c488]
    bit 7, a
    jr z, jr_000_17d7

    cp b
    jr c, jr_000_17df

jr_000_17d7:
    ld a, [$c488]
    sub $02
    ld [$c488], a

Jump_000_17df:
jr_000_17df:
    ld a, [$c48a]
    res 0, a
    res 1, a
    ld [$c48a], a
    ld a, [$c480]
    rlca
    ld c, a
    ld b, $00
    ld hl, $17f8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc d
    dec de
    inc d

jr_000_17fb:
    dec de
    nop
    jr @+$1a

    jr jr_000_17fb

    adc c
    call nz, $02c6
    ld [$c489], a

Jump_000_1808:
    ld a, $51
    ld [$c487], a
    ld a, [$c48a]
    bit 1, a
    jp nz, Jump_000_1a51

    jp Jump_000_1b14


    ld d, $00

Jump_000_181a:
    ld b, $62
    ld a, [$c481]
    cp $04
    jr c, jr_000_187e

    inc b
    cp $08
    jr c, jr_000_187e

    cp $09
    jr c, jr_000_1855

    ldh a, [$99]
    and d
    jr nz, jr_000_1841

    ld a, [$c488]
    bit 7, a
    jr nz, jr_000_183c

    add $01
    jr jr_000_183e

jr_000_183c:
    sub $01

jr_000_183e:
    ld [$c488], a

jr_000_1841:
    ld a, [$c487]
    ld b, a
    ldh a, [$99]
    and $03
    jr nz, jr_000_18b8

    inc b
    ld a, b
    cp $67
    jr c, jr_000_18b8

    ld b, $64
    jr jr_000_18b8

jr_000_1855:
    inc a
    ld [$c481], a
    ldh a, [$a5]
    bit 5, a
    jr nz, jr_000_1863

    ld a, $20
    jr jr_000_1865

jr_000_1863:
    ld a, $e0

jr_000_1865:
    ld [$c488], a
    ld a, $64
    ld [$c487], a
    ldh a, [$ad]
    res 0, a
    ldh [$ad], a
    ld a, [$c48a]
    bit 1, a
    jp nz, Jump_000_1a51

    jp Jump_000_1b14


jr_000_187e:
    inc a
    ld [$c481], a
    ldh a, [$a4]
    sub $e0
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    xor a
    ld [$c489], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_18aa

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    jr jr_000_18b8

jr_000_18aa:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a

jr_000_18b8:
    ld a, b
    ld [$c487], a
    ld a, [$c48a]
    bit 1, a
    jp nz, Jump_000_1a51

    jp Jump_000_1b14


    ld a, [$c480]
    add $08
    ld c, a
    ld b, $00
    ld hl, $5279
    add hl, bc
    ld b, [hl]
    ld a, [$c488]
    bit 7, a
    jr nz, jr_000_18de

    cp b
    jr nc, jr_000_1923

jr_000_18de:
    ld a, [$c488]
    inc a
    ld [$c488], a
    jr jr_000_1923

    ld a, [$c480]
    add $0c
    ld c, a
    ld b, $00
    ld hl, $5279
    add hl, bc
    ld b, [hl]
    ld a, [$c488]
    bit 7, a
    jr z, jr_000_18fe

    cp b
    jr c, jr_000_1923

jr_000_18fe:
    ld a, [$c488]
    dec a
    ld [$c488], a
    jr jr_000_1923

    ld a, [$c485]
    and $f0
    cp $80
    jp c, Jump_000_17df

    ld a, [$c480]
    cp $01
    jp z, Jump_000_1a8a

    ld a, [$c48a]
    set 1, a
    ld [$c48a], a
    jr jr_000_192d

jr_000_1923:
    ld a, [$c48a]
    res 0, a
    res 1, a
    ld [$c48a], a

jr_000_192d:
    ld a, [$c480]
    ld c, a
    cp $01
    jr z, jr_000_1943

    ldh a, [$99]
    rra
    rra
    and $80
    ld b, a
    ld a, [$c482]
    or b
    ld [$c482], a

jr_000_1943:
    sla c
    ld b, $00
    ld hl, $194f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc d
    dec de
    ld d, a
    add hl, de
    ld [hl+], a
    ld a, [de]
    ld c, d
    ld a, [de]
    ld a, [$c488]
    bit 7, a
    jr nz, jr_000_1965

    sub $02
    jr nc, jr_000_196a

    xor a
    jr jr_000_196a

jr_000_1965:
    add $02
    jr nc, jr_000_196a

    xor a

jr_000_196a:
    ld [$c488], a
    ld b, $26
    ld a, [$c481]
    cp $04
    jr c, jr_000_19e1

    dec b
    dec b
    dec b
    cp $08
    jr c, jr_000_19e1

    cp $09
    jr c, jr_000_19bb

    ld a, [$c488]
    bit 7, a
    jr z, jr_000_198a

    cpl
    inc a

jr_000_198a:
    cp $10
    jr c, jr_000_1993

    ld b, $25
    jp Jump_000_1a1b


jr_000_1993:
    ld b, $23
    and a
    jp nz, Jump_000_1a1b

    ldh a, [$99]
    and $03
    jr nz, jr_000_19a6

    ld a, [$c489]
    dec a
    ld [$c489], a

jr_000_19a6:
    ldh a, [$99]
    and $18
    rra
    rra
    rra
    ld c, a
    ld b, $00
    ld hl, $19b7
    add hl, bc
    ld b, [hl]
    jr jr_000_1a1b

    inc hl
    inc h
    inc hl
    dec h

jr_000_19bb:
    inc a
    ld [$c481], a
    ld a, [$c482]
    bit 5, a
    jr nz, jr_000_19ca

    ld a, $30
    jr jr_000_19cc

jr_000_19ca:
    ld a, $d0

jr_000_19cc:
    ld b, a
    ldh a, [$a8]
    add b
    ld [$c488], a
    ld a, $25
    ld [$c487], a
    ldh a, [$ad]
    res 0, a
    ldh [$ad], a
    jp Jump_000_1b14


jr_000_19e1:
    inc a
    ld [$c481], a
    ldh a, [$a4]
    sub $40
    ld [$c485], a
    ldh a, [$a3]
    sbc $00
    ld [$c486], a
    xor a
    ld [$c489], a
    ldh a, [$a5]
    bit 5, a
    jr z, jr_000_1a0d

    ldh a, [$a2]
    sub $80
    ld [$c483], a
    ldh a, [$a1]
    sbc $00
    ld [$c484], a
    jr jr_000_1a1b

jr_000_1a0d:
    ldh a, [$a2]
    add $80
    ld [$c483], a
    ldh a, [$a1]
    adc $00
    ld [$c484], a

Jump_000_1a1b:
jr_000_1a1b:
    ld a, b
    ld [$c487], a
    jp Jump_000_1b14


    ld a, [$c489]
    add $01
    ld [$c489], a
    ldh a, [$99]
    and $03
    jp nz, Jump_000_1808

    ld a, [$c488]
    bit 7, a
    jr nz, jr_000_1a3f

    sub $01
    jr nc, jr_000_1a44

    xor a
    jr jr_000_1a44

jr_000_1a3f:
    add $01
    jr nc, jr_000_1a44

    xor a

jr_000_1a44:
    ld [$c488], a
    jp Jump_000_1808


    ld d, $07
    ld e, $10
    jp Jump_000_181a


Jump_000_1a51:
    ld a, [$c48a]
    bit 0, a
    jp nz, Jump_000_1b14

    set 0, a
    ld [$c48a], a
    ld hl, $c490

jr_000_1a61:
    ld a, [hl]
    and a
    jr z, jr_000_1a70

    ld a, l
    add $05
    ld l, a
    cp $a4
    jp z, Jump_000_1b14

    jr jr_000_1a61

jr_000_1a70:
    ld a, $29
    ld [hl+], a
    inc l
    ld a, [$c483]
    and $f0
    ld [hl+], a
    ld a, [$c484]
    ld [hl+], a
    ld a, [$c486]
    ld [hl], a
    ld e, $25
    call Call_000_29fb
    jp Jump_000_1b14


Jump_000_1a8a:
    ld a, [$c480]
    rlca
    ld c, a
    ld b, $00
    ld hl, $1a99
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc d
    dec de
    and c
    ld a, [de]
    or h
    ld a, [de]
    or [hl]
    ld a, [de]
    ld b, $27
    ld a, [$c481]
    cp $10
    jr c, jr_000_1ae8

    cp $14
    jr c, jr_000_1af2

    cp $18
    jr c, jr_000_1af1

    jr jr_000_1b04

    jr jr_000_1b04

    ld b, $6c
    ld a, [$c481]
    cp $10
    jr c, jr_000_1ad1

    cp $12
    jr c, jr_000_1af2

    cp $14
    jr c, jr_000_1af1

    cp $16
    jr c, jr_000_1af0

    cp $18
    jr c, jr_000_1aef

    jr jr_000_1b04

jr_000_1ad1:
    ld a, [$c485]
    add $80
    ld [$c485], a
    ld a, [$c486]
    adc $00
    ld [$c486], a
    ld a, $0f
    ld [$c481], a
    jr jr_000_1af2

jr_000_1ae8:
    ld a, $0f
    ld [$c481], a
    jr jr_000_1af2

jr_000_1aef:
    inc b

jr_000_1af0:
    inc b

jr_000_1af1:
    inc b

jr_000_1af2:
    inc a
    ld [$c481], a
    ld a, b
    ld [$c487], a
    xor a
    ld [$c488], a
    ld [$c489], a
    jp Jump_000_1b14


Jump_000_1b04:
jr_000_1b04:
    xor a
    ld [$c480], a
    ld [$c481], a
    ldh a, [$ad]
    res 0, a
    ldh [$ad], a
    jp Jump_000_1b14


Jump_000_1b14:
    ld a, [$c2df]
    cp $01
    jr z, jr_000_1b30

    cp $02
    jr nz, jr_000_1b3f

    call Call_000_2961
    ld e, $56
    call Call_000_3476
    xor a
    ldh [$98], a
    ld a, $e7
    ldh [rLCDC], a
    jr jr_000_1b3f

jr_000_1b30:
    call Call_000_2961
    ld e, $58
    call Call_000_3476
    xor a
    ldh [$98], a
    ld a, $e7
    ldh [rLCDC], a

jr_000_1b3f:
    xor a
    ld [$c2c0], a
    ld d, $c1
    xor a
    ldh [$cf], a

Jump_000_1b48:
jr_000_1b48:
    ld e, a
    ld a, [de]
    ldh [$bd], a
    or a
    jr nz, jr_000_1b5a

    ldh a, [$cf]
    add $20
    ldh [$cf], a
    jr nc, jr_000_1b48

    jp Jump_000_1ef8


jr_000_1b5a:
    ldh a, [$cf]
    inc a
    ld l, a
    ld h, $c1
    ld a, [hl+]
    ldh [$be], a
    ld a, [hl+]
    ldh [$bf], a
    ld a, [hl+]
    ldh [$c0], a
    ld a, [hl+]
    ldh [$c1], a
    ldh [$c9], a
    ld a, [hl+]
    ldh [$c3], a
    ld a, [hl+]
    ldh [$c2], a
    ld a, [hl+]
    ldh [$c5], a
    ld a, [hl+]
    ldh [$c4], a
    ld a, [hl+]
    ldh [$c6], a
    ld a, [hl+]
    ldh [$c7], a
    ld a, [hl+]
    ldh [$ca], a
    ld a, [hl+]
    ldh [$cb], a
    ld a, [hl+]
    ldh [$cc], a
    ld a, [hl+]
    ld [$c0fd], a
    ld a, [hl+]
    ld [$c0fe], a
    ld a, [hl+]
    ldh [$cd], a
    ld a, [hl+]
    ldh [$ce], a
    ld a, [hl+]
    ld [$c2cf], a
    ld a, [hl+]
    ld [$c2d0], a
    ld a, [hl]
    ld [$c2d1], a
    ld a, l
    add $0b
    ld l, a
    ld a, [hl]
    ldh [$c8], a
    ldh a, [$bd]
    cp $70
    jp nc, Jump_000_1ecf

    ldh a, [$bf]
    and a
    jp z, Jump_000_1c5e

    ldh a, [$bd]
    cp $54
    jr c, jr_000_1bd7

    sub $54
    sla a
    ld c, a
    ld b, $00
    ld a, $05
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4594
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_29fa
    jr jr_000_1bed

jr_000_1bd7:
    sla a
    ld c, a
    ld b, $00
    ld a, $06
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_29fa

jr_000_1bed:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ldh a, [$be]
    add $c0
    ld l, a
    ld h, $7e
    ld b, [hl]
    ldh a, [$99]
    and b
    jr nz, jr_000_1c12

    ldh a, [$c0]
    bit 7, a
    jr nz, jr_000_1c0e

    sub $01
    jr nc, jr_000_1c10

    xor a
    jr jr_000_1c10

jr_000_1c0e:
    add $01

jr_000_1c10:
    ldh [$c0], a

jr_000_1c12:
    ldh a, [$c1]
    ldh [$c9], a
    ldh a, [$be]
    cp $18
    jr c, jr_000_1c5e

    ld d, a
    sub $18
    swap a
    add $a0
    ld l, a
    ldh a, [$c3]
    and $f0
    swap a
    add l
    ld l, a
    ld h, $7f
    ld b, [hl]
    ldh a, [$c5]
    sub b
    jr c, jr_000_1c5e

    ldh a, [$c1]
    ld b, a
    bit 7, a
    jr nz, jr_000_1c5e

    ld a, d
    cp $1a
    jr nc, jr_000_1c4f

    ldh a, [$c0]
    bit 7, a
    jr z, jr_000_1c48

    cpl
    inc a

jr_000_1c48:
    add $10
    add b
    ldh [$c9], a
    jr jr_000_1c5e

jr_000_1c4f:
    ldh a, [$c0]
    bit 7, a
    jr z, jr_000_1c57

    cpl
    inc a

jr_000_1c57:
    srl a
    add b
    add $10
    ldh [$c9], a

Jump_000_1c5e:
jr_000_1c5e:
    ldh a, [$c0]
    ld b, a
    ld a, [$c0fd]
    add b
    ld b, a
    bit 7, b
    jr z, jr_000_1c77

    ldh a, [$c3]
    add b
    ldh [$c3], a
    ldh a, [$c2]
    adc $ff
    ldh [$c2], a
    jr jr_000_1c82

jr_000_1c77:
    ldh a, [$c3]
    add b
    ldh [$c3], a
    ldh a, [$c2]
    adc $00
    ldh [$c2], a

jr_000_1c82:
    ldh a, [$c9]
    ld b, a
    ld a, [$c0fe]
    add b
    ld b, a
    bit 7, b
    jr z, jr_000_1c9b

    ldh a, [$c5]
    add b
    ldh [$c5], a
    ldh a, [$c4]
    adc $ff
    ldh [$c4], a
    jr jr_000_1ca6

jr_000_1c9b:
    ldh a, [$c5]
    add b
    ldh [$c5], a
    ldh a, [$c4]
    adc $00
    ldh [$c4], a

jr_000_1ca6:
    ldh a, [$cb]
    bit 4, a
    jp nz, Jump_000_1edf

    ldh a, [$cc]
    and $0f
    ldh [$cc], a
    xor a
    ldh [$ee], a
    ldh [$ef], a
    ld h, $c1
    ldh a, [$cf]
    add $16
    ld l, a
    ld a, [hl]
    and $0f
    swap a
    ld b, a
    ld a, [hl+]
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    add b
    ldh a, [$c2]
    adc c
    cp $50
    jr c, jr_000_1cdc

    ld a, $10
    ldh [$ee], a
    dec l
    jr jr_000_1d02

jr_000_1cdc:
    ld b, a
    ld a, [hl]
    and $0f
    swap a
    ld c, a
    ld a, [hl-]
    and $f0
    swap a
    ld d, a
    ldh a, [$c5]
    sub c
    ldh a, [$c4]
    sbc d
    ld c, a
    ld [$c2d2], a
    call Call_000_2aa4
    ldh [$ee], a
    ldh a, [$ba]
    cp $16
    jr nc, jr_000_1d02

    cp $01
    jr nz, jr_000_1d12

jr_000_1d02:
    xor a
    ldh [$c0], a
    ld a, [hl]
    swap a
    cpl
    inc a
    ldh [$c3], a
    ldh a, [$cc]
    set 6, a
    ldh [$cc], a

jr_000_1d12:
    ld a, [hl]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    sub b
    ldh a, [$c2]
    sbc c
    cp $50
    jr c, jr_000_1d30

    ld a, $10
    ldh [$ef], a
    jr jr_000_1d44

jr_000_1d30:
    ld b, a
    ld a, [$c2d2]
    ld c, a
    call Call_000_2aa4
    ldh [$ef], a
    ldh a, [$ba]
    cp $16
    jr nc, jr_000_1d44

    cp $01
    jr nz, jr_000_1d57

jr_000_1d44:
    xor a
    ldh [$c0], a
    ld a, [hl+]
    and $0f
    swap a
    or $0f
    ldh [$c3], a
    inc l
    ldh a, [$cc]
    set 7, a
    ldh [$cc], a

jr_000_1d57:
    ldh a, [$cf]
    add $18
    ld l, a
    ld a, [hl]
    and $0f
    swap a
    ld b, a
    ld a, [hl+]
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    add b
    ldh a, [$c2]
    adc c
    ld b, a
    ld a, [hl]
    and $0f
    swap a
    ld c, a
    ld a, [hl]
    and $f0
    swap a
    ld d, a
    ldh a, [$c5]
    sub c
    ldh a, [$c4]
    sbc d
    ld c, a
    ld [$c2d2], a
    cp $40
    jr c, jr_000_1d92

    ld a, $10
    ldh [$f0], a
    ldh [$f1], a
    inc l
    jr jr_000_1dcd

jr_000_1d92:
    call Call_000_2aa4
    ldh [$f0], a
    ldh a, [$ba]
    ld [$c2c3], a
    dec l
    ld a, [hl+]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    sub b
    ldh a, [$c2]
    sbc c
    ld b, a
    ld a, [$c2d2]
    ld c, a
    call Call_000_2aa4
    ldh [$f1], a
    ldh a, [$ba]
    ld b, a
    ld a, [$c2c3]
    or b
    cp $16
    jr nc, jr_000_1dcd

    cp $01
    jr z, jr_000_1dcd

    inc l
    jr jr_000_1ded

jr_000_1dcd:
    ld a, [hl+]
    and $0f
    swap a
    ld b, a
    ldh a, [$c5]
    sub b
    cpl
    inc a
    ld b, a
    ldh a, [$c5]
    add b
    ldh [$c5], a
    ldh a, [$c4]
    adc $00
    ldh [$c4], a
    xor a
    ldh [$c1], a
    ldh a, [$cc]
    set 5, a
    ldh [$cc], a

jr_000_1ded:
    ldh a, [$c2]
    ld b, a
    ldh a, [$c4]
    ld c, a
    call Call_000_2aa4
    ldh [$f2], a
    ldh a, [$ba]
    bit 4, a
    jr nz, jr_000_1e76

    cp $01
    jr z, jr_000_1e5c

    cp $02
    jr z, jr_000_1e5c

    ld a, [hl]
    and $0f
    swap a
    ld b, a
    ld a, [hl]
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    add b
    ldh a, [$c2]
    adc c
    ld b, a
    ldh a, [$c4]
    ld c, a
    call Call_000_2aa4
    cp $18
    jr c, jr_000_1e24

    xor a

jr_000_1e24:
    ldh [$f3], a
    ldh a, [$ba]
    cp $01
    jr z, jr_000_1e5c

    cp $02
    jr z, jr_000_1e5c

    ld a, [hl]
    inc a
    ld c, a
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$c3]
    sub b
    ldh a, [$c2]
    sbc c
    ld b, a
    ldh a, [$c4]
    ld c, a
    call Call_000_2aa4
    cp $18
    jr c, jr_000_1e50

    xor a

jr_000_1e50:
    ldh [$f4], a
    ldh a, [$ba]
    cp $02
    jr z, jr_000_1e5c

    cp $01
    jr nz, jr_000_1ec2

jr_000_1e5c:
    ldh a, [$c1]
    bit 7, a
    jr nz, jr_000_1ec2

    xor a
    ldh [$c1], a
    ldh a, [$cc]
    set 4, a
    ldh [$cc], a
    ldh a, [$cb]
    bit 7, a
    jr nz, jr_000_1ec2

    xor a
    ldh [$c5], a
    jr jr_000_1ec2

jr_000_1e76:
    cp $16
    jr nc, jr_000_1ea0

    and $0f
    swap a
    add $a0
    ld e, a
    ldh a, [$c3]
    and $f0
    swap a
    add e
    ld e, a
    ld d, $7f
    ld a, [de]
    ld b, a
    ldh a, [$c5]
    sub b
    jr c, jr_000_1ec2

    ld a, b
    ldh [$c5], a
    xor a
    ldh [$c1], a
    ldh a, [$cc]
    set 4, a
    ldh [$cc], a
    jr jr_000_1ec2

jr_000_1ea0:
    sub $16
    swap a
    add $a0
    ld e, a
    ldh a, [$c3]
    and $f0
    swap a
    add e
    ld e, a
    ld d, $7f
    ld a, [de]
    ldh [$c5], a
    ldh a, [$c4]
    dec a
    ldh [$c4], a
    xor a
    ldh [$c1], a
    ldh a, [$cc]
    set 4, a
    ldh [$cc], a

jr_000_1ec2:
    ld a, $07
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4000
    call Call_000_29fa

Jump_000_1ecf:
    xor a
    ld [$c0fd], a
    ld [$c0fe], a
    ldh a, [$cb]
    bit 4, a
    jr nz, jr_000_1edf

    call Call_000_2f24

Jump_000_1edf:
jr_000_1edf:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4e72
    call Call_000_29fa
    ld d, $c1
    ldh a, [$cf]
    add $20
    ldh [$cf], a
    ld e, a
    jp nc, Jump_000_1b48

Jump_000_1ef8:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ldh a, [$a0]
    and a
    jp nz, Jump_000_2012

    ld a, [$c4a5]
    and a
    jr nz, jr_000_1f32

    ld e, $02
    call Call_000_2a4a
    ld a, $6b
    ldh [$a7], a
    inc a
    ld [$c4a5], a
    ld hl, $c100

jr_000_1f1b:
    ldh a, [$a2]
    ld [hl+], a
    ldh a, [$a1]
    ld [hl+], a
    ldh a, [$a3]
    ld [hl+], a
    ldh a, [$a4]
    ld [hl+], a
    ld a, l
    cp $20
    jr nz, jr_000_1f1b

jr_000_1f2c:
    call Call_000_369a
    jp Jump_000_2470


Jump_000_1f32:
jr_000_1f32:
    ld a, [$c4a6]
    inc a
    ld [$c4a6], a
    cp $02
    jr nz, jr_000_1f42

    ld e, $24
    call Call_000_29fb

jr_000_1f42:
    cp $08
    jr c, jr_000_1f2c

    ld a, [$c108]
    add $22
    ld [$c108], a
    ld a, [$c109]
    adc $00
    ld [$c109], a
    ld a, [$c104]
    add $18
    ld [$c104], a
    ld [$c10c], a
    ld a, [$c105]
    adc $00
    ld [$c105], a
    ld [$c10d], a
    ld a, [$c118]
    sub $22
    ld [$c118], a
    ld a, [$c119]
    sbc $00
    ld [$c119], a
    ld a, [$c114]
    sub $18
    ld [$c114], a
    ld [$c11c], a
    ld a, [$c115]
    sbc $00
    ld [$c115], a
    ld [$c11d], a
    ld a, [$c113]
    add $22
    ld [$c113], a
    ld a, [$c112]
    adc $00
    ld [$c112], a
    ld a, [$c10f]
    add $18
    ld [$c10f], a
    ld [$c117], a
    ld a, [$c10e]
    adc $00
    ld [$c10e], a
    ld [$c116], a
    ld a, [$c103]
    sub $22
    ld [$c103], a
    ld a, [$c102]
    sbc $00
    ld [$c102], a
    ld a, [$c107]
    sub $18
    ld [$c107], a
    ld [$c11f], a
    ld a, [$c106]
    sbc $00
    ld [$c106], a
    ld [$c11e], a
    ld a, [$c4a6]
    cp $a0
    jr z, jr_000_1ffc

    and $01
    jr nz, jr_000_1ff6

    ld a, [$c4a5]
    inc a
    cp $70
    jr nz, jr_000_1ff3

    ld a, $6c

jr_000_1ff3:
    ld [$c4a5], a

jr_000_1ff6:
    call Call_000_35b6
    jp Jump_000_2470


jr_000_1ffc:
    ld a, [$c0e1]
    dec a
    ld [$c0e1], a
    cp $ff
    jp nz, Jump_000_047a

    ld a, $02
    ldh [$9b], a
    ld [$2000], a
    jp $6eaf


Jump_000_2012:
    ld hl, $c490

jr_000_2015:
    ld a, [hl+]
    and a
    jr nz, jr_000_2023

jr_000_2019:
    ld a, l
    cp $a0
    jr z, jr_000_203b

    add $04
    ld l, a
    jr jr_000_2015

jr_000_2023:
    ld b, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $10
    jr c, jr_000_2019

    and $03
    jr nz, jr_000_2019

    inc b
    ld a, b
    cp $2d
    jr c, jr_000_2037

    xor a
    ld [hl], a

jr_000_2037:
    dec l
    ld [hl+], a
    jr jr_000_2019

jr_000_203b:
    ld hl, $ded8

jr_000_203e:
    ldh a, [$9d]
    ld b, [hl]
    cp b
    jr nz, jr_000_2061

    inc l
    ldh a, [$9f]
    ld b, [hl]
    cp b
    jr nz, jr_000_2062

    inc l
    ld a, [hl+]
    ld [$c0f5], a
    ld b, [hl]
    ld a, [$c4a4]
    cp b
    jr z, jr_000_206a

    ld a, b
    ld [$c4a4], a
    ld e, b
    call Call_000_2a30
    jr jr_000_206a

jr_000_2061:
    inc l

jr_000_2062:
    inc l
    inc l
    inc l
    ld a, [hl]
    cp $ff
    jr nz, jr_000_203e

jr_000_206a:
    ldh a, [$a3]
    or $80
    ld l, a
    ld h, $7e
    ld c, [hl]
    ldh a, [$a1]
    ld d, a
    ld h, $7e
    ld l, a
    ld a, [hl]
    ld e, a
    and $f0
    swap a
    add $a0
    ld b, a
    ld a, c
    and $f0
    rrca
    add b
    ld l, a
    ld h, $c0
    ld b, [hl]
    ld a, e
    and $0f
    cp $05
    jr nc, jr_000_2093

    sra b

jr_000_2093:
    sra b
    jr c, jr_000_20a0

    ld a, d
    ld h, a
    ldh [$a6], a
    ldh a, [$a2]
    ld l, a
    jr jr_000_20b0

jr_000_20a0:
    ld a, e
    and $f0
    swap a
    ld hl, $7e60
    or l
    ld l, a
    ld a, [hl]
    ld h, a
    ldh [$a6], a
    xor a
    ld l, a

jr_000_20b0:
    ldh a, [$9e]
    ld c, a
    ld e, a
    ld a, l
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ld d, a
    ld a, h
    sbc b
    ld b, a
    jr c, jr_000_20cb

    xor a
    sub c
    ld c, a
    ld a, $05
    sbc b
    ld b, a
    jr c, jr_000_2108

    jr jr_000_20d2

jr_000_20cb:
    xor a
    sub c
    ld c, a
    ld a, $05
    sbc b
    ld b, a

jr_000_20d2:
    ld a, c
    sub $80
    ld a, b
    sbc $00
    jr nc, jr_000_20ee

    ld a, e
    sub c
    ldh [$9e], a
    ld a, d
    sbc b
    ldh [$9d], a
    cp $47
    jr c, jr_000_2104

    xor a
    ldh [$9e], a
    ldh [$9d], a
    jp Jump_000_2273


jr_000_20ee:
    ld a, e
    sub $80
    ldh [$9e], a
    ld a, d
    sbc $00
    ldh [$9d], a
    cp $47
    jr c, jr_000_2104

    xor a
    ldh [$9e], a
    ldh [$9d], a
    jp Jump_000_2273


jr_000_2104:
    sub $01
    jr jr_000_2148

jr_000_2108:
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    ld a, c
    sub $80
    ld a, b
    sbc $00
    jr nc, jr_000_212b

    ld a, e
    add c
    ldh [$9e], a
    ld c, a
    ld a, d
    adc b
    ldh [$9d], a
    ld d, a
    cp $46
    jr c, jr_000_2145

    xor a
    ldh [$9e], a
    jp Jump_000_2273


jr_000_212b:
    ld a, e
    add $80
    ldh [$9e], a
    ld c, a
    ld a, d
    adc $00
    ldh [$9d], a
    ld d, a
    cp $46
    jr c, jr_000_2145

    xor a
    ldh [$9e], a
    ld a, $46
    ldh [$9d], a
    jp Jump_000_2273


jr_000_2145:
    ld a, $0b
    add d

jr_000_2148:
    ld c, $00
    rra
    rr c
    rra
    rr c
    rra
    rr c
    rra
    rr c
    ld b, a
    ldh a, [$9f]
    ld h, a
    and $0f
    or c
    ld c, a
    ld d, $98
    swap a
    and $0f
    rla
    ld e, a
    ld a, c
    and $0f
    rra
    rra
    add d
    ld d, a
    ld a, h
    and $f0
    swap a
    ld h, a
    rla
    rla
    add h
    add $c7
    ld h, a
    ld l, $00
    add hl, bc
    ld a, [hl+]
    push hl
    ld b, $00
    rla
    rl b
    rla
    rl b
    ld c, a
    ld hl, $db00
    add hl, bc
    ldh a, [$9e]
    and $80
    rla
    rla
    ldh [$b5], a
    or l
    ld l, a
    and $01
    or e
    ld e, a
    ld b, $c6
    ldh a, [$95]
    ld c, a
    ld a, d
    ld [bc], a
    inc c
    ld a, e
    ld [bc], a
    inc c
    ld a, $90
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl+]
    push hl
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    pop hl
    ld a, [hl]
    ld d, $00
    rla
    rl d
    rla
    rl d
    ld e, a
    ld hl, $db00
    add hl, de
    ldh a, [$b5]
    or l
    ld l, a
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    inc c
    xor a
    ld [bc], a
    ldh a, [$95]
    add $13
    ldh [$95], a

Jump_000_2273:
    ldh a, [$9f]
    ld b, a
    ldh a, [$a3]
    ld c, a
    sub b
    cp $08
    jp c, Jump_000_246a

    ld a, c
    and $f8
    ldh [$9f], a
    ld h, a
    ldh a, [$a6]
    sub $06
    jr nc, jr_000_228c

    xor a

jr_000_228c:
    ld c, $00
    rra
    rr c
    rra
    rr c
    rra
    rr c
    rra
    rr c
    ld b, a
    ld a, h
    and $0f
    or c
    ld c, a
    ld d, $98
    swap a
    and $0f
    rla
    ld e, a
    ldh [$dd], a
    ld a, c
    and $0f
    rra
    rra
    add d
    ld d, a
    ldh [$dc], a
    ld a, h
    and $f0
    swap a
    ld h, a
    rla
    rla
    add h
    add $c7
    ld h, a
    ld l, $00
    add hl, bc
    ld a, l
    ldh [$df], a
    ld a, h
    ldh [$de], a
    call Call_000_2961
    ld b, $00
    ld c, $68

jr_000_22cf:
    push bc
    ld a, [hl+]
    push hl
    ld b, $00
    rla
    rl b
    rla
    rl b
    ld c, a
    ld hl, $db00
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $1f
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, e
    add $1f
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop hl
    pop bc
    dec c
    ld a, b
    or c
    jr z, jr_000_231d

    ld a, c
    and $07
    jr nz, jr_000_22cf

    ldh a, [$dd]
    add $02
    and $1f
    ld e, a
    ldh [$dd], a
    ldh a, [$dc]
    ld d, a
    ldh a, [$df]
    add $10
    ld l, a
    ldh [$df], a
    ldh a, [$de]
    adc $00
    ld h, a
    ldh [$de], a
    jr jr_000_22cf

jr_000_231d:
    ldh a, [$a1]
    ld b, a
    ldh a, [$a3]
    ld c, a
    call Call_000_2a62
    ld a, b
    and $f0
    swap a
    ld b, a
    ld a, c
    and $f0
    ld [$c0f8], a
    or b
    ld b, a
    ld [$c0f7], a
    ld hl, $c240

jr_000_233a:
    ld a, [hl]
    cp b
    jr z, jr_000_2398

    ld a, l
    add $08
    ld l, a
    cp $c0
    jr nz, jr_000_233a

    ld a, [$c0e0]
    cp $04
    jp nz, Jump_000_240b

    ld a, [$c0f7]
    cp $05
    jr z, jr_000_2382

    cp $17
    jr z, jr_000_2370

    cp $27
    jp nz, Jump_000_240b

    ld e, $55
    call Call_000_3476
    ld e, $56
    call Call_000_3476
    ld e, $04
    call Call_000_3476
    jp Jump_000_240b


jr_000_2370:
    ld e, $6b
    call Call_000_3476
    ld e, $53
    call Call_000_3476
    ld e, $04
    call Call_000_3476
    jp Jump_000_240b


jr_000_2382:
    ld e, $51
    call Call_000_3476
    ld e, $52
    call Call_000_3476
    ld e, $04
    call Call_000_3476
    ld a, $03
    ld [$c0e7], a
    jr jr_000_240b

jr_000_2398:
    inc l
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [$c0e0]
    cp $04
    jr nz, jr_000_23b3

    ld e, a
    call Call_000_3476

jr_000_23b3:
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld e, [hl]
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld a, [$c0f7]
    ld b, a
    ld hl, $dec8
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_000_23ea

    ld a, [$c0e7]
    cp $01
    jr nc, jr_000_240b

    ld a, $01
    ld [$c0e7], a
    jr jr_000_240b

jr_000_23ea:
    inc l
    inc l
    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_000_23ff

    ld a, [$c0e7]
    cp $02
    jr nc, jr_000_240b

    ld a, $02
    ld [$c0e7], a
    jr jr_000_240b

jr_000_23ff:
    inc l
    inc l
    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_000_240b

    ld a, $03
    ld [$c0e7], a

Jump_000_240b:
jr_000_240b:
    ld a, [$c0f8]
    swap a
    add $c0
    ld l, a
    ld h, $de
    ld a, [hl]
    ld [$c0f9], a
    ld b, a
    cp $08
    jr c, jr_000_2428

    ldh a, [$99]
    and $0c
    rrca
    rrca
    add b
    ld b, a
    jr jr_000_2430

jr_000_2428:
    ldh a, [$99]
    and $30
    swap a
    add b
    ld b, a

jr_000_2430:
    ld a, $0a
    ldh [$9b], a
    ld [$2000], a
    ld hl, $7952
    sla b
    ld a, b
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ldh [$f9], a
    ld a, l
    ldh [$fa], a
    ld a, $10
    ld [$c2da], a
    call Call_000_2b98
    ld hl, $c100

jr_000_2453:
    xor a
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_000_2453

    call Call_000_3c35
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    xor a
    ldh [$98], a
    ld a, $e7
    ldh [rLCDC], a

Jump_000_246a:
    call Call_000_3ced
    call Call_000_369a

Jump_000_2470:
    call Call_000_3b00
    ld a, [$c0f9]
    ld b, a
    cp $ff
    jr z, jr_000_24b6

    ld a, [$c2da]
    cp $30
    jr c, jr_000_24b6

    ld a, $10
    ld [$c2da], a
    ld a, b
    cp $08
    jr c, jr_000_2496

    ldh a, [$99]
    and $0c
    rrca
    rrca
    add b
    ld b, a
    jr jr_000_249e

jr_000_2496:
    ldh a, [$99]
    and $30
    swap a
    add b
    ld b, a

jr_000_249e:
    ld a, $0a
    ldh [$9b], a
    ld [$2000], a
    ld hl, $7952
    sla b
    ld a, b
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ldh [$f9], a
    ld a, l
    ldh [$fa], a

jr_000_24b6:
    ldh a, [$b4]
    cp $01
    jr nz, jr_000_24dd

    ld a, $08
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4000
    ldh a, [$bb]
    swap a
    rlca
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ldh [$f6], a
    ld a, [hl]
    ldh [$f5], a
    ld a, $00
    ldh [$f8], a
    ld a, $80
    ldh [$f7], a

jr_000_24dd:
    ld a, [$c2d3]
    ld b, a
    ld a, [$c2d4]
    or b
    jp nz, Jump_000_05ca

    ld a, [$c2f0]
    cp $ff
    jp nz, Jump_000_05ca

    ldh a, [$a7]
    cp $05
    jr c, jr_000_24fb

    cp $0b
    jp c, Jump_000_05ca

jr_000_24fb:
    ld e, $05
    call Call_000_2a30
    ld a, $01
    ld [$c2db], a
    ld a, $a0
    ld [$c0f1], a

jr_000_250a:
    ld a, $01
    ldh [$97], a

jr_000_250e:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_250e

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_000_250a

    xor a
    ld [$c2db], a
    ld a, $08
    call Call_000_3e24
    call Call_000_368e
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld a, [$c0e0]
    inc a
    cp $05
    jp nc, $59ac

    ld [$c0e0], a
    xor a
    ld [$c0e7], a
    jp Jump_000_03fd


Jump_000_2547:
    push af
    push bc
    push de
    push hl
    ldh a, [$97]
    and a
    jp z, Jump_000_26ce

    ldh [rDIV], a
    call $ff80
    ld de, $c600
    call Call_000_29b9
    xor a
    ldh [$95], a
    ld [$c600], a
    ldh a, [$99]
    inc a
    ldh [$99], a
    ldh a, [$9e]
    and $f0
    swap a
    ld b, a
    ldh a, [$9d]
    and $0f
    swap a
    or b
    ldh [rSCX], a
    ld a, [$c2e0]
    and $f0
    swap a
    ld b, a
    ldh a, [$9f]
    and $0f
    swap a
    or b
    ldh [rSCY], a
    ld a, [$c0f3]
    and a
    jr z, jr_000_25c1

    cp $02
    jr z, jr_000_25a1

    cp $03
    jr z, jr_000_25ae

    cp $04
    jr z, jr_000_25a8

    cp $05
    jr z, jr_000_25b5

    jp Jump_000_266d


jr_000_25a1:
    ld a, $1c
    ldh [rLYC], a
    jp Jump_000_266d


jr_000_25a8:
    ldh a, [rLCDC]
    set 1, a
    ldh [rLCDC], a

jr_000_25ae:
    ld a, $17
    ldh [rLYC], a
    jp Jump_000_266d


jr_000_25b5:
    xor a
    ldh [rLYC], a
    ldh a, [rLCDC]
    set 1, a
    ldh [rLCDC], a
    jp Jump_000_266d


jr_000_25c1:
    ldh a, [rLCDC]
    set 1, a
    ldh [rLCDC], a
    ld a, [$c2db]
    and a
    jp nz, Jump_000_266d

    ldh a, [$b4]
    and a
    jr z, jr_000_2633

    cp $01
    jr nz, jr_000_25df

    ldh a, [$f7]
    cp $80
    jr nz, jr_000_2633

    ld a, $01

jr_000_25df:
    inc a
    cp $42
    jr nc, jr_000_2633

    ldh [$b4], a
    ld a, $08
    ld [$2000], a
    ldh a, [$f7]
    ld d, a
    ldh a, [$f8]
    ld e, a
    ldh a, [$f5]
    ld h, a
    ldh a, [$f6]
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, d
    ldh [$f7], a
    ld a, e
    ldh [$f8], a
    ld a, h
    ldh [$f5], a
    ld a, l
    ldh [$f6], a

jr_000_2633:
    ld a, [$c0f9]
    cp $ff
    jr z, jr_000_266d

    ld a, $0a
    ld [$2000], a
    ldh a, [$f9]
    ld h, a
    ldh a, [$fa]
    ld l, a
    ld d, $90
    ld a, [$c2da]
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    ld [$c2da], a
    ld a, h
    ldh [$f9], a
    ld a, l
    ldh [$fa], a

Jump_000_266d:
jr_000_266d:
    ld a, [$c0e8]
    ldh [rWX], a
    ld a, [$c0e9]
    ldh [rWY], a
    ld a, [$c0ea]
    ldh [rBGP], a
    ld a, [$c0eb]
    ldh [rOBP0], a
    ld a, [$c0ec]
    ldh [rOBP1], a
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$8b]
    xor c
    and c
    ldh [$8c], a
    ld a, c
    ldh [$8b], a
    ld a, $30
    ldh [rP1], a
    ldh a, [$8b]
    xor $0f
    jp z, Jump_000_0150

    ld a, $01
    ldh [$98], a
    xor a
    ldh [$97], a
    ldh a, [$9b]
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_26ce:
    ld a, $01
    ldh [$98], a
    ld a, $01
    ld [$c2d7], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_26dc:
    push af
    push bc
    push de
    push hl
    ld a, [$c0f3]
    and a
    jp z, Jump_000_2848

    cp $02
    jp z, Jump_000_2782

    cp $03
    jr z, jr_000_2753

    cp $04
    jr z, jr_000_2735

    cp $05
    jp nz, Jump_000_284e

    ldh a, [rLYC]
    cp $67
    jr nc, jr_000_2727

    cp $17
    jr c, jr_000_2719

    add $50
    ldh [rLYC], a
    ld a, [$c0ea]
    ldh [rBGP], a
    ld a, [$c0eb]
    ldh [rOBP0], a
    ld a, [$c0ec]
    ldh [rOBP1], a
    jp Jump_000_284e


Jump_000_2719:
jr_000_2719:
    inc a
    ldh [rLYC], a
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    jp Jump_000_284e


jr_000_2727:
    cp $8f
    jp nc, Jump_000_284e

    ldh a, [rLCDC]
    res 1, a
    ldh [rLCDC], a
    jp Jump_000_2719


jr_000_2735:
    ldh a, [rLYC]
    cp $17
    jr nz, jr_000_2748

    add $50
    ldh [rLYC], a
    ldh a, [rLCDC]
    res 5, a
    ldh [rLCDC], a
    jp Jump_000_284e


jr_000_2748:
    ldh a, [rLCDC]
    set 5, a
    res 1, a
    ldh [rLCDC], a
    jp Jump_000_284e


jr_000_2753:
    ldh a, [rLYC]
    cp $17
    jr nz, jr_000_2760

    add $18
    ldh [rLYC], a
    jp Jump_000_284e


jr_000_2760:
    cp $2f
    jp nz, Jump_000_2842

    add $38
    ldh [rLYC], a
    ld a, [$c104]
    sub $04
    ld [$c104], a
    ld [$c100], a
    ld a, [$c105]
    sbc $00
    ld [$c105], a
    ld [$c101], a
    jp Jump_000_282e


Jump_000_2782:
    ldh a, [rLYC]
    cp $1c
    jr nz, jr_000_27b0

    add $07
    ldh [rLYC], a
    ld a, [$c104]
    add $0a
    ld [$c104], a
    ld [$c100], a
    ld a, [$c105]
    adc $00
    ld [$c105], a
    ld [$c101], a
    ldh a, [$99]
    and $a2
    jp nz, Jump_000_282e

    ld a, $db
    ldh [rBGP], a
    jp Jump_000_282e


jr_000_27b0:
    cp $23
    jr nz, jr_000_27d0

    add $07
    ldh [rLYC], a
    ld a, [$c108]
    add $08
    ld [$c108], a
    ld [$c100], a
    ld a, [$c109]
    adc $00
    ld [$c109], a
    ld [$c101], a
    jr jr_000_282e

jr_000_27d0:
    cp $2a
    jr nz, jr_000_27f0

    add $05
    ldh [rLYC], a
    ld a, [$c10c]
    add $06
    ld [$c10c], a
    ld [$c100], a
    ld a, [$c10d]
    adc $00
    ld [$c10d], a
    ld [$c101], a
    jr jr_000_282e

jr_000_27f0:
    cp $2f
    jr nz, jr_000_2810

    add $30
    ldh [rLYC], a
    ld a, [$c110]
    add $04
    ld [$c110], a
    ld [$c100], a
    ld a, [$c111]
    adc $00
    ld [$c111], a
    ld [$c101], a
    jr jr_000_282e

jr_000_2810:
    cp $5f
    jr nz, jr_000_2842

    add $08
    ldh [rLYC], a
    ld a, [$c114]
    add $02
    ld [$c114], a
    ld [$c100], a
    ld a, [$c115]
    adc $00
    ld [$c115], a
    ld [$c101], a

Jump_000_282e:
jr_000_282e:
    ld a, [$c100]
    and $f0
    swap a
    ld b, a
    ld a, [$c101]
    and $0f
    swap a
    or b
    ldh [rSCX], a
    jr jr_000_284e

Jump_000_2842:
jr_000_2842:
    ld a, $e4
    ldh [rBGP], a
    jr jr_000_284e

Jump_000_2848:
    ldh a, [rLCDC]
    res 1, a
    ldh [rLCDC], a

Jump_000_284e:
jr_000_284e:
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_2853:
    ei
    push af
    push bc
    push de
    push hl
    ld a, [$c477]
    and a
    jr z, jr_000_2870

    dec a
    ld hl, $c478
    add l
    ld l, a
    ld a, [hl-]
    ldh [$d1], a
    ld a, [hl]
    ldh [$d0], a
    ld a, l
    sub $78
    ld [$c477], a

jr_000_2870:
    ldh a, [$9b]
    ld [$c0f4], a
    ld a, [$c0f5]
    ldh [$9b], a
    ld [$2000], a
    ldh a, [$d0]
    cp $81
    jr nz, jr_000_2886

    call $405d

jr_000_2886:
    call $412b
    ld a, [$c0f4]
    ldh [$9b], a
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld e, $96
    call Call_000_3476
    ld e, $98
    call Call_000_3476
    ld e, $99
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    jp $59b8


    ld e, $8e
    call Call_000_3476
    ld e, $93
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    jp $6127


    ld e, $97
    call Call_000_3476
    ld e, $98
    call Call_000_3476
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    jp $627d


    call Call_000_2961
    call Call_000_2997
    ld e, $90
    call Call_000_3476
    ld e, $9a
    call Call_000_3476
    ld a, $9a
    ld [$c2e3], a
    ld a, $60
    ld [$c2e4], a
    ld a, $01
    ld [$2000], a
    ldh [$9b], a
    ld a, $e4
    ldh [rBGP], a
    ld [$c0ea], a
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $90
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ld [$c2e6], a
    ld [$c2e7], a
    ld [$c202], a
    ld [$c203], a
    ld [$c204], a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$9d], a
    ldh [$9e], a
    ldh [$9f], a
    ld [$c2e0], a
    ld a, $07
    ldh [rWX], a
    ld [$c0e8], a
    ld a, $90
    ldh [rWY], a
    ld [$c0e9], a
    xor a
    ldh [rIF], a
    ld a, $05
    ldh [rIE], a
    ld a, $e3
    ldh [rLCDC], a
    ld e, $08
    call Call_000_2a30
    jp $6321


Call_000_2949:
    ld c, $80
    ld b, $0a
    ld hl, $2957

jr_000_2950:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_2950

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_295d:
    dec a
    jr nz, jr_000_295d

    ret


Call_000_2961:
    ldh a, [rLCDC]
    bit 7, a
    ret z

    ldh a, [rIE]
    ldh [$9a], a
    res 0, a
    ldh [rIE], a

jr_000_296e:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_296e

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$9a]
    ldh [rIE], a
    ret


Call_000_297f:
jr_000_297f:
    ld a, $00
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_297f

    ret


Call_000_2988:
    ld hl, $9bff
    ld bc, $0400

jr_000_298e:
    ld a, $00
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_298e

    ret


Call_000_2997:
    ld hl, $9bff
    ld bc, $0400

jr_000_299d:
    ld a, $10
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_299d

    ret


Call_000_29a6:
jr_000_29a6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_29a6

    ret


jr_000_29af:
    inc de
    ld h, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    call Call_000_29bf

Call_000_29b9:
    ld a, [de]
    cp $00
    jr nz, jr_000_29af

    ret


Call_000_29bf:
    push af
    and $3f
    ld b, a
    pop af
    rlca
    rlca
    and $03
    jr z, jr_000_29d2

    dec a
    jr z, jr_000_29d9

    dec a
    jr z, jr_000_29e0

    jr jr_000_29ed

jr_000_29d2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_29d2

    ret


jr_000_29d9:
    ld a, [de]
    inc de

jr_000_29db:
    ld [hl+], a
    dec b
    jr nz, jr_000_29db

    ret


jr_000_29e0:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_29e0

    ret


jr_000_29ed:
    ld a, [de]
    ld [hl], a
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_29ed

    inc de
    ret


Call_000_29fa:
    jp hl


Call_000_29fb:
    push hl
    ld hl, $c478
    ld a, [$c477]
    cp $08
    jr z, jr_000_2a13

    add l
    ld l, a
    ld a, $01
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    sub $78
    ld [$c477], a

jr_000_2a13:
    pop hl
    ret


Call_000_2a15:
    push hl
    ld hl, $c478
    ld a, [$c477]
    cp $08
    jr z, jr_000_2a2e

    add l
    ld l, a
    ld a, $81
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    ld a, l
    sub $78
    ld [$c477], a

jr_000_2a2e:
    pop hl
    ret


Call_000_2a30:
    push hl
    ld hl, $c478
    ld a, [$c477]
    cp $08
    jr z, jr_000_2a48

    add l
    ld l, a
    ld a, $03
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    sub $78
    ld [$c477], a

jr_000_2a48:
    pop hl
    ret


Call_000_2a4a:
    push hl
    ld hl, $c478
    ld a, [$c477]
    cp $08
    jr z, jr_000_2a60

    add l
    ld l, a
    ld a, e
    ld [hl+], a
    inc l
    ld a, l
    sub $78
    ld [$c477], a

jr_000_2a60:
    pop hl
    ret


Call_000_2a62:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld h, $7e
    ld l, b
    ld b, [hl]
    set 7, c
    ld l, c
    ld h, $7e
    ld c, [hl]
    ret


Call_000_2a74:
    ld a, b
    ld b, $ff

jr_000_2a77:
    inc b
    ld d, a
    sub $10
    jr nc, jr_000_2a77

    sla b
    ld a, b
    rla
    rla
    add b
    add d
    ld b, a
    ld a, c
    and $f0
    rrca
    ld d, a
    ld a, c
    and $0f
    add d
    ld c, a
    ret


    push bc
    ld a, b
    and $f0
    swap a
    add $a0
    ld b, a
    ld a, c
    and $f0
    rrca
    add b
    ld l, a
    ld h, $c0
    ld a, [hl]
    pop bc
    ret


Call_000_2aa4:
    push hl
    ld a, b
    and $0f
    swap a
    ld e, a
    ld a, b
    and $f0
    swap a
    ld d, a
    ld a, c
    and $0f
    or e
    ld e, a
    ld a, c
    and $f0
    ld c, a
    sla a
    sla a
    add c
    swap a
    add $c7
    ld h, a
    ld l, $00
    add hl, de
    ld b, [hl]
    ld h, $df
    ld l, b
    ld a, [hl]
    ldh [$ba], a
    ld a, b
    ld h, $c5
    ld l, a
    ld a, [hl]
    pop hl
    ret


Call_000_2ad5:
    ld a, b
    ldh [$e0], a
    ld a, c
    ldh [$e1], a
    ld a, b
    swap a
    ld b, a
    ld a, c
    swap a
    ld c, a
    call Call_000_2a74
    ld a, b
    ldh [$9d], a
    ld a, c
    ldh [$9f], a
    xor a
    ldh [$9e], a
    ldh a, [$e0]
    ld l, a
    ld b, a
    ldh a, [$e1]
    ld h, a
    ld c, a
    sla b
    sla b
    ld a, b
    sla b
    sla b
    add b
    and $1f
    sub $02
    jr nc, jr_000_2b08

    xor a

jr_000_2b08:
    ld e, a
    ldh [$dd], a
    ld d, $98
    bit 0, c
    jr z, jr_000_2b13

    ld d, $9a

jr_000_2b13:
    ld a, d
    ldh [$dc], a
    ld b, h
    srl h
    ld a, h
    sla h
    sla h
    add h
    add $c7
    ld h, a
    xor a
    ld c, a
    bit 0, b
    jr z, jr_000_2b2a

    ld c, $08

jr_000_2b2a:
    inc l

jr_000_2b2b:
    dec l
    jr z, jr_000_2b38

    ld a, c
    add $a0
    ld c, a
    ld a, h
    adc $00
    ld h, a
    jr jr_000_2b2b

jr_000_2b38:
    ld a, c
    sub $10
    jr nc, jr_000_2b3f

    and $08

jr_000_2b3f:
    ld l, a
    ldh [$df], a
    ld a, h
    ldh [$de], a
    ld b, $00
    ld c, $68

jr_000_2b49:
    push bc
    ld a, [hl+]
    push hl
    ld b, $00
    rla
    rl b
    rla
    rl b
    ld c, a
    ld hl, $db00
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $1f
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, e
    add $1f
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop hl
    pop bc
    dec c
    ld a, b
    or c
    jr z, jr_000_2b97

    ld a, c
    and $07
    jr nz, jr_000_2b49

    ldh a, [$dd]
    add $02
    and $1f
    ld e, a
    ldh [$dd], a
    ldh a, [$dc]
    ld d, a
    ldh a, [$df]
    add $10
    ld l, a
    ldh [$df], a
    ldh a, [$de]
    adc $00
    ld h, a
    ldh [$de], a
    jr jr_000_2b49

jr_000_2b97:
    ret


Call_000_2b98:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ldh a, [$9f]
    and $f8
    srl a
    srl a
    ld b, a
    ld a, [$c0e0]
    swap a
    add b
    ld l, a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c200

jr_000_2bb7:
    ld a, [hl+]
    ld [de], a
    inc e
    bit 6, e
    jr z, jr_000_2bb7

    ret


    ldh a, [$c6]
    bit 5, a
    jr nz, jr_000_2bc7

    jr jr_000_2bcf

jr_000_2bc7:
    jr jr_000_2c1e

    ldh a, [$c6]
    bit 5, a
    jr z, jr_000_2c1e

jr_000_2bcf:
    ldh a, [$be]
    ld c, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $7f00
    add hl, bc
    ld c, [hl]
    ld a, c
    and a
    ret z

    ldh a, [$c0]
    bit 7, a
    jr z, jr_000_2bf0

    cp c
    ret z

    ret c

jr_000_2bf0:
    ldh a, [$cf]
    add $1b
    ld l, a
    ld h, $c1
    ld a, [hl]
    swap a
    rlca
    ld c, a
    ldh a, [$be]
    ld e, a
    ld d, $00
    ld hl, $7de0
    add hl, de
    ld a, [hl]
    add c
    ld e, a
    ldh a, [$99]
    and $0f
    rra
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $7d20
    add hl, de
    ld d, [hl]
    ldh a, [$c0]
    sub d
    ldh [$c0], a
    ret


jr_000_2c1e:
    ldh a, [$be]
    ld c, a
    ld b, $00
    ldh a, [$c8]
    rlca
    swap a
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $7e00
    add hl, bc
    ld c, [hl]
    ld a, c
    and a
    ret z

    ldh a, [$c0]
    ld b, a
    bit 7, a
    jr nz, jr_000_2c3f

    cp c
    ret nc

jr_000_2c3f:
    ldh a, [$cf]
    add $1b
    ld l, a
    ld h, $c1
    ld a, [hl]
    swap a
    rlca
    ld c, a
    ldh a, [$be]
    ld e, a
    ld d, $00
    ld hl, $7de0
    add hl, de
    ld a, [hl]
    add c
    ld e, a
    ldh a, [$99]
    and $0f
    rra
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $7d20
    add hl, de
    ld a, [hl]
    add b
    ldh [$c0], a
    ret


    ld h, $c1
    ldh a, [$cf]
    add $1e
    ld l, a
    ldh a, [$cd]
    bit 0, a
    jr z, jr_000_2c7d

    ld a, [hl]
    scf
    rla
    jr jr_000_2c7e

jr_000_2c7d:
    ld a, [hl]

jr_000_2c7e:
    and a
    ret z

    ld b, a
    ldh a, [$c1]
    ld c, a
    bit 7, a
    jr z, jr_000_2c8b

    cp b
    ret z

    ret c

jr_000_2c8b:
    ldh a, [$cf]
    add $1c
    ld l, a
    ld d, [hl]
    ld a, c
    sub d
    ldh [$c1], a
    ret


    ldh a, [$cb]
    bit 7, a
    jr z, jr_000_2ca5

    ldh a, [$c1]
    bit 7, a
    jr nz, jr_000_2ca5

    xor a
    jr jr_000_2ccc

jr_000_2ca5:
    ld h, $c1
    ldh a, [$cf]
    add $1d
    ld l, a
    ldh a, [$cd]
    bit 0, a
    jr z, jr_000_2cb7

    ld a, [hl]
    srl a
    jr jr_000_2cb8

jr_000_2cb7:
    ld a, [hl]

jr_000_2cb8:
    and a
    ret z

    ld b, a
    ldh a, [$c1]
    ld c, a
    bit 7, a
    jr nz, jr_000_2cc9

    cp b
    ret z

    jr c, jr_000_2cc9

    dec a
    jr jr_000_2ccc

jr_000_2cc9:
    ldh a, [$cd]
    add c

jr_000_2ccc:
    ldh [$c1], a
    ret


    ldh a, [$c6]
    bit 5, a
    jr z, jr_000_2cdb

    ld a, b
    cpl
    inc a
    ldh [$c0], a
    ret


jr_000_2cdb:
    ld a, b
    ldh [$c0], a
    ret


    ld a, b
    and $f0
    swap a
    ld d, a
    ld a, b
    and $0f
    swap a
    ld e, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_000_2cfa

    ldh a, [$c3]
    sub e
    ldh a, [$c2]
    sbc d
    ld b, a
    jr jr_000_2d01

jr_000_2cfa:
    ldh a, [$c3]
    add e
    ldh a, [$c2]
    adc d
    ld b, a

jr_000_2d01:
    and $0f
    swap a
    ld e, a
    ld a, b
    and $f0
    swap a
    ld d, a
    ldh a, [$c4]
    add c
    ld c, a
    and $0f
    or e
    ld e, a
    ld a, c
    and $f0
    ld c, a
    sla a
    sla a
    add c
    swap a
    add $c7
    ld h, a
    ld l, $00
    add hl, de

jr_000_2d25:
    ld e, [hl]
    ld d, $df
    ld a, [de]
    ld b, a
    ld d, $c5
    ld a, [de]
    ld c, a
    ret


    rla
    jr nc, jr_000_2d33

    dec hl

jr_000_2d33:
    rla
    jr nc, jr_000_2d37

    inc hl

jr_000_2d37:
    rla
    jr nc, jr_000_2d25

    ldh a, [$c6]
    bit 5, a
    jr z, jr_000_2d4a

    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_000_2d25

jr_000_2d4a:
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_000_2d25

    ldh a, [$a2]
    ld e, a
    ldh a, [$c3]
    sub e
    ld e, a
    ldh a, [$a1]
    ld d, a
    ldh a, [$c2]
    sbc d
    and $0f
    swap a
    ld d, a
    ld a, e
    and $f0
    swap a
    or d
    bit 7, a
    jr z, jr_000_2d7a

    cpl
    inc a
    cp b
    jr nc, jr_000_2d89

    ld b, a
    res 7, b
    jr jr_000_2d8b

jr_000_2d7a:
    and a
    jr z, jr_000_2d85

    cp b
    jr nc, jr_000_2d89

    ld b, a
    set 7, b
    jr jr_000_2d8b

jr_000_2d85:
    ld b, $80
    jr jr_000_2d8b

jr_000_2d89:
    ld b, $00

jr_000_2d8b:
    ldh a, [$a4]
    ld e, a
    ldh a, [$c5]
    sub e
    ld e, a
    ldh a, [$a3]
    ld d, a
    ldh a, [$c4]
    sbc d
    and $0f
    swap a
    ld d, a
    ld a, e
    and $f0
    swap a
    or d
    bit 7, a
    jr z, jr_000_2db0

    cpl
    inc a
    cp c
    jr nc, jr_000_2dbd

    ld c, a
    set 7, c
    ret


jr_000_2db0:
    and a
    jr z, jr_000_2dba

    cp c
    jr nc, jr_000_2dbd

    ld c, a
    res 7, c
    ret


jr_000_2dba:
    ld c, $80
    ret


jr_000_2dbd:
    ld c, $00
    ret


    ld a, [$c480]
    and a
    ret z

    ld a, [$c483]
    ld c, a
    ldh a, [$c3]
    sub c
    ld c, a
    ld a, [$c484]
    ld b, a
    ldh a, [$c2]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    or b
    bit 7, a
    jr z, jr_000_2de5

    cpl
    inc a

jr_000_2de5:
    ld c, a
    ld h, $c1
    ldh a, [$cf]
    add $16
    ld l, a
    ld b, [hl]
    ld a, [$c48b]
    add b
    sub c
    ret c

    ld a, [$c485]
    ld c, a
    ldh a, [$c5]
    sub c
    ld c, a
    ld a, [$c486]
    ld b, a
    ldh a, [$c4]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    or b
    bit 7, a
    jr z, jr_000_2e1c

    cpl
    inc a
    ld c, a
    ld a, [$c48c]
    sub c
    ret c

    jr jr_000_2e2b

jr_000_2e1c:
    ld c, a
    ld h, $c1
    ldh a, [$cf]
    add $19
    ld l, a
    ld b, [hl]
    ld a, [$c48c]
    add b
    sub c
    ret c

jr_000_2e2b:
    ld a, [$c480]
    ld hl, $2e3a
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [hl-]
    ld l, $de
    ld l, $46
    ld l, $03
    cpl
    add c
    ld l, $81
    ld l, $af
    ld [$c480], a
    ld [$c481], a
    ld a, [$c2cf]
    and a
    ret nz

    ldh a, [$bd]
    cp $4e
    ret z

    cp $50
    ret z

    ldh a, [$cb]
    bit 2, a
    ret nz

    res 0, a
    ldh [$cb], a
    xor a
    ldh [$c0], a
    ld a, $01
    ld [$c2cf], a
    ld a, [$c2d3]
    add $02
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $20
    call Call_000_29fb
    ret


    ld a, [$c2cf]
    and a
    jr nz, jr_000_2e97

    ldh a, [$bc]
    cp $01
    jr z, jr_000_2e97

    ldh a, [$cb]
    bit 0, a
    jr nz, jr_000_2e97

    bit 2, a
    jr z, jr_000_2eb4

jr_000_2e97:
    ldh a, [$cc]
    bit 3, a
    ret nz

    ld a, $ec
    ldh [$c1], a
    ldh a, [$a5]
    bit 5, a
    jr nz, jr_000_2ead

    ldh a, [$a8]
    add $0c
    ldh [$c0], a
    ret


jr_000_2ead:
    ldh a, [$a8]
    add $f4
    ldh [$c0], a
    ret


jr_000_2eb4:
    ldh a, [$cc]
    bit 3, a
    jr nz, jr_000_2ed2

    ld a, $ec
    ldh [$c1], a
    ldh a, [$a5]
    bit 5, a
    jr nz, jr_000_2ecc

    ldh a, [$a8]
    add $0c
    ldh [$c0], a
    jr jr_000_2ed2

jr_000_2ecc:
    ldh a, [$a8]
    add $f4
    ldh [$c0], a

jr_000_2ed2:
    ldh a, [$bf]
    dec a
    ldh [$bf], a
    ldh a, [$cb]
    set 1, a
    ldh [$cb], a
    ret


    ld a, [$c481]
    cp $10
    ret nc

    ld a, [$c2cf]
    and a
    jr nz, jr_000_2ef0

    ldh a, [$cb]
    bit 2, a
    jr z, jr_000_2ef6

jr_000_2ef0:
    ld a, $10
    ld [$c481], a
    ret


jr_000_2ef6:
    ldh a, [$c1]
    add $f0
    ldh [$c1], a
    ld a, $10
    ld [$c481], a
    jr jr_000_2f09

    ldh a, [$c1]
    add $e0
    ldh [$c1], a

jr_000_2f09:
    xor a
    ldh [$bf], a
    ld a, [$c488]
    and a
    jr z, jr_000_2f20

    bit 7, a
    jr z, jr_000_2f1b

    ld a, $f6
    ldh [$c0], a
    ret


jr_000_2f1b:
    ld a, $0a
    ldh [$c0], a
    ret


jr_000_2f20:
    xor a
    ldh [$c0], a
    ret


Call_000_2f24:
    ldh a, [$cc]
    res 1, a
    ldh [$cc], a
    ld a, $ff
    ldh [$fe], a
    ldh a, [$a2]
    ld c, a
    ldh a, [$c3]
    sub c
    ld c, a
    ldh a, [$a1]
    ld b, a
    ldh a, [$c2]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    or b
    ldh [$fb], a
    bit 7, a
    jr z, jr_000_2f4e

    cpl
    inc a

jr_000_2f4e:
    ld c, a
    ld [$c2dc], a
    ld h, $c1
    ldh a, [$cf]
    add $16
    ld l, a
    ld b, [hl]
    ldh a, [$e3]
    add b
    sub c
    jr c, jr_000_2faa

    ldh [$fd], a
    ldh a, [$a4]
    ld c, a
    ldh a, [$c5]
    sub c
    ld c, a
    ldh a, [$a3]
    ld b, a
    ldh a, [$c4]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    or b
    ldh [$fc], a
    bit 7, a
    jr z, jr_000_2f94

    cpl
    inc a
    ld c, a
    ldh a, [$e6]
    sub c
    jr c, jr_000_2faa

    ldh [$fe], a
    and a
    jr nz, jr_000_2fb1

    ldh a, [$fd]
    and a
    jr nz, jr_000_2fb1

    jr jr_000_2faa

jr_000_2f94:
    ld c, a
    ld h, $c1
    ldh a, [$cf]
    add $19
    ld l, a
    ld a, [hl]
    sub c
    jr c, jr_000_2faa

    ldh [$fe], a
    and a
    jr nz, jr_000_2fb1

    ldh a, [$fd]
    and a
    jr nz, jr_000_2fb1

jr_000_2faa:
    ldh a, [$cb]
    and $1f
    ldh [$cb], a
    ret


jr_000_2fb1:
    ldh a, [$cc]
    bit 0, a
    jp z, Jump_000_2fc2

    ldh a, [$c6]
    bit 5, a
    jp nz, Jump_000_312f

    jp Jump_000_3190


Jump_000_2fc2:
    ldh a, [$fe]
    ld b, a
    ldh a, [$fd]
    ld c, a
    cp b
    jp c, Jump_000_30ef

    ld a, b
    and $0f
    swap a
    ld b, a
    ldh a, [$fe]
    and $f0
    swap a
    ld c, a
    ldh a, [$cc]
    bit 3, a
    jp nz, Jump_000_30b5

    ldh a, [$fc]
    bit 7, a
    jr nz, jr_000_303a

    ld a, [$c2dc]
    ld e, a
    ld h, $c1
    ldh a, [$cf]
    add $18
    ld l, a
    ld d, [hl]
    ldh a, [$e5]
    add d
    sub e
    jp c, Jump_000_30ef

    ld a, [$c2ce]
    bit 4, a
    jr z, jr_000_300f

    ldh a, [$c5]
    add b
    ldh [$c5], a
    ldh a, [$c4]
    adc c
    ldh [$c4], a
    xor a
    ldh [$c1], a
    jr jr_000_3019

jr_000_300f:
    ldh a, [$a4]
    sub b
    ldh [$a4], a
    ldh a, [$a3]
    sbc c
    ldh [$a3], a

jr_000_3019:
    ld a, $01
    ld [$c2c0], a
    ldh a, [$ad]
    res 3, a
    ldh [$ad], a
    ldh a, [$cc]
    set 1, a
    ldh [$cc], a
    and $c0
    jr nz, jr_000_308a

    ldh a, [$c0]
    ld [$c0fb], a
    ldh a, [$c1]
    ld [$c0fc], a
    jr jr_000_308a

jr_000_303a:
    ld a, [$c2dc]
    ld e, a
    ld h, $c1
    ldh a, [$cf]
    add $1a
    ld l, a
    ld d, [hl]
    ldh a, [$e5]
    add d
    sub e
    jp c, Jump_000_30ef

    ldh a, [$cc]
    bit 5, a
    jr z, jr_000_3062

    ldh a, [$a4]
    add b
    ldh [$a4], a
    ldh a, [$a3]
    adc c
    ldh [$a3], a
    xor a
    ldh [$aa], a
    jr jr_000_306c

jr_000_3062:
    ldh a, [$c5]
    sub b
    ldh [$c5], a
    ldh a, [$c4]
    sbc c
    ldh [$c4], a

jr_000_306c:
    ldh a, [$cb]
    set 7, a
    ldh [$cb], a
    ldh a, [$e7]
    cp $08
    jp nc, Jump_000_308a

    ldh a, [$e8]
    cp $08
    jp nc, Jump_000_308a

    ldh a, [$a8]
    ld [$c0fd], a
    ldh a, [$aa]
    ld [$c0fe], a

Jump_000_308a:
jr_000_308a:
    ldh a, [$cb]
    bit 0, a
    jp z, Jump_000_31e2

    ldh a, [$ad]
    bit 1, a
    jp nz, Jump_000_31e2

    ld a, [$c2c1]
    and a
    jp nz, Jump_000_31e2

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_000_31e2

    cp $50
    jp z, Jump_000_31e2

    cp $80
    jp z, Jump_000_31e2

    jp Jump_000_31cc


Jump_000_30b5:
    ldh a, [$fc]
    bit 7, a
    jr nz, jr_000_30d9

    ldh a, [$a4]
    sub b
    ldh [$a4], a
    ldh a, [$a3]
    sbc c
    ldh [$a3], a
    ld a, $01
    ld [$c2c0], a
    ldh a, [$cc]
    set 1, a
    ldh [$cc], a
    ldh a, [$ad]
    res 3, a
    ldh [$ad], a
    jp Jump_000_31e8


jr_000_30d9:
    ldh a, [$a4]
    add b
    ldh [$a4], a
    ldh a, [$a3]
    adc c
    ldh [$a3], a
    ldh a, [$cb]
    set 7, a
    ldh [$cb], a
    xor a
    ldh [$aa], a
    jp Jump_000_31e8


Jump_000_30ef:
    ldh a, [$cb]
    res 7, a
    ldh [$cb], a
    ldh a, [$cc]
    bit 3, a
    jp nz, Jump_000_321b

    srl c
    ld a, c
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$fb]
    bit 7, a
    jr nz, jr_000_3171

    ld a, [$c2ce]
    bit 7, a
    jr z, jr_000_311b

    sla b
    jr jr_000_3125

jr_000_311b:
    ldh a, [$a2]
    sub b
    ldh [$a2], a
    ldh a, [$a1]
    sbc c
    ldh [$a1], a

jr_000_3125:
    ldh a, [$c3]
    add b
    ldh [$c3], a
    ldh a, [$c2]
    adc c
    ldh [$c2], a

Jump_000_312f:
    ldh a, [$cb]
    bit 0, a
    jp z, Jump_000_31e2

    ldh a, [$ad]
    bit 1, a
    jp nz, Jump_000_31e2

    ld a, [$c2c1]
    and a
    jp nz, Jump_000_31e2

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_000_31e2

    cp $50
    jp z, Jump_000_31e2

    cp $80
    jp z, Jump_000_31e2

    ldh a, [$bd]
    cp $13
    jr z, jr_000_316b

    cp $30
    jr z, jr_000_316b

    cp $3f
    jr z, jr_000_316b

    ldh a, [$c6]
    bit 5, a
    jr z, jr_000_31e2

jr_000_316b:
    ld a, $ec
    ldh [$a8], a
    jr jr_000_31cc

jr_000_3171:
    ld a, [$c2ce]
    bit 6, a
    jr z, jr_000_317c

    sla b
    jr jr_000_3186

jr_000_317c:
    ldh a, [$a2]
    add b
    ldh [$a2], a
    ldh a, [$a1]
    adc c
    ldh [$a1], a

jr_000_3186:
    ldh a, [$c3]
    sub b
    ldh [$c3], a
    ldh a, [$c2]
    sbc c
    ldh [$c2], a

Jump_000_3190:
    ldh a, [$cb]
    bit 0, a
    jr z, jr_000_31e2

    ldh a, [$ad]
    bit 1, a
    jr nz, jr_000_31e2

    ld a, [$c2c1]
    and a
    jr nz, jr_000_31e2

    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_000_31e2

    cp $50
    jp z, Jump_000_31e2

    cp $80
    jp z, Jump_000_31e2

    ldh a, [$bd]
    cp $13
    jr z, jr_000_31c8

    cp $30
    jr z, jr_000_31c8

    cp $3f
    jr z, jr_000_31c8

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_000_31e2

jr_000_31c8:
    ld a, $14
    ldh [$a8], a

Jump_000_31cc:
jr_000_31cc:
    ldh a, [$ad]
    set 1, a
    ldh [$ad], a
    ld a, $ec
    ldh [$aa], a
    ldh a, [$a0]
    dec a
    bit 7, a
    jr z, jr_000_31de

    xor a

jr_000_31de:
    ldh [$a0], a
    jr jr_000_31e8

Jump_000_31e2:
jr_000_31e2:
    ldh a, [$cb]
    bit 6, a
    jr z, jr_000_31ef

Jump_000_31e8:
jr_000_31e8:
    ldh a, [$cb]
    set 6, a
    ldh [$cb], a
    ret


jr_000_31ef:
    ldh a, [$cc]
    bit 3, a
    jr nz, jr_000_31e8

    ldh a, [$ad]
    bit 3, a
    jr nz, jr_000_31e8

    ldh a, [$cb]
    set 5, a
    set 6, a
    ldh [$cb], a
    ldh a, [$af]
    and a
    jp nz, Jump_000_328a

    ldh a, [$ae]
    cp $04
    jr c, jr_000_3213

    cp $08
    jr c, jr_000_328a

jr_000_3213:
    ldh a, [$ad]
    set 3, a
    ldh [$ad], a
    jr jr_000_328a

Jump_000_321b:
    xor a
    ldh [$a8], a
    ld a, c
    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    ld c, a
    ldh a, [$fb]
    bit 7, a
    jr nz, jr_000_325b

    ldh a, [$a2]
    sub b
    ldh [$a2], a
    ldh a, [$a1]
    sbc c
    ldh [$a1], a
    ldh a, [$cb]
    bit 0, a
    jr z, jr_000_31e8

    ldh a, [$ad]
    bit 1, a
    jr nz, jr_000_31e2

    ld a, [$c2c1]
    and a
    jr nz, jr_000_31e8

    ldh a, [$ad]
    and $f0
    cp $30
    jr z, jr_000_31e8

    ld a, $ec
    ldh [$a8], a
    jp Jump_000_31cc


jr_000_325b:
    ldh a, [$a2]
    add b
    ldh [$a2], a
    ldh a, [$a1]
    adc c
    ldh [$a1], a
    ldh a, [$cb]
    bit 0, a
    jp z, Jump_000_31e8

    ldh a, [$ad]
    bit 1, a
    jp nz, Jump_000_31e2

    ld a, [$c2c1]
    and a
    jp nz, Jump_000_31e8

    ldh a, [$ad]
    and $f0
    cp $30
    jp z, Jump_000_31e8

    ld a, $14
    ldh [$a8], a
    jp Jump_000_31cc


Jump_000_328a:
jr_000_328a:
    ldh a, [$bd]
    cp $70
    ret nc

    ldh a, [$cb]
    bit 5, a
    jr z, jr_000_32a9

    ldh a, [$a8]
    ld b, a
    ldh a, [$c0]
    ldh [$a8], a
    ld a, b
    ldh [$c0], a
    ldh a, [$aa]
    ld b, a
    ldh a, [$c1]
    ldh [$aa], a
    ld a, b
    ldh [$c1], a

jr_000_32a9:
    ldh a, [$cb]
    res 5, a
    ldh [$cb], a
    ret


    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    bit 6, a
    jr nz, jr_000_32d9

    and $3f
    ldh [$96], a
    ld b, a

jr_000_32c6:
    inc de
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_32c6

    xor a
    ld [hl+], a
    ldh a, [$95]
    ld b, a
    ldh a, [$96]
    add $03
    add b
    ldh [$95], a
    ret


jr_000_32d9:
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ret


Call_000_32e5:
    ld hl, $c600
    ld bc, $00a0

jr_000_32eb:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_32eb

    ret


Call_000_32f3:
    ld hl, $9fff
    ld bc, $0400

jr_000_32f9:
    ld a, $00
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_32f9

    ret


Call_000_3302:
    ld hl, $9fff
    ld bc, $0400

jr_000_3308:
    ld a, $10
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3308

    ret


Call_000_3311:
    ld a, [$c0e0]
    ld e, a
    cp $03
    jr nc, jr_000_3320

    ld b, $0e
    ld hl, $4000
    jr jr_000_3328

jr_000_3320:
    sub $03
    ld e, a
    ld b, $0f
    ld hl, $4000

jr_000_3328:
    ld a, b
    ldh [$9b], a
    ld [$2000], a
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld de, $c700
    ld a, e
    ld [$c0ed], a
    ld a, d
    ld [$c0ee], a

jr_000_3344:
    ld a, $10
    ld [$c0ef], a

jr_000_3349:
    ld a, $0a
    ld [$c0f0], a

jr_000_334e:
    ld c, $08
    ld b, [hl]

jr_000_3351:
    sla b
    jr nc, jr_000_3356

    inc hl

jr_000_3356:
    ld a, [hl]
    ld [de], a
    ld a, e
    add $10
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec c
    jr nz, jr_000_3351

    inc hl
    ld a, [$c0f0]
    dec a
    ld [$c0f0], a
    jr nz, jr_000_334e

    ld a, [$c0ed]
    inc a
    ld e, a
    ld [$c0ed], a
    ld a, [$c0ee]
    ld d, a
    ld a, [$c0ef]
    dec a
    ld [$c0ef], a
    jr nz, jr_000_3349

    xor a
    ld e, a
    ld [$c0ed], a
    ld a, [$c0ee]
    add $05
    ld d, a
    ld [$c0ee], a
    cp $db
    jr nz, jr_000_3344

    ld a, [$c0e0]
    ld e, a
    cp $03
    jr nc, jr_000_33a1

    ld hl, $64d1
    jr jr_000_33a7

jr_000_33a1:
    sub $03
    ld e, a
    ld hl, $5788

jr_000_33a7:
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld de, $db00
    ld bc, $0400
    call Call_000_29a6
    ld a, [$c0e0]
    ld e, a
    cp $03
    jr nc, jr_000_33c8

    ld hl, $70d7
    jr jr_000_33ce

jr_000_33c8:
    sub $03
    ld e, a
    ld hl, $5f84

jr_000_33ce:
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $df00

jr_000_33da:
    ld a, [de]
    and a
    jr z, jr_000_33ee

    ld c, a
    ld b, $08

jr_000_33e1:
    sla c
    jr nc, jr_000_33e6

    inc de

jr_000_33e6:
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_33e1

    inc de
    jr jr_000_33da

jr_000_33ee:
    ld a, [$c0e0]
    ld e, a
    cp $03
    jr nc, jr_000_33fb

    ld hl, $731c
    jr jr_000_3401

jr_000_33fb:
    sub $03
    ld e, a
    ld hl, $60ed

jr_000_3401:
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $c0a0

jr_000_340d:
    ld a, [de]
    and a
    jr z, jr_000_3421

    ld c, a
    ld b, $08

jr_000_3414:
    sla c
    jr nc, jr_000_3419

    inc de

jr_000_3419:
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_3414

    inc de
    jr jr_000_340d

jr_000_3421:
    ld a, [$c0e0]
    ld e, a
    cp $03
    jr nc, jr_000_342e

    ld hl, $71e5
    jr jr_000_3434

jr_000_342e:
    sub $03
    ld e, a
    ld hl, $6033

jr_000_3434:
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $c500

jr_000_3440:
    ld a, [de]
    and a
    jr z, jr_000_3454

    ld c, a
    ld b, $08

jr_000_3447:
    sla c
    jr nc, jr_000_344c

    inc de

jr_000_344c:
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_3447

    inc de
    jr jr_000_3440

jr_000_3454:
    ret


Call_000_3455:
    ld a, $0f
    ld [$2000], a
    ld a, [$c0e0]
    ld e, a
    ld hl, $614e
    ld d, $00
    sla e
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld de, $c240
    ld bc, $0080
    call Call_000_29a6
    ret


Call_000_3476:
    push hl
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld c, e
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld hl, $7900
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, c
    sub e
    ld e, a
    ld a, b
    ldh [$9b], a
    ld [$2000], a
    sla e
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld l, c
    ld h, b

jr_000_34ae:
    ld a, [de]
    and a
    jr z, jr_000_34c2

    ld c, a
    ld b, $08

jr_000_34b5:
    sla c
    jr nc, jr_000_34ba

    inc de

jr_000_34ba:
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_34b5

    inc de
    jr jr_000_34ae

jr_000_34c2:
    pop hl
    ret


Call_000_34c4:
    ld a, $08
    ld [$2000], a
    ld hl, $4000
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $8000
    ld bc, $0800

jr_000_34da:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_34da

    ret


Call_000_34e3:
    ld hl, $dec8
    ld a, [$c0e7]
    rlca
    rlca
    add l
    ld l, a
    ld a, [hl+]
    ld [$c0f7], a
    ld b, a
    ld a, [hl+]
    ldh [$a1], a
    ld a, $80
    ldh [$a2], a
    ld a, [hl+]
    ldh [$a3], a
    ld a, [hl]
    ldh [$a5], a
    ld hl, $c240

jr_000_3502:
    ld a, [hl]
    cp b
    jr z, jr_000_350f

    ld a, l
    add $08
    ld l, a
    cp $c0
    jr nz, jr_000_3502

    ret


jr_000_350f:
    inc l
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld a, [hl+]
    ld e, a
    call Call_000_3476
    ld e, [hl]
    call Call_000_3476
    ld a, [$c0f7]
    and $f0
    swap a
    add $c0
    ld l, a
    ld h, $de
    ld a, [hl]
    ld [$c0f9], a
    ld b, a
    cp $08
    jr c, jr_000_3551

    ldh a, [$99]
    and $0c
    rrca
    rrca
    add b
    ld b, a
    jr jr_000_3559

jr_000_3551:
    ldh a, [$99]
    and $30
    swap a
    add b
    ld b, a

jr_000_3559:
    ld a, $0a
    ldh [$9b], a
    ld [$2000], a
    ld hl, $7952
    sla b
    ld a, b
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ldh [$f9], a
    ld a, l
    ldh [$fa], a
    ret


Call_000_3572:
    cp $09
    jr c, jr_000_358a

    sub $09
    sla a
    sla a
    ld e, a
    ld d, $00
    ld hl, $7336
    add hl, de
    ld a, $03
    ld [$2000], a
    jr jr_000_359a

jr_000_358a:
    sla a
    sla a
    ld e, a
    ld d, $00
    ld hl, $703e
    add hl, de
    ld a, $02
    ld [$2000], a

jr_000_359a:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_35a1:
    ld a, [de]
    and a
    jr z, jr_000_35b5

    ld c, a
    ld b, $08

jr_000_35a8:
    sla c
    jr nc, jr_000_35ad

    inc de

jr_000_35ad:
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_000_35a8

    inc de
    jr jr_000_35a1

jr_000_35b5:
    ret


Call_000_35b6:
    ld hl, $c100

Jump_000_35b9:
    ld a, l
    cp $20
    ret z

    ldh a, [$9e]
    and $f0
    ld c, a
    ld a, [hl+]
    and $f0
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ld a, [hl+]
    sbc b
    cp $0f
    jp nc, Jump_000_3689

    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    add $08
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [hl+]
    sub b
    cp $0a
    jp nc, Jump_000_368a

    ld b, a
    swap b
    ld a, [hl+]
    and $f0
    swap a
    or b
    ld b, a
    push hl
    ld a, [$c4a5]
    ld l, a
    ld a, $04
    ldh [$9b], a
    ld [$2000], a
    sla l
    ld h, $20
    rl h
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$91]
    and a
    jp nz, Jump_000_3648

    ldh a, [$92]
    ld l, a
    ld h, $c0
    cp $a0
    jr c, jr_000_361f

    xor a
    ldh [$92], a
    ld l, a
    ld a, $01
    ldh [$93], a

jr_000_361f:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    cp $ff
    jr z, jr_000_3641

    ld a, l
    cp $a0
    jr c, jr_000_361f

    xor a
    ldh [$92], a
    ld l, a
    ld a, $01
    ldh [$93], a
    jr jr_000_361f

jr_000_3641:
    ld a, l
    ldh [$92], a
    pop hl
    jp Jump_000_35b9


Jump_000_3648:
    ldh a, [$92]
    ld l, a
    ld h, $c0
    cp $a0
    jr c, jr_000_365a

    ld a, $9c
    ldh [$92], a
    ld l, a
    ld a, $01
    ldh [$93], a

jr_000_365a:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    xor $ff
    jr z, jr_000_3680

    ld a, l
    sub $08
    ld l, a
    cp $a0
    jr c, jr_000_365a

    ld a, $9c
    ldh [$92], a
    ld l, a
    ld a, $01
    ldh [$93], a
    jr jr_000_365a

jr_000_3680:
    ld a, l
    sub $08
    ldh [$92], a
    pop hl
    jp Jump_000_35b9


Jump_000_3689:
    inc l

Jump_000_368a:
    inc l
    jp Jump_000_35b9


Call_000_368e:
    ld b, $a0
    ld a, $00
    ld hl, $c000

jr_000_3695:
    ld [hl+], a
    dec b
    jr nz, jr_000_3695

    ret


Call_000_369a:
    ld a, [$c2c1]
    bit 2, a
    jp nz, Jump_000_37b2

    ldh a, [$9e]
    ld c, a
    ldh a, [$a2]
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ldh a, [$a1]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    add $08
    ld c, a
    ldh a, [$9f]
    ld b, a
    ldh a, [$a3]
    sub b
    ld b, a
    swap b
    ldh a, [$a4]
    and $f0
    swap a
    or b
    ld b, a
    ldh a, [$a7]
    ld l, a
    ld a, $04
    ldh [$9b], a
    ld [$2000], a
    sla l
    ld h, $20
    rl h
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$91]
    and a
    jp nz, Jump_000_374a

    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$a5]
    bit 5, a
    jr nz, jr_000_371d

jr_000_36f2:
    ld a, l
    cp $a0
    jr c, jr_000_36fe

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_36fe:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$a5]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_36f2

    ld a, l
    ldh [$92], a
    jp Jump_000_37b2


jr_000_371d:
    ld a, l
    cp $a0
    jr c, jr_000_3729

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_3729:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$a5]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_371d

    ld a, l
    ldh [$92], a
    jr jr_000_37b2

Jump_000_374a:
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$a5]
    bit 5, a
    jr nz, jr_000_3783

jr_000_3755:
    ld a, l
    cp $a0
    jr c, jr_000_3761

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_3761:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$a5]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_3755

    ld a, l
    ldh [$92], a
    jr jr_000_37b2

jr_000_3783:
    ld a, l
    cp $a0
    jr c, jr_000_378f

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_378f:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$a5]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_3783

    ld a, l
    ldh [$92], a

Jump_000_37b2:
jr_000_37b2:
    ld a, [$c4a5]
    and a
    ret nz

    ld h, $c1
    ld l, $11
    ld a, l
    ldh [$94], a

Jump_000_37be:
    ld a, [hl]
    bit 1, a
    jp nz, Jump_000_38af

    ld a, l
    sub $11
    ld l, a
    ld a, [hl+]
    cp $70
    jp nc, Jump_000_38af

    and a
    jp z, Jump_000_38af

    inc l
    inc l
    inc l
    inc l
    ldh a, [$9e]
    ld c, a
    ld a, [hl+]
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ld a, [hl+]
    inc l
    sbc b
    cp $0f
    jp nc, Jump_000_38af

    and $0f
    swap a
    ld b, a
    ld a, c
    and $f0
    swap a
    or b
    add $08
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [hl-]
    sub b
    cp $0a
    jp nc, Jump_000_38af

    ld b, a
    swap b
    ld a, [hl+]
    inc l
    and $f0
    swap a
    or b
    ld b, a
    ld a, [hl]
    ldh [$dc], a
    res 7, a
    ld [hl+], a
    ld a, [hl]
    ldh [$b8], a
    ld a, l
    sub $0a
    ld l, a
    ld a, [hl]
    cp $65
    jr c, jr_000_382b

    sub $65
    ld e, a
    ld a, $05
    ldh [$9b], a
    ld [$2000], a
    ld hl, $4000
    jr jr_000_3836

jr_000_382b:
    ld e, a
    ld a, $04
    ldh [$9b], a
    ld [$2000], a
    ld hl, $45ca

jr_000_3836:
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$b8]
    rlca
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    cp $ff
    jr z, jr_000_38af

    ldh a, [$91]
    and a
    jr nz, jr_000_38bd

    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$dc]
    bit 5, a
    jr nz, jr_000_3884

jr_000_385d:
    ld a, l
    cp $a0
    jr c, jr_000_3869

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_3869:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_385d

    jr jr_000_38ac

jr_000_3884:
    ld a, l
    cp $a0
    jr c, jr_000_3890

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_3890:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_3884

jr_000_38ac:
    ld a, l
    ldh [$92], a

Jump_000_38af:
jr_000_38af:
    ld h, $c1
    ldh a, [$94]
    add $20
    ldh [$94], a
    ld l, a
    jp nc, Jump_000_37be

    jr jr_000_392e

jr_000_38bd:
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$dc]
    bit 5, a
    jr nz, jr_000_38f3

jr_000_38c8:
    ld a, l
    cp $a0
    jr c, jr_000_38d4

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_38d4:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_38c8

    jr jr_000_391f

jr_000_38f3:
    ld a, l
    cp $a0
    jr c, jr_000_38ff

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_38ff:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ldh a, [$dc]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_38f3

jr_000_391f:
    ld a, l
    ldh [$92], a
    ld h, $c1
    ldh a, [$94]
    add $20
    ldh [$94], a
    ld l, a
    jp nc, Jump_000_37be

jr_000_392e:
    ld a, [$c480]
    and a
    jp z, Jump_000_3a56

    cp $04
    jp nc, Jump_000_3a56

    ldh a, [$9e]
    ld c, a
    ld a, [$c483]
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ld a, [$c484]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    add $08
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [$c486]
    sub b
    ld b, a
    swap b
    ld a, [$c485]
    and $f0
    swap a
    or b
    ld b, a
    ld a, [$c487]
    ld l, a
    ld a, $04
    ldh [$9b], a
    ld [$2000], a
    sla l
    ld h, $20
    rl h
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$91]
    and a
    jp nz, Jump_000_39eb

    ldh a, [$92]
    ld l, a
    ld h, $c0
    ld a, [$c482]
    bit 5, a
    jr nz, jr_000_39bc

jr_000_3990:
    ld a, l
    cp $a0
    jr c, jr_000_399c

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_399c:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ld a, [$c482]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_3990

    ld a, l
    ldh [$92], a
    jp Jump_000_3a56


jr_000_39bc:
    ld a, l
    cp $a0
    jr c, jr_000_39c8

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_39c8:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ld a, [$c482]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, [de]
    cp $ff
    jr nz, jr_000_39bc

    ld a, l
    ldh [$92], a
    jp Jump_000_3a56


Jump_000_39eb:
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ld a, [$c482]
    bit 5, a
    jr nz, jr_000_3a26

jr_000_39f7:
    ld a, l
    cp $a0
    jr c, jr_000_3a03

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_3a03:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ld a, [$c482]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_39f7

    ld a, l
    ldh [$92], a
    jr jr_000_3a56

jr_000_3a26:
    ld a, l
    cp $a0
    jr c, jr_000_3a32

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_3a32:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    cpl
    sub $07
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ld a, [$c482]
    ld b, a
    ld a, [de]
    xor b
    inc de
    ld [hl+], a
    pop bc
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_3a26

    ld a, l
    ldh [$92], a

Jump_000_3a56:
jr_000_3a56:
    ld hl, $c490

Jump_000_3a59:
jr_000_3a59:
    ld a, [hl+]
    and a
    jr nz, jr_000_3a66

    ld a, l
    add $04
    ld l, a
    cp $a4
    ret nc

    jr jr_000_3a59

jr_000_3a66:
    push hl
    ld l, a
    ld a, $04
    ldh [$9b], a
    ld [$2000], a
    ld h, $00
    sla l
    ld de, $4000
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$9e]
    ld c, a
    pop hl
    inc l
    ld a, [hl+]
    sub c
    ld c, a
    ldh a, [$9d]
    ld b, a
    ld a, [hl+]
    sbc b
    and $0f
    swap a
    ld b, a
    ld a, c
    swap a
    and $0f
    or b
    add $08
    ld c, a
    ldh a, [$9f]
    ld b, a
    ld a, [hl+]
    sub b
    ld b, a
    swap b
    ld a, $0c
    or b
    ld b, a
    push hl
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$91]
    and a
    jr nz, jr_000_3ad4

jr_000_3aac:
    ld a, l
    cp $a0
    jr c, jr_000_3ab8

    xor a
    ldh [$92], a
    ld l, a
    inc a
    ldh [$93], a

jr_000_3ab8:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    set 7, a
    inc de
    ld [hl+], a
    ld a, [de]
    cp $ff
    jr nz, jr_000_3aac

    ld a, l
    ldh [$92], a
    pop hl
    jp Jump_000_3a59


jr_000_3ad4:
    ld a, l
    cp $a0
    jr c, jr_000_3ae0

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_000_3ae0:
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    add c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    set 7, a
    inc de
    ld [hl+], a
    ld a, l
    sub $08
    ld l, a
    ld a, [de]
    cp $ff
    jr nz, jr_000_3ad4

    ld a, l
    ldh [$92], a
    pop hl
    jp Jump_000_3a59


Call_000_3b00:
    ld a, [$c2d3]
    ld l, a
    ld a, [$c2d4]
    ld h, a
    dec hl
    ld a, h
    bit 7, a
    jr nz, jr_000_3b7c

    ld a, l
    ld [$c2d3], a
    ld a, h
    ld [$c2d4], a
    ld a, [$c0e2]
    inc a
    cp $5a
    jr z, jr_000_3b23

    ld [$c0e2], a
    jr jr_000_3b7c

jr_000_3b23:
    ld a, $50
    ld [$c0e2], a
    ld a, [$c0e3]
    inc a
    cp $5a
    jr z, jr_000_3b35

    ld [$c0e3], a
    jr jr_000_3b7c

jr_000_3b35:
    ld a, $50
    ld [$c0e3], a
    ld a, [$c0e4]
    inc a
    cp $5a
    jr z, jr_000_3b47

    ld [$c0e4], a
    jr jr_000_3b7c

jr_000_3b47:
    ld a, $50
    ld [$c0e4], a
    ld a, [$c0e5]
    inc a
    cp $5a
    jr z, jr_000_3b59

    ld [$c0e5], a
    jr jr_000_3b7c

jr_000_3b59:
    ld a, $50
    ld [$c0e5], a
    ld a, [$c0e6]
    inc a
    cp $5a
    jr z, jr_000_3b6b

    ld [$c0e6], a
    jr jr_000_3b7c

jr_000_3b6b:
    ld a, $50
    ld [$c0e2], a
    ld [$c0e3], a
    ld [$c0e4], a
    ld [$c0e5], a
    ld [$c0e6], a

jr_000_3b7c:
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $9c
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, [$c0e6]
    ld [hl+], a
    ld a, [$c0e5]
    ld [hl+], a
    ld a, [$c0e4]
    ld [hl+], a
    ld a, [$c0e3]
    ld [hl+], a
    ld a, [$c0e2]
    ld [hl+], a
    ld a, $9c
    ld [hl+], a
    ld a, $11
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$c0e1]
    add $50
    ld [hl+], a
    ldh a, [$a0]
    ld b, a
    ld a, $04
    sub b
    jr z, jr_000_3bc5

    set 6, a
    ld c, a
    ld a, $9c
    ld [hl+], a
    ldh a, [$a0]
    add $06
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, $5b
    ld [hl+], a

jr_000_3bc5:
    ld a, b
    and a
    jr z, jr_000_3be0

    ld a, $9c
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, b
    set 6, a
    ld [hl+], a
    ld a, $5a
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $14
    ldh [$95], a
    jr jr_000_3be8

jr_000_3be0:
    xor a
    ld [hl], a
    ldh a, [$95]
    add $10
    ldh [$95], a

Call_000_3be8:
jr_000_3be8:
    ldh a, [$a5]
    res 7, a
    ldh [$a5], a
    ld a, [$c482]
    res 7, a
    ld [$c482], a
    ldh a, [$93]
    and a
    jr nz, jr_000_3c1e

    ldh a, [$92]
    cp $a0
    jr nc, jr_000_3c1e

    ld l, a
    ld h, $c0
    ldh a, [$91]
    and a
    jr z, jr_000_3c15

    inc l
    inc l
    inc l

jr_000_3c0c:
    xor a
    ld [hl-], a
    ld a, l
    cp $a0
    jr c, jr_000_3c0c

    jr jr_000_3c23

jr_000_3c15:
    xor a
    ld [hl+], a
    ld a, l
    cp $a0
    jr c, jr_000_3c15

    jr jr_000_3c2b

jr_000_3c1e:
    ldh a, [$91]
    and a
    jr z, jr_000_3c2b

jr_000_3c23:
    xor a
    ldh [$91], a
    ldh [$93], a
    ldh [$92], a
    ret


jr_000_3c2b:
    ld a, $9c
    ldh [$92], a
    ldh [$91], a
    xor a
    ldh [$93], a
    ret


Call_000_3c35:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $c207

Jump_000_3c3f:
jr_000_3c3f:
    ld a, [hl]
    and $ff
    jr z, jr_000_3c4d

    ld a, l
    add $08
    ld l, a
    bit 6, l
    jr z, jr_000_3c3f

    ret


jr_000_3c4d:
    ld a, l
    sub $04
    ld l, a
    ldh a, [$9d]
    add $0c
    ld b, [hl]
    cp b
    jr nc, jr_000_3c62

    ld a, l
    add $0c
    ld l, a
    bit 6, l
    jr z, jr_000_3c3f

    ret


jr_000_3c62:
    ldh a, [$9d]
    sub $03
    jr nc, jr_000_3c69

    xor a

jr_000_3c69:
    ld b, [hl]
    cp b
    jr c, jr_000_3c76

    ld a, l
    add $0c
    ld l, a
    bit 6, l
    jr z, jr_000_3c3f

    ret


jr_000_3c76:
    ld de, $c100

jr_000_3c79:
    ld a, [de]
    and a
    jr z, jr_000_3c84

    ld a, e
    add $20
    ld e, a
    jr nc, jr_000_3c79

    ret


jr_000_3c84:
    dec l
    dec l
    dec l
    ld a, [hl+]
    ld c, a
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $01
    ld [hl], a
    ld a, e
    add $0c
    ld e, a
    ld a, l
    ld [de], a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    push hl
    ld hl, $52bc
    add hl, bc
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop hl
    ld a, l
    add $08
    ld l, a
    bit 6, l
    jp z, Jump_000_3c3f

    ret


Call_000_3ced:
    ld a, $01
    ldh [$9b], a
    ld [$2000], a
    ld hl, $c207

Jump_000_3cf7:
jr_000_3cf7:
    ld a, [hl]
    and $ff
    jr z, jr_000_3d05

    ld a, l
    add $08
    ld l, a
    bit 6, l
    jr z, jr_000_3cf7

    ret


jr_000_3d05:
    ld a, l
    sub $04
    ld l, a
    ldh a, [$9d]
    add $0c
    ld c, a
    ldh a, [$9d]
    sub $03
    ld b, a
    ld a, [hl-]
    cp b
    jr z, jr_000_3d23

    cp c
    jr z, jr_000_3d23

    ld a, l
    add $0d
    ld l, a
    bit 6, l
    jr z, jr_000_3cf7

    ret


jr_000_3d23:
    ld de, $c100

jr_000_3d26:
    ld a, [de]
    and a
    jr z, jr_000_3d31

    ld a, e
    add $20
    ld e, a
    jr nc, jr_000_3d26

    ret


jr_000_3d31:
    dec l
    dec l
    ld a, [hl+]
    ld c, a
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $01
    ld [hl], a
    ld a, e
    add $0c
    ld e, a
    ld a, l
    ld [de], a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    push hl
    ld hl, $52bc
    add hl, bc
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop hl
    ld a, l
    add $08
    ld l, a
    bit 6, l
    jp z, Jump_000_3cf7

    ret


    ld hl, $3dd6
    ld [$c0f2], a
    ld a, $01
    ld [$c2db], a

jr_000_3da4:
    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_000_3dab:
    ld a, [hl]
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    ld a, $01
    ldh [$97], a

jr_000_3db9:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_3db9

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_000_3dab

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_000_3da4

    xor a
    ld [$c2db], a
    ret


    rst $38
    cp $f9
    db $e4
    nop

Call_000_3ddb:
    ld hl, $3e1b
    ld [$c0f2], a
    ld a, $01
    ld [$c2db], a

jr_000_3de6:
    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_000_3ded:
    ld a, [hl+]
    ld [$c0ea], a
    ld [$c0eb], a
    ld a, [hl-]
    ld [$c0ec], a
    ld a, $01
    ldh [$97], a

jr_000_3dfc:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_3dfc

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_000_3ded

    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_000_3de6

    xor a
    ld [$c2db], a
    ret


    nop
    nop
    ld d, h
    ld d, b
    and h
    and b
    db $e4
    ldh [rIE], a

Call_000_3e24:
    ld hl, $3e61
    ld [$c0f2], a
    ld a, $01
    ld [$c2db], a

jr_000_3e2f:
    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_000_3e36:
    ld a, [hl]
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    ld a, $01
    ldh [$97], a

jr_000_3e44:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_000_3e44

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_000_3e36

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_000_3e2f

    xor a
    ld [$c2db], a
    ret


    db $e4
    ld sp, hl
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
