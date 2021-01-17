; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld [$1640], sp
    ld b, b
    ld [de], a
    ld b, b
    ld d, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, a
    ld b, b
    adc b
    ld b, b
    or c
    ld b, b
    jp c, $0340

    ld b, c
    inc e
    ld b, c
    ld sp, $3141
    ld b, c
    ld sp, $3141
    ld b, c
    ld sp, $7641
    ld b, c
    cp e
    ld b, c
    ld sp, $0441
    ld b, d
    ld c, c
    ld b, d
    ld c, c
    ld b, d
    ld c, c
    ld b, d
    inc b
    ld b, d
    ld sp, $3141
    ld b, c
    adc [hl]
    ld b, d
    rst $10
    ld b, d
    inc h
    ld b, e
    ld a, c
    ld b, e
    ld a, c
    ld b, e

jr_005_403e:
    inc h
    ld b, e
    rst $10
    ld b, d
    adc [hl]
    ld b, d
    ld sp, $3141
    ld b, c
    sub $43
    dec de
    ld b, h
    ld h, b
    ld b, h
    and l
    ld b, h
    ld sp, $ea41
    ld b, h
    dec hl
    ld b, l
    ld [hl], h
    ld b, l
    ld a, l
    ld b, l
    add [hl]
    ld b, l
    adc a
    ld b, l
    rst $38
    nop
    ldh [$e0], a
    jr nz, jr_005_4064

jr_005_4064:
    add sp, -$30

jr_005_4066:
    jr nz, jr_005_4068

jr_005_4068:
    ldh a, [$c0]
    jr nz, jr_005_406c

jr_005_406c:
    ld hl, sp-$28
    jr nz, jr_005_4070

jr_005_4070:
    nop
    ret z

    jr nz, jr_005_4074

jr_005_4074:
    ld [$00c8], sp
    nop
    db $10
    ret c

    nop
    nop
    jr jr_005_403e

    nop
    nop
    jr nz, @-$2e

    nop
    nop
    jr z, jr_005_4066

    nop
    rst $38
    nop
    ldh [$e2], a
    jr nz, jr_005_408d

jr_005_408d:
    add sp, -$2e
    jr nz, jr_005_4091

jr_005_4091:
    ldh a, [$c2]
    jr nz, jr_005_4095

jr_005_4095:
    ld hl, sp-$26
    jr nz, jr_005_4099

jr_005_4099:
    nop
    jp z, RST_20

    ld [$00ca], sp
    nop
    db $10
    jp c, RST_00

    jr @-$3c

    nop

jr_005_40a8:
    nop
    jr nz, @-$2c

    nop
    nop
    jr z, jr_005_4091

    nop
    rst $38
    nop
    ldh [$e4], a
    jr nz, jr_005_40b6

jr_005_40b6:
    add sp, -$2c
    jr nz, jr_005_40ba

jr_005_40ba:
    ldh a, [$c4]

jr_005_40bc:
    jr nz, jr_005_40be

jr_005_40be:
    ld hl, sp-$24
    jr nz, jr_005_40c2

jr_005_40c2:
    nop
    call z, RST_20
    ld [$00cc], sp
    nop
    db $10
    call c, RST_00
    jr @-$3a

    nop
    nop
    jr nz, jr_005_40a8

    nop
    nop
    jr z, jr_005_40bc

    nop
    rst $38
    nop
    ldh [$e6], a
    jr nz, jr_005_40df

jr_005_40df:
    add sp, -$2a
    jr nz, jr_005_40e3

jr_005_40e3:
    ldh a, [$c6]
    jr nz, jr_005_40e7

jr_005_40e7:
    ld hl, sp-$22
    jr nz, jr_005_40eb

jr_005_40eb:
    nop
    adc $20
    nop
    ld [$00ce], sp
    nop
    db $10
    sbc $00
    nop
    jr @-$38

    nop
    nop
    jr nz, @-$28

    nop

Jump_005_40fe:
    nop
    jr z, jr_005_40e7

    nop
    rst $38
    ldh a, [$f4]
    add sp, $10
    ldh a, [$fc]
    db $ec
    db $10
    ldh a, [rDIV]
    ldh a, [rNR10]
    nop
    db $f4
    ld [$0010], a
    db $fc
    xor $10
    nop
    inc b
    ld a, [c]
    db $10
    rst $38
    ldh a, [$fc]
    or $10
    ldh a, [rDIV]
    ld a, [$0010]
    db $f4
    db $f4
    stop
    db $fc
    ld hl, sp+$10
    nop
    inc b
    db $fc
    db $10
    rst $38
    db $e3
    db $e4
    sub b
    db $10
    db $e3
    db $ec
    and b
    db $10
    db $e3
    db $f4
    or b
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    sbc d
    db $10
    db $e3
    inc c
    xor d
    db $10
    di
    db $ec
    and d
    db $10
    di
    db $f4
    or d
    db $10
    di
    db $fc
    adc h
    db $10
    di
    inc b
    sbc h
    db $10
    di
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc [hl]
    db $10
    inc bc
    inc b
    sbc [hl]
    db $10
    inc bc
    inc c
    xor [hl]
    db $10
    rst $38
    ld [c], a
    db $ec
    db $e4
    db $10
    ld [c], a
    db $f4
    db $f4
    db $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    ld [c], a
    db $10
    ld [c], a
    inc c
    ld a, [c]
    db $10
    ld a, [c]
    db $ec
    jp nz, $f210

    db $f4
    jp nc, $f210

    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    call nz, $0210
    db $f4
    call nc, $0210
    db $fc
    ret nz

    db $10
    ld [bc], a
    inc b
    ret nc

    db $10
    ld [bc], a
    inc c
    ldh [rNR10], a
    ld [bc], a
    inc d
    ldh a, [rNR10]
    rst $38
    ld [c], a
    db $e4
    adc $10
    ld [c], a
    db $ec
    add $10
    ld [c], a
    db $f4
    sub $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    and $10
    ld [c], a
    inc c
    or $10
    ld [c], a
    inc d
    call z, $f210
    db $ec
    ret z

    db $10
    ld a, [c]
    db $f4
    ret c

    db $10
    ld a, [c]
    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    jp z, $0210

    db $f4
    jp c, $0210

    db $fc
    ld [$0210], a
    inc b
    ld a, [$0210]
    inc c
    add sp, $10
    rst $38
    db $e3
    db $e4
    sub b
    db $10
    db $e3
    db $ec
    and b
    db $10
    db $e3
    db $f4
    or b
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    sbc d
    db $10
    db $e3
    inc c
    xor d
    db $10
    di
    db $ec
    and d
    db $10
    di
    db $f4
    or d
    db $10
    di
    db $fc
    adc h
    db $10
    di
    inc b
    sbc h
    db $10
    di
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    cp h
    db $10
    inc bc
    inc b
    cp [hl]
    db $10
    inc bc
    inc c
    xor b
    db $10
    rst $38
    db $e3
    db $e4
    sub b
    db $10
    db $e3
    db $ec
    and b
    db $10
    db $e3
    db $f4
    or b
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    sbc d
    db $10
    db $e3
    inc c
    xor d
    db $10
    di
    db $ec
    and d
    db $10
    di
    db $f4
    or d
    db $10
    di
    db $fc
    adc h
    db $10
    di
    inc b
    sbc h
    db $10
    di
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc b
    db $10
    inc bc
    inc b
    sbc b
    db $10
    inc bc
    inc c
    xor b
    db $10
    rst $38
    ld [c], a
    db $e4
    sub b
    db $10
    ld [c], a
    db $ec
    and b
    db $10
    ld [c], a
    db $f4
    or b
    db $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    sbc d
    db $10
    ld [c], a
    inc c
    xor d
    db $10
    ld a, [c]
    db $ec
    and d
    db $10
    ld a, [c]
    db $f4
    or d
    db $10
    ld a, [c]
    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    jp z, $0210

    db $f4
    sbc $10
    ld [bc], a
    db $fc
    xor $10
    ld [bc], a
    inc b
    ret nc

    db $10
    ld [bc], a
    inc c
    ldh [rNR10], a
    ld [bc], a
    inc d
    ldh a, [rNR10]
    rst $38
    ld [c], a
    db $e4
    sub b
    db $10
    ld [c], a
    db $ec
    and b
    db $10
    ld [c], a
    db $f4
    or b
    db $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    sbc d
    db $10
    ld [c], a
    inc c
    xor d
    db $10
    ld a, [c]
    db $ec
    and d
    db $10
    ld a, [c]
    db $f4
    or d
    db $10
    ld a, [c]
    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    jp z, $0210

    db $f4
    sbc $10
    ld [bc], a
    db $fc
    xor $10
    ld [bc], a
    inc b
    cp $10
    ld [bc], a
    inc c
    call c, RST_10
    inc d
    db $ec
    stop
    inc e
    db $fc
    db $10
    rst $38
    ld [c], a
    db $e4
    sub b
    db $10
    ld [c], a
    db $ec
    and b
    db $10
    ld [c], a
    db $f4
    or b
    db $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    sbc d
    db $10
    ld [c], a
    inc c
    xor d
    db $10
    ld a, [c]
    db $ec
    and d
    db $10
    ld a, [c]
    db $f4
    or d
    db $10
    ld a, [c]
    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    jp z, $0210

    db $f4
    sbc $10
    ld [bc], a
    db $fc
    xor $10
    ld [bc], a
    inc b
    cp $10
    ld [bc], a
    inc c
    call c, $0210
    inc d
    ld hl, sp+$10
    ld [bc], a
    inc e
    ld hl, sp+$10
    nop
    inc h
    db $ec
    stop
    inc l
    db $fc
    db $10
    rst $38
    ld [c], a
    db $e4
    sub b
    db $10
    ld [c], a
    db $ec
    and b
    db $10
    ld [c], a
    db $f4
    or b
    db $10
    ld [c], a
    db $fc
    adc d
    db $10
    ld [c], a
    inc b
    sbc d
    db $10
    ld [c], a
    inc c
    xor d
    db $10
    ld a, [c]
    db $ec
    and d
    db $10
    ld a, [c]
    db $f4
    or d
    db $10
    ld a, [c]
    db $fc
    adc h
    db $10
    ld a, [c]
    inc b
    sbc h
    db $10
    ld a, [c]
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    ld [bc], a
    db $ec
    jp z, $0210

    db $f4
    sbc $10
    ld [bc], a
    db $fc
    xor $10
    ld [bc], a
    inc b
    cp $10
    ld [bc], a
    inc c
    call c, $0210
    inc d
    ld hl, sp+$10
    ld [bc], a
    inc e
    ld hl, sp+$10
    ld [bc], a
    inc h
    ld hl, sp+$10
    ld [bc], a
    inc l
    ld hl, sp+$10
    nop
    inc [hl]
    db $ec
    stop
    inc a
    db $fc
    db $10
    rst $38
    db $e3
    db $e4
    sub b
    db $10
    db $e3
    db $ec
    and b
    db $10
    db $e3
    db $f4
    or b
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    sbc d
    db $10
    db $e3
    inc c
    xor d
    db $10
    di
    db $ec
    and d
    db $10
    di
    db $f4
    or d
    db $10
    di
    db $fc
    sub d
    db $10
    di
    inc b
    sub [hl]
    db $10
    di
    inc c
    and [hl]
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc [hl]
    db $10
    inc bc
    inc b
    sbc [hl]
    db $10
    inc bc
    inc c
    xor [hl]
    db $10
    rst $38
    db $e3
    db $e4
    sub b
    db $10
    db $e3
    db $ec
    and b
    db $10
    db $e3
    db $f4
    or b
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    sbc d
    db $10
    db $e3
    inc c
    xor d
    db $10
    di
    db $ec
    and d
    db $10
    di
    db $f4
    or d
    db $10
    di
    db $fc
    or [hl]
    db $10
    di
    inc b
    cp b
    db $10
    di
    inc c
    cp d
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc [hl]
    db $10
    inc bc
    inc b
    sbc [hl]
    db $10
    inc bc
    inc c
    xor [hl]
    db $10
    rst $38
    inc de
    db $e4
    sub b
    db $10
    inc de
    db $ec
    and b
    db $10
    inc de
    db $f4
    or b
    db $10
    inc de
    db $fc
    adc d
    db $10
    inc de
    inc b

jr_005_4472:
    sbc d
    db $10
    inc de
    inc c
    xor d
    db $10
    inc hl
    db $ec
    and d
    db $10
    inc hl
    db $f4
    or d
    db $10
    inc hl
    db $fc
    adc h
    db $10
    inc hl
    inc b
    sbc h
    db $10
    inc hl
    inc c
    xor h
    db $10
    jr nc, jr_005_4472

    sub h
    db $10
    inc sp
    db $ec
    and h
    db $10
    inc sp
    db $f4
    or h
    db $10
    inc sp
    db $fc
    adc [hl]
    db $10
    inc sp
    inc b
    sbc [hl]
    db $10
    inc sp
    inc c
    xor [hl]
    db $10
    rst $38
    inc de
    db $e4
    sub b
    db $10
    inc de
    db $ec
    and b
    db $10
    inc de
    db $f4
    or b
    db $10
    inc de
    db $fc
    adc d
    db $10
    inc de
    inc b

jr_005_44b7:
    sbc d
    db $10
    inc de
    inc c
    xor d
    db $10
    inc hl
    db $ec
    and d
    db $10
    inc hl
    db $f4
    or d
    db $10
    inc hl
    db $fc
    sub d
    db $10
    inc hl
    inc b
    sub [hl]
    db $10
    inc hl
    inc c
    and [hl]
    db $10
    jr nc, jr_005_44b7

    sub h
    db $10
    inc sp
    db $ec
    and h
    db $10
    inc sp
    db $f4
    or h
    db $10
    inc sp
    db $fc
    adc b
    db $10
    inc sp
    inc b
    sbc b
    db $10
    inc sp
    inc c
    xor b
    db $10
    rst $38
    db $e3
    db $ec
    db $e4
    db $10
    db $e3
    db $f4
    db $f4
    db $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    ld [c], a
    db $10
    db $e3
    inc c
    ld a, [c]
    db $10
    di
    db $ec
    jp nz, $f310

    db $f4
    jp nc, $f310

    db $fc
    adc h
    db $10
    di
    inc b
    sbc h
    db $10
    di
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc [hl]
    db $10
    inc bc
    inc b
    sbc [hl]
    db $10
    inc bc
    inc c
    xor [hl]
    db $10
    rst $38
    db $e3
    db $e4
    adc $10
    db $e3
    db $ec
    add $10
    db $e3
    db $f4
    sub $10
    db $e3
    db $fc
    adc d
    db $10
    db $e3
    inc b
    and $10
    db $e3
    inc c
    or $10
    db $e3
    inc d
    call z, $f310
    db $ec
    ret z

    db $10
    di
    db $f4
    ret c

    db $10
    di
    db $fc
    adc h
    db $10
    di
    inc b
    sbc h
    db $10
    di
    inc c
    xor h
    stop
    db $e4
    sub h
    db $10
    inc bc
    db $ec
    and h
    db $10
    inc bc
    db $f4
    or h
    db $10
    inc bc
    db $fc
    adc [hl]
    db $10
    inc bc
    inc b
    sbc [hl]
    db $10
    inc bc
    inc c
    xor [hl]
    db $10
    rst $38
    nop
    ld hl, sp+$62
    stop
    nop
    ld h, d
    jr nc, @+$01

    nop
    ld hl, sp+$72
    stop
    nop
    ld [hl], d
    jr nc, @+$01

    nop
    ld hl, sp+$64
    stop
    nop
    ld h, h
    jr nc, @+$01

    nop
    db $fc
    ld [hl], h
    db $10
    rst $38
    cp [hl]
    ld b, l
    ld e, c
    ld b, a
    add d
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    jp hl


    ld b, a
    ld b, h
    ld c, b
    ld h, e
    ld c, b
    ld b, $49
    ld sp, $db49
    ld c, c
    xor d
    ld c, e
    sbc d
    ld c, h
    push af
    ld c, h
    inc d
    ld c, l
    rlca
    ld d, d
    ld d, d
    ld d, d
    ld l, a
    ld d, d
    ret nz

    ld d, e
    ld [hl], e
    ld e, b
    add [hl]
    ld e, b
    ldh a, [$cb]
    bit 1, a
    jr nz, jr_005_45de

    ldh a, [$ad]
    and $f0
    cp $80
    jr nz, jr_005_45d5

    call $2f24
    ldh a, [$bf]
    and a
    jp z, Jump_005_4728

jr_005_45d5:
    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_005_4728

jr_005_45de:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $45ec
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or $45
    jr c, @+$48

    ld e, a
    ld b, [hl]
    cp a
    ld b, [hl]
    sub [hl]
    inc l
    ld bc, $3131
    call $2d54
    ld a, c
    and a
    jp z, $2c96

    ld a, b
    and a
    jp z, $2c96

    ld hl, $cdf7
    ld a, $8a
    ld [hl], a
    ld hl, $ce07
    ld [hl], a
    ld hl, $ce17
    ld [hl], a
    ld hl, $ce27
    ld [hl], a
    ld hl, $ce37
    ld [hl], a
    ld hl, $ce47
    ld [hl], a
    ld hl, $ce57
    ld [hl], a
    ld hl, $ce67
    ld [hl], a
    jp Jump_005_4719


    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4658

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3818
    call $2d54
    ld a, c
    and a
    jp z, $2c96

    ld a, b
    and a
    jp z, $2c96

    jp Jump_005_4719


Jump_005_4658:
jr_005_4658:
    ld a, $02
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_469c

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $2100
    call $2d54
    ld a, b
    and a
    jr z, jr_005_4678

    jr jr_005_46b8

jr_005_4678:
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_468e

    jr c, jr_005_4688

jr_005_4682:
    ldh a, [$c6]
    res 5, a
    jr jr_005_469a

jr_005_4688:
    ldh a, [$c6]
    set 5, a
    jr jr_005_469a

jr_005_468e:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_469c

    jr c, jr_005_4688

    jr jr_005_4682

jr_005_469a:
    ldh [$c6], a

jr_005_469c:
    ld bc, $18ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_46b1

    set 5, a
    jr jr_005_46b3

jr_005_46b1:
    res 5, a

jr_005_46b3:
    ldh [$c6], a
    jp $2bc9


jr_005_46b8:
    ld a, $03
    ldh [$ca], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_469c

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    and $c0
    jr nz, jr_005_4708

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_46e6

    jr c, jr_005_46e0

jr_005_46da:
    ldh a, [$c6]
    res 5, a
    jr jr_005_46f2

jr_005_46e0:
    ldh a, [$c6]
    set 5, a
    jr jr_005_46f2

jr_005_46e6:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_46f4

    jr c, jr_005_46e0

    jr jr_005_46da

jr_005_46f2:
    ldh [$c6], a

jr_005_46f4:
    ld bc, $2800
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_4658

    res 7, a
    cp $24
    jr z, jr_005_4710

    jp $2bbf


jr_005_4708:
    ld b, $10
    call $2ccf
    jp $2c6b


jr_005_4710:
    xor a
    ldh [$c0], a
    ld [$c2d0], a
    jp $2c96


Jump_005_4719:
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $09
    ldh [$c7], a
    jp $2c96


Jump_005_4728:
    ld hl, $c1e0
    ld a, $59
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, $27
    ld [hl+], a
    inc l
    ld a, $19
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, [$c2d3]
    add $c8
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00

Call_005_4750:
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ret


    ldh a, [$ca]
    and a
    ret nz

    ld a, [$c102]
    and a
    ret z

    ld a, [$c160]
    and a
    ret nz

    ld a, [$c2c1]
    and a
    ret nz

    ld bc, $1010
    call $2d54
    ld a, c
    cp $80
    ret nz

    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ld a, $0c
    ldh [$c7], a
    ret


    ldh a, [$ca]
    and a
    ret nz

    ld a, [$c102]
    and a
    ret z

    ld a, [$c180]
    and a
    ret nz

    ld a, [$c2c1]
    and a
    ret nz

    ld bc, $1010
    call $2d54
    ld a, c
    cp $80
    ret nz

    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ld a, $0c
    ldh [$c7], a
    ret


    ldh a, [$cc]
    and $f0
    jr nz, jr_005_47e5

    set 0, a
    set 2, a
    ldh [$cc], a
    ldh a, [$cb]
    bit 6, a
    jr nz, jr_005_47e5

    ldh a, [$99]
    and $07
    jr nz, jr_005_47d5

    ldh a, [$c4]
    ld b, a
    ldh a, [$a3]
    cp b
    jr z, jr_005_47d5

    jr c, jr_005_47d2

    call $2c96
    jr jr_005_47d5

jr_005_47d2:
    call $2c6b

jr_005_47d5:
    ldh a, [$bd]
    cp $57
    jr z, jr_005_47e0

    ld a, $f8
    ldh [$c0], a
    ret


jr_005_47e0:
    ld a, $20
    ldh [$c0], a
    ret


jr_005_47e5:
    xor a
    ldh [$bf], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $ff
    ret nz

    ld a, $3f
    ld hl, $ce0f
    ld [hl], a
    ld hl, $ce1f
    ld [hl], a
    ld hl, $ce2f
    ld [hl], a
    ld hl, $ce3f
    ld [hl], a
    ld hl, $ce4f
    ld [hl], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $94
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $95
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, $8a
    ld hl, $ce0f
    ld [hl], a
    ld hl, $ce1f
    ld [hl], a
    ld hl, $ce2f
    ld [hl], a
    ld hl, $ce3f
    ld [hl], a
    ld hl, $ce4f
    ld [hl], a
    ret


    ldh a, [$ca]
    cp $01
    jr z, jr_005_4897

    cp $02
    jr z, jr_005_48a5

    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ld bc, $3000
    call $2d54
    ld a, b
    and a
    ret z

    ld a, $0d
    ld [$c0f5], a
    ld e, $04
    call $2a30
    ld a, $01
    ldh [$ca], a
    ld [$c2dd], a
    xor a
    ldh [$a8], a
    ld hl, $cb55
    ld a, $7a
    ld [hl+], a
    ld [hl], a

jr_005_4897:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $80
    ret c

    ld a, $02
    ldh [$ca], a

jr_005_48a5:
    ld a, $f3
    ldh [$b6], a
    ldh [$b9], a
    xor a
    ldh [$a7], a
    ld hl, $c120
    ld a, $5c
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [$c100], a
    ldh [$bf], a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, l
    add $08
    ld l, a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl], a
    ld hl, $c140
    ld a, $5d
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $4d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl+], a
    ret


    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ldh a, [$ca]
    and a
    jr nz, jr_005_4919

    ld a, $b8
    ldh [$c1], a
    ld a, $01
    ldh [$ca], a

jr_005_4919:
    ld a, $07
    ldh [$c7], a
    ldh a, [$c4]
    and a
    jp nz, $2c96

    ldh a, [$c5]
    cp $10
    jp nc, $2c96

    xor a
    ld [$c120], a
    ldh [$bf], a
    ret


    ldh a, [$cc]
    set 2, a
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    ret nz

    ldh a, [$c7]
    inc a
    ldh [$c7], a
    cp $01
    jr z, jr_005_4958

    cp $02
    jr z, jr_005_4999

    cp $03
    ret nz

    xor a
    ld [$c140], a
    ldh [$bf], a
    ret


jr_005_4958:
    ld hl, $c160
    ld a, $5e
    ld [hl+], a
    inc l
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $4d
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ret


jr_005_4999:
    ld hl, $c180
    ld a, $5f
    ld [hl+], a
    inc l
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $4d
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_005_49ea

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_005_4b74

jr_005_49ea:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $49f8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [bc], a
    ld c, d
    ld e, e
    ld c, d
    and d
    ld c, d
    sub [hl]
    inc l
    ld hl, $fa4a
    ret nc

    jp nz, $ea3c

    ret nc

    jp nz, Jump_005_40fe

    ret c

    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld e, $0a
    call $29fb
    ld b, $18
    call $2ccf
    jp $2c6b


    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4a37

    jr c, jr_005_4a31

jr_005_4a2b:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4a43

jr_005_4a31:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4a43

jr_005_4a37:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4a45

    jr c, jr_005_4a31

    jr jr_005_4a2b

jr_005_4a43:
    ldh [$c6], a

jr_005_4a45:
    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    xor a
    ld [$c2dd], a

Jump_005_4a50:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4a97

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4a7e

    jr c, jr_005_4a78

jr_005_4a72:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4a8a

jr_005_4a78:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4a8a

jr_005_4a7e:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4a8c

    jr c, jr_005_4a78

    jr jr_005_4a72

jr_005_4a8a:
    ldh [$c6], a

jr_005_4a8c:
    ld bc, $3810
    call $2d54
    ld a, b
    and a
    jp z, $2c96

jr_005_4a97:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4b21

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4ac5

    jr c, jr_005_4abf

jr_005_4ab9:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4ad1

jr_005_4abf:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4ad1

jr_005_4ac5:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4ad3

    jr c, jr_005_4abf

    jr jr_005_4ab9

jr_005_4ad1:
    ldh [$c6], a

jr_005_4ad3:
    ld a, [$c182]
    and a
    jr z, jr_005_4b09

    ldh a, [$c2]
    cp $4b
    jr nc, jr_005_4af4

    ld a, [$c186]
    cp $4b
    jr nc, jr_005_4b09

    ldh a, [$c6]
    res 5, a
    ldh [$c6], a
    ld b, $18
    call $2ccf
    jp $2c6b


jr_005_4af4:
    ld a, [$c186]
    cp $4b
    jr c, jr_005_4b09

    ldh a, [$c6]
    set 5, a
    ldh [$c6], a
    ld b, $18
    call $2ccf
    jp $2c6b


jr_005_4b09:
    ld bc, $4110
    call $2d54
    ld a, c
    cp $80
    jr nz, jr_005_4b3e

    ld a, b
    and a
    jp z, Jump_005_4a50

    res 7, a
    cp $12
    jr c, jr_005_4b5a

    jr jr_005_4b3e

jr_005_4b21:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_005_4b39

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_4b35

    set 5, a
    jr jr_005_4b37

jr_005_4b35:
    res 5, a

jr_005_4b37:
    ldh [$c6], a

jr_005_4b39:
    ld b, $14
    jp $2ccf


Jump_005_4b3e:
jr_005_4b3e:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_4b53

    set 5, a
    jr jr_005_4b55

jr_005_4b53:
    res 5, a

jr_005_4b55:
    ldh [$c6], a
    jp $2bc9


Jump_005_4b5a:
jr_005_4b5a:
    ld a, [$c2c1]
    and a
    jp nz, $2c96

    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $09
    ldh [$c7], a
    ld e, $0a
    call $29fb
    jr jr_005_4b3e

Jump_005_4b74:
    ld a, [$c182]
    and a
    jr nz, jr_005_4b94

Jump_005_4b7a:
    ld hl, $c1a0
    ld a, $60
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, $4f
    ld [hl+], a
    inc l
    xor a
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $ff
    ld [hl], a

Jump_005_4b94:
jr_005_4b94:
    ld a, [$c2d3]
    add $64
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $00
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_005_4bb9

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_005_4c90

jr_005_4bb9:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4bc7
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $08
    ld c, e
    rst $18
    ld c, e
    ld h, $4c
    sub [hl]
    inc l
    ld a, [$c2dd]
    and a
    ret nz

Jump_005_4bd4:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4c1b

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4c02

    jr c, jr_005_4bfc

jr_005_4bf6:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4c0e

jr_005_4bfc:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4c0e

jr_005_4c02:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4c10

    jr c, jr_005_4bfc

    jr jr_005_4bf6

jr_005_4c0e:
    ldh [$c6], a

jr_005_4c10:
    ld bc, $4010
    call $2d54
    ld a, b
    and a
    jp z, $2c96

jr_005_4c1b:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4c73

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4c49

    jr c, jr_005_4c43

jr_005_4c3d:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4c55

jr_005_4c43:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4c55

jr_005_4c49:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4c57

    jr c, jr_005_4c43

    jr jr_005_4c3d

jr_005_4c55:
    ldh [$c6], a

jr_005_4c57:
    ld bc, $4120
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_4bd4

    ld a, c
    cp $80
    jp nz, Jump_005_4b3e

    ld a, b
    res 7, a
    cp $12
    jp c, Jump_005_4b5a

    jp Jump_005_4b3e


jr_005_4c73:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_005_4c8b

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_4c87

    set 5, a
    jr jr_005_4c89

jr_005_4c87:
    res 5, a

jr_005_4c89:
    ldh [$c6], a

jr_005_4c8b:
    ld b, $10
    jp $2ccf


Jump_005_4c90:
    ld a, [$c162]
    and a
    jp nz, Jump_005_4b94

    jp Jump_005_4b7a


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $ff
    ret nz

    ld a, $3f
    ld hl, $cb87
    ld [hl], a
    ld hl, $cb97
    ld [hl], a
    ld hl, $cba7
    ld [hl], a
    ld hl, $cbb7
    ld [hl], a
    ld hl, $cbc7
    ld [hl], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $94
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $95
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, $8a
    ld hl, $cb87
    ld [hl], a
    ld hl, $cb97
    ld [hl], a
    ld hl, $cba7
    ld [hl], a
    ld hl, $cbb7
    ld [hl], a
    ld hl, $cbc7
    ld [hl], a
    ret


    ldh a, [$cb]
    bit 1, a
    jr nz, jr_005_4d23

    call $2dc0
    ldh a, [$bf]
    and a
    jp z, Jump_005_51d6

jr_005_4d23:
    ldh a, [$ad]
    and $f0
    cp $10
    jr z, jr_005_4d6f

    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    ld bc, $3100
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_4ff0

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4d5e

    jr c, jr_005_4d58

jr_005_4d52:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4d6a

jr_005_4d58:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4d6a

jr_005_4d5e:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4d6c

    jr c, jr_005_4d58

    jr jr_005_4d52

jr_005_4d6a:
    ldh [$c6], a

jr_005_4d6c:
    jp $2c96


jr_005_4d6f:
    ldh a, [$bf]
    cp $05
    jp nc, Jump_005_4f48

    cp $03
    jp nc, Jump_005_5070

    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4d89
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub e
    ld c, l
    and a
    ld c, l
    ld b, a
    ld d, b
    inc de
    ld c, [hl]
    sub c
    ld c, [hl]
    ld bc, $2c10
    call $2d54
    ld a, c
    cp $80
    jp nz, Jump_005_5153

    ld a, b
    and a
    jp z, $2c96

    jp Jump_005_4e4b


    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_005_4fd0

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $5100
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_5086

    ld bc, $4141
    call $2d54
    ld a, b
    and a
    jr nz, jr_005_4df1

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4de0

    jr c, jr_005_4dda

jr_005_4dd4:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4dec

jr_005_4dda:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4dec

jr_005_4de0:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4dee

    jr c, jr_005_4dda

    jr jr_005_4dd4

jr_005_4dec:
    ldh [$c6], a

jr_005_4dee:
    jp $2bc9


jr_005_4df1:
    ld a, c
    cp $80
    jr nz, jr_005_4e05

    ld a, b
    res 7, a
    cp $2c
    jp nc, Jump_005_5153

    cp $18
    jp nc, Jump_005_500c

    jr jr_005_4e4b

jr_005_4e05:
    res 7, a
    cp $2c
    jp nc, Jump_005_500c

    cp $20
    jp nc, Jump_005_5153

    jr jr_005_4e4b

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $20
    jr nc, jr_005_4e2c

    ldh a, [$ad]
    bit 1, a
    jr nz, jr_005_4e2c

    ldh a, [$c0]
    and a
    jr z, jr_005_4e2c

    jp $2c96


jr_005_4e2c:
    ld bc, $4110
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_4f70

    ld a, c
    cp $80
    jr nz, jr_005_4e05

    ld a, b
    res 7, a
    cp $31
    jp nc, Jump_005_5153

    cp $18
    jr nc, jr_005_4e4b

    jp Jump_005_500c


Jump_005_4e4b:
jr_005_4e4b:
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ld a, $0c
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ld e, $0b
    call $29fb
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4e80

    jr c, jr_005_4e7a

jr_005_4e74:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4e8c

jr_005_4e7a:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4e8c

jr_005_4e80:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4e8e

    jr c, jr_005_4e7a

    jr jr_005_4e74

jr_005_4e8c:
    ldh [$c6], a

jr_005_4e8e:
    jp $2c96


    ldh a, [$c7]
    cp $0e
    jr z, jr_005_4eae

    cp $0f
    jr z, jr_005_4ef2

    cp $10
    jp z, Jump_005_4f20

    cp $13
    jp nz, $2c96

    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


jr_005_4eae:
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_005_4eca

    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    jr jr_005_4ed4

jr_005_4eca:
    ldh a, [$c3]
    add $c0
    ld [hl+], a
    ldh a, [$c2]
    adc $00
    ld [hl+], a

jr_005_4ed4:
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $04
    ld [hl+], a
    inc l
    inc l
    ld a, $0a
    ld [hl], a
    jp $2c96


jr_005_4ef2:
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_005_4f14

    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a
    jr jr_005_4ed4

jr_005_4f14:
    ldh a, [$c3]
    add $c0
    ld [hl+], a
    ldh a, [$c2]
    adc $01
    ld [hl+], a
    jr jr_005_4ed4

Jump_005_4f20:
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c6]
    bit 5, a
    jr z, jr_005_4f3c

    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $02
    ld [hl+], a
    jr jr_005_4ed4

jr_005_4f3c:
    ldh a, [$c3]
    add $c0
    ld [hl+], a
    ldh a, [$c2]
    adc $02
    ld [hl+], a
    jr jr_005_4ed4

Jump_005_4f48:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $4f56
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, h
    ld c, a
    add c
    ld c, a
    ld b, a
    ld d, b
    ld bc, $3010
    call $2d54
    ld a, c
    cp $80
    jp nz, $2c96

    ld a, b
    and a
    jp z, $2c96

    jp Jump_005_500c


Jump_005_4f70:
    ld a, $01
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_4ff0

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $3800
    call $2d54
    ld a, b
    and a
    jr nz, jr_005_4fbf

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_4fae

    jr c, jr_005_4fa8

jr_005_4fa2:
    ldh a, [$c6]
    res 5, a
    jr jr_005_4fba

jr_005_4fa8:
    ldh a, [$c6]
    set 5, a
    jr jr_005_4fba

jr_005_4fae:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_4fbc

    jr c, jr_005_4fa8

    jr jr_005_4fa2

jr_005_4fba:
    ldh [$c6], a

jr_005_4fbc:
    jp $2bc9


jr_005_4fbf:
    res 7, a
    cp $20
    jr nc, jr_005_4ff0

    ldh a, [$e2]
    and a
    jr nz, jr_005_500c

    ldh a, [$99]
    and $03
    jr nz, jr_005_4ff0

Jump_005_4fd0:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_005_4fe8

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_4fe4

    set 5, a
    jr jr_005_4fe6

jr_005_4fe4:
    res 5, a

jr_005_4fe6:
    ldh [$c6], a

jr_005_4fe8:
    ld b, $10
    call $2ccf
    jp $2c6b


Jump_005_4ff0:
jr_005_4ff0:
    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jp z, $2bc9

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_5005

    set 5, a
    jr jr_005_5007

jr_005_5005:
    res 5, a

jr_005_5007:
    ldh [$c6], a
    jp $2bc9


Jump_005_500c:
jr_005_500c:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    ld a, $09
    ldh [$c7], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_5034

    jr c, jr_005_502e

jr_005_5028:
    ldh a, [$c6]
    res 5, a
    jr jr_005_5040

jr_005_502e:
    ldh a, [$c6]
    set 5, a
    jr jr_005_5040

jr_005_5034:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_5042

    jr c, jr_005_502e

    jr jr_005_5028

jr_005_5040:
    ldh [$c6], a

jr_005_5042:
    ld a, $c0
    ldh [$c1], a
    ret


    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_005_505f

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_505b

    set 5, a
    jr jr_005_505d

jr_005_505b:
    res 5, a

jr_005_505d:
    ldh [$c6], a

jr_005_505f:
    ldh a, [$c1]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cb]
    bit 6, a
    jp nz, Jump_005_4f70

    jp $2bc9


Jump_005_5070:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $507e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp c
    ld d, b
    call nc, Call_005_4750
    ld d, b
    and d
    ld d, c

Jump_005_5086:
jr_005_5086:
    xor a
    ldh [$ca], a
    ld [$c2d0], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_50a2

    jr c, jr_005_509c

jr_005_5096:
    ldh a, [$c6]
    res 5, a
    jr jr_005_50ae

jr_005_509c:
    ldh a, [$c6]
    set 5, a
    jr jr_005_50ae

jr_005_50a2:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_50b0

    jr c, jr_005_509c

    jr jr_005_5096

jr_005_50ae:
    ldh [$c6], a

jr_005_50b0:
    ldh a, [$cb]
    res 0, a
    ldh [$cb], a
    jp $2c96


    ld bc, $2c10
    call $2d54
    ld a, c
    cp $80
    jp nz, $2c96

    ld a, b
    and a
    jp z, $2c96

    res 7, a
    cp $20
    jp nc, Jump_005_5153

    jp Jump_005_4f70


    ldh a, [$cb]
    bit 7, a
    jp nz, Jump_005_4fd0

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ld bc, $4100
    call $2d54
    ld a, b
    and a
    jr z, jr_005_5086

    ld bc, $3610
    call $2d54
    ld a, b
    and a
    jr nz, jr_005_511d

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_510c

    jr c, jr_005_5106

jr_005_5100:
    ldh a, [$c6]
    res 5, a
    jr jr_005_5118

jr_005_5106:
    ldh a, [$c6]
    set 5, a
    jr jr_005_5118

jr_005_510c:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_511a

    jr c, jr_005_5106

    jr jr_005_5100

jr_005_5118:
    ldh [$c6], a

jr_005_511a:
    jp $2bc9


jr_005_511d:
    ld a, b
    res 7, a
    cp $20
    jp c, Jump_005_500c

    ld a, [$c2c1]
    and a
    jp z, Jump_005_5153

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_5142

    jr c, jr_005_513c

jr_005_5136:
    ldh a, [$c6]
    res 5, a
    jr jr_005_514e

jr_005_513c:
    ldh a, [$c6]
    set 5, a
    jr jr_005_514e

jr_005_5142:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_5150

    jr c, jr_005_513c

    jr jr_005_5136

jr_005_514e:
    ldh [$c6], a

jr_005_5150:
    jp $2bc9


Jump_005_5153:
    ld a, $03
    ldh [$ca], a
    ld a, $0b
    ldh [$c7], a
    ldh a, [$cb]
    set 0, a
    ldh [$cb], a
    xor a
    ld [$c2d0], a
    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jr z, jr_005_517b

    jr c, jr_005_5175

jr_005_516f:
    ldh a, [$c6]
    res 5, a
    jr jr_005_5187

jr_005_5175:
    ldh a, [$c6]
    set 5, a
    jr jr_005_5187

jr_005_517b:
    ldh a, [$c3]
    ld b, a
    ldh a, [$a2]
    cp b
    jr z, jr_005_5189

    jr c, jr_005_5175

    jr jr_005_516f

jr_005_5187:
    ldh [$c6], a

jr_005_5189:
    ld e, $0c
    call $29fb
    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_519b

    ld a, $2c
    ldh [$c0], a
    jp $2c96


jr_005_519b:
    ld a, $d4
    ldh [$c0], a
    jp $2c96


    ld bc, $10ff
    call $2cdf
    ld a, b
    and a
    jr z, jr_005_51ba

    ldh a, [$c6]
    bit 5, a
    jr nz, jr_005_51b6

    set 5, a
    jr jr_005_51b8

jr_005_51b6:
    res 5, a

jr_005_51b8:
    ldh [$c6], a

jr_005_51ba:
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $20
    jp nc, Jump_005_4f70

    ldh a, [$ad]
    bit 1, a
    jp nz, Jump_005_4f70

    ldh a, [$c0]
    and a
    jp z, Jump_005_4f70

    jp $2c96


Jump_005_51d6:
    ld hl, $c1a0
    ld a, $63
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    inc l
    inc l
    inc l
    ld a, $4f
    ld [hl+], a
    inc l
    ld a, $08
    ld [hl], a
    ld a, l
    add $0d
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, [$c2d3]
    add $90
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $01
    ld [$c2d4], a
    ld e, $28
    call $29fb
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $ff
    ret nz

    ld a, $3f
    ld hl, $cb8f
    ld [hl], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $94
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ld h, $c6
    ldh a, [$95]
    ld l, a
    ld a, $95
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$95]
    add $04
    ldh [$95], a
    ret


    ld a, $10
    ldh [$cb], a
    ld a, $04
    ldh [$cc], a
    ld a, $8a
    ld hl, $cb8f
    ld [hl], a
    ld hl, $cb9f
    ld [hl], a
    ld e, $02
    call $2a4a
    xor a
    ldh [$bf], a
    ldh [$bd], a
    ret


    ldh a, [$cc]
    set 2, a
    set 0, a
    ldh [$cc], a
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $5285
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc a
    ld d, d
    ret nc

    ld d, d
    ld l, c
    ld d, e
    add d
    ld d, e
    or b
    ld d, e
    xor a
    ldh [$a8], a
    ld a, $01
    ld [$c2dd], a
    ldh a, [$a5]
    res 5, a
    ldh [$a5], a
    ldh a, [$a3]
    cp $17
    ret nz

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $60
    ret c

    xor a
    ld [$c2d0], a
    inc a
    ldh [$ca], a
    ld a, $70
    ldh [rLYC], a
    ld a, $0d
    ld [$c0f5], a
    ld e, $07
    call $2a30
    ldh a, [$ad]
    and $f0
    cp $10
    jr nz, jr_005_52d0

    ld a, $67
    ldh [$a7], a
    ld [$c2de], a

jr_005_52d0:
    ld a, [$c2d1]
    cp $24
    jr nc, jr_005_5318

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jr nz, jr_005_52f4

    ld a, [$c2d1]
    inc a
    ld [$c2d1], a
    ldh a, [$c7]
    inc a
    cp $05
    jr c, jr_005_52f2

    ld a, $01

jr_005_52f2:
    ldh [$c7], a

Jump_005_52f4:
jr_005_52f4:
    ldh a, [$ad]
    and $f0
    cp $10
    ret nz

    ld a, [$c2d0]
    and $0f
    jr nz, jr_005_5312

    ld a, [$c2de]
    inc a
    cp $6b
    jr c, jr_005_530c

    ld a, $67

jr_005_530c:
    ldh [$a7], a
    ld [$c2de], a
    ret


jr_005_5312:
    ld a, [$c2de]
    ldh [$a7], a
    ret


jr_005_5318:
    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d1], a
    ld hl, $c140
    ld a, $66
    ld [hl+], a
    inc l
    ld a, $05
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, $4c
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $1b
    ld [hl+], a
    inc l
    ld a, $10
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $16
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $23
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ret


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jr nz, jr_005_52f4

    ldh a, [$c7]
    inc a
    cp $05
    jr c, jr_005_537d

    ld a, $01

jr_005_537d:
    ldh [$c7], a
    jp Jump_005_52f4


    ld a, [$c148]
    cp $17
    jr z, jr_005_53a3

    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    jp nz, Jump_005_52f4

    ldh a, [$c7]
    inc a
    cp $05
    jr c, jr_005_539e

    ld a, $01

jr_005_539e:
    ldh [$c7], a
    jp Jump_005_52f4


jr_005_53a3:
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c7], a
    ldh [$a7], a
    ret


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $40
    ret c

    ld a, $ff
    ld [$c2f0], a
    ret


    ldh a, [$ca]
    cp $0a
    jr nc, jr_005_53d6

    ldh a, [$cb]
    bit 1, a
    jr nz, jr_005_53d6

    call $2dc0
    ldh a, [$bf]
    cp $01
    jp z, Jump_005_576a

jr_005_53d6:
    ldh a, [$ca]
    rlca
    ld c, a
    ld b, $00
    ld hl, $53e4
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $fc
    ld d, e
    ld h, $54
    ld c, b
    ld d, h
    adc a
    ld d, h
    call nc, $2d54
    ld d, l
    sub [hl]
    ld d, l
    and $55
    cp e
    ld d, [hl]
    dec [hl]
    ld d, a
    sub b
    ld d, a
    dec b
    ld e, b
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    ret nz

    ldh a, [$c5]
    sub $10
    ldh [$c5], a
    ldh a, [$c4]
    sbc $00
    ldh [$c4], a
    cp $13
    ret nz

    ld a, $01
    ldh [$ca], a
    xor a
    ldh [$c7], a
    ldh [$c5], a
    ld [$c2d0], a
    ld a, $17
    ldh [$c4], a
    ret


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $82
    ret c

    ld a, $02
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld [$c120], a
    ld [$c122], a
    inc a
    ld [$c2f0], a
    ld [$c2df], a
    jp $2c96


    xor a
    ld [$c2df], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $01
    jr z, jr_005_546b

    cp $20
    jr nc, jr_005_5471

    bit 2, a
    jr z, jr_005_5465

    ld a, $1e
    ld [$c0ea], a
    ret


jr_005_5465:
    ld a, $e4
    ld [$c0ea], a
    ret


jr_005_546b:
    ld e, $0f
    call $29fb
    ret


jr_005_5471:
    xor a
    ld [$c2dd], a
    ldh [$cb], a
    ld a, $e4
    ld [$c0ea], a
    ld a, $03
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $01
    ld [$c15b], a
    ld [$c15f], a
    jp $2c96


    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jp nc, Jump_005_5716

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_5512

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jr z, jr_005_54b0

    ld a, $d8
    ldh [$c0], a
    jp $2c6b


jr_005_54b0:
    ldh a, [$c2]
    cp $4b
    jr c, jr_005_5512

    ld bc, $5431
    call $2d54
    ld a, b
    and a
    jp z, $2c96

Jump_005_54c1:
    ld a, $04
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $01
    ld [$c15b], a
    ld [$c15f], a
    jp $2c96


    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    jp nc, Jump_005_5716

    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_5512

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jr z, jr_005_54f5

    ld a, $d8
    ldh [$c0], a
    jp $2c6b


jr_005_54f5:
    ldh a, [$c2]
    cp $4b
    jr c, jr_005_5512

    ld bc, $5121
    call $2d54
    ld a, b
    and a
    jp z, $2bc9

    ld a, b
    res 7, a
    cp $40
    jp nc, Jump_005_569e

    cp $20
    jr nc, jr_005_5579

Jump_005_5512:
jr_005_5512:
    ld a, $05
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ld a, $04
    ld [$c15b], a
    ld a, $06
    ld [$c15f], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jp nz, $2c96

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    bit 1, a
    jr z, jr_005_5546

    ld a, $d8
    ldh [$c0], a
    jp $2c6b


jr_005_5546:
    ldh a, [$c2]
    cp $4e
    jr z, jr_005_5561

    ldh a, [$c2]
    cp $4b
    jp c, $2bbf

    ld bc, $3410
    call $2d54
    ld a, b
    and a
    jp z, Jump_005_54c1

    jp $2bbf


jr_005_5561:
    ldh a, [$cc]
    bit 1, a
    jr z, jr_005_556e

    ld a, $d8
    ldh [$c0], a
    jp $2c6b


jr_005_556e:
    ld bc, $1011
    call $2d54
    ld a, c
    and a
    jp z, Jump_005_569e

jr_005_5579:
    ld a, $06
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ld a, $18
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    jp $2c96


    ld b, $08
    ldh a, [$c2]
    cp $4e
    jr z, jr_005_55a6

    ldh a, [$bf]
    cp $04
    jr c, jr_005_55a6

    ld b, $04

jr_005_55a6:
    ld a, [$c2d0]
    add b
    ld [$c2d0], a
    jr c, jr_005_55c4

    ld bc, $3121
    call $2d54
    ld a, b
    and a
    jp z, $2c96

    ldh a, [$c2]
    cp $4e
    jp z, $2c96

    jp Jump_005_5512


jr_005_55c4:
    ld a, $07
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ld a, $0e
    ldh [$c7], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ld e, $0d
    call $29fb
    jp $2c96


    ldh a, [$c7]
    cp $10
    jr z, jr_005_5602

    cp $11
    jr z, jr_005_563a

    cp $12
    jr z, jr_005_566c

    cp $16
    jp nz, $2c96

    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    jp $2c96


jr_005_5602:
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $01
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $0e
    ld [hl], a
    jp $2c96


jr_005_563a:
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $02
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $0e
    ld [hl], a
    jp $2c96


jr_005_566c:
    ld hl, $c160
    ld a, $70
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ldh a, [$c3]
    sub $c0
    ld [hl+], a
    ldh a, [$c2]
    sbc $03
    ld [hl+], a
    ldh a, [$c5]
    ld [hl+], a
    ldh a, [$c4]
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    inc l
    inc l
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $06
    ld [hl+], a
    inc l
    inc l
    ld a, $0e
    ld [hl], a
    jp $2c96


Jump_005_569e:
    ld hl, $c180
    ld a, [hl]
    and a
    jp nz, $2c96

    ld a, $08
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld a, $07
    ldh [$c7], a
    jp $2c96


    ldh a, [$c7]
    cp $0b
    jp nz, $2c96

    ld hl, $c180
    ld a, $68
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    ld a, $fc
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$c3]
    sub $80
    ld [hl+], a
    ldh a, [$c2]
    sbc $00
    ld [hl+], a
    ldh a, [$c5]
    sub $20
    ld [hl+], a
    ldh a, [$c4]
    sbc $00
    ld [hl+], a
    ldh a, [$c6]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    inc l
    ld a, $02
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld e, $09
    call $29fb
    jp $2c96


Jump_005_5716:
    ld a, $09
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ldh [$c1], a
    ldh a, [$cb]
    set 2, a
    ldh [$cb], a
    ldh a, [$cc]
    set 3, a
    ldh [$cc], a
    ld a, $0d
    ldh [$c7], a
    jp $2c96


    ldh a, [$cb]
    bit 7, a
    jr nz, jr_005_5757

    ldh a, [$cc]
    bit 4, a
    jp z, $2c96

    ldh a, [$c2]
    ld b, a
    ldh a, [$a1]
    cp b
    ret nc

    ld bc, $4110
    call $2d54
    ld a, c
    cp $80
    ret nz

    ld a, b
    bit 7, a
    ret z

jr_005_5757:
    ldh a, [$cb]
    res 2, a
    ldh [$cb], a
    ldh a, [$cc]
    res 3, a
    ldh [$cc], a
    ld a, $04
    ldh [$c7], a
    jp Jump_005_54c1


Jump_005_576a:
    ld a, $0a
    ldh [$ca], a
    xor a
    ld [$c2d0], a
    ldh [$c0], a
    ldh [$c1], a
    ldh [$c5], a
    ld [$c182], a
    inc a
    ld [$c2dd], a
    inc a
    ld [$c2df], a
    ld a, $14
    ldh [$c4], a
    ld a, $04
    ldh [$cc], a
    ld a, $1c
    ldh [$c7], a
    ret


    xor a
    ld [$c2df], a
    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    cp $60
    jr nc, jr_005_57b4

    bit 2, a
    jr z, jr_005_57a9

    ld a, $1e
    ld [$c0ea], a
    ret


jr_005_57a9:
    ld a, $e4
    ld [$c0ea], a
    ld e, $0f
    call $29fb
    ret


jr_005_57b4:
    ld a, $0b
    ldh [$ca], a
    ld a, [$c2d3]
    add $f4
    ld [$c2d3], a
    ld a, [$c2d4]
    adc $01
    ld [$c2d4], a
    ld a, $67
    ldh [$a7], a
    ld [$c2de], a
    ld a, $10
    ldh [$cb], a
    ld a, $e4
    ld [$c0ea], a
    ld hl, $c120
    ld a, $65
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ret


    ld a, [$c2d0]
    inc a
    ld [$c2d0], a
    and $07
    ret nz

    ldh a, [$c5]
    add $10
    ldh [$c5], a
    ldh a, [$c4]
    adc $00
    ldh [$c4], a
    cp $16
    jr z, jr_005_582a

    cp $17
    ret nz

    xor a
    ld [$c140], a
    ld [$c142], a
    ret


jr_005_582a:
    ldh a, [$c5]
    and a
    ret nz

    ld hl, $c1a0
    ld a, $67
    ld [hl+], a
    inc l
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ldh a, [$c3]
    ld [hl+], a
    ldh a, [$c2]
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    ld a, $ff
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ret


    ldh a, [$cc]
    bit 4, a
    jr z, jr_005_5880

    ld a, $01
    ldh [$c7], a
    jp $2c96


jr_005_5880:
    xor a
    ldh [$c7], a
    jp $2c96


    ldh a, [$cc]
    and $e0
    jr nz, jr_005_58a6

    ldh a, [$cb]
    and $60
    jr nz, jr_005_58a6

    ldh a, [$c0]
    sub $02
    ldh [$c0], a
    ldh a, [$c4]
    ld b, a
    ldh a, [$a3]
    dec a
    cp b
    ret z

    jp c, $2c6b

    jp $2c96


jr_005_58a6:
    xor a
    ldh [$bf], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_6263:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_627f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    adc b
    ld a, [bc]
    ld h, e
    add b
    adc b
    ld b, b
    ld h, h
    add b
    adc b
    push de
    ld h, h
    add b
    adc b
    db $e4
    ld h, l
    add b
    adc b
    adc h
    ld h, [hl]
    add b
    adc c
    ld b, e
    ld h, a
    and b
    adc e
    xor h
    ld h, a
    nop
    adc h
    db $fc
    ld h, a
    ld b, b
    adc c
    sbc e
    ld l, b
    jr nz, jr_005_6263

    ld e, l
    ld l, c
    ret nz

    adc c
    inc c
    ld l, d
    and b
    adc [hl]
    jp nz, $006c

    adc l
    ld [hl+], a
    ld l, [hl]
    nop
    adc l
    adc c
    ld [hl], b
    and b
    adc c
    jp $0071


    adc d
    db $f4
    ld [hl], c
    nop
    adc [hl]
    nop
    ld [hl], h
    nop
    adc c
    rst $08
    ld [hl], l
    ret nz

    adc c
    ld e, $78
    nop
    adc d
    ld e, a
    ld a, b
    add b
    adc b
    add [hl]
    ld a, c
    nop
    adc c
    ld a, [de]
    ld a, e
    cp a
    inc e
    ld a, $22
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_6357

    jr nz, jr_005_6339

    db $10
    rst $38
    rrca
    ld [$7675], sp
    db $eb
    sbc e
    call $fef5
    inc hl
    ccf
    add hl, de
    rra
    ld b, $07
    ld bc, $70bf
    ld hl, sp-$78
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    ld hl, sp+$08

jr_005_6339:
    ld hl, sp+$08

jr_005_633b:
    ldh a, [rNR10]
    rst $38
    ldh [rNR41], a
    ld e, h
    call c, $b2ae
    ld h, [hl]
    ld e, [hl]
    ld a, [$f888]
    jr nc, jr_005_633b

    ret nz

    nop
    cp a
    ld bc, $0203
    ccf
    inc a
    ld a, e
    ld b, h
    rst $38
    rst $38

jr_005_6357:
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

jr_005_635e:
    rst $38
    ld a, a
    ld b, b
    cpl
    jr nc, @+$3d

    inc a
    ld [hl], a
    ld c, a
    ld a, [$7d63]
    jr jr_005_638b

    rlca
    nop
    cp a
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_005_635e

    jr nz, @+$01

    and b
    ld h, b
    adc $4e
    sub a
    sbc c
    inc sp
    cpl
    cp $c4
    db $fc

jr_005_638b:
    sbc b
    ld hl, sp+$60
    ldh [$80], a
    add b
    nop
    xor a
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    jp c, $0203

    inc bc
    ld bc, $8000
    nop
    xor a
    nop
    rlca

jr_005_63a4:
    rrca
    ld [$101f], sp
    rst $38
    rst $28
    ldh a, [$ef]
    db $10
    rst $38

jr_005_63ae:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    rst $08
    pop af
    cp $fe
    cp [hl]
    push hl
    ei
    ld e, $1f
    ld bc, $008b
    add b
    ret nz

    ld b, b
    db $fd
    ret nz

    ld b, b
    ret nz

    ld b, b

jr_005_63cc:
    ret nz

    ld b, b
    ret nz

    rst $28
    ld b, b
    ret nz

    sbc h
    xor [hl]
    or d
    ld h, [hl]
    ld e, [hl]
    ld a, [$f888]
    jr nc, jr_005_63cc

    ret nz

    nop
    adc a
    nop
    ld bc, $0100
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    add c
    ld [bc], a
    add c
    ld [bc], a
    rst $38
    ld h, b
    inc bc
    jr nc, jr_005_643b

    ld [$0035], sp
    dec e
    cp $01
    inc bc
    nop
    ld bc, $0100
    rrca
    rst $38
    dec bc
    inc c
    dec b
    rlca
    dec bc
    inc c
    rla
    add hl, de
    cp $15
    dec de
    rla
    jr jr_005_6415

    rrca

jr_005_640e:
    rlca
    add b
    nop

jr_005_6411:
    add b
    nop
    or b
    nop

jr_005_6415:
    add b
    nop
    adc a
    nop
    add b

jr_005_641a:
    ld bc, $8204
    rst $38
    jr jr_005_63a4

    jr nc, jr_005_63ae

    nop
    ld a, b
    nop
    ld h, b
    ld [c], a
    nop
    add b
    nop
    ldh [$ef], a
    jr nz, jr_005_640e

    ret nz

    jr nz, jr_005_6411

    sub b
    ldh a, [$fe]
    ret nc

    ldh a, [$d0]
    ld [hl], b
    jr nz, jr_005_641a

    ret nz

jr_005_643b:
    add b
    nop
    add b
    nop
    nop
    add d
    nop
    ld c, $ff
    rla
    add hl, de
    rra
    db $10
    rra
    db $10
    rla
    jr @+$01

    dec bc
    inc c
    ld [hl], l
    db $76
    ld [$cd9b], a

jr_005_6454:
    push af
    cp $23
    ccf
    add hl, de
    rra
    ld b, $07
    ld bc, $0082
    ldh [rIE], a
    ret nc

    jr nc, jr_005_6454

    db $10
    ldh a, [rNR10]

jr_005_6467:
    ret nc

    jr nc, @+$01

    and b
    ld h, b
    ld e, h
    call c, $b2ae
    ld h, [hl]
    ld e, [hl]
    ld a, [$f888]
    jr nc, jr_005_6467

    ret nz

    nop
    add d
    nop
    rlca
    rst $38
    ld c, $09
    ld a, a
    ld [hl], b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    cp $81
    ld a, a
    ld b, c
    ld a, l
    ld [hl], e
    xor $9e
    cp $c7
    ei
    ld sp, $0e3f
    rrca
    ld bc, $0080
    add b
    add b
    xor a
    add b
    inc e
    ld l, $32
    ld h, [hl]
    ld e, [hl]
    ld a, [$f888]
    jr nc, @-$0e

    ret nz

    nop
    add b
    nop
    cp a
    inc e
    ld l, $32
    ccf
    ld hl, $617f
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    ld e, a
    ld h, c
    cp d
    ld a, a
    ld [hl], d
    ld a, l
    rrca
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld c, $17
    add hl, de
    inc sp
    cpl
    cp $c4
    db $fc
    sbc b
    ld hl, sp+$60
    ldh [$80], a
    nop
    add e
    nop
    ld bc, $ff0a
    dec de
    inc h
    cpl
    ld d, b
    rla
    jr z, @+$41

    ld b, b
    rst $38
    dec d
    ld l, d
    ld [c], a
    dec e
    ld a, l
    add d
    dec hl
    ld d, h
    rst $18
    nop
    inc bc
    nop
    ld [bc], a

jr_005_64f0:
    dec b
    nop
    ld [bc], a
    add l
    nop
    ret nz

    ld sp, $f8ff
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop

jr_005_64fe:
    db $fd
    ld [bc], a

jr_005_6500:
    rst $38
    jp c, $8825

    ld d, [hl]
    nop
    xor b
    jr nz, @-$2e

    rst $38
    ld [hl], b
    adc l
    cp l
    ld b, d
    ret nc

    dec l
    nop
    ldh a, [rIE]
    inc h
    dec de
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ld b, b
    rst $38
    ld a, a
    add b
    dec hl
    call nc, $2ad5
    ld [hl], d
    adc l
    rst $38
    jr nz, jr_005_64fe

    inc bc
    inc h
    nop
    inc bc
    nop
    ld l, b
    rst $38
    jr nz, jr_005_658d

    ld e, h
    and e
    dec bc
    ld [hl], h
    nop
    dec bc
    cp a
    nop
    add b
    ld e, h
    call c, $fa22
    inc b
    rst $38
    cp $01
    rst $38
    nop
    rst $18
    jr nz, jr_005_64f0

jr_005_6546:
    ld d, l
    rst $38
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld a, [$6500]

jr_005_654f:
    sbc d
    cp $18
    ld h, a
    nop
    inc e
    nop
    add b
    nop
    add b
    nop
    rst $38
    add b
    ld b, b
    ret nz

    jr nz, jr_005_6500

    ld b, b
    ret nz

    jr nz, @+$01

    nop
    ret nz

    adc b
    ld b, $ae
    ld de, $c638
    ld hl, sp-$40
    jr c, jr_005_6570

jr_005_6570:
    ret nz

    nop
    add b
    nop
    add l
    nop
    ld b, $49
    rst $38
    ld e, a
    and b
    dec d
    ld c, d
    ld [bc], a
    dec d
    nop
    ld [bc], a
    cp $01
    nop
    ld bc, $0002
    ld bc, $8000
    nop
    sbc a
    nop

jr_005_658d:
    ld b, $0e
    sub c
    sbc a
    ld h, b
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_005_6546

    ld d, c
    inc de
    add h
    rst $38
    xor l
    ld [de], a
    ld e, a
    and b
    ld e, $21
    inc b
    ld a, [bc]
    add b

jr_005_65a5:
    nop
    add c
    nop
    ld d, b
    db $fd
    ret nc

    jr z, jr_005_65a5

    nop
    or c
    ld c, d
    or l
    cp $ff
    nop
    db $ed
    ld [de], a
    adc b
    ld b, l
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld d, b
    and b
    ldh a, [$0c]
    db $fc
    ld [bc], a
    rst $38
    cp [hl]
    ld b, b
    db $76
    adc c
    ld a, [hl+]
    ld d, h
    nop
    jr z, jr_005_654f

    nop
    rst $38
    nop
    jr nc, jr_005_660c

    ld b, h
    ld [hl], h
    ld a, [bc]
    ld e, b
    and [hl]
    cp $2e
    ld d, c
    dec bc
    inc [hl]
    dec b
    ld a, [bc]
    nop
    add b
    nop
    nop
    cp l
    ldh a, [$9c]
    ld a, h
    ld [c], a
    ld e, $fe
    rst $38
    rst $20
    rst $38
    cpl
    rst $38
    sub a
    ld a, a
    sub a
    ld a, a
    rst $38
    sbc e
    ld a, a
    rla
    rst $38
    ld [hl], $fe
    ld l, $fe
    ld a, [$fe2e]
    inc a
    db $fc
    ldh [$c0], a
    xor a
    nop
    inc bc
    scf
    inc [hl]
    ld a, l
    ld e, [hl]

jr_005_660b:
    rst $38

jr_005_660c:
    ld a, [hl]
    ld c, a
    ld [hl], l
    ld c, e
    ld l, e
    ld e, [hl]
    ld c, a
    ld a, h
    cp $3f
    inc a
    dec de
    ld a, [de]
    ld [bc], a
    inc bc
    dec b
    ld a, [$0a0e]
    ld c, $0a
    ld b, $04
    xor a
    nop
    add b
    ld h, b
    ldh [$d4], a
    inc a
    rst $38
    ld e, h
    db $fc
    cp d
    or $d2
    ld a, [hl]
    or [hl]
    ld a, [hl]
    db $fd
    cp [hl]
    ld l, [hl]
    inc l
    db $fc
    ld a, b
    db $fc
    db $ec
    jp c, $4c7c

    ld a, h
    jr c, jr_005_6671

    add b
    nop
    rst $38
    ld b, h
    ld b, [hl]
    xor $ab
    adc $b9
    and c
    rst $28
    cp $ef
    db $eb
    ld l, [hl]
    ld l, d
    inc b
    ld c, $24
    add [hl]
    nop
    inc b
    nop
    add b
    nop
    adc a
    nop
    jr nz, @+$32

    db $10
    jr nc, jr_005_660b

    add b
    nop
    stop
    add [hl]
    nop
    jr nz, jr_005_6669

jr_005_6669:
    cp a
    rrca
    inc sp
    inc a
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b

jr_005_6671:
    rst $38
    add sp, -$09
    db $ec
    ei
    and l
    jp c, $8cf3

    rst $38
    pop af
    adc [hl]
    or l
    adc $54
    ld l, a
    ld l, b
    ld a, a
    cp $3b
    dec a
    dec bc
    dec c
    dec b
    rlca
    inc bc
    nop
    rst $38
    cp $ff
    dec b
    inc bc
    ld d, l
    inc bc
    inc de
    xor a

jr_005_6695:
    cp $a5
    ld e, e
    xor e
    rst $38
    ld d, h
    rst $38
    cp $ee
    db $dd
    dec sp
    rst $38
    ld h, [hl]
    sbc [hl]
    cp $ee
    ld a, $fe
    ld hl, sp-$10
    ld hl, sp+$00
    cp l
    jr c, jr_005_6719

    ld e, a
    ld e, h
    ld a, a
    rst $38
    rst $38
    adc l
    cp $bb
    adc a
    rst $18
    jp hl


    rst $28
    rst $18
    ei
    ld a, d
    ld a, a
    ld b, a
    ld a, a
    ld a, $36
    ld a, $aa
    ld [$0002], sp
    db $10
    cp a
    db $76
    ld e, l
    rst $38
    db $dd
    sbc e
    sbc a
    xor a
    cp $ed
    db $db
    xor e
    rst $38
    db $f4
    rst $38
    cp $ee
    call c, $fc38
    ld h, h
    db $fc
    ld e, h
    xor [hl]
    nop
    ld [hl], b
    ld c, b
    ld a, b
    jr nc, jr_005_6695

    nop
    inc c
    inc e
    ld d, $1e
    ld d, $ef
    ld d, $1e
    dec c
    ld h, d
    ld l, e
    db $76
    ld d, a
    cp $47
    ld [hl], l
    ld h, $35
    dec b
    rlca
    inc bc
    ldh [rP1], a
    ld bc, $8d00
    nop
    ld h, b
    ldh [$a0], a
    rst $38
    ld d, b
    ldh a, [$e8]
    cp b
    ld hl, sp-$58
    ld l, b
    or b
    ld [$e8a8], a
    ld h, b
    add b
    db $10
    add b
    nop
    add b
    nop
    add b

jr_005_6719:
    nop
    adc d
    nop
    jr jr_005_6732

    xor b
    sbc c
    ld [$ff00], sp
    ld [hl], a
    rst $38
    adc h
    sbc b
    db $ec
    sbc b
    reti


    db $fc
    rst $38
    ld a, b
    db $fd
    adc e
    cp $bc
    adc a

jr_005_6732:
    sbc a
    rst $28
    cp $ad
    sbc $fb
    rst $38
    rst $00

jr_005_673a:
    ld sp, hl
    ld a, a

jr_005_673c:
    ld [$7f72], a
    ccf
    ld a, $00
    nop
    add b
    nop
    cp a
    inc e
    ld a, d
    ld h, [hl]
    cp [hl]
    jp nz, $a67a

    rst $38
    db $fc
    inc a
    cp h
    ld h, h
    ld hl, sp-$38
    ldh a, [rNR10]
    cp $d0
    jr nc, jr_005_673a

    jr nz, jr_005_673c

    and b
    ld b, b
    add b
    nop
    xor a
    nop
    ld [hl], b
    rst $28
    sbc a
    cp [hl]
    rst $00
    rst $38
    ld e, a
    ld l, c
    ccf
    add hl, sp
    ld a, [hl]
    ld b, a
    cpl

jr_005_676f:
    jr nc, jr_005_676f

    rla
    jr jr_005_6783

    ld [$090f], sp
    ld b, $80
    nop
    xor a
    nop
    db $fc
    ld a, [$fec6]
    ld [hl+], a
    rst $38
    db $f4

jr_005_6783:
    inc l
    ld hl, sp-$28
    db $fc
    inc b
    ld hl, sp+$18
    ld a, [$20e0]
    ldh [$a0], a
    ld b, b
    nop
    add b
    nop
    xor a
    nop
    ld bc, $7f7e
    ei
    adc l
    rst $38
    cp a
    ret


    ld e, l
    ld l, e
    ld a, $37
    ld a, a
    ld b, b
    cp $3f
    jr nc, jr_005_67b6

    add hl, bc
    ld c, $0a
    inc b
    nop
    adc e
    nop
    jr jr_005_67ec

    inc h
    add sp, $3c
    inc h
    jr jr_005_67c6

jr_005_67b6:
    cp a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    adc e
    rst $38
    adc e
    cp $ff
    add c
    rst $38
    db $e3
    rst $30
    sbc l
    rst $38

jr_005_67c6:
    add d
    nop
    ld b, $fa
    rrca
    add hl, bc
    rrca
    add hl, bc
    ld d, $3c
    rst $38
    ld a, [hl]
    ld b, d
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    add c
    cp $ff
    add e
    rst $38
    push bc
    db $fd
    cp e
    ld h, [hl]
    add d
    nop
    ld h, b
    ld a, [$90f0]
    ldh a, [$90]
    ld [hl], b
    inc a
    rst $38

jr_005_67ec:
    ld a, [hl]
    ld b, d
    rst $38
    add l
    rst $38
    add l
    rst $38
    add c
    or $ff
    or e
    ld e, [hl]
    ld l, [hl]
    ld e, d
    ld [hl], $00
    adc e
    nop
    inc bc
    dec c
    ld c, $ff
    ld d, $1b
    rra
    ld de, $3b2e
    dec [hl]
    ld l, $df
    dec [hl]
    ld l, $3b
    rla
    add hl, de
    ld a, [de]
    rra
    add sp, $0c
    rrca
    inc bc
    nop
    xor a
    nop
    inc bc
    dec c
    ld c, $16
    dec de
    rst $38
    rra
    ld de, $3b2f
    scf
    inc l
    dec a
    ld a, [hl+]
    rst $38
    cpl
    dec sp
    rra
    inc e
    dec e
    ld a, [de]
    ld c, $0b
    rst $38
    dec bc
    rrca
    inc c
    rrca
    dec c
    ld c, $07
    inc b
    add d
    nop
    ld a, [hl]
    cp $7e
    ld b, d
    rst $38
    add c
    rst $38
    and l
    rst $38
    rst $18
    ld b, d
    ld a, [hl]
    ld b, d
    rst $38
    add c
    rst $38
    and l
    cp a
    rst $38
    ld b, d
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    add b
    nop
    cp a
    inc e
    ld l, [hl]
    db $76
    cp [hl]
    jp nz, $8efa

    rst $38
    cp $ae
    or a
    ei
    ld e, a
    ld h, c
    ld a, l
    ld b, a
    rst $38
    ld a, [hl]
    ld d, [hl]
    ld e, d
    ld a, [hl]
    dec l
    inc sp
    dec l
    inc sp
    add b
    nop
    adc e
    nop
    inc e
    ld l, $32
    rst $38
    scf
    cpl
    ld e, l
    ld h, [hl]
    ld l, [hl]
    ld e, l
    ld e, a
    ld l, b
    rst $38
    dec a
    dec sp

jr_005_6883:
    dec bc
    dec c
    rlca
    ld b, $05
    ld b, $80
    nop
    add b
    nop
    cp b
    add b
    ret nz

    ld b, b
    ret nz

    cp a
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    nop
    xor a
    nop
    jr jr_005_6883

    db $fc
    add h
    ld a, h
    rst $38
    add h
    ld a, h
    add $3a
    cp $02
    rst $38
    sub c
    rst $38
    rst $38
    sub c
    ld l, a
    sub c
    db $fd
    inc bc
    ld a, [hl]
    add d
    cp $7e
    add [hl]
    ld l, a
    sbc c
    di
    rst $38
    ld e, $af
    nop
    ld c, $1d
    inc de
    rra
    db $10
    rst $38

jr_005_68c4:
    dec bc
    inc c
    rrca
    ld [$1817], sp
    rra
    db $10
    rst $30
    rra
    db $10
    rra
    db $10
    rra
    jr jr_005_68f3

    cp $34
    ccf
    dec sp
    scf
    ld [hl], $39
    rra
    adc e
    nop
    jr jr_005_68c4

    db $fc
    rst $38
    call nz, $c43c
    inc a

jr_005_68e6:
    ld [c], a
    ld e, $fe
    ld [bc], a
    rst $38
    db $fd
    ld c, e
    rst $38
    ld c, c
    or a
    ld c, c
    ld a, a
    add c

jr_005_68f3:
    cp $3d
    jp $c23e


    or a
    call $8bff
    nop
    rlca
    ld c, $09
    rst $38
    rrca
    ld [$0605], sp
    dec bc

jr_005_6906:
    inc c
    rrca
    ld [$17ff], sp
    jr jr_005_692c

    db $10
    rra
    db $10
    jr c, @+$39

    cp $50
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, b
    ccf
    xor a
    nop
    jr nc, jr_005_68e6

    ld hl, sp-$18
    jr @+$01

    db $e4
    inc e

jr_005_6924:
    ld a, [c]
    ld c, $fe
    ld [bc], a
    rst $38
    dec h
    rst $38
    rst $38

jr_005_692c:
    dec h
    db $db
    dec h
    ccf
    pop bc
    dec e
    db $e3
    cp $da
    and $e4
    inc a
    inc l
    db $f4
    call c, $00af
    inc bc
    rlca
    inc b
    rlca
    inc b
    rst $38
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$1817], sp
    rst $38
    rra
    db $10
    rra
    db $10
    inc e
    inc de
    ld [hl], b
    ld a, a
    cp $8b
    rst $38
    add l
    cp $8e
    db $fd
    ld [hl], e
    nop
    xor d
    nop
    jr nc, jr_005_6999

    jr jr_005_6906

    db $fc
    cp $ff
    inc sp
    cp a
    rst $38
    cp e
    push bc
    ld a, l
    cp e
    rst $38
    ld a, l
    cp $bb
    ld a, l
    cp $82
    rst $38
    ld a, l
    rst $38
    xor d
    nop
    jr nc, jr_005_69b3

    jr jr_005_6924

    db $fc
    cp $b6
    rst $38
    or a
    cp a
    rst $38
    rst $10
    db $ed
    rst $38
    rst $10
    rst $38
    push de
    cp $ff
    rst $10
    sub $ee
    rst $38
    ld a, l
    rst $38
    xor d
    nop
    ld c, $0f
    rlca
    xor b
    inc bc

jr_005_6999:
    rlca
    rrca
    sbc e
    rra
    inc e
    rra
    ld a, a
    ld a, h
    add [hl]
    rst $38
    db $fc
    ld [hl], a
    xor d
    ld h, b
    ld [hl], b
    or b
    ld hl, sp-$42
    db $fc
    cp $da
    cp $da
    rst $38
    rst $38
    db $eb

jr_005_69b3:
    ld [hl], a
    rst $38
    db $eb
    rst $38
    ld l, e
    rst $38
    db $eb
    cp $ea
    ld [hl], $fc
    inc a
    db $fc
    db $f4
    call c, $0eaa
    rrca
    rlca
    ld bc, $07a2
    rrca
    rra
    xor $1f
    ld e, $1f
    ld a, a
    ld a, [hl]
    rst $38
    cp $fe
    rst $38
    db $fd
    cp $76
    ld [hl], l
    inc bc
    xor d
    jr jr_005_69f9

    inc c
    db $fc
    sbc [hl]
    cp $6e
    rst $38
    ld l, a

jr_005_69e4:
    rst $38
    rst $38
    xor a
    reti


    rst $38
    xor a
    rst $38
    xor c
    rst $38
    xor a
    cp $ae
    sbc $ff
    pop af
    rst $30
    rst $28
    ld e, $a2
    ld b, $07

jr_005_69f9:
    inc bc
    and d
    rlca
    rrca
    rra
    xor $1f
    add hl, de
    rra
    ld a, a
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    rst $30
    ld [hl], a
    ld a, c
    rrca
    nop
    cp a
    db $fc
    ld a, [$fe06]
    ld [bc], a
    cp $42
    rst $38
    cp $42
    rst $38
    ld b, e
    rst $38
    jp nz, Jump_005_6ebf

    rst $38
    rst $38
    or d
    rst $38
    xor [hl]
    rst $38
    or d
    cp a
    ld l, a
    cp $ff
    pop de
    add hl, sp
    rst $20
    rst $30
    rst $28
    ld a, $82
    nop
    ld a, $ff
    ld e, a
    ld h, c
    ld c, a
    ld [hl], c
    ld a, $39
    ld e, a
    ld h, b
    rst $38
    ld c, a
    ld [hl], b
    ccf
    jr c, jr_005_6a6f

    jr nc, jr_005_6a69

    jr c, jr_005_69e4

    rra
    nop
    adc e
    nop
    rra
    cpl
    jr nc, @+$01

    daa
    jr c, jr_005_6a6e

    inc e
    cpl
    jr nc, jr_005_6a7a

jr_005_6a53:
    jr c, jr_005_6a53

    rra
    inc e
    rla
    jr jr_005_6a6d

    inc e

jr_005_6a5b:
    rrca
    add b
    nop
    cp a
    ccf
    ld e, a
    ld h, b
    ld c, e
    ld [hl], h
    set 6, h
    rst $38
    set 6, h

jr_005_6a69:
    ld l, e
    db $f4
    db $db
    inc [hl]

jr_005_6a6d:
    rst $38

jr_005_6a6e:
    inc e

jr_005_6a6f:
    rst $38
    rst $38
    ld [de], a
    rst $38
    inc e
    rst $18
    ld [hl-], a
    rst $28
    db $fc
    cp $47

jr_005_6a7a:
    ld a, a
    dec sp
    inc a
    dec c
    dec bc
    rrca
    cp a
    db $fc
    ld_long a, $ff06
    inc bc
    cp $93
    rst $38
    cp $93
    rst $38
    sub d
    rst $38
    ld [hl], d
    xor a
    jp c, $ffff

    xor d
    rst $38
    xor d
    rst $38
    xor d

jr_005_6a98:
    xor a
    db $db
    cp $fa
    or $cc
    ld a, h
    db $fc
    db $f4
    cp h
    adc e
    nop
    ldh a, [$f8]
    ld [$e8ff], sp
    jr jr_005_6a5b

    ld [hl], b
    ld hl, sp+$08
    add sp, $18
    cp $b0
    ld [hl], b
    ldh a, [rNR10]
    ret nc

    jr nc, jr_005_6a98

    add b
    nop
    adc e
    nop
    ld a, h
    cp [hl]
    jp nz, $9eff

    ld [c], a
    ld a, l
    ld [hl], e
    cp a
    ret nz

    sbc a
    ldh [$fe], a
    ld a, a
    ld [hl], b
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    ccf
    add b
    nop
    cp a
    ccf
    ld e, a
    ld h, b
    ld c, e
    ld [hl], h
    ld c, e
    db $76
    rst $38
    ld c, e
    db $76
    set 6, [hl]
    ld c, e
    push af
    ld_long a, $ff77
    ei
    ld c, [hl]
    ei
    db $76
    ld a, e
    adc $fa
    rst $30
    or $4b
    ld [hl], l
    ldh a, [$bf]
    rst $08
    ld a, b
    adc e
    nop
    ld a, h
    cp [hl]
    jp nz, $baff

    add $6c
    sbc h
    cp $02
    ld a, [$fe06]
    db $ec
    inc e
    db $fc
    inc b
    db $f4
    inc c
    ld hl, sp-$80
    nop
    xor a
    nop
    ccf
    ld e, a
    ld h, b
    ld c, e
    ld [hl], h
    rst $38
    ld c, e
    ld [hl], l
    ld c, e
    ld [hl], l
    set 6, l
    xor e
    ld [hl], h
    rst $38
    ei
    dec a
    rst $38
    dec h
    ei
    dec a
    cp a
    ld h, l
    cp $db
    db $fd
    ld e, a
    ld a, [hl]
    ld l, a
    ld [hl], c
    ccf
    add b
    nop
    add d
    nop
    ld bc, $07ff
    ld b, $0b
    inc c
    rla
    jr jr_005_6b58

    db $10
    cp $1f
    db $10
    scf
    ccf
    dec sp
    inc a
    rrca
    add b
    nop
    add d
    nop
    rlca
    rst $38
    add hl, bc
    ld c, $17
    jr jr_005_6b6c

    db $10
    rra
    db $10
    cp $75
    ld a, e
    ld l, e
    ld l, [hl]
    ld b, $05
    inc bc

jr_005_6b58:
    add d
    nop
    ld bc, $018f
    inc bc
    ld [bc], a
    dec b
    ld b, $ff
    dec bc
    inc c
    rla
    jr @+$21

    db $10
    rra
    db $10
    cp $37

jr_005_6b6c:
    jr c, jr_005_6ba7

    ld l, $3f
    daa
    inc e
    add b
    nop
    xor a
    nop
    rst $20
    sbc $d9
    daa
    jr c, @+$01

    scf
    jr z, jr_005_6bba

    inc h
    dec l
    ld [hl-], a
    rra
    db $10
    ld a, [$1817]
    dec c
    ld c, $03
    nop
    add b
    nop
    adc e
    nop
    rrca
    ld d, $19
    db $fd
    rst $28
    ldh a, [$af]
    or b
    inc sp
    inc l
    inc sp
    ld a, [$101f]
    dec bc
    inc c
    rlca
    nop
    add b
    nop
    add d
    nop
    rlca
    rst $38

jr_005_6ba7:
    dec bc
    inc c
    rla
    jr jr_005_6c2b

    ld [hl], b
    rst $10
    ret c

    ld a, [$d7d8]
    rrca
    ld [$0007], sp
    add b
    nop
    adc e
    nop

jr_005_6bba:
    ld bc, $0607
    rst $38
    dec bc
    inc c
    rla
    jr jr_005_6be2

    db $10

jr_005_6bc4:
    rra
    inc e
    cp $3f
    ld [hl-], a
    dec sp
    dec [hl]
    add hl, bc
    rrca
    ld b, $af
    nop
    db $fc
    ld a, [$fe06]
    ld [bc], a
    rst $38
    rst $38
    inc hl
    rst $38
    inc hl
    cp $23
    rst $38
    ld [c], a
    rst $38
    ld e, a
    or [hl]
    rst $38

jr_005_6be2:
    ld e, d
    rst $38
    ld d, [hl]
    rst $38
    ld e, d
    cp $5f
    or a
    cp $ee
    rla
    ld sp, hl
    rst $38
    add b
    nop
    cp a
    ret nz

    ldh [$a0], a
    ldh a, [$90]
    ld hl, sp+$08

jr_005_6bf9:
    rst $38
    ret c

    jr z, jr_005_6bf9

    inc b
    call c, $dc24
    inc h
    cp $b4
    ld c, h
    ld l, b
    sbc b
    cp h
    db $f4
    db $fc
    add d
    nop
    ld h, b
    rst $38
    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    cp b
    ret z

    ld a, h
    add h
    rst $38
    db $ec
    inc d
    db $fc
    inc b
    db $ec
    inc d
    call nc, $f62c
    xor b
    ret c

    ldh a, [rSVBK]
    ret nc

    or b
    add d
    nop
    add b
    rst $38
    ret nz

jr_005_6c2b:
    ld b, b

jr_005_6c2c:
    ldh [rNR41], a
    or b
    ld d, b
    ld hl, sp+$08
    rst $38
    cp b
    ld c, b
    db $fc
    inc b
    cp h
    ld b, h

jr_005_6c39:
    or h
    ld c, h
    cp $78
    adc b
    ld e, h
    or h
    db $f4
    db $ec
    jr c, jr_005_6bc4

    nop
    adc e
    nop
    add b
    ld h, b
    ldh [rIE], a
    rst $18
    ccf
    rst $38
    ld bc, $03fd
    cp [hl]
    ld b, d
    ld a, [$0cf4]
    ret c

    jr c, jr_005_6c39

    nop
    add b
    nop
    xor a
    nop
    ld b, $1e
    ld a, [de]
    xor $f2
    rst $38
    cp $02
    ld a, [$dc06]
    inc h
    ld [hl], h
    adc h
    ld a, [$18e8]
    or b
    ld [hl], b
    ret nz

    nop
    add b
    nop
    cp a
    jr @+$1e

    inc d
    ld a, h
    ld h, h
    cp h
    call nz, $fcff
    inc b
    db $ec
    inc d
    db $f4
    inc c
    sbc b
    ld l, b
    ld a, [$9868]
    or b
    ld [hl], b
    ret nz

    nop
    add d
    nop
    ret nz

    rst $38
    ldh [$a0], a
    ldh a, [$90]
    ld hl, sp+$08
    ret c

    jr z, @+$01

    db $fc
    inc b
    call c, $dc24
    inc h
    or h
    ld c, h
    or $68
    sbc b
    inc a
    db $f4
    db $ec
    jr jr_005_6c2c

    nop
    ld hl, sp-$01
    ld a, h
    add h
    ld [hl], h

jr_005_6cb0:
    adc h
    ret c

    jr c, jr_005_6cb0

    inc b
    rst $38
    db $f4
    inc c
    ret c

    jr c, @-$06

    ld [$18e8], sp
    and b
    ldh a, [rP1]
    nop
    rst $38
    rra
    ld de, $111f
    rra
    ld de, $111f
    rst $38
    rra
    ld de, $111f
    rra
    ld de, $111f
    rst $38
    rra
    ld de, $111f
    rra
    ld de, $111f
    rst $38
    rra
    ld de, $111f
    rra
    ld de, $111f
    rst $38
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28

jr_005_6cef:
    rst $38
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    rst $38
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    rst $38
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    add sp, $18
    add sp, $18
    ld hl, sp+$18
    ret c

    jr c, jr_005_6cef

    cp h
    ld a, h
    db $fc
    ld a, h
    sbc $74
    ld a, h
    ld b, h
    ld d, h
    ld l, h
    jr c, @-$4f

    nop
    ld a, b
    sbc $fe
    rst $28
    rst $38
    rst $38
    push de
    dec sp
    cp $0e
    db $fc
    inc b
    ld_long a, $ff06
    ld a, [$fe96]
    sub d
    cp $92
    ld a, [$fe06]
    db $fc
    inc b
    db $fc
    inc c
    ld d, [hl]
    cp d
    cp $a8
    nop
    ld c, $1f
    rst $28
    dec e
    inc de
    ccf
    cpl
    ld a, $5f
    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cp $2f
    jr nc, jr_005_6da1

    ld a, $7b
    ld a, l
    ld a, a
    xor a
    jr c, jr_005_6de5

    sbc $fe
    ld_long a, $ff66
    cp $3e
    db $fc
    inc e
    ld a, [$fe06]
    ld [hl+], a
    rst $38
    cp $22
    cp $22
    ld a, [$fc06]
    inc b
    ld a, [$0efe]
    db $db
    dec a
    rst $38
    ld e, $af
    ld c, $1f
    dec a
    ccf
    dec sp
    daa
    rst $38
    ccf
    ld a, $3f
    inc a
    ld e, a
    ld h, b
    ld a, a
    ld b, c
    rst $38
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    cp $ff

jr_005_6da1:
    ldh a, [$f9]
    cp $f7
    rst $28
    ld a, b
    cp a
    ld [hl], b
    cp h
    db $fc
    sbc $fe
    and $7a
    rst $38
    db $fc
    call c, $8cf4
    ld a, [$fe06]
    ld c, d
    rst $38
    cp $4a
    cp $4a
    ld a, [$fc06]
    inc b
    cp $f4
    adc h
    add sp, $58
    ld hl, sp-$18
    cp b
    cp a
    ld c, $17
    rra
    dec de
    rra
    dec d
    ld e, $ff
    cpl
    scf
    ccf
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld a, a

jr_005_6ddc:
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_005_6ddc

    cpl

jr_005_6de5:
    scf
    dec e
    ld e, $0f
    add d
    nop
    ld a, b
    rst $38
    sbc $fe
    rst $28
    rst $38
    push de
    dec sp
    cp $0e
    rst $38
    cp $02
    rst $38
    ld bc, $99ff
    rst $38
    ld bc, $fefe
    ld [bc], a
    db $fc
    inc c
    ld d, [hl]
    cp d
    cp $82
    nop
    ld c, $af
    rra
    ccf
    dec l
    inc sp
    ccf
    ld a, $ff
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add b
    cp $7f
    ld b, b
    ccf
    ld a, $7b
    ld a, l
    ld a, a
    nop
    xor l
    nop
    inc e
    cpl
    scf
    cpl
    rst $38
    ld e, h
    ld l, a
    ld e, b
    ld l, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    rst $38
    ld a, c
    ld c, a
    ld a, c
    ld c, a
    ld e, c
    ld l, a
    ld c, b
    ld a, a
    or $28
    ccf
    inc a
    cpl
    inc sp
    ld e, $af
    nop
    inc e
    dec hl
    scf
    ld a, a
    ld c, a
    rst $38
    cp b
    rst $18
    ret nc

    cp a
    ldh a, [$bf]
    ldh [$bf], a
    rst $38
    pop hl
    cp a
    pop hl
    cp a
    pop hl
    cp a
    sub b
    rst $38
    cp $50
    ld a, a
    ld a, h
    ld l, a
    cpl
    inc sp
    ld e, $8b
    nop
    inc e
    cpl
    scf
    rst $38
    dec sp
    daa
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    ld [hl], e
    ld e, [hl]
    ld h, e
    rst $38
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld b, e
    ld e, [hl]
    ld h, e
    ld c, d
    ld [hl], a
    or $4c
    ld [hl], a
    scf
    cpl
    jr c, jr_005_6e9f

    xor a
    nop
    rra
    dec hl
    scf
    ld e, l
    ld h, e
    rst $38
    ld e, l
    ld h, e
    add l
    ei
    sbc a
    pop hl
    rst $38
    add c
    rst $38
    rst $38
    add c
    sbc a
    pop hl
    add l
    ei
    ld e, l
    ld h, e
    cp $5f
    ld h, e
    dec hl
    ld [hl], $1e

jr_005_6e9f:
    dec e
    rlca
    cp a
    ld c, $1f
    inc de
    ccf
    daa
    ld [hl], $2f
    rst $38
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    rst $38
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    jr c, jr_005_6ee8

    inc [hl]
    cpl
    or $1e
    rra
    dec de

Jump_005_6ebf:
    rla
    add hl, de
    ld c, $af
    nop
    ld c, $3d
    inc sp
    ld e, a
    ld l, a
    rst $38
    ld a, [hl]
    ld e, a
    cp b
    rst $18
    ld hl, sp-$41
    ldh a, [$bf]
    rst $38
    ldh a, [$bf]
    ldh a, [$bf]
    ret nc

    cp a
    ld a, c
    ld e, a
    cp $6a
    ld e, a
    scf
    ld l, $1a
    dec de
    ld bc, $00af
    rrca
    dec d
    dec de

jr_005_6ee8:
    ld l, $31
    rst $38
    ld l, $31
    ld b, e
    ld a, h
    ld c, a
    ld [hl], b
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld c, a
    ld [hl], b
    ld b, e
    ld a, h
    cp $2e
    ld sp, $312e
    dec d
    dec de
    rrca
    xor a
    nop
    inc bc
    dec b
    ld b, $0f
    ld [$17ff], sp
    jr jr_005_6f1f

    rra
    inc hl
    inc a
    cpl
    jr nc, @+$01

    ccf
    jr nz, @+$31

    jr nc, @+$25

    inc a
    db $10
    rra
    cp $17

jr_005_6f1f:
    jr jr_005_6f30

    ld [$0605], sp
    inc bc
    xor d
    nop
    ldh a, [$fc]
    cp $ff
    ld a, $fe
    rrca
    rst $38
    rrca

jr_005_6f30:
    rst $38
    rlca
    rst $38
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    rrca

jr_005_6f3b:
    rst $38
    or $0e
    cp $3e
    ld a, [c]
    xor $1c
    xor d
    nop
    add b
    ldh [$f0], a
    rst $38
    jr nc, jr_005_6f3b

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    rst $38
    inc l
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    inc b
    db $fc
    cp $88
    ld hl, sp-$28
    ld a, b
    ld [hl], b
    ret nc

    ldh a, [$8a]
    nop
    ldh a, [$f8]
    cp a
    db $fc

jr_005_6f68:
    inc a
    db $fc
    ld c, $fe
    ld c, $fe
    rst $38
    ld b, $fe
    ld d, [hl]
    cp $56
    cp $56
    cp $fe
    ld c, $fe
    inc c
    db $fc
    cp h
    db $f4
    db $fc

jr_005_6f7f:
    xor d
    nop
    ret nz

    ldh a, [$f8]
    rst $38
    jr c, jr_005_6f7f

    inc c
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    rst $38
    inc l
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    inc b
    db $fc
    cp $88
    ld hl, sp-$28
    ld a, b
    ld [hl], b
    ret nc

    ldh a, [$ab]
    ld a, b
    db $fc
    cp $1e
    cp $ff
    rlca
    rst $38
    cpl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $fe
    ld b, $fe
    xor $1c
    db $fc
    ld hl, sp+$78
    ld c, b
    jr nc, jr_005_6f68

    nop
    ld [hl], b
    ld hl, sp-$04
    rst $38
    inc e
    db $fc
    ld b, $fe
    ld b, $fe
    ld [bc], a
    cp $ff
    ld [bc], a
    cp $2a
    cp $2a
    cp $ee
    cp $de
    rst $30
    add hl, sp
    rst $30
    ld sp, $ceff
    xor d
    nop
    ld a, b
    db $fc
    cp $ff
    sbc [hl]
    cp $8f
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    add a
    rst $38
    cp $ef
    rst $38
    cp $92
    ld [hl], $fe
    db $fc
    xor a
    nop
    ldh a, [$a8]
    ld e, b
    call nc, $ff2c
    db $ec
    inc d
    ld [$f616], a
    ld a, [bc]
    or $0a
    rst $38
    or $0a
    or $0a
    or $0a
    ld [$fe16], a
    db $ec
    inc d
    call nc, $a82c
    ld e, b
    ldh a, [$8b]
    nop
    inc bc
    dec c
    ld c, $ff

jr_005_7021:
    db $10
    rra
    cpl
    jr nc, jr_005_7055

    jr nc, @+$69

    ld e, b
    rst $38
    ld h, a
    ld e, b
    ld a, e
    ld b, h
    ld e, a
    ld h, b
    ccf
    jr nz, jr_005_7021

    ld l, $31
    rra
    rrca
    inc c
    inc bc
    adc e
    nop
    ldh [$f8], a
    jr @+$01

    ld [hl], h
    adc h
    inc [hl]
    call z, $0efa
    cp $0a
    rst $38
    xor $1a
    cp $12
    jp c, $bc36

    ld h, h
    cp $f4
    call z, $18e8

jr_005_7055:
    or b
    ld [hl], b
    ret nz

    add b
    nop
    adc e
    nop
    inc bc
    inc c
    rrca
    rst $38
    ld d, $19
    ccf
    jr nz, jr_005_70c2

    ld h, e
    ld l, [hl]
    ld e, a
    cp $77
    ld a, b
    ld e, a
    ld h, b
    inc sp
    inc a
    rrca
    add b
    nop
    adc e
    nop
    ldh a, [$cc]
    inc a
    rst $38
    ld [$fd16], a
    inc bc
    rst $38
    db $fd
    rst $38
    inc bc
    cp $ff
    ld bc, $03fd
    ld a, [c]
    ld c, $fc
    nop
    xor a
    nop
    rlca
    dec de
    inc e
    ld l, $31
    rst $38
    ld e, e
    ld h, a
    ld [hl], l
    ld c, [hl]
    xor e
    call c, $b8df
    rst $38
    rst $38
    cp b
    rst $38
    cp a
    ld e, e
    ld a, h
    ld l, a
    ld [hl], b
    cp $3f
    jr nz, jr_005_70d5

    ld a, $1f
    ld de, $bf1f
    rlca
    dec de
    inc e
    ld l, $31
    ld e, e
    ld h, a
    rst $38
    ld [hl], l
    ld c, [hl]
    xor e
    call c, $b8df
    rst $38
    cp b
    rst $38
    rst $38
    cp a
    ld e, e
    ld a, h
    ld l, a
    ld [hl], b

jr_005_70c2:
    ccf

jr_005_70c3:
    jr nz, jr_005_70c3

    cpl
    scf
    dec de
    inc e
    inc c
    dec bc
    rlca
    cp a
    rlca
    dec de
    inc e
    ld l, $31
    ld e, e
    ld h, a
    rst $38

jr_005_70d5:
    ld [hl], l
    ld c, [hl]
    xor e
    call c, $b9df
    rst $38
    cp c
    rst $38
    rst $38
    cp a
    ld e, e
    ld a, h
    ld l, a
    ld [hl], b
    ccf

jr_005_70e5:
    jr nz, jr_005_70e5

    ld e, a
    ld [hl], b
    ld l, e
    ld e, h
    ld e, a
    ld h, a
    inc a
    cp a
    ldh a, [$fc]
    inc c
    ld [$fef6], a
    ld a, [$deff]
    ld a, [hl-]
    db $ec
    inc e
    ld hl, sp+$48
    ld hl, sp+$48
    cp a
    cp $fd
    inc bc
    rst $38
    ld bc, $03fd
    cp $fa
    ld b, $ef
    add hl, de
    ld sp, hl
    rst $30
    ld c, $8b
    nop
    inc bc
    rrca
    inc c
    rst $38
    rra
    db $10
    ccf
    ld hl, $273e
    ld a, l
    ld c, [hl]
    rst $38
    ld a, e
    ld e, h
    ld a, a
    ld e, a
    ld e, e
    ld a, h
    ld l, a
    ld [hl], b
    cp $3f
    jr nz, jr_005_7159

    ld a, $1f
    ld de, $8b1f
    nop
    ldh a, [$fc]
    inc c
    rst $38
    cp $02
    ei
    db $fd
    rst $28
    dec e
    ld a, [$efae]
    db $fc
    xor h
    cp $fd
    inc bc
    rst $38
    ld bc, $fdfe
    inc bc
    ld a, [$ee06]
    ld a, [de]
    cp $80
    nop
    cp a
    inc bc
    dec c
    ld c, $17
    jr jr_005_7194

    jr nz, @+$01

    ld e, a
    ld h, b

jr_005_7159:
    ld a, a
    ld b, a
    ld a, e
    ld e, h
    ld c, a
    ld [hl], b
    cp $7f
    ld h, b

jr_005_7162:
    cpl
    ld a, $1f
    ld de, $801f
    nop
    cp a
    ldh [$d8], a
    jr c, jr_005_7162

    inc c
    cp $02
    rst $30
    rst $38
    ld bc, $fdff
    inc bc
    rst $38
    ld bc, $fdfe
    inc bc
    ld a, [$ee06]
    ld a, [de]
    cp $af
    nop
    ldh a, [$fc]
    inc c
    ld_long $fff6, a
    cp $fa
    sbc $3a
    db $ec
    inc e
    ld hl, sp-$58
    rst $28
    ld hl, sp-$58

jr_005_7194:
    cp $fd
    inc bc
    rst $38
    ld bc, $fdfe
    inc bc
    ld a, [$ee06]
    ld a, [de]
    cp $bf
    ldh a, [$fc]
    inc c
    ld [$fef6], a
    ld a, [$deff]
    ld a, [hl-]
    db $ec
    inc e
    add sp, $58
    add sp, $58
    cp a
    cp $fd
    inc bc
    rst $38
    ld bc, $03fd
    cp $fa
    add [hl]
    db $e4
    ld e, h
    ld e, b
    add sp, -$48
    nop
    add b
    nop
    adc d
    nop
    ld [hl+], a
    inc d
    xor [hl]
    inc e
    ld a, $7e
    ld l, d
    ld a, [hl]
    xor d
    ld a, [hl]
    ccf
    jr nc, jr_005_71e4

    add b
    nop
    add d
    nop
    ld [hl+], a
    xor e
    inc d
    inc e
    ld a, $7e
    ld l, d
    add d
    ld a, [hl]
    inc h
    add b
    nop

jr_005_71e4:
    adc d
    nop
    ld [hl+], a
    inc d
    xor [hl]
    inc e
    ld a, $7e
    ld l, d
    ld a, [hl]
    xor d
    ld a, [hl]
    db $fc
    inc c
    ld [$af00], sp
    nop
    rlca
    jr jr_005_7218

    inc l
    inc sp
    rst $18
    jr nc, jr_005_723d

    cpl
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp [hl]
    pop bc
    cp a
    pop bc
    rst $38
    add c
    cp $81
    cp $ff
    add b
    cp a
    call c, Call_005_627f
    ccf
    cp a
    ld bc, $0706

jr_005_7218:
    rrca
    inc c
    rra
    inc de
    rst $38
    ccf
    jr nz, jr_005_727f

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp $7b
    ld b, a
    inc sp
    inc l
    dec e
    dec de
    rrca
    xor a
    nop
    inc bc
    ld b, $07
    rrca
    add hl, bc

jr_005_723d:
    rst $38
    rra
    db $10
    ccf
    jr nz, jr_005_72a2

    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $bf
    pop bc
    ld e, [hl]
    ld h, e
    scf
    inc a
    rrca
    xor a
    nop
    ld bc, $0706
    dec bc
    inc c
    rst $38
    ld e, $17
    dec a
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $ff
    add b
    ld a, a
    ld b, a
    cpl
    jr c, jr_005_7297

    adc e
    nop
    rlca
    jr jr_005_729c

    rst $38
    inc l

jr_005_727f:
    inc sp
    ld d, b
    ld a, a
    ld l, a
    ld e, a
    cp a
    ret nz

    rst $38
    rst $38
    add b
    cp $81
    rst $38
    add c
    rst $38
    add c
    cp $fe
    add c
    cp a
    call c, Call_005_627f
    ccf

jr_005_7297:
    cp a
    rrca
    jr nc, jr_005_72da

    ld b, b

jr_005_729c:
    ld a, a
    ld [hl], b
    ld c, a
    rst $18
    pop bc
    rst $38

jr_005_72a2:
    cp [hl]
    rst $38
    add b
    ei
    add [hl]
    rst $38
    rst $38
    add h
    ei
    add a
    db $fc
    add e
    cp a
    ret nz

    cp $ff
    ret nz

    rst $38
    cp b
    cp a
    rst $00
    ld a, h
    cp a
    ld c, $31
    ccf
    ld d, b
    ld l, a
    ld h, b
    ld e, a
    rst $38
    add c
    rst $38
    adc a
    cp $f6
    ld sp, hl
    rst $30
    adc l
    rst $38
    cp $89
    rst $30
    adc [hl]
    cp c
    add $ff
    ret nz

    cp $ff
    and b
    rst $30
    sbc b
    cp a
    rst $08
    ld a, b

jr_005_72da:
    xor a
    nop
    rlca
    jr jr_005_72fe

    jr z, @+$39

    rst $38
    ld h, b
    ld e, a
    ld b, a
    ld a, a
    cp e
    db $fc
    cp a
    ret nz

    rst $38
    ei
    add [hl]
    rst $38
    add h
    ei

jr_005_72f0:
    add a
    db $fc
    add e
    cp $bf
    ret nz

    ld a, a
    ld a, b
    ld a, a
    ld b, h
    ld a, a
    xor a
    nop

jr_005_72fd:
    ret nz

jr_005_72fe:
    jr nc, jr_005_72f0

    ld [$dff8], sp
    jr jr_005_72fd

    add sp, -$0c
    inc c
    db $fc
    inc b
    rst $38
    jp c, $fab6

    ld h, $fe
    or d
    ld c, [hl]
    or d
    cp $fe
    ld [bc], a
    ld a, [$f406]
    inc c
    db $fc
    cp a
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    rst $38
    ld [c], a
    cp $de
    ld a, $fe
    ld [bc], a
    sbc $62
    rst $38
    jp c, $faae

    sub $3e
    jp c, $1ae6

    cp $7c
    add h
    db $f4
    adc h
    ret z

    ld hl, sp+$70
    cp a
    ldh [rNR23], a
    ld hl, sp-$7c
    ld a, h
    and h
    call c, $e2ff
    ld a, [hl]
    ld a, [$fe1e]
    ld b, $f6
    ld a, [de]
    rst $38
    cp $22
    cp $36
    adc $36
    ld a, [$fe06]
    ld a, [$f486]
    ld c, h
    ld e, b
    ld hl, sp-$20
    xor a
    nop
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    rst $30
    inc b
    db $fc
    jp nz, $3efe

    cp $02
    rst $38
    xor $32
    xor $56
    cp $6a
    sbc [hl]
    ld l, [hl]
    cp $f2
    ld c, $fa
    ld b, $f4
    adc h
    ld hl, sp-$75
    nop
    ret nz

    jr nc, @-$0e

    rst $38
    ld [$14f8], sp
    db $fc
    db $ec
    db $f4
    ld_long a, $ff06
    cp $02
    sbc $b2
    cp $22
    cp $b2
    cp $4e
    or d
    ld a, [$f406]
    inc c
    db $fc
    xor a
    nop
    ret nz

    jr nz, @-$1e

    ld [hl], b
    ret nc

    rst $38
    ld hl, sp-$78
    db $fc
    inc b
    ld a, h
    call nz, $82fe
    rst $38
    ld a, [hl]
    ld [c], a
    sbc [hl]
    ld h, d
    ld a, [$fa06]
    ld b, $fe
    db $fc
    inc c
    sbc $32
    ld a, [c]
    xor $1c
    xor a
    nop
    add b
    ld b, b
    ret nz

    ldh [$a0], a
    rst $38
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    add h
    db $fc
    inc b
    rst $38
    cp $c2
    ld a, $c2
    cp $02
    cp $02
    cp $fc
    inc b
    xor $1a
    ld a, [$3ce6]
    adc e
    nop
    ret nz

    jr nz, @-$1e

    rst $38
    ldh a, [$d0]
    ld hl, sp+$08
    db $f4
    inc c
    ld a, h
    call nz, $faff
    add [hl]
    ld a, [hl]
    ld [c], a
    sbc [hl]
    ld h, d
    cp $02
    cp $fe
    ld [bc], a
    db $fc
    inc b
    and $1a
    cp $00
    adc e
    nop
    ld c, $17
    add hl, de
    rst $38
    rra
    db $10
    rra
    db $10
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    rst $38
    ld b, $05
    inc bc
    ld [bc], a
    ld b, $05
    dec c
    ld a, [bc]
    rst $38
    dec e
    ld [de], a
    dec hl
    inc [hl]
    dec sp
    inc h
    ld e, e
    ld h, h
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp $5f
    ld h, b
    ccf
    jr nz, jr_005_745e

    jr nc, jr_005_7450

    add b
    nop
    add b
    nop
    adc e
    nop
    rlca
    dec c
    dec bc
    rst $38
    rrca
    dec bc
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    ld b, $05
    rst $38
    ld b, $05
    inc bc
    ld [bc], a
    dec b
    ld b, $0d
    ld a, [bc]
    rst $38
    dec de
    inc d
    dec hl

jr_005_7450:
    inc [hl]
    dec sp
    inc h
    ld e, e
    ld h, h
    adc e
    nop
    rra
    cpl
    ld [hl-], a
    rst $38
    ccf
    daa
    dec sp

jr_005_745e:
    daa
    dec de
    inc d
    dec e
    ld [de], a
    rst $38
    dec c
    ld a, [bc]
    ld c, $09
    ld c, $09
    dec de
    inc d
    rst $38
    dec de
    inc d
    dec sp
    inc h
    dec sp
    inc h
    ld e, a
    ld h, b
    adc e
    nop
    inc bc
    ccf
    inc a
    rst $38
    ld e, e
    ld h, a
    ld l, a
    ld e, a
    ld a, a
    ld c, a
    ld e, a
    ld h, e
    rst $38
    dec sp
    inc h
    dec hl
    inc [hl]
    dec e
    ld [de], a
    dec e
    ld [de], a
    rst $38
    ld h, $39
    ld [hl], $29
    scf
    jr z, jr_005_74f3

    ld h, b
    add d
    nop
    ld a, [hl]
    ld hl, sp-$01
    add c
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld a, e
    db $fc
    db $fd
    ld [bc], a
    ld a, l
    add d
    rst $38
    cp l
    ld b, d

jr_005_74a9:
    cp [hl]
    ld b, c
    sbc $21
    rst $18
    jr nz, @+$01

    ld l, a
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp $5f
    ld h, b
    ccf
    jr nz, @+$31

    jr nc, @+$21

    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    inc c
    rrca
    inc de
    inc e
    rst $38
    daa
    jr c, jr_005_74f6

    jr c, @+$51

    ld [hl], b
    ld c, a
    ld [hl], b
    rst $38
    ld b, a

jr_005_74d6:
    ld a, b
    ld b, a
    ld a, b
    inc hl
    inc a
    jr nz, jr_005_751c

    ld a, [$1f10]
    inc c
    rrca
    inc bc
    nop
    adc e
    nop
    ld hl, sp-$2c
    db $ec
    rst $38
    db $fc
    db $e4
    call c, $d824
    jr z, jr_005_74a9

    ld c, b
    rst $38

jr_005_74f3:
    or b
    ld d, b
    ld h, b

jr_005_74f6:
    and b
    or b
    ld d, b
    cp b
    ld c, b
    rst $38

jr_005_74fc:
    call c, $dc24
    inc h
    cp $02
    cp $02
    rst $38
    ld l, [hl]
    jp c, $92fe

    cp $da
    ld h, $da
    cp $fa
    ld b, $fc
    inc b
    db $f4
    inc c
    ld hl, sp-$80
    nop
    add b
    nop
    adc e
    nop

jr_005_751b:
    or b

jr_005_751c:
    ld hl, sp-$38
    rst $38
    ld hl, sp-$78
    ret c

    jr z, jr_005_74fc

    jr z, jr_005_74d6

    ld d, b
    rst $38
    or b
    ld d, b
    ld h, b
    and b
    ld [hl], b
    sub b
    cp b
    ld c, b
    rst $38

jr_005_7531:
    cp h
    ld b, h
    call c, $fe24
    ld [bc], a
    cp $02
    adc e
    nop
    sbc h
    ld l, d

jr_005_753d:
    or $ff
    cp $f2
    cp [hl]
    jp nz, $04fc

    call c, $ff24
    ret c

    jr z, jr_005_751b

    jr nc, jr_005_753d

    db $10
    ld l, b
    sbc b
    rst $38
    ld l, h
    sub h
    cp h
    ld b, h
    cp $02
    cp $02
    adc e
    nop
    ldh [$9e], a
    ld a, [hl]
    rst $18
    db $fd
    ei
    db $fd
    cp a
    pop bc
    db $dd
    and e
    rst $38
    sbc $22
    jp c, $dc26

    inc h
    db $ec
    inc d

jr_005_756f:
    rst $38
    db $ec
    inc d
    ld [$7e16], a
    add d
    cp $02
    add b
    nop
    cp a
    ldh [$f0], a
    db $10
    ret c

    add sp, -$08
    add sp, -$01
    ld a, b
    adc b
    add sp, $18
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ret nc

    jr nc, jr_005_756f

    jr nz, jr_005_7531

    ld h, b
    ldh [rNR41], a
    add b
    nop
    cp l
    inc bc
    rrca
    inc c
    rla
    dec de
    rla
    rst $38
    rra
    inc de
    rra
    db $10
    ld d, $19
    rrca
    ld [$0bfd], sp
    inc c
    dec b
    ld b, $05
    ld b, $05
    xor a
    nop
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    rst $38
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    ld a, [$fa06]
    ld b, $f4
    inc c
    call nz, $fa3c
    ld [$30f8], sp
    ldh a, [$c0]
    nop
    nop
    add d
    nop
    rlca
    rst $38
    ld a, [de]
    rra
    ld hl, $413f
    ld a, a
    ld b, b
    ld a, a
    rst $38
    add e
    db $fc
    add e
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$02
    add a
    ld hl, sp-$71
    cp $5f
    ld [hl], c
    ccf
    add d
    nop
    inc bc
    cp a
    rrca
    db $10
    rra
    jr nz, jr_005_7634

    ld b, c
    ld a, [hl]
    rst $38
    ld b, c
    ld a, [hl]
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    cp $87
    rst $38
    adc e
    db $fc
    call z, Call_005_7ffb
    add b
    nop
    cp a
    rrca
    ld sp, $403f
    ld a, a
    ld b, b
    ld a, a
    rst $38
    add c
    cp $81
    cp $83
    db $fc
    add e
    db $fc
    cp $83
    db $fc
    add e
    rst $38
    ld b, a
    ld a, h
    ccf
    add d
    nop
    inc bc
    rst $38
    inc c
    rrca
    ld [de], a
    rra
    inc hl
    inc a
    ld b, a
    ld a, b
    rst $38
    ld c, [hl]
    ld [hl], c
    adc a
    pop af

jr_005_7634:
    adc [hl]
    pop af
    adc a
    ldh a, [$fe]
    add a
    ld hl, sp-$61
    db $fc
    ld a, a
    ld h, d
    ccf
    add b
    nop
    cp a
    rrca
    ld [hl], $3f
    ld b, c
    ld a, a
    ld b, c
    ld a, [hl]
    rst $38
    add a
    ld hl, sp-$7a
    ld sp, hl
    adc a
    pop af
    adc [hl]
    pop af
    cp $ff
    ldh a, [$ef]
    sbc b
    cp a
    ret z

    ld a, a
    xor a
    nop
    rrca
    db $10
    rra
    ld hl, $ff3f
    add hl, sp
    ccf
    ld b, [hl]
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    cp $23
    inc a
    ccf
    inc a
    rra
    ld [de], a
    rra
    cp a
    ld bc, $0706
    ld [$160f], sp
    rra
    rst $38
    ld de, $201f
    ccf
    jr nz, jr_005_76ca

    jr nz, @+$41

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    sbc $20
    ccf
    inc l
    rra
    ld [de], a
    rra
    cp a
    inc bc
    dec b
    ld b, $37
    inc [hl]
    ld c, a
    ld a, l
    rst $38
    ld b, a
    ld a, l
    ld b, [hl]
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    rst $38
    ld b, d
    ld a, a
    ld hl, $213f
    ccf

jr_005_76b5:
    ld de, $fe1f
    db $10
    rra
    rrca
    ld [$0407], sp
    inc bc
    add d
    nop
    ret nz

    db $fd
    jr nc, jr_005_76b5

    ld [$04f8], sp
    db $fc
    inc b

jr_005_76ca:
    rst $38
    ld a, [$7606]
    adc $fe
    adc d
    db $76
    adc $fe
    cp $02
    db $fc
    inc b
    xor $1a
    cp $82
    nop
    ldh [$f7], a
    jr @-$06

    add h
    db $fc
    inc b
    ld_long a, $ff06
    or [hl]
    ld l, [hl]
    cp $4a
    or [hl]
    ld l, [hl]
    cp $02
    cp $fa
    ld b, $fc
    add h
    db $ec
    sbc h
    db $fc
    add b
    nop
    cp a
    ldh [$98], a
    ld hl, sp+$44
    db $fc
    ld a, h
    add h
    rst $38
    ld a, [$da06]
    ld [hl], $fe
    ld h, $da
    ld [hl], $fe
    cp $02
    ld a, [$f486]

jr_005_7710:
    ld c, h
    ld hl, sp-$7e
    nop
    ldh [rIE], a
    jr jr_005_7710

    inc d
    db $fc
    db $f4
    inc c
    ld_long a, $ff06
    xor $9a
    cp $12
    xor $9a
    cp $02
    cp $fa
    ld b, $ff
    dec b
    db $ed
    dec de
    cp $80
    nop
    cp l
    ldh [rNR23], a
    ld hl, sp+$14
    db $fc
    inc b
    rst $38
    ld a, [$ee06]
    sbc d
    cp $12
    xor $9a
    cp $fa
    ld b, $fe
    ld b, $ef
    add hl, de
    rst $38
    xor e
    nop
    add b
    ldh [rNR10], a
    ldh a, [rIE]
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    add h
    db $fc
    rst $38
    add d
    cp $42
    cp $42
    cp $7e
    add d
    cp $fe
    ld [bc], a
    ld a, [$6c06]
    call c, $bff8
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$38]
    ld hl, sp-$01
    ld c, b
    ld hl, sp-$7c
    db $fc
    add h
    db $fc
    ld b, h
    db $fc
    rst $38
    ld b, d
    cp $42
    cp $42
    cp $42
    cp $de
    add h
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$bf]
    jp $ff7e


    add c
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc $81
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    add d
    nop
    rlca
    rst $38
    dec bc
    inc c
    rrca
    ld [$7c7b], sp
    add [hl]
    rst $38
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a

jr_005_77be:
    ld b, b
    ld a, a
    cp $20
    ccf
    dec de
    inc e
    ld b, $07
    ld bc, $07bf
    dec de
    inc e
    cpl
    jr nc, jr_005_77be

    ldh a, [rIE]
    rst $18
    jr c, @-$09

    ld c, $f7
    rrca
    ret c

    ccf
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    cp $b0
    ld l, a
    cp a
    ld [hl], b
    db $db
    inc a
    rst $38
    add b
    nop
    adc e
    nop
    rrca
    ccf
    jr nc, @+$01

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    pop hl
    sbc [hl]
    rst $08
    cp a
    ld [$b7f7], a
    rst $00
    inc bc
    nop
    add d
    nop
    dec c
    rst $38
    rra
    ld [de], a
    ld a, a
    ld [hl], b
    push af
    sbc d
    ld e, b
    rst $28
    rst $38
    rst $38
    ccf
    call c, $bf63
    ret nz

    rst $38
    add b
    cp $ff
    add b
    cp a
    ret nz

    rst $28
    ldh a, [rIE]
    nop
    cp a
    ld a, a
    rst $38
    add b
    pop bc
    cp [hl]
    pop bc
    cp [hl]
    rst $38
    pop bc
    cp [hl]
    pop bc
    cp [hl]
    pop de
    cp [hl]
    pop de
    xor [hl]
    rst $18
    ret nz

    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp a
    cp $fd
    inc bc
    ld d, e
    rst $28
    ld [hl], e
    rst $08
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_005_784f:
    inc bc
    rst $38
    add e
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    xor a
    nop
    jr jr_005_784f

    db $f4
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    cp $2a
    cp $2a
    rst $38
    ld bc, $dbff
    dec h
    rst $38
    add hl, de
    rst $38
    ld bc, $01ff
    cp $fd
    inc bc
    cp $02
    or a
    call $adff
    nop
    inc bc
    ld b, $05
    ld b, $ff
    dec b
    ld b, $0b
    inc c
    rrca
    ld [$1817], sp
    rst $10
    db $10
    rra
    db $10
    rra
    ld a, a
    ld [hl], b
    cp $b7
    ret c

    rst $38
    adc a
    cp a
    ret z

    ld a, a
    cp a
    or b
    ld e, b
    add sp, -$08
    ld [$04fc], sp
    rst $38
    ld a, [$fa16]
    ld d, $ff
    ld bc, $956b
    rst $38
    rst $38
    dec c
    ld a, a
    add c
    db $fd
    inc bc
    cp $e2
    cp $fa
    ld d, $94
    ld a, h
    inc e
    db $f4
    db $fc
    or a
    ld bc, $0203
    inc bc
    inc b
    rlca
    rst $38
    add hl, bc
    ld c, $0f
    ld [$1817], sp
    db $10
    rra
    rst $18
    rra
    db $10
    rra
    inc de
    inc e
    cpl

jr_005_78d7:
    jr c, jr_005_78d7

    ld a, e
    ld c, l
    ld a, a
    ld b, [hl]
    ld e, e
    ld h, [hl]
    dec a
    cp a
    inc c
    or $fa
    cp $02
    ld_long a, $ff06
    cp $52
    db $fd
    ld d, e
    rst $38
    ld bc, $8b75
    rst $38
    rst $38
    ld [hl], c
    db $fd
    inc bc
    rst $38
    ld bc, $02fe
    cp $fe
    ld c, $f7
    add hl, de
    ld sp, hl
    rst $30
    ld c, $b7
    ld b, $0d
    dec bc
    inc c
    dec bc
    inc c
    rst $38
    rrca
    ld [$1817], sp
    rla
    jr jr_005_7922

    ld e, $ff
    rra
    db $10
    ld de, $171e
    jr jr_005_7959

jr_005_791a:
    jr c, jr_005_791a

    ld a, a
    ld d, h
    ld a, a
    ld d, e
    ld d, [hl]
    ld a, c

jr_005_7922:
    ccf
    cp a
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    ld hl, sp-$58
    db $fc
    and h
    xor $16
    ld a, e
    sbc l
    rst $38
    cp l
    ld l, e
    db $fd
    dec bc
    db $fd
    dec bc
    xor $1e
    ld [$70b0], a
    ret nz

    add b
    nop
    xor a
    nop
    rrca
    rra
    db $10
    rla
    jr @+$01

    rla
    jr jr_005_796d

    db $10
    cpl
    jr nc, @+$35

    inc l
    rst $38

jr_005_7954:
    daa
    jr c, jr_005_7980

    ld [hl], $33

jr_005_7959:
    inc l
    ld h, a
    ld a, b
    cp $b7
    ret c

    rst $38
    adc a
    rst $28
    sbc b
    ld [hl], a
    xor a
    nop
    jr jr_005_7954

    db $f4
    db $fc
    inc b
    rst $38
    db $fc

jr_005_796d:
    inc b
    cp $2a
    cp $2a
    rst $38
    ld bc, $e7ff
    add hl, de
    rst $38
    add hl, de
    rst $20
    add hl, de
    rst $38
    ld bc, $fdfe
    inc bc

jr_005_7980:
    cp $02
    or a
    call $00ff
    rst $38
    rst $28
    sbc b
    ld a, a
    ld [hl], b
    ccf
    jr nz, @+$31

    ld sp, $1fff
    ld [de], a
    rrca
    ld a, [bc]
    rlca

jr_005_7995:
    dec b
    rra
    jr @+$01

    cpl
    jr nc, jr_005_79db

    jr nz, jr_005_79dc

    ld hl, $332d
    and b
    ld e, $00
    rst $38
    ld a, a
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $28
    or [hl]
    add sp, -$41
    reti


    ld a, a
    nop
    add b
    nop
    add b
    nop
    rst $38
    ccf
    jr nz, @+$41

    jr nz, jr_005_79fb

    jr nz, jr_005_79ed

    inc sp
    rst $38
    ld a, l
    db $76

jr_005_79c2:
    xor [hl]
    db $dd
    ei
    add a
    cp $81
    add sp, -$45
    rst $00
    ld a, h
    nop
    add b
    nop
    rst $38
    ccf
    jr nz, jr_005_7a12

    jr nz, @+$41

    jr nz, @+$31

    ld sp, $1fff
    ld [de], a

jr_005_79db:
    rrca

jr_005_79dc:
    ld a, [bc]
    rlca
    dec b
    rra
    jr @+$01

    cpl
    jr nc, jr_005_7a24

    jr nz, jr_005_7a25

    ld hl, $332d
    and b
    ld e, $00

jr_005_79ed:
    add b
    nop
    add b
    nop
    adc e
    nop
    inc bc
    dec c
    ld c, $ff
    scf
    jr c, jr_005_7a57

    ld h, d

jr_005_79fb:
    cp a
    call nz, $8cf7
    add b
    nop
    add b
    nop
    cp a
    inc e
    ld a, $22
    ld a, a
    ld b, c
    ld a, a
    ld b, h
    rst $38
    ld [hl], a
    ld c, h
    ccf
    jr c, jr_005_7a30

    db $10

jr_005_7a12:
    cpl
    jr nc, jr_005_7995

    nop
    adc e
    nop
    ld [hl], b
    ld hl, sp-$78
    rst $38
    db $f4
    adc h
    ld a, h
    ld b, h
    ccf
    inc hl
    ld d, $19

jr_005_7a24:
    rst $38

jr_005_7a25:
    dec bc
    inc c
    rla
    jr jr_005_7a49

    db $10
    cpl
    jr nc, @-$7e

    nop
    add b

jr_005_7a30:
    nop
    xor a
    nop
    ld [hl], b
    cp e
    set 7, l
    adc [hl]
    rst $38
    di
    adc h
    ld a, l
    ld b, d
    ccf
    inc a
    cpl
    jr nc, jr_005_79c2

    nop
    adc e
    nop
    ld [hl], b
    ld hl, sp-$78
    rst $38

jr_005_7a49:
    db $f4
    adc h
    ld a, h
    ld b, h
    ccf
    inc hl
    ld d, $19
    rst $38
    dec bc
    inc c
    rla
    jr @+$21

jr_005_7a57:
    db $10
    cpl
    jr nc, @+$01

    rst $38
    ld bc, $03fd
    cp $02
    db $fc
    inc b
    add sp, -$12
    ld a, [de]
    cp $00
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    ld bc, $03fd
    cp $02
    db $fc
    inc b
    cp $f6
    adc d
    ld a, [$ccb6]
    ld c, h
    add b
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    cp $82
    rst $38
    rst $30
    ld c, l
    ld a, l
    db $db
    and $a6
    ret nz

    ld b, b
    ld [c], a
    ld b, b
    ret nz

    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ldh a, [$ec]
    inc e
    rst $38
    ld a, [$fe06]
    ld c, d
    rst $38
    ld c, c
    rst $38
    ld c, c
    add b
    nop
    add b
    nop
    cp a
    jr c, @+$7e

    ld b, h
    or [hl]
    jp z, $06fe

    rst $38
    cp $02
    cp $4a
    rst $38
    ld c, c
    rst $38
    ld c, c
    add b
    nop
    adc e
    nop
    ld c, $17
    add hl, de
    rst $38
    rra
    ld de, $131d
    cp $e2
    db $fc
    inc b
    rst $38
    cp $02
    cp $4a
    rst $38
    ld c, c
    rst $38
    ld c, c
    add b
    nop
    add b
    nop
    xor a
    nop
    ld c, $fd
    di
    rst $20
    add hl, de
    rst $38
    rst $38
    ld bc, $4afe
    rst $38
    ld c, c
    rst $38
    ld c, c
    add b
    nop
    adc e
    nop
    ld c, $17
    add hl, de
    rst $38
    rra
    ld de, $131d
    cp $e2
    db $fc
    inc b
    rst $38
    cp $02
    cp $4a
    rst $38
    ld sp, $49ff
    rst $38
    rst $28
    sbc b
    rst $38
    ldh a, [rIE]
    and b
    rst $28
    or [hl]
    add sp, -$41
    reti


    ld a, a
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    xor a
    nop
    rlca
    jr jr_005_7b40

    jr nz, jr_005_7b62

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add c
    cp $fe
    add c
    cp $80
    rst $38
    ld a, e
    ld c, h
    ccf
    add b
    nop
    xor a
    nop
    inc bc
    inc c
    rrca
    db $10
    rra
    rst $38
    jr nz, jr_005_7b7f

jr_005_7b40:
    ld b, b
    ld a, a
    ld b, c
    ld a, [hl]
    add c
    cp $fe
    add b
    rst $38
    add c
    rst $38
    or e
    rst $08
    ld a, a
    add b
    nop
    adc e
    nop
    rrca
    jr nc, jr_005_7b94

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add c
    cp $fe
    add c
    cp $c1

jr_005_7b62:
    cp [hl]
    pop af
    sbc a
    ld a, a
    add b
    nop
    xor a
    nop
    rlca
    jr jr_005_7b8c

    jr nz, @+$41

    rst $38
    jr nz, jr_005_7bb1

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    cp $4c
    ld [hl], e
    inc a
    scf
    inc c
    rrca

jr_005_7b7f:
    inc bc
    add b
    nop
    cp a
    rlca
    jr jr_005_7ba5

    jr nz, jr_005_7bc7

    ld b, b
    ld a, a
    rst $38
    ld b, b

jr_005_7b8c:
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add c
    cp $fe

jr_005_7b94:
    add b
    rst $38
    add e
    db $fc
    ld e, e
    ld h, [hl]
    ccf
    add b
    nop
    xor a
    nop
    rrca
    jr nc, jr_005_7be1

    ld b, b
    ld a, a
    rst $38

jr_005_7ba5:
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $81
    cp $40

jr_005_7bb1:
    ld a, a
    ld a, e
    ld c, h
    ccf
    add b
    nop
    xor a
    nop
    rrca
    jr nc, @+$41

    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_005_7bc7:
    cp $40
    ld a, a
    ld d, b
    ld l, a
    add hl, sp
    ld h, $1f
    add b
    nop
    xor a
    nop
    rlca
    jr @+$21

    jr nz, jr_005_7c17

    rst $38
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_005_7be0:
    ld a, a

jr_005_7be1:
    cp $41
    ld a, [hl]
    ld b, b
    ld a, a
    ld h, e
    ld e, h
    ccf
    add b
    nop
    xor a
    nop
    ret nz

    jr nc, jr_005_7be0

    ld [$f7f8], sp
    ld [$04f8], sp
    db $fc
    inc b
    db $fc

jr_005_7bf9:
    ld c, h
    cp $fa
    ld b, $fe
    ld [bc], a
    or h
    call z, $80fc
    nop
    xor a
    nop
    ret nz

    jr nc, jr_005_7bf9

    ld [$fff8], sp
    ld [$fcf8], sp
    inc b
    db $fc
    ld c, h
    ld a, [hl-]

jr_005_7c13:
    add $fe
    rst $18
    inc hl

jr_005_7c17:
    rst $38
    dec h
    xor $de
    ldh a, [$80]
    nop
    adc e
    nop
    ret nz

    jr nc, jr_005_7c13

    rst $38
    ld [$08f8], sp
    ld hl, sp-$04
    inc b
    db $fc

jr_005_7c2b:
    ld c, h
    cp $fa
    ld b, $be
    jp nz, $2df7

    rst $38
    add b
    nop
    xor a
    nop
    ret nz

    jr nc, jr_005_7c2b

    ld [$fff8], sp
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $7e
    add d
    cp $fe
    ld h, $fd
    jp $21ff


    cp $80
    nop
    cp a
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$09
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld c, h
    cp $fa
    ld b, $7e
    add d
    or h
    call z, $80fc
    nop
    xor a
    nop
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$fd]
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    cp $fc
    ld c, h
    ld a, [$be06]
    jp nz, $80fc

    nop
    xor a
    nop
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rIE]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld a, [hl]

jr_005_7c92:
    add d
    cp $fe
    ld h, $7d
    add e
    rst $18
    ld h, c
    cp $80
    nop
    xor a
    nop
    ret nz

    jr nc, jr_005_7c92

    ld [$fdf8], sp
    ld [$04f8], sp
    db $fc
    inc b

jr_005_7caa:
    db $fc
    inc b
    cp $fc
    ld c, h
    ld a, [$be06]
    jp nz, $82fc

    nop
    inc bc
    rst $38
    inc c
    rrca
    db $10
    rra
    ld hl, $413e
    ld a, [hl]
    rst $38
    ld b, c
    ld a, [hl]
    add b
    rst $38
    add b
    rst $38

jr_005_7cc7:
    add b
    rst $38
    cp $83
    db $fc
    jp hl


    or [hl]
    rst $38
    sbc c
    ld h, [hl]
    add d
    nop
    ret nz

    rst $38
    jr nc, jr_005_7cc7

    ld hl, sp+$08
    or $4e
    cp $02
    rst $38
    inc a
    call nz, $3ace
    or $3a
    db $fc
    ld c, h
    add sp, -$10
    jr nc, jr_005_7caa

    nop
    add b
    nop
    cp a
    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    rst $38
    inc b
    db $fc
    ld [bc], a
    cp $7e
    add d
    cp $26
    cp $fd
    inc bc
    rst $38
    pop bc
    ld a, [c]
    ld a, $cc
    add b
    nop
    xor a
    nop
    ret nz

    jr nc, @-$0e

    ld [$f7f8], sp
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    cp $fa
    ld b, $fe
    ld [bc], a
    or h
    call z, $00fc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0400
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    jr jr_005_7dfe

    jr jr_005_7e00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_7df1

jr_005_7df1:
    ld [$0010], sp
    nop
    jr jr_005_7e0f

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_7dfe:
    nop
    nop

jr_005_7e00:
    db $10
    db $10
    jr nz, jr_005_7e0c

    ld b, $14
    ld bc, $1006
    db $10
    db $10
    db $10

jr_005_7e0c:
    jr @+$0c

    nop

jr_005_7e0f:
    ld b, $10
    db $10
    db $10
    jr nz, jr_005_7e1d

    inc d
    ld bc, $0800
    jr nz, jr_005_7e25

    jr @+$0c

jr_005_7e1d:
    jr jr_005_7e1f

jr_005_7e1f:
    nop
    inc c
    inc c
    jr nz, jr_005_7e2a

    inc b

jr_005_7e25:
    inc d
    ld bc, $0c04
    inc c

jr_005_7e2a:
    inc c
    inc c
    ld [de], a
    ld [$0400], sp
    inc c
    inc c
    inc c
    jr nz, jr_005_7e3b

    inc d
    ld bc, $0600
    jr jr_005_7e43

jr_005_7e3b:
    ld [de], a
    ld [$0012], sp
    nop
    ld [$2008], sp

jr_005_7e43:
    inc b
    inc bc
    inc d
    ld bc, $0803
    ld [$0808], sp
    inc c
    dec b
    nop
    inc bc
    ld [$0808], sp
    jr nz, jr_005_7e59

    inc d
    ld bc, $0400

jr_005_7e59:
    db $10
    dec b
    inc c
    dec b
    inc c
    nop
    nop
    inc b
    inc b
    jr nz, jr_005_7e66

    ld [bc], a
    inc d

jr_005_7e66:
    ld bc, $0402
    inc b
    inc b
    inc b
    ld b, $03
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    jr nz, @+$04

    inc d
    ld bc, $0200
    ld [$0603], sp
    inc bc
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    jr nz, @+$03

    ld bc, $0114
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_005_7e96

    inc d

jr_005_7e96:
    ld bc, $0100
    inc b
    ld bc, $0103
    inc bc
    nop
    nop
    inc d
    inc d
    jr nz, jr_005_7eae

    rlca
    inc d
    ld bc, $1407
    inc d
    inc d
    inc d
    add hl, de
    inc c

jr_005_7eae:
    nop
    rlca
    inc d
    inc d
    inc d
    jr nz, jr_005_7ebf

    inc d
    ld bc, $0a00
    jr z, @+$0e

    add hl, de
    inc c
    add hl, de
    nop

jr_005_7ebf:
    nop
    jr @+$1a

    jr nz, jr_005_7ed0

    add hl, bc
    inc d
    ld bc, $1809
    jr @+$1a

    jr jr_005_7ef1

    stop
    add hl, bc

jr_005_7ed0:
    jr jr_005_7eea

    jr @+$22

    inc c
    inc d
    ld bc, $0c00
    jr nc, jr_005_7eeb

    inc h
    db $10
    inc h
    nop
    nop
    inc c
    inc c
    jr nz, jr_005_7eec

    inc b
    inc d
    ld bc, $0c04
    inc c

jr_005_7eea:
    inc c

jr_005_7eeb:
    inc c

jr_005_7eec:
    inc d
    ld b, $00
    inc b
    inc c

jr_005_7ef1:
    inc c
    inc c
    jr nz, jr_005_7efd

    inc d
    ld bc, $0800
    inc e
    ld a, [bc]
    inc d
    ld a, [bc]

jr_005_7efd:
    inc d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$20
    ld a, [$ecff]
    ld a, [$f0f0]
    ldh a, [$f0]
    or $e8
    nop
    ld a, [$f0f0]
    ldh a, [$f8]
    ldh [rIE], a
    db $ec
    nop
    ldh [$f8], a
    add sp, -$0a
    add sp, -$0a
    nop
    nop
    db $f4
    db $f4
    ld a, [$fce0]
    rst $38
    db $ec
    db $fc
    db $f4
    db $f4
    db $f4
    db $f4
    ld hl, sp-$12
    nop
    db $fc
    db $f4
    db $f4
    db $f4
    ld_long a, $ffe0
    db $ec
    nop
    add sp, -$06
    xor $f8
    xor $f8
    nop
    nop
    ld hl, sp-$08
    db $fc
    ldh [$fd], a
    rst $38
    db $ec
    db $fd
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    db $f4
    nop
    db $fd
    ld hl, sp-$08
    ld hl, sp-$04
    ldh [rIE], a
    db $ec
    nop
    ldh a, [$fc]
    db $f4
    ei
    db $f4
    ei
    nop
    nop
    db $fc
    db $fc
    cp $e0
    cp $ff
    db $ec
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fd
    ld a, [$fe00]
    db $fc
    db $fc
    db $fc
    cp $e0
    rst $38
    db $ec
    nop
    ld hl, sp-$02
    ld a, [$fafd]
    db $fd
    nop
    nop
    cp $fe
    rst $38
    ldh [rIE], a
    rst $38
    db $ec
    rst $38
    cp $fe
    cp $fe
    rst $38
    db $fd
    nop
    rst $38
    cp $fe
    cp $ff
    ldh [rIE], a
    db $ec
    nop
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    nop
    db $ec
    db $ec
    or $e0
    ld sp, hl
    rst $38
    db $ec
    ld sp, hl
    db $ec
    db $ec
    db $ec
    db $ec
    db $f4
    rst $20
    nop
    ld sp, hl
    db $ec
    db $ec
    db $ec
    or $e0
    rst $38
    db $ec
    nop
    ret c

    or $e7
    db $f4
    rst $20
    db $f4
    nop
    nop
    add sp, -$18
    db $f4
    ldh [$f7], a
    rst $38
    db $ec
    rst $30
    add sp, -$18
    add sp, -$18
    ldh a, [$dc]
    nop
    rst $30
    add sp, -$18
    add sp, -$0c
    ldh [rIE], a
    db $ec
    nop
    ret nc

    db $f4
    call c, $dcf0
    ldh a, [rP1]
    nop
    db $f4
    db $f4
    ld hl, sp-$20
    db $fc
    rst $38
    db $ec
    db $fc
    db $f4
    db $f4
    db $f4
    db $f4
    ld a, [$00ec]
    db $fc
    db $f4
    db $f4
    db $f4
    ld hl, sp-$20
    rst $38
    db $ec
    nop
    db $e4
    ld hl, sp-$14

Call_005_7ffb:
    or $ec
    or $00
    nop
