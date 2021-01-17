; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    nop
    add h
    sub d
    halt
    adc b
    ld [hl], $7a
    nop
    sub l
    inc c
    ld a, h
    nop
    adc b
    sub l
    ld a, h
    nop
    sub b
    ld c, c
    ld c, [hl]
    nop
    sub d
    ld e, h
    ld d, b
    nop
    sub [hl]
    ld a, [hl+]
    ld d, d
    nop
    sub b
    ld [hl-], a
    ld d, h
    nop
    sub d
    cp l
    ld d, l
    nop
    sub b
    call nc, $0057
    sub [hl]
    adc h
    ld e, c

Jump_00b_402c:
    nop
    sub b
    inc b
    ld e, e
    nop
    sub [hl]
    rst $30
    ld e, h
    nop
    sub b
    add h
    ld e, [hl]
    nop
    sub d
    adc e
    ld h, b
    nop
    sub [hl]
    call nz, $0062
    sub b
    inc bc
    ld h, l
    nop
    sub d
    rst $30
    ld h, [hl]
    nop
    sub h
    ld a, [$0068]
    sub [hl]
    call $006a
    sub b
    push af
    ld l, h
    nop
    sub d
    rst $18
    ld l, [hl]
    nop
    sub b
    ld b, $71
    nop
    sub d
    ld hl, $0073
    sub d
    cp $74
    nop
    sub b
    ld e, a
    ld b, d
    nop
    sub d
    add d
    ld b, h
    nop
    sub [hl]
    ld e, a
    ld b, [hl]
    nop
    sub b
    ld a, $48
    nop
    sub d
    ld c, [hl]
    ld c, d
    nop
    sub [hl]
    ld l, l
    ld c, h
    nop
    sub [hl]
    add b
    ld b, b
    cp a
    rst $38
    or c
    ret nz

    or a
    ld [c], a
    rst $30
    and $ff
    or c
    ret nz

    or c
    ret nz

    or e
    rst $00
    or h
    call nz, $fdff
    db $fc
    add l
    db $fd
    sbc h
    db $e4
    sbc h
    db $e4
    rst $38
    sbc h
    db $e4
    cp l
    db $e4
    db $fd
    push hl
    sbc h
    db $e4
    cp a
    rst $38
    db $fd
    ld b, e
    push de
    ld l, a
    db $dd
    ld l, a
    ei
    pop de
    ld l, a
    pop de
    ld l, a
    rst $38
    pop hl
    rra
    rst $38
    push hl
    sbc a
    db $ed
    sbc a
    pop hl
    rra
    pop hl
    rra
    rst $38
    pop hl
    rra

Jump_00b_40bf:
    push hl
    sbc a
    db $ed
    sbc a
    pop hl
    rra
    cp a
    rst $38
    jp c, $a5a0

    ld a, [$faa5]
    db $fc
    and l
    ld_long a, $fff8
    cp $ff
    rst $38
    jp nc, $d2fd

    db $fd
    jp nc, $d2fd

    db $fd
    rst $38
    jp nc, $d2fd

    db $fd
    jp nc, $d2fd

    db $fd
    cp a
    rst $38
    sbc d
    ldh [$a9], a
    cp $ad
    or $fe
    or l
    cp $a9
    cp $a5
    ld a, [$afff]
    rst $38
    nop
    add c
    nop
    add c
    nop
    rst $38
    add c
    nop
    ld a, [hl]
    add c
    inc a
    jp $ffc7


    rst $38
    jp $c300


    nop
    jp $c300


    nop
    rst $38
    jp $c300


    nop
    jp $c300


    nop
    xor a
    rst $38
    nop
    add c
    nop
    add c
    nop
    cp $81
    ld bc, $0180
    add c
    nop
    rst $38
    cp a
    rst $38
    rla
    nop
    add sp, $17
    add sp, $17
    db $fc
    add sp, $17
    jr nz, @+$01

    ld l, a
    rst $38
    rst $38
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    rst $38
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    cp a
    rst $38
    rla
    nop
    add sp, -$69
    add sp, $57
    cp $68
    rst $10
    xor b
    rst $10
    add sp, $17
    rst $38
    or a
    rst $38
    or e
    ld c, l
    rst $38
    ld c, l
    rst $38
    ret nz

    ld c, l
    rst $38
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    and c
    ld e, a
    ld e, l
    rst $38
    ld e, l
    rst $28
    db $fc
    ld l, l
    rst $38
    ld e, l
    rst $38

jr_00b_4181:
    ld e, l
    rst $38
    cp a
    rst $38
    nop
    add b
    nop
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    nop
    rst $38
    jr jr_00b_4181

    jr @+$01

    rst $08
    add b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    call c, Call_00b_55ff
    rst $38
    ld d, l
    rst $38
    cp a
    rst $38
    inc bc
    ld bc, $0103
    rst $38
    ld bc, $ffdf
    ld bc, $19ff
    rst $28
    add hl, de
    rst $38
    rst $08
    inc bc
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    call c, Call_00b_55ff
    rst $38
    ld d, l
    rst $38
    rst $38
    and d
    rst $38
    ld a, d
    sbc a
    sbc d
    rlca
    adc c
    rlca
    rst $38
    adc c
    rlca
    sbc c
    rlca
    ld [hl], d
    adc a
    ld h, c
    sbc a
    rst $38
    ld b, a
    cp $a8
    cp $7c
    cp $d2
    db $fc
    rst $38
    sbc b
    cp $bc
    rst $38
    db $d3
    rst $38
    ld h, b
    rst $38
    rst $38
    cpl
    rst $38
    dec sp
    db $fc
    inc [hl]
    ld hl, sp+$58
    ldh a, [rIE]
    ld l, c
    ldh a, [$a7]
    ld hl, sp-$02
    ld sp, hl
    add sp, -$61
    rst $38
    sub [hl]
    rrca
    inc de
    rrca
    ld h, e
    rra
    push hl
    rra
    rst $38
    jp nz, $073f

    cp $54
    rst $38
    ld_long a, $fffc
    cp h
    rst $38
    ld l, e
    or $32
    ld a, a
    db $dd
    ccf
    rst $38
    adc h
    ld a, a
    inc d
    rst $38
    dec bc
    cp $1d
    cp $ff
    inc [hl]
    ei
    ld e, d
    push af
    or l
    ld [$f76e], a
    rst $38
    db $dd
    cp e
    ld a, d
    adc l
    or l
    ld a, [de]
    ld a, d
    dec d
    rst $38
    srl h
    push de
    ld a, $8d
    ld a, [hl]
    db $dd
    cp $ff
    cp $f3
    ld d, e
    rst $38
    rrca
    rst $38
    ld c, d
    cp a
    rst $38
    db $76
    rst $18
    ld c, d
    rst $38
    and l
    rst $18
    ld c, e
    rst $38
    rst $38
    and l
    rst $38
    ld e, e
    rst $38
    sub [hl]
    rst $38
    ld h, a
    cp $80
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    nop
    inc a
    nop
    inc a
    nop
    cp h
    nop
    rst $38
    sbc c
    nop
    sbc c
    nop
    add c
    nop
    add c
    nop
    rst $38
    jp $c300


    nop
    rst $30
    nop
    rst $38
    nop
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
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    and b
    ret nz

    rst $18
    add b
    rst $38
    or b
    adc a
    and [hl]
    sbc e
    and [hl]
    sbc a
    and b
    sbc a
    cp a
    rst $38
    ld bc, $04ff
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    rst $38
    and b
    sbc a
    and [hl]
    sbc e
    and [hl]
    sbc a
    and b
    sbc a
    rst $38
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    rst $38
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    and b
    sbc a
    rst $38
    and [hl]
    sbc e
    and [hl]
    sbc a
    and b
    sbc a
    ret nc

    adc a
    ret nc

    xor a
    ret nz

    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    rst $38
    ei
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ei
    rst $38
    rst $38
    ccf
    rst $38
    ld b, b
    rst $38
    and b
    ret nz

    rst $18
    add b
    rst $38
    or b
    adc a
    and [hl]
    sbc e
    and [hl]
    sbc a
    and b
    sbc a
    rst $38
    rra
    rst $38
    ccf
    ldh [$30], a
    rst $28
    inc a
    rst $20
    rst $38
    inc a
    rst $28
    jr nz, @+$01

    rra
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    cp $03
    ld [bc], a
    rst $38
    ld a, [de]
    rst $28
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    inc a
    ei
    inc a
    ei
    inc a
    ei
    rst $38
    inc a
    ei
    inc a
    ei
    inc a
    jp $ff00


    cp a
    rst $38
    xor [hl]
    rra
    push af
    ld c, $e5
    ld e, $ff
    adc h
    ld a, a
    ld [$b8ff], sp
    rst $38
    ldh a, [rIE]
    rst $38
    ld d, b
    rst $38
    ld c, b
    cp a
    xor b
    rra
    ld l, b
    rra
    rst $38
    ld l, b
    rra
    ret z

    ccf
    ld d, b
    cp a
    db $10
    rst $38
    cp a
    rst $38
    ld a, c
    ldh a, [$b7]
    ld h, b
    xor a
    ld h, b
    rst $38
    ld a, [hl-]
    push hl
    inc d
    ei
    db $10
    rst $38
    rrca
    rst $38
    rst $38
    dec c
    rst $38
    ld a, [bc]
    db $fd
    ld a, [bc]
    ld sp, hl
    ld [de], a
    ld sp, hl
    rst $38
    dec d
    ei
    dec d
    ei
    ld de, $19ff
    rst $38
    rst $38
    ldh [rIE], a
    sbc b
    rst $38
    rst $08
    cp a
    xor h
    sbc [hl]
    rst $18
    xor h
    sbc b
    cp b
    ret z

    or b
    sub b
    ldh a, [rIE]
    ld c, $ff
    dec de
    rst $30
    ld sp, hl
    rst $30
    srl a
    rst $38
    daa
    rra
    ld [hl-], a
    rrca
    ld [de], a
    rrca
    add hl, de
    rlca
    rst $38
    ld a, b
    rst $38
    and [hl]
    rst $18
    ld c, c
    add a
    add l
    inc bc
    rst $38
    adc h
    inc bc
    inc e
    add e
    ld de, $e0ef
    ld e, $ff
    rrca
    rst $38
    inc de
    rst $38
    add hl, hl
    rst $30
    add hl, hl
    rst $30
    rst $38
    jp hl


    rst $30
    ei
    rst $30
    sbc e
    rst $38
    sbc [hl]
    ld a, a
    rst $38
    jr nc, @+$01

    inc l
    di
    inc l
    di
    dec l
    di
    rst $38
    add hl, hl
    rst $30
    add hl, hl
    rst $30
    dec de
    rst $30
    inc de
    rst $38
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    ld de, $10ff
    rst $38
    db $fc
    ret nc

    ccf
    db $10
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    or b
    rst $18
    xor b
    rst $18
    rst $38
    add sp, -$61
    ret z

    cp a
    ret z

    cp a
    ret z

    cp a
    rst $38
    ret c

    rst $38
    db $e4
    rst $38
    ld d, d
    rst $28
    ld [c], a
    rst $18
    rst $38
    add e
    cp $82
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    add b
    ldh a, [$a8]
    ldh a, [$ec]
    ldh a, [$a7]
    ret c

    rst $38
    sub e
    db $fc
    adc b
    rst $38
    ld l, l
    rst $38
    inc sp
    rst $38
    rst $38
    sub [hl]
    cpl
    ld h, [hl]
    rra
    db $ed
    rra
    srl l
    rst $38
    ld d, $f9
    ld l, h
    di
    ret c

    rst $20
    ccf
    rst $38
    rst $38
    add e
    nop
    cp $01
    ld a, h
    add e
    ret nz

    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld e, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    dec [hl]
    ei
    ret


    rst $30
    rst $38
    ld e, c
    rst $20
    ld d, e
    rst $28
    inc sp
    rst $38
    ld e, $ff
    nop
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cp $01
    rst $38
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

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
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    ld l, h
    sbc a
    and h
    rra
    and h
    rra
    rst $38
    call z, $083f
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    dec d
    ei
    ld a, [hl+]
    pop af
    inc [hl]
    db $e3
    rst $38
    inc [hl]
    db $e3
    dec a
    db $e3
    ld sp, $23ef
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
    ret nc

    rst $38
    nop
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    sbc a
    rst $38
    and b
    rst $38
    rst $38
    and d
    rst $38
    and d
    rst $38
    and [hl]
    rst $38
    and b
    rst $38
    rst $38
    and b
    rst $38
    and d
    rst $38
    and d
    rst $38
    and [hl]
    rst $38
    db $fc
    and c
    rst $38
    cp a
    rst $38
    jp nc, $8fff

    rst $38
    ld a, a
    rst $38
    add e
    rst $38
    rst $38
    sbc l
    rst $38
    and e
    rst $38
    and e
    rst $38
    and a
    rst $38
    rst $08
    sbc a
    rst $38
    db $eb
    rst $38
    adc e
    rst $38
    ldh a, [$fb]
    rst $38
    add a
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    sbc a
    rst $38
    and b
    rst $38
    rst $38
    and h
    rst $38
    xor l
    rst $38
    and b
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    sub $ff
    ret nc

    rst $38
    db $fc
    sbc $ff
    ldh [rIE], a
    cp $ff
    cp a
    rst $38
    rlca
    rst $38
    ei
    rst $38
    ld b, $ff
    rst $38
    sub [hl]
    rst $38
    or a
    rst $38
    ld c, $ff
    cp $ff
    cp a
    rst $38
    inc bc
    rst $38
    ld a, l
    rst $38
    add e
    rst $38
    rst $38
    adc a
    rst $38
    or e
    rst $38
    add a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld hl, sp-$01
    di
    rst $38
    inc b
    rst $38
    rst $38
    inc d
    rst $38
    db $f4
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    sub h
    rst $38
    ld [hl], h
    rst $38
    rst $38
    ld [hl], h
    rst $38
    sub h
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    add b
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    jr c, @+$01

    jr nc, @+$01

    inc sp
    rst $38
    inc sp
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [$03]
    rst $38
    rlca
    rst $38
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [$03]
    rst $38
    rlca
    rst $38
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ccf
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [$f0]
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    xor e
    rst $38
    sbc e
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    db $fc
    rlca
    rst $38
    xor e
    rst $38
    sbc e
    rst $38
    ldh a, [rTAC]
    rst $38
    rra
    rst $38
    rst $38
    db $e4
    rst $38
    db $ed
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    rst $38
    sbc a
    rst $38
    or d
    rst $38
    sub d
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    sbc a
    rst $20
    sbc e
    rst $20
    sbc c
    rst $20
    sbc d
    push hl
    rst $38
    sbc d
    push hl
    sbc h
    rst $20
    sbc [hl]
    rst $20
    sbc a
    rst $20
    rst $38
    sbc a
    rst $20
    rra
    rst $20
    ccf
    rst $00
    rst $38
    rlca
    db $e3
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
    sbc b
    add a
    sbc b
    add a
    sbc b
    add a
    sbc b
    add a
    rst $38
    sbc b
    add a
    sbc b
    add a
    sbc b
    add a
    sbc b
    add a
    rst $38
    sbc b
    add a
    jr jr_00b_46ab

    jr c, jr_00b_46ad

    ld hl, sp+$07
    rst $38
    ld hl, sp+$07

jr_00b_46ab:
    ldh a, [rIF]

jr_00b_46ad:
    nop
    rst $38
    ld bc, $8dff
    rst $38
    nop
    rst $38
    nop
    call c, $00ff
    rst $38
    nop
    rst $38
    rst $38
    ld a, [de]
    pop hl
    adc l
    ldh a, [$c6]
    ld hl, sp-$1d
    ld a, h
    rst $38
    pop af
    ld a, $78
    sbc a
    inc a
    rst $08
    sbc [hl]
    rst $20
    rst $38
    xor h
    db $db
    db $fc
    adc e
    ld h, l
    sbc a
    ld h, a
    sbc a
    rst $38
    ld h, a
    sbc a
    and a

jr_00b_46db:
    rst $18
    adc h
    rst $38
    db $db
    db $fc
    rst $38
    sbc b
    rlca
    ld sp, $630f
    rra
    rst $00
    ld a, $ff
    adc a
    ld a, h
    ld e, $f9
    inc a
    di
    ld a, c
    rst $20
    rst $38
    di
    rst $08
    and $9f
    call z, $993f
    ld a, a
    rst $38
    inc sp
    rst $38
    ld h, [hl]
    rst $38
    call z, $99ff
    rst $38
    rst $38
    ld bc, $faff
    rlca
    call $333e
    db $fc
    rst $38
    ldh [$1f], a
    call $23fe
    rst $18
    add h
    ld a, e
    rst $38
    sbc a
    ldh [$36], a
    rst $38
    add hl, bc
    rlca
    add $3f
    rst $38
    ld a, c
    add [hl]
    adc a
    ld [hl], b
    ld [hl], h
    adc b
    ld hl, $ffde
    jr nc, @+$01

    or c
    ret nz

    ld h, c
    sbc [hl]
    call z, $ff33
    ld a, a
    ldh a, [$03]
    inc e
    ldh a, [rIF]
    add d
    ld a, l
    rst $38
    cp [hl]
    pop bc
    ld l, h
    rst $38
    adc b
    ld [hl], b
    rra
    ldh [$f7], a
    rst $00
    jr c, jr_00b_475f

    rst $20
    jr jr_00b_46db

    ld l, [hl]
    rst $38
    ld [hl-], a
    call $bf40
    add hl, bc
    or $24
    rst $38
    rst $38
    ld [hl], c
    rst $38
    adc $ff
    dec d
    rst $38
    jp nz, $ffff

    ld a, [bc]

jr_00b_475f:
    push af
    ld b, e
    rst $38
    jr @+$01

    or a
    db $fd
    rst $38
    ld d, b
    rst $38
    inc l
    rst $38
    ld d, d
    rst $38
    adc c
    rst $38
    rst $38
    dec d
    db $e3
    dec d
    db $e3
    dec d
    db $e3
    dec d
    db $e3
    rst $38
    dec d
    db $e3
    dec d
    db $e3
    dec d
    db $e3
    dec d
    db $e3
    cp l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec [hl]
    jp $03f5


    push af
    inc bc
    push hl
    inc bc
    cp $05
    inc bc
    dec b
    inc bc
    ei
    rlca
    rst $38
    rst $38
    ld sp, hl
    rst $20
    ld a, c
    rst $20
    add hl, sp
    rst $20
    ld e, c
    and a
    rst $38
    ld e, c
    and a
    sbc c
    rst $20
    reti


    rst $20
    ld sp, hl
    rst $20
    and b
    rst $38
    nop
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    reti


    rst $20
    cp c
    rst $00
    ld [hl], c
    adc a
    pop hl
    rra
    db $fc
    jp $033f


    rst $38
    rrca
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    rst $38
    xor a
    rra
    rst $10
    rrca
    ld l, e
    add a
    dec [hl]
    jp $cfff


    di
    ld h, a
    ld sp, hl
    inc sp
    db $fc
    sbc c
    cp $ff
    call z, $e6ff
    rst $38
    ld [hl], e
    rst $38
    add hl, sp
    rst $38
    sub l
    rst $38
    cp $fc
    ld hl, sp-$01
    ld sp, hl
    ldh a, [$f3]
    ldh [$e6], a
    pop bc
    call z, $ff83
    inc a
    rst $38
    ld c, l
    cp $b5
    adc $a5
    sbc $fc
    or l
    adc $a5
    sbc $cc
    rst $38
    rst $38
    xor h
    rst $38
    ld e, e
    rst $38
    rst $30
    rst $38
    ld a, l
    rst $38
    rst $38
    set 7, a
    or l
    rst $38
    cp $ff
    db $db
    rst $38
    rst $38
    xor $ff
    ld e, l
    rst $38
    rst $30
    rst $38
    ld a, l
    rst $38
    ldh a, [$df]
    rst $38
    cp e
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    or a
    nop
    ld [bc], a
    nop
    ld bc, $0011
    rst $38
    ld b, h
    jr c, jr_00b_4860

    call z, Call_00b_6b84
    ld [hl+], a
    db $fd
    adc l
    nop
    adc b
    nop
    call nz, $02ff
    db $e4
    ld e, c
    and [hl]
    ld a, [hl+]
    push de
    ld [hl-], a
    db $dd

jr_00b_4860:
    add b
    nop
    adc a
    nop
    inc l
    rra
    ld h, l
    ei
    add b
    nop
    adc a
    nop
    cp l
    ld a, [hl]
    ld d, e
    rst $28
    rst $38
    call c, $adbf
    di
    ld c, d
    rst $20
    add [hl]
    reti


    rst $38
    ld e, b
    or e
    and a
    ld [hl], d
    ld l, c
    or $8d
    or $ff
    push de
    rst $38
    ld [hl], $fd
    jp z, $ec1d

    add a
    rst $38
    ld [de], a
    rst $20
    and a
    ei
    add hl, de
    rst $38
    ld l, l
    rst $18
    rst $38
    ld d, l
    cp [hl]
    cp a
    ld a, [hl]
    ld l, d
    rst $38
    ld_long $fff7, a
    and a
    ei
    scf
    ei
    ld e, d
    rst $38
    sbc a
    rst $38
    rst $38
    ld d, d
    rst $28
    ld l, [hl]
    rst $30
    ld l, d
    rst $30
    or e
    rst $38
    rst $38
    ld [hl], d
    cp a
    or h
    ld a, [hl]
    ld c, [hl]
    db $fc
    rst $30
    db $fc
    rst $38
    sbc $fc
    dec sp
    or $cd
    dec sp
    xor c
    rst $18
    rst $38
    rla
    rst $28

jr_00b_48c4:
    inc h
    db $fd
    jr jr_00b_48c4

    db $76
    call z, Call_00b_5aff
    and $6f
    ld a, [c]
    ld h, l
    ei
    or e
    db $fd
    rst $38
    ld l, l
    cp a
    or a
    ld l, a
    ld c, [hl]
    push af
    db $ec
    db $fc
    rst $38
    ld [hl], l
    cp [hl]
    or $7f
    cp d
    rst $18
    push af
    rst $18
    rst $38
    ld [hl], e
    rst $18
    ld hl, $e37f
    ccf
    adc $3f
    rst $38
    bit 7, a
    or [hl]
    ld a, e
    cp e
    db $76
    dec hl
    or $ff
    ld h, $ff
    or l
    rst $28
    xor $ff
    inc a
    rst $38
    rst $38
    ld a, $1f
    ld l, l
    inc sp
    ld d, d
    ld l, a
    ld [c], a
    ld e, l
    rst $38
    call nc, $b5bb
    ld a, [$f6f9]
    sbc l
    sub [hl]
    rst $38
    dec [hl]
    ld a, $76
    ld a, a
    ld a, d
    ld e, a
    dec [hl]
    rst $18
    rst $38
    rst $30
    cp a
    xor l
    rst $38
    and c
    rst $38
    call c, $fff3
    ld d, l
    cp [hl]
    sbc a
    ld a, [hl]
    ld [hl-], a
    rst $38
    ld c, d
    rst $30
    rst $38
    db $d3
    rst $28
    ld d, l
    rst $28
    dec h
    rst $18
    xor e
    db $dd
    rst $38
    cp a
    ld a, a
    ld h, a
    ret nz

    add b
    ret nz

    sub c
    add b
    rst $38
    db $eb
    sub h
    or h
    set 3, [hl]
    rst $30
    ld l, l
    rst $38
    rst $38
    db $fd
    cp $12
    rrca
    ld c, c
    rlca
    db $fd
    inc bc
    rst $38
    add hl, hl
    rst $10
    jp $7d3f


    rst $38
    and $ff
    rst $38
    db $fd
    db $db
    ld d, l
    ei
    ld a, e
    rst $30
    db $eb
    rst $30
    rst $38
    xor a
    or $d7
    cp [hl]
    ld e, e
    cp [hl]
    sub a
    ld a, [de]
    rst $38
    ld e, $13
    dec b
    inc de
    dec c
    inc bc
    rrca
    ld bc, $1cff
    inc bc
    sbc h
    inc bc
    jr c, jr_00b_4983

    cp c
    rlca
    rst $38
    ld d, [hl]
    rst $28
    ld d, h
    rst $28

jr_00b_4983:
    ld l, l
    or $af
    push af
    rst $38
    ld [hl], $ff
    ld d, [hl]
    cp [hl]
    ld e, [hl]
    cp h
    scf
    call c, $b9ff
    sbc $bc
    rst $18
    or h
    rst $18
    or $df
    rst $38
    jp nc, $e3ff

    rst $38
    and e
    rst $38
    add a
    rst $38
    rst $38
    add a
    rst $38
    adc e
    rst $38
    dec d
    ei
    sbc c
    ld [hl], a
    rst $38
    ld hl, $a1ff
    ld a, a
    pop de
    rst $38
    dec hl
    rst $38
    add c
    nop
    ld bc, $07ff
    rrca
    dec d
    dec de
    dec hl
    ld [hl], $47
    ld l, h
    rst $38
    ret nc

    call $dbb8
    sbc l
    ei
    ld l, a
    ei
    rst $38
    db $eb
    ld a, a
    ld a, e
    rst $38
    ld e, d
    rst $38
    sbc $ff
    rst $38
    or h
    sbc $d5
    cp h
    sub $bd
    adc a
    push af
    rst $38
    cp l
    rst $20
    ld [$47e7], a
    ld [c], a
    ld d, l
    ld [c], a
    rst $38
    rlca
    rrca
    ld d, $19
    ld a, l
    ld a, b
    sub h
    adc $ff
    ld [hl-], a
    add a
    ld h, a
    ei
    sbc c
    rst $38
    adc l
    rst $18
    rst $38
    and d
    rst $08
    cp [hl]
    rst $20
    ld l, d
    or a
    ld [hl], e
    cp a
    rst $38
    ld a, d
    cp a
    dec l
    cp $a5
    cp $65
    cp $ff
    sub [hl]
    rst $38
    cp [hl]
    sbc $bc
    sbc $7a
    call c, Call_00b_53ff
    db $fc
    dec hl
    cp $ad
    ld [hl], d
    or d
    ld h, c
    rst $38
    nop
    ld [$0888], sp
    inc e
    adc b
    ld [$ff9c], sp
    ld c, c
    sbc h
    inc d
    db $dd
    ld a, $d5
    inc e
    rst $30
    rst $38
    inc d
    rst $30
    ld [hl+], a
    rst $30
    ld [hl-], a
    rst $20
    ld h, $e3
    db $fc
    ld b, e
    rst $20
    ld d, e
    rst $28
    rst $00
    rst $38
    rst $38
    ld b, c
    rst $38
    or d
    ld a, a
    ld c, d
    ld a, a
    ld c, [hl]
    ld a, a
    cp $46
    ld a, a
    ld b, [hl]
    ld a, a
    dec l
    dec a
    jr jr_00b_4a4e

jr_00b_4a4e:
    rst $38
    jp nc, $d44f

    ld c, a
    dec d
    adc $9c
    adc $ff
    sbc d
    call z, $8ed8
    xor d
    sbc h
    xor b
    sbc h
    rst $38
    call z, $9cb8
    ldh a, [$a8]
    ldh a, [$b0]
    add sp, -$01
    or c
    add sp, $49
    ldh a, [$c9]
    ld [hl], b
    pop de
    ld h, b
    rst $38
    db $d3
    ld h, b
    ld [hl], e
    ret nz

    ld [hl+], a
    pop bc
    and d
    pop bc
    rst $38
    and [hl]
    pop bc
    and l
    jp $c3b5


    sbc l
    db $e3
    rst $38
    ld b, c
    rst $38
    or d
    ld a, a
    ld a, [bc]
    ld a, a
    ld l, l
    ld e, a
    rst $38
    ld d, [hl]
    ld c, a
    ld d, a
    ld c, [hl]
    ld d, d
    ld c, a
    ld d, e
    ld c, a
    rst $38
    ld [hl+], a
    rst $00
    and e
    ld b, a
    add l
    ld h, e
    add l
    ld h, e
    rst $38
    add l
    ld h, e
    call $8d23
    ld h, e
    xor c
    ld h, a
    rst $38
    ld c, c
    rst $30
    ld l, c
    rst $30
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    ld h, a
    cp $e5
    cp $e4
    cp $b4
    ld a, [hl]
    rst $38
    call c, Call_00b_663e
    ld e, $26
    ld e, $12
    ld c, $ff
    ld [hl], d
    ld c, $e3
    ld e, $c6
    ccf
    add a
    ld a, a
    rst $38
    adc l
    ld a, a
    adc c
    ld a, a
    dec e
    ei
    dec e
    ei
    rst $38
    dec a
    ei
    dec h
    rst $38
    ld d, d
    rst $28
    ld c, d
    and $bf
    rst $38
    and b
    ret nz

    rlca
    add b
    ld e, c
    add [hl]
    rst $38
    add d
    db $fc
    ret c

    ldh a, [$a1]
    ldh a, [$f3]
    and b
    rst $38
    ld e, e
    and b
    ld e, a
    or b
    ld b, a
    cp b
    ld [de], a
    db $fd
    db $fc
    sbc b
    rst $38
    and h
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    xor e
    ld b, a
    db $fd
    inc bc
    sbc c
    ld h, a
    rst $38
    jp $d73f


    ccf
    sub e
    ld a, a
    adc c
    ld [hl], a
    rst $38
    add hl, sp
    rst $20
    ld [hl], e
    rst $08
    scf
    rst $08
    dec h
    rst $18
    db $fc
    ld c, c
    rst $38
    set 7, a
    rst $10
    rst $38
    cp a
    ld a, a
    and c
    ret nz

    rlca
    add b
    ld e, c
    add [hl]
    rst $38
    add h
    ld hl, sp-$28
    ldh a, [$e1]
    or b
    or e
    and b
    rst $38
    dec de
    and b
    rra
    or b
    ld b, a
    cp b
    sub d
    db $fd
    rst $38
    sbc c
    rst $38
    and [hl]
    rst $38
    ld [hl], h
    ld a, a
    ld a, [de]
    dec sp
    cp a
    cp $4b
    add a
    ld sp, hl
    rlca
    sub c
    ld l, a
    rst $38
    jp $d73f


    ccf
    sub e
    ld a, a
    adc c
    ld [hl], a
    rst $38
    add hl, sp
    rst $20
    ld d, e
    rst $28
    scf
    rst $08
    add l
    rst $38
    rst $38
    ld c, c
    rst $38
    ld c, d
    cp $56
    cp $b8
    cp h
    rst $38
    or l
    rst $38
    and h
    ld a, a
    ld c, d
    ccf
    ld d, d
    cpl
    rst $38
    add hl, hl
    rla
    dec b
    ld a, [de]
    inc d
    dec bc
    ld [de], a
    dec c
    rst $18
    ld b, $09
    ld b, $03
    inc b
    ld [bc], a
    dec b
    rst $38
    inc bc
    inc b
    rrca
    nop
    inc b
    dec bc
    ld b, $09
    rst $38
    ld d, $09
    dec d
    ld a, [bc]
    rlca
    jr jr_00b_4bbf

    dec d
    rst $38
    ld d, e
    inc l
    ld b, h
    dec sp
    or l
    ld l, [hl]
    or c
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld l, l
    rst $38
    rst $38
    or a
    ld a, a
    call $12bf
    rst $38
    ld c, e
    cp a
    rst $38
    dec [hl]
    rst $18
    adc d
    ld [hl], a
    ld l, e
    cp a
    sub l
    ld l, a
    rst $38
    ld c, a
    cp a
    add hl, hl
    rst $38
    rst $10
    ld a, a
    ld e, d
    cp a
    rst $38

jr_00b_4bbf:
    and c
    ld e, a
    ld [de], a
    rst $38
    push bc
    ccf
    or e
    ld a, a
    rst $38
    dec l
    rst $10
    xor d
    rst $38
    inc sp
    rst $18
    db $76
    rst $38
    adc h
    rst $38
    cp a
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $08
    ld e, a
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $08
    cpl
    rst $38
    cp e
    rst $38
    sbc $ff
    cp l
    rst $38
    sub $e0
    and b
    ret nz

    add b
    rst $38
    ld b, b
    add b
    nop
    add b
    ret nz

    add b
    ret nz

    add b
    rst $38
    ret nz

    add b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    rst $38
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    rst $38
    add c
    ret nz

    inc d
    db $eb
    xor e
    call nc, $f84f
    db $fc
    cp b
    rst $30
    rst $10
    rst $38
    db $fd
    rst $38
    ld hl, sp+$23
    rst $38
    ld b, $01
    nop
    add b
    nop
    rst $38
    add $01
    dec h
    jp c, Jump_00b_40bf

    ld [hl], a
    adc b
    rst $38
    adc c
    db $76
    ld e, d
    rst $38
    or l
    rst $38
    ld [$bfff], a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rst $38
    adc e
    ld a, a
    sub a
    ld a, a
    cpl
    ld e, a
    ccf
    ld e, a
    rst $38
    dec hl
    ld e, a
    or a
    ld e, a
    and a
    ld e, a
    ld l, e
    sbc a
    rst $38
    ld c, l
    cp a
    and a
    ld e, a
    sub a
    ld a, a
    cpl
    rst $18
    rst $38
    ld c, e
    rst $38
    or a
    ld a, a
    ld c, a
    cp a
    or e
    ld e, a
    rst $38
    ld c, a
    rst $38
    sub l
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    nop
    cp a
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    rst $38
    ld a, [bc]
    nop
    dec e
    nop
    ld h, e
    nop
    ld [hl+], a
    nop
    rst $38
    ld h, e
    nop
    ld hl, $4200
    nop
    ld hl, $b300
    nop
    ld hl, $0100
    nop
    rst $38
    ld bc, $0600
    nop
    inc d
    nop
    jr nz, jr_00b_4c96

jr_00b_4c96:
    cp a
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    rst $38
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    or e
    nop
    add b
    nop
    add b
    nop
    db $fc
    inc bc
    nop
    ld [$1000], sp
    nop
    rst $08
    jr nz, jr_00b_4cb7

jr_00b_4cb7:
    jr nz, jr_00b_4cb9

jr_00b_4cb9:
    jr nz, jr_00b_4cbb

jr_00b_4cbb:
    rst $38
    ret nz

    nop
    ld h, b
    nop
    or b
    nop
    jr c, jr_00b_4cc4

jr_00b_4cc4:
    rst $38
    ld d, b
    nop
    jr c, jr_00b_4cc9

jr_00b_4cc9:
    inc d
    nop
    jr z, jr_00b_4ccd

jr_00b_4ccd:
    rst $38
    stop
    jr z, jr_00b_4cd2

jr_00b_4cd2:
    stop
    jr z, jr_00b_4cd6

jr_00b_4cd6:
    rst $38
    stop
    jr nz, jr_00b_4cdb

jr_00b_4cdb:
    stop
    jr nz, jr_00b_4cdf

jr_00b_4cdf:
    rst $38
    ret nz

    nop
    jr nc, jr_00b_4ce4

jr_00b_4ce4:
    inc c
    nop
    ld b, $00
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    inc bc
    nop
    dec b
    nop
    db $fc
    add b
    nop
    ld h, b
    nop
    ld [$ff00], sp
    inc b
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    call z, $0002
    ld [bc], a
    nop
    or b
    nop
    ld [bc], a
    nop
    rst $38
    ld h, e
    nop
    sbc d
    nop
    inc a
    nop
    ld d, $00
    rst $38
    inc c
    nop
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    rst $38
    ret nc

    nop
    jr z, jr_00b_4d33

jr_00b_4d33:
    ld [$1400], sp
    nop
    rst $38
    ld [$0400], sp
    nop
    ld [$0c00], sp
    nop
    cp a
    nop
    pop hl
    nop
    ld [hl-], a
    nop
    ld d, $00
    rst $38
    inc c
    nop
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    adc h
    nop
    inc d
    nop
    ldh a, [rHDMA2]
    nop
    inc l
    nop
    di
    inc bc
    nop
    ld [$0a00], sp
    nop
    ret nz

    rlca
    nop
    add e
    nop
    ld b, $00
    di
    ld hl, $0e00
    nop
    add b
    nop
    rst $38
    ld b, e
    nop
    adc b
    nop
    ld [hl], b
    nop
    stop
    db $fc
    ld c, d
    nop
    or l
    nop
    rra
    nop
    add e
    nop
    ld bc, $fc00
    inc d
    nop
    ld b, b
    nop
    jr nz, jr_00b_4d8a

jr_00b_4d8a:
    adc a
    nop
    jr nz, jr_00b_4d8e

jr_00b_4d8e:
    inc h
    nop
    rst $38
    ld c, d
    nop
    or l
    nop
    ld b, e
    nop
    add b
    nop
    add e
    nop
    add b
    nop
    rst $38
    dec h
    nop
    ld e, d
    nop
    inc h
    nop
    ld [$ff00], sp
    inc b
    nop
    stop
    ld a, [bc]
    nop
    ld d, h
    nop
    db $fc
    db $eb
    nop
    ld b, b
    nop
    add c
    nop
    rst $38

Call_00b_4db7:
    inc bc
    nop
    stop
    add b
    nop
    ld b, b
    nop
    ldh a, [$80]
    nop
    ld b, b
    nop
    adc a
    nop
    inc b
    nop
    add d

jr_00b_4dc9:
    nop
    rst $38
    dec h
    nop
    db $db
    nop
    inc a
    nop
    ret nz

    nop
    cp a
    nop
    jr nz, jr_00b_4dd7

jr_00b_4dd7:
    ld e, h
    nop
    ld [hl+], a
    nop
    rst $38
    ld b, $00
    ld bc, $0200
    nop
    ld bc, $8f00
    nop
    ld c, b
    nop
    and h
    nop
    rst $38
    ld d, d
    nop
    and l
    nop
    dec sp
    nop
    ld c, $00
    add b
    nop
    cp a
    nop
    ld b, b
    nop
    jr z, jr_00b_4dfb

jr_00b_4dfb:
    inc d
    nop
    rst $08
    ld b, c
    nop
    adc d
    nop
    ld d, l
    nop
    ldh a, [$a8]
    nop
    ld h, b
    nop
    rst $38
    ld d, b
    nop
    adc b
    nop
    ld d, b
    nop
    and b
    nop
    add b
    nop
    cp a
    rst $38
    ld b, b
    add b
    rst $38
    nop
    sbc b
    ld h, a
    rst $38
    call nz, $ca3f
    ccf
    sub e
    ld a, c
    adc d
    ld [hl], c
    cp a
    rst $38
    pop hl
    nop
    ccf
    ret nz

    ld e, c
    and [hl]
    rst $38
    ld b, [hl]
    jr c, jr_00b_4dc9

jr_00b_4e31:
    ld [hl], b
    ld hl, $b3f0
    ldh [rIE], a
    dec sp
    ldh [rNR34], a
    pop hl
    ld c, h
    di
    pop hl
    rst $38
    rst $38
    sbc d
    rst $38
    adc h
    rst $38
    sbc c
    rst $38
    inc l
    ld a, [hl]
    nop
    add b
    nop
    add b
    nop
    rst $38
    stop
    jr nc, jr_00b_4e52

jr_00b_4e52:
    jr z, jr_00b_4e54

jr_00b_4e54:
    inc l
    nop
    rst $38
    ld h, b
    inc b
    jr nz, jr_00b_4e9f

    ld b, $40
    call nc, $ff02
    dec hl
    sub b
    ld b, $b9
    ld h, d
    cp l
    ld [hl+], a
    db $fd
    rst $38
    and h
    ld a, e
    db $10
    ld a, [hl]
    inc [hl]
    jr jr_00b_4e80

    jr jr_00b_4e31

    inc a
    ld e, d
    ld h, [hl]
    ld a, [hl]
    jp $cbb5


    rst $38
    cp c
    rst $00
    and c
    rst $18
    or c
    rst $08

jr_00b_4e80:
    and c
    rst $18
    rst $38
    or e
    rst $08
    and e
    rst $18
    or a
    rst $08
    xor a
    rst $18
    rst $38
    sbc a
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    rst $38
    jp nc, Jump_00b_4f00

    and b
    xor d
    ld d, l
    ld d, h
    ld [bc], a
    rst $38
    and [hl]

jr_00b_4e9f:
    add hl, bc
    sbc e
    nop
    ld l, l
    nop
    sub c
    ld [bc], a
    rst $38
    dec l
    nop
    adc e
    nop
    dec d
    nop
    ld c, e
    nop
    rst $38
    inc d
    nop
    sub l
    nop
    inc bc
    nop
    inc d
    nop
    rst $38
    ld b, $f8
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    ld d, c
    xor [hl]
    ld b, h
    cp d
    add c
    ld a, [hl]
    ld d, b
    xor a
    rst $38
    ld h, h
    dec de
    ret nc

    cpl
    db $f4
    dec bc
    ld c, c
    or [hl]
    rst $38
    db $f4
    dec bc
    add hl, de
    and [hl]
    pop af
    ld c, $da
    inc h
    rst $38
    ldh [rNR34], a
    jp nc, Jump_00b_402c

    cp [hl]
    add hl, hl
    sub $ff
    add c
    ld a, [hl]
    xor b
    ld d, a
    ld b, b
    cp a
    xor b
    ld d, a

jr_00b_4eee:
    rst $38
    ld d, d
    dec l
    ld c, b
    or a
    ld [hl], h
    dec bc
    ld c, c
    or [hl]
    rst $38
    db $f4
    dec bc
    add hl, de
    and [hl]
    ld [hl], c
    ld c, $9a
    inc h

Jump_00b_4f00:
    adc a
    nop
    inc bc
    nop
    ld b, $00
    rst $38
    ld [$1300], sp
    nop
    inc d
    nop
    jr c, jr_00b_4f0f

jr_00b_4f0f:
    rst $38
    jr nc, jr_00b_4f12

jr_00b_4f12:
    jr nz, jr_00b_4f14

jr_00b_4f14:
    ld h, e
    nop
    ld b, h
    nop
    rst $38
    ld c, b
    nop
    or b
    nop
    and e
    nop
    add h
    nop
    adc a
    nop
    ldh [rP1], a
    ld a, b
    nop
    rst $38
    db $fc
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    rst $38
    rlca
    nop
    rst $38
    nop
    add a
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    or $00
    ld a, $00
    inc e
    nop
    cp a
    nop
    inc [hl]
    ld [$0244], sp
    sub b
    dec bc
    rst $38
    ret z

    rlca
    ld h, b
    sbc a
    pop af
    ld c, $40
    ld a, $ff
    nop
    ld a, a
    ld a, [de]
    push hl
    ld b, b
    cp a
    ld de, $ffee
    ld a, [hl+]
    ld d, l
    sub [hl]
    ld b, b
    ld e, l
    add b
    and h
    ld b, b
    rst $38
    ret nc

    nop
    ld [hl+], a
    add b
    ret z

    nop
    jr nc, jr_00b_4eee

    rst $38
    add l
    ld b, b
    ld d, b
    add b
    db $e4
    nop
    db $10
    ld b, b
    rst $38
    ld l, c
    nop
    ld h, [hl]
    db $10
    dec a
    nop
    ld a, [hl+]
    ld b, b
    rst $38
    ld d, h
    nop
    pop hl
    nop
    ld d, h
    add b
    xor c
    nop
    rst $38
    ld d, b
    add b
    ld [hl+], a
    add b
    ret z

    nop
    jr nc, jr_00b_4f12

    rst $38
    add l
    ld b, b
    ld d, b
    add b
    db $e4
    nop
    db $10
    ld b, b
    rst $38
    nop
    rst $38
    inc d
    db $eb
    nop
    rst $38
    ld [hl+], a
    db $dd
    rst $38
    ld [hl], l
    ld a, [bc]
    xor d
    ld b, b
    ld d, c
    inc b
    ld [bc], a
    nop
    rst $38
    stop
    ld b, d
    nop
    add hl, bc
    nop
    ld b, b
    nop
    rst $38
    stop
    jr nz, jr_00b_4fbb

jr_00b_4fbb:
    add hl, bc
    nop
    ld b, b
    nop
    rst $38
    ld [hl-], a
    nop
    ld [hl], c
    adc h
    sbc e
    nop
    ld b, h
    nop
    rst $38
    ld hl, $0a00
    nop
    ld b, h
    nop
    ld de, $bf00
    nop
    ld b, b
    nop
    ld c, b
    nop
    and c
    nop
    or e
    nop
    ld b, c
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
    rst $38
    and d
    ld e, l
    or l
    ld [bc], a
    ld e, e
    inc b
    db $eb
    db $10
    rst $38
    ld e, a
    nop
    xor d
    ld bc, $0855
    rst $10
    nop
    rst $38
    dec l
    ld [bc], a
    db $db
    nop
    dec h
    ld [bc], a
    ld e, [hl]
    nop
    adc a
    nop
    rlca
    nop
    ld e, $00
    rst $38
    ccf
    nop
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    nop
    rst $38
    ldh [rP1], a
    rst $38
    nop
    pop hl
    nop
    ret nz

    nop
    rst $38
    ret nz

    nop
    ld l, a
    nop
    ld a, h
    nop
    jr c, jr_00b_5024

jr_00b_5024:
    adc a
    nop
    ret nz

    nop
    ld h, b
    nop
    rst $38
    stop
    ret z

    nop
    jr z, jr_00b_5031

jr_00b_5031:
    inc e
    nop
    rst $38
    inc c
    nop
    inc b
    nop
    add $00
    ld [hl+], a
    nop
    rst $38
    ld [de], a
    nop
    dec c
    nop
    push bc
    nop
    ld hl, $ff00
    stop
    ld b, $00
    dec a
    nop
    ld [hl], d
    inc c
    rst $38
    ld h, b
    ld e, $60

jr_00b_5052:
    ld e, $61
    ld e, $60
    ld e, $80
    nop
    add b
    nop
    nop
    cp a
    nop
    ld bc, $0200
    nop
    dec b
    nop
    rst $38
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    inc d
    nop
    inc d
    nop
    rst $38
    dec l
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    ld c, c
    nop
    rst $38
    ld e, d
    ld bc, $005b
    sbc [hl]
    ld bc, $019e
    cp a
    nop
    jr nc, jr_00b_5083

jr_00b_5083:
    db $10
    ld [$0518], sp
    rst $38
    rla
    nop
    add hl, bc
    ld [bc], a
    ld c, $01
    ld b, $01
    rst $38
    ld a, [hl-]
    ld bc, $00fc

jr_00b_5095:
    sbc b
    nop
    jr nz, jr_00b_50a9

    rst $38
    ld [hl], b
    nop
    ld d, e
    jr nz, jr_00b_5052

    ld b, b
    rst $10
    jr nz, @+$01

    or a
    ld b, b
    ld a, a
    add b
    or a
    ld b, b

jr_00b_50a9:
    ld a, a
    add b
    rst $38
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    or a
    nop
    ld b, b
    jr nz, @-$3e

    add b
    ld b, b
    rst $38
    inc [hl]
    ret z

    ld b, b
    cp b
    adc b
    ld [hl], b
    sub b

jr_00b_50c3:
    ld h, b
    rst $38
    jr nz, jr_00b_5095

    adc d
    ld [hl], l
    ld b, b
    ld a, $62
    dec e
    rst $38
    pop hl
    ld e, $f0
    ld c, $f1
    ld c, $b0
    ld c, a
    rst $38
    ld hl, sp+$07
    ret c

    daa
    ret c

    daa
    ret z

    scf
    rst $38
    ret z

    scf
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    sub a
    nop
    add b
    ld b, b
    nop
    ld h, b
    rst $38
    ld b, b
    or b
    jr nz, jr_00b_50c3

    and b
    ld e, b
    nop
    ld a, b
    rst $38
    nop
    ld a, b
    ret nz

    inc a
    ld b, b
    cp h
    ld b, b
    cp h
    rst $38
    ld b, b
    cp [hl]
    ld h, b
    sbc [hl]
    ld h, b
    sbc a
    ld h, b
    sbc a
    add e
    nop
    inc b
    jr @+$01

    ld d, $01
    jr jr_00b_5132

    add hl, bc
    inc [hl]
    scf
    ld [$0aff], sp
    dec d
    ld [bc], a
    jr jr_00b_511c

jr_00b_511c:
    jr nz, jr_00b_5133

    jr nz, @+$01

    inc sp

jr_00b_5121:
    ld [$120d], sp
    ld b, $09
    nop
    inc bc
    add e
    nop
    inc b
    inc bc
    rst $38
    sub a
    ld l, b
    cp a
    nop
    ld e, h

jr_00b_5132:
    nop

jr_00b_5133:
    ld d, b
    and c
    rst $38
    rst $00
    nop
    add hl, bc
    ld [bc], a
    xor a
    db $10
    inc [hl]
    ld c, d
    rst $38
    ret c

    inc h
    jr nz, @-$26

    add d
    ld h, c
    sub l
    ld [bc], a
    rst $38
    ld l, $10
    dec [hl]
    ld c, d
    ld [hl], h
    add b
    and d
    ld c, b
    rst $38
    rst $08
    nop
    ld [de], a
    ld c, c
    sub c
    ld [$00db], sp
    rst $38
    ld de, $3288
    nop
    inc hl
    db $10
    ld [hl], c
    nop
    rst $38
    ld b, a
    jr nz, jr_00b_51b1

    and b
    adc a
    ld b, b
    ld a, [de]
    add h

jr_00b_516b:
    cp a
    nop
    add b
    nop
    or b
    ld b, b
    ld b, h
    jr z, jr_00b_516b

    inc [hl]
    nop
    jr z, jr_00b_518a

    ld [$00b5], sp
    rst $38
    inc e
    add c
    inc de
    adc b
    cp h
    ld bc, $0992
    rst $38
    dec [hl]
    nop
    jr z, jr_00b_519b

    ld [hl], d

jr_00b_518a:
    inc b
    sbc b
    ld b, b
    cp a
    nop
    ld bc, $0d00
    ld [bc], a
    ld [hl+], a
    inc d
    rst $30
    inc l

jr_00b_5197:
    nop
    inc d
    ld c, b
    db $10

jr_00b_519b:
    xor l
    nop
    rst $38
    jr c, jr_00b_5121

    ret z

    ld de, $803d
    ld c, c
    sub b
    rst $38
    xor h
    nop
    inc d
    ld c, b
    ld c, [hl]
    jr nz, @+$1b

    ld [bc], a
    rst $38
    ld [hl], h

jr_00b_51b1:
    ld [$52ac], sp
    ld l, $01
    ld b, l
    ld [de], a
    rst $38
    di
    nop
    ld c, b
    sub d
    adc c
    db $10
    db $db
    nop
    rst $38
    adc b
    ld de, $004c
    call nz, $8e08
    nop
    rst $38
    ld [c], a
    inc b
    jp nc, $f105

    ld [bc], a
    ld e, b
    ld hl, $0083
    jr nz, jr_00b_5197

    rst $38
    jp hl


    ld d, $fd
    nop
    ld a, [hl-]
    nop
    ld a, [bc]
    add l
    rst $38
    db $e3
    nop
    sub b
    ld b, b
    push af
    ld [$522c], sp
    rst $38
    dec de
    inc h
    inc b
    dec de
    ld b, c
    add [hl]
    xor c
    ld b, b
    add e
    nop
    jr nz, jr_00b_520e

    rst $38
    ld l, b
    add b
    jr jr_00b_51ff

    sub b
    inc l
    db $ec
    db $10

jr_00b_51ff:
    rst $38
    ld d, b
    xor b
    ld b, b
    jr jr_00b_5205

jr_00b_5205:
    inc b
    xor b
    inc b
    rst $38
    call z, $b010
    ld c, b
    ld h, b

jr_00b_520e:
    sub b
    nop
    ret nz

    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    cp a
    nop
    ld e, b
    nop
    add d
    nop
    ld h, c
    nop
    rst $38
    add b
    nop
    ld [hl], l
    nop
    ld c, $00
    ld bc, $f300
    inc c
    nop
    and d
    nop
    ld c, b
    nop
    rst $38
    add hl, de
    nop
    ld h, [hl]
    nop
    reti


    nop
    add e
    nop
    add b
    nop
    cp h
    nop
    inc [hl]
    nop
    ret nz

    nop
    cp a
    nop
    add b
    nop
    ld [$0200], sp
    nop
    rst $38
    ld d, l
    nop
    ld c, $00
    ld b, b
    nop
    dec e
    nop
    rst $38
    ld bc, $0c00
    nop
    stop
    stop
    rst $38
    stop
    inc c
    nop
    add c
    nop
    ld d, d
    nop
    rst $38
    jr z, jr_00b_5279

jr_00b_5279:
    xor [hl]
    nop
    ld d, l
    nop
    ld [c], a
    nop
    rst $38
    add b
    nop
    dec d
    nop
    jp nz, $1700

    nop
    rst $38
    add b
    nop
    jr z, jr_00b_528d

jr_00b_528d:
    ld b, $00
    ld bc, $ff00
    ld a, [bc]
    nop
    ld [hl+], a
    nop
    ld bc, $2000
    nop
    rst $38
    push de
    nop
    ld [hl], $00
    ld c, l
    nop
    inc sp
    nop
    db $fc
    inc e
    nop
    xor h
    nop
    ldh a, [rP1]
    adc a
    nop
    ld h, b
    nop
    sub b
    nop
    rst $38
    stop
    jr z, jr_00b_52b5

jr_00b_52b5:
    sub [hl]
    nop
    dec h
    nop
    rst $38
    dec de
    nop
    ld d, a
    nop
    xor [hl]
    nop
    ret nc

    nop
    add b
    nop
    cp a
    nop
    ld bc, $0400
    nop
    ld c, b
    nop
    db $fc
    add c
    nop
    inc l
    nop
    ld bc, $bc00
    nop
    ld b, b
    nop
    ld a, [hl+]
    nop
    rst $38
    jr nz, jr_00b_52dc

jr_00b_52dc:
    ld b, d
    nop
    dec l
    nop
    ld [bc], a
    nop
    rst $38
    or b
    nop
    inc c
    nop
    ld bc, $2a00
    nop
    rst $38
    inc d
    nop
    xor d
    nop
    ld d, h
    nop
    and b
    nop
    rst $38
    inc d
    nop
    ld b, b
    nop
    ld a, [bc]
    nop
    and h
    nop
    ldh a, [$58]
    nop
    add b
    nop
    cp h
    nop
    ld [bc], a
    nop
    jr z, jr_00b_5308

jr_00b_5308:
    ldh a, [$0c]
    nop
    ld bc, $bf00
    nop
    stop
    and h
    nop
    inc bc
    nop
    ldh a, [rNR14]
    nop
    ret nz

    nop
    rst $38
    jr jr_00b_531d

jr_00b_531d:
    jr jr_00b_531f

jr_00b_531f:
    jr jr_00b_5321

jr_00b_5321:
    inc [hl]
    nop
    rst $38
    inc l
    nop
    add hl, de
    nop
    xor h
    nop
    cp l
    nop
    rst $38
    ld bc, $0200
    nop
    add hl, bc
    nop
    stop
    rst $38
    cpl
    nop
    dec h
    nop
    ccf
    nop
    ld h, b
    nop
    rst $38
    cp a
    nop
    sbc e
    nop
    ld a, a
    nop
    ld de, $ff00
    daa
    nop
    ld b, d
    nop
    ld d, a
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    rst $38
    nop
    call z, $cc00
    nop
    rst $38
    call z, $cd00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $38
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld e, b
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    xor [hl]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld e, b
    nop
    rst $38
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    or a
    nop
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    nop

Jump_00b_53ad:
    or a
    nop
    ld a, [hl+]
    nop
    sub l
    nop
    di
    inc h
    nop
    ld a, [bc]
    nop
    ld [$ff00], sp
    rst $38
    nop
    db $fd
    nop
    cp a
    nop
    rst $30
    nop
    rst $38
    rst $18
    nop
    push af
    nop
    cp a
    nop
    push de
    nop
    rst $38
    cp [hl]
    nop
    db $ed
    nop
    ld d, [hl]
    nop
    xor c
    nop
    rst $38
    adc [hl]
    nop
    ld [hl+], a
    nop
    jr z, jr_00b_53dc

jr_00b_53dc:
    dec b
    nop
    rst $08
    ld b, b
    nop
    ld [bc], a
    nop
    stop
    adc h
    nop
    inc b
    nop
    rst $38
    jr c, jr_00b_53ec

jr_00b_53ec:
    jr c, jr_00b_53ee

jr_00b_53ee:
    jr c, jr_00b_53f0

jr_00b_53f0:
    ld c, h
    nop
    rst $38
    ld e, h
    nop
    ld a, h
    nop
    add [hl]
    nop
    sbc [hl]
    nop
    rst $38
    ld a, [hl]
    nop
    ld a, a

Call_00b_53ff:
    nop
    add l
    nop
    cp a
    nop
    rst $38
    ld a, [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    nop
    inc c
    nop
    jp nc, $de00

    nop
    rst $38
    sbc $00
    rst $18
    nop
    push hl
    nop
    cpl
    nop
    rst $38
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    scf
    ret z

    rst $38
    rst $38
    nop
    ld e, a
    and b
    ccf
    ret nz

    ld [hl], a
    adc b
    rst $38
    cp a
    ld b, b
    ld e, [hl]
    and c
    dec [hl]
    jp z, $bf47

    rst $38
    dec a
    rst $38
    sbc $ff
    di
    db $fc
    ld a, a
    add b
    rst $38
    and l
    ld e, e
    ret nc

    cpl
    and b
    ld e, a
    ld_long $ff17, a
    ld d, b
    xor a
    ld [c], a
    rra
    xor b
    ld d, a
    ld d, c
    xor a
    rst $38
    rst $20
    rra
    sbc a
    ld a, a
    db $fd
    cp $77
    ld hl, sp-$01
    sbc l
    db $e3
    ld a, [$ea05]
    rla
    db $f4
    dec bc
    rst $38
    ld e, h
    cp $7c
    rst $38
    cp a
    rst $38
    ld e, l
    ei
    rst $30
    rst $30
    ei
    ld a, e
    rst $30
    rst $28
    db $eb
    rst $18
    rst $38
    xor $9f
    sbc $3f
    xor [hl]
    ld a, a
    ld a, [hl]
    cp $ff
    ld a, $fe
    cp [hl]
    cp $6c
    cp $bc
    cp $bf
    nop
    inc bc
    nop
    ld b, $00
    add hl, sp
    nop
    rst $38
    ld h, a
    nop
    ld c, a
    nop
    rst $20
    nop
    call c, $ff00
    ldh [rP1], a
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    rst $38
    ld l, b
    nop
    ld [hl], b
    nop
    ld l, e
    nop
    db $fc
    nop
    cp a
    nop
    ret nz

    nop
    ld a, $00
    rlc b
    rst $38
    rst $30
    nop
    rst $00
    nop
    sbc a
    nop
    ld l, a
    nop
    rst $38
    cp a
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    ld a, a
    nop
    rst $38
    cp c
    nop
    rst $20
    nop
    sbc a
    nop
    ld a, a
    nop
    cp a
    rst $38
    jp z, $84ff

    rst $38
    add e
    rst $38
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    sbc l
    rst $38
    rst $38
    and a
    rst $38
    and e
    rst $38
    sbc e
    rst $38
    rst $30
    rst $38
    db $fc
    db $e3
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $ffff
    pop de
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    add a
    rst $38
    cp [hl]
    rst $38
    ld e, l
    rst $38
    or b
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    inc h
    rst $38
    rst $08
    rst $38
    inc bc
    rst $38
    rst $38
    dec b
    rst $38
    ld h, e
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ret nz

    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    ret nz

    ei
    rst $38
    rst $08
    rst $30
    rst $38
    push af
    rst $38
    sbc e
    rst $38
    db $fc
    or c
    rst $38
    pop de
    rst $38
    xor e
    rst $38
    add b
    rst $38
    add b
    rst $38
    or e
    rst $38
    cp $ff
    ei
    rst $38
    rst $08
    cp $ff
    ld a, [$fdff]
    rst $38
    cp h
    rst $38
    cp $ff
    ei
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp $ff
    ld l, a
    rst $38
    rst $38
    ld c, a
    ldh a, [$b1]
    adc $a8
    rst $38
    pop de
    cp $ff
    or h
    rst $38
    add sp, -$01
    pop af
    cp $6a
    rst $38
    rst $38
    ld [hl], b
    rst $38
    db $f4
    ld a, a
    ld l, c
    ld a, [hl]
    ld a, d
    ld a, a
    rst $38
    dec [hl]
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, h
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    ld a, a
    rst $38
    cp e
    rst $08
    jp nz, $8085

    jp $05ff


    add d
    ld a, [hl+]
    add c
    rla
    add d
    and d
    sbc l
    rst $38
    push bc
    rst $20
    adc a
    and e
    push hl
    cp e
    ret c

    rst $30
    rst $38
    rst $38
    ld [c], a
    sbc e
    or $d9
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    rlca
    add e
    inc de
    dec b
    xor c
    inc bc
    rst $38
    xor c
    rst $18
    inc bc
    rrca
    ld de, $a307
    rrca
    rst $18
    dec sp
    rst $00
    cp a
    ld c, e
    db $fd
    push af
    rst $38
    rst $38
    rst $28
    ld a, a
    ccf

Call_00b_55ff:
    rst $38
    ld a, h
    rst $38
    ld_long a, $ffff
    rra
    ccf
    ld c, l
    ld [hl], e
    ld [hl+], a
    pop bc
    ret nz

    add e
    rst $38
    add l
    jp nz, $e15a

    sub a
    add d
    and d
    sbc l
    rst $38
    add l
    rst $20
    adc a
    and e
    and l
    ei
    ret c

    rst $30
    ei
    ld l, e
    or $5b
    ld a, [hl]
    ld a, a
    add hl, de
    ccf
    rst $38
    ld hl, sp-$04
    ld d, $8e
    ld a, [bc]
    rla
    or [hl]
    rrca
    rst $38
    xor e
    rst $18
    inc de
    rrca
    ld de, $a307
    rrca
    rst $18
    dec sp

jr_00b_563b:
    rst $00
    cp a
    ld c, e
    db $fd
    push af
    rst $38
    rst $38
    rst $28
    ld a, a
    ccf
    cp $6d
    cp $cf
    ldh a, [rIE]
    ld a, a
    rst $38
    add b
    ret nz

    db $eb
    add b
    jp c, $f3a5

    add b
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, h
    ld a, a
    dec sp
    ld a, h
    add hl, sp
    ld [hl], b
    ld a, [c]
    ld h, c

jr_00b_5663:
    rst $38
    ld h, l
    jp $c78a


    sub h
    rst $08
    adc l
    ld a, [$9aff]
    db $f4
    ld l, h
    ld hl, sp+$78
    ld [hl], c
    ld h, b
    ld [hl], e
    db $fd
    jr nz, @+$79

    ld hl, $373f
    ccf
    ld a, a
    xor a
    rst $38
    nop
    db $eb
    nop
    jp c, $f025

    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, h
    rst $38
    dec sp
    db $fc
    ld a, c
    ldh a, [$f2]
    pop hl
    rst $38
    ld h, h
    jp $87c8


    sub d
    dec c
    daa
    jr @+$01

    ld c, [hl]
    jr nc, jr_00b_563b

    ld h, b
    jr c, jr_00b_5663

    ld [hl], b
    add e
    db $fc
    ld [hl], b
    add a
    ld hl, $87df
    rst $38
    rst $38
    cp $ff
    ld bc, $eb03
    ld bc, $25db
    di
    ld bc, $01ff
    rst $38
    cp $ff
    rst $38
    ld a, h
    cp $3e
    cp $73
    rst $38
    push af
    db $e3
    rst $38
    ld h, l
    jp $87ca


    sub [hl]
    rrca
    ld l, $1f
    rst $38
    ld d, e
    ccf
    or l
    ld l, a
    dec hl
    reti


    ld b, c
    or e
    db $fc
    ld b, c
    or a
    ld [bc], a
    rst $38
    add [hl]
    cp $ff
    ld [hl], $00
    ld b, c
    nop
    add b
    nop
    stop
    di
    add b
    nop
    add b
    nop
    ld b, b
    nop
    call z, VBlankInterrupt
    add b
    nop
    rst $38
    sub b
    nop
    add b
    nop
    ld b, c
    nop
    ld [hl], $00
    di
    inc [hl]
    nop
    add e
    nop
    stop
    add b
    nop
    add b
    nop
    rst $08
    stop
    add c
    nop
    inc [hl]
    nop
    rst $38
    ld l, d
    nop
    add l
    nop
    ld [bc], a
    nop
    dec h
    nop
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    inc b
    nop
    rst $38
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    rst $38
    ld [hl+], a
    nop
    dec b
    nop
    adc d
    nop
    ld [hl], h
    nop
    rst $38
    or l
    nop
    jp nc, Jump_00b_7000

    nop
    adc a
    nop
    rst $38
    rst $18
    nop
    ld l, a
    nop
    rst $08
    nop
    xor a
    nop
    rst $38
    ld e, a
    nop
    rst $18
    nop
    sbc a
    nop
    ld c, a
    nop
    rst $38
    xor a
    nop
    ld c, a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    ld d, l
    nop
    adc d
    nop
    ld [hl], c
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
    rst $38
    nop
    ld a, a
    nop
    or l
    nop
    ld a, d
    nop
    rst $38
    and l
    nop
    adc b
    nop
    ld [hl+], a
    nop
    ld d, c
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    cp $00
    rst $38
    db $fd
    nop
    db $ec
    nop
    ld a, [c]
    nop
    call nc, $ff00
    ld hl, sp+$00
    push de
    nop
    ld a, [$f500]
    nop
    rst $38
    call c, $ea00
    nop
    call c, $fe00
    nop
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ld [hl], e
    rst $38
    push af
    db $e3
    rst $38
    ld h, l
    jp $87ca


    sub [hl]
    rrca
    ld l, $1f
    rst $38
    ld d, e
    ccf

jr_00b_57c4:
    or l
    ld l, a
    dec hl
    reti


    ld b, c
    or e
    rst $38
    ld b, c
    or a
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    cp $ff
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld a, [hl]
    rst $38
    push bc
    add e
    db $fd
    jp $e3fd


    db $fc
    db $fd
    jp $83fd


    add c
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    push bc
    add e
    cp e
    add a
    or a
    adc a
    db $fc
    cp e
    add a
    db $fd
    add e
    add c
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    ld b, l
    rst $38
    ld l, h
    rst $10
    call c, $dd22
    ld a, e
    ei
    rst $38
    cp a
    rst $38
    cp a
    ret nz

    ld a, a
    add b
    rra
    add b
    rst $38
    rrca
    add b
    rlca
    add b
    inc bc
    add b
    ld bc, $ff80
    ld bc, $0280
    add c
    inc b
    add e
    ld [$fc87], sp
    db $10
    adc a
    jr nz, jr_00b_57c4

    add b
    rst $38
    cp a
    rst $38
    add e
    ld a, a
    jp $c73f


    ccf
    db $fd
    rst $08
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    db $fc
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    sub [hl]
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$01
    sub [hl]
    add sp, -$6a
    add sp, -$6a
    add sp, -$6a
    add sp, -$01
    ld [bc], a
    db $fd
    cp b
    ret nz

    sub [hl]
    add sp, -$6a
    add sp, -$0d
    sub a
    add sp, -$40
    rst $38
    ld a, a
    rst $38
    rst $38
    sub c
    nop
    sub c
    nop
    sub c
    nop
    sub c
    nop
    rst $38
    sub c
    nop
    sub c
    nop
    sub c
    nop
    sub c
    nop
    rst $08
    rst $38
    nop
    sub c
    nop
    sub c
    nop
    ret nc

    rst $38
    nop
    rst $38
    rst $38
    ld d, $01
    ld d, $01
    ld d, $01
    ld d, $01
    rst $38
    ld d, $01
    ld d, $01
    ld d, $01
    ld d, $01
    rst $38
    ld hl, sp+$07
    ld d, $01
    ld d, $01
    ld d, $01
    ldh a, [$fe]
    ld bc, $ff00
    rst $38

jr_00b_58a6:
    sub a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    rst $38
    sub a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    rst $38
    ld a, a
    rst $38
    sub a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    di
    sub a
    ld a, a
    ccf
    rst $38
    cp $ff
    cp l
    ld a, a
    add a
    ld hl, sp-$39
    cp b
    rst $38
    and b
    ld a, a
    nop
    add b
    nop
    di
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    cp l
    rst $38
    rst $00
    jr c, jr_00b_58a6

    jr c, @+$01

    cp a
    rst $38
    ld d, $1e
    ld d, $1e
    ld d, $1e
    rst $10
    ld e, $16
    ld e, $16
    ld e, $16
    or b
    rst $38
    nop
    rst $38
    cp l
    cp $c5
    dec sp
    rst $00
    add hl, sp
    rst $38
    and b
    cp $00
    add b
    nop
    di
    cp $ff
    ld bc, $feff
    rst $38
    push de
    nop
    ld bc, $0603
    dec c
    rst $38
    inc c
    dec de
    add hl, de
    scf
    inc sp
    ld l, [hl]
    ld h, a

jr_00b_5915:
    call c, $cfff
    cp b
    sbc [hl]
    ld [hl], b
    inc a
    ldh [$78], a
    pop bc
    rst $38
    ldh a, [$83]
    ldh [rTAC], a
    pop bc
    rrca
    add e
    rra
    rst $38
    rlca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ret nz

    ld a, a
    rst $38
    push de
    nop
    add b
    ret nz

    ld h, b
    or b
    rst $38
    jr nc, jr_00b_5915

    sbc b
    db $ec
    call z, $e676
    dec sp
    rst $38
    di
    dec e
    ld a, c
    ld c, $3c
    rlca
    ld e, $83
    rst $38
    rrca
    pop bc
    rlca
    ldh [$83], a
    ldh a, [$c1]
    ld hl, sp-$01
    ldh [$fc], a
    ldh a, [$fe]
    ld hl, sp-$01
    db $fc
    rst $38
    ret nz

    cp $ff
    add b
    rst $38
    db $fc
    cp $ff
    db $fd
    rst $38
    and b
    rst $38
    add b
    rst $38
    rst $38
    inc e
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    rst $38
    rst $20
    nop
    sbc c
    nop
    ld h, a
    nop
    cp $00
    rst $38
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    rst $30
    rst $38
    ret nz

    rst $18
    rst $38
    add e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $30
    rst $38
    di
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$04
    ei
    db $fc
    ei
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    rst $38
    rst $30
    rst $30
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    di
    rst $38
    rst $28
    rst $30
    rst $30
    rst $18
    rst $28
    rst $38
    rra
    rst $38
    rra

jr_00b_59d5:
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $30
    rst $28
    rst $38
    ei
    rst $30
    rst $38
    ld hl, sp-$04
    ei
    db $fc
    ei
    rst $38
    ld h, a

jr_00b_59e7:
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    jr jr_00b_59d5

    rst $38
    rrca
    ldh a, [rTAC]
    jr @+$09

    ld [$0807], sp
    rst $38
    rlca

jr_00b_59f9:
    ld [$0807], sp
    rrca
    db $10
    jr jr_00b_59e7

    rst $38
    ld [hl], b
    adc a
    ld h, b
    sbc h
    ld h, b
    sbc b
    ld h, b
    sbc b
    rst $38
    ld h, b
    sbc b
    ld h, b
    sbc b
    ld [hl], b
    adc h
    jr jr_00b_59f9

    rst $38

jr_00b_5a13:
    rrca
    ldh a, [rTAC]
    jr jr_00b_5a1f

    ld [$0807], sp
    rst $38
    rst $30

jr_00b_5a1d:
    ld hl, sp+$07

jr_00b_5a1f:
    ld hl, sp+$0f
    ldh a, [rNR23]
    rst $20
    rst $38
    ldh a, [rIF]
    db $e3
    inc e
    rst $20
    jr jr_00b_5a13

    jr @+$01

    ldh [rNR23], a
    ldh [rNR23], a
    ldh a, [$0c]
    jr jr_00b_5a1d

    rst $38
    rrca
    ldh a, [rTAC]
    jr @+$09

    ld [$0807], sp
    rst $38
    rst $20

jr_00b_5a41:
    rra
    ldh [$1f], a
    ldh a, [rIF]
    jr @-$17

    rst $38
    rrca
    ldh a, [$e7]
    jr @-$07

    ld [$08f7], sp
    rst $38
    rlca

jr_00b_5a53:
    ld [$0807], sp
    rrca
    db $10
    jr jr_00b_5a41

    rst $38
    ldh a, [rIF]
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR23], a
    rst $38
    or $f9
    ld b, $f9
    ld c, $f1
    jr jr_00b_5a53

    rst $38
    ldh a, [rIF]
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR23], a
    rst $38
    ldh [rNR23], a
    ldh [rNR23], a
    ldh a, [$0c]
    jr @-$17

    rst $38
    ld c, $f1
    ld b, $19
    ld b, $09
    ld b, $09
    rst $38
    ld b, $09
    ld b, $09
    ld c, $11
    jr @-$17

    rst $38
    ldh a, [rIF]
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR23], a
    rst $38
    rst $20
    jr @-$17

    jr @-$0b

    inc c
    jr @-$17

    rst $38

jr_00b_5aa3:
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07

jr_00b_5aa8:
    ld hl, sp+$07
    ld hl, sp-$01
    rlca

jr_00b_5aad:
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rNR23]
    rst $20
    rst $38
    ldh a, [rIF]
    db $e3
    inc e
    rst $20
    jr jr_00b_5aa3

    jr @+$01

    rst $20
    jr jr_00b_5aa8

    jr @-$0b

jr_00b_5ac3:
    inc c
    jr jr_00b_5aad

    rst $38
    rrca
    ldh a, [$e7]
    jr jr_00b_5ac3

    ld [$08f7], sp
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

Call_00b_5aff:
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    rst $38
    rst $18
    nop
    rst $18
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ccf
    ld b, b
    rra
    ld h, b
    rlca
    jr c, jr_00b_5b32

jr_00b_5b32:
    rrca
    rst $38
    rlca
    nop
    inc a
    nop
    ld [hl], l
    nop
    ret nz

    nop
    add b
    nop
    rst $38
    jr jr_00b_5b41

jr_00b_5b41:
    inc a
    nop
    inc a
    nop
    dec a
    nop
    rst $38
    ld a, l
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
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc e
    nop
    ld b, h
    ld [bc], a
    ld de, $cf00
    dec c
    nop
    ld [bc], a
    nop
    ld bc, $8000
    nop
    rst $38
    ld bc, $0300
    nop
    ld [bc], a
    nop
    inc b
    nop
    rst $38
    ld e, $00
    ccf
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
    inc c
    nop
    ld [$0800], sp
    nop
    stop
    rst $08
    stop
    jr nz, jr_00b_5b9c

jr_00b_5b9c:
    jr nz, jr_00b_5b9e

jr_00b_5b9e:
    add e
    nop
    add b
    nop
    rst $18
    ld b, b
    add b
    ld b, b
    ret nz

    jr nz, @+$52

    jr nz, @+$01

    ld h, b
    db $10
    xor b
    db $10
    or b
    ld [$0874], sp
    rst $38
    ld a, h
    nop
    ld a, b
    inc b
    jr c, jr_00b_5bbe

    ld a, $00
    rst $38
    inc a

jr_00b_5bbe:
    ld [bc], a
    inc e
    ld [hl+], a
    cp l
    ld [bc], a
    xor c
    ld d, $ff
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    pop bc
    ld a, $c0
    ld a, $00
    db $fc
    db $10
    ldh [rIE], a
    nop
    rst $38
    rra
    jr nz, @+$05

    jr nz, jr_00b_5bef

    jr nz, @+$01

    rrca
    jr nz, @+$10

    jr nz, @+$0e

jr_00b_5bef:
    jr nz, @+$0a

    jr nz, @+$01

    ld bc, $0320
    jr nz, jr_00b_5bff

    jr nz, jr_00b_5c09

    jr nz, @+$01

    rrca
    jr nz, jr_00b_5c0d

jr_00b_5bff:
    jr nz, jr_00b_5c0d

    jr nz, jr_00b_5c0b

    jr nz, @+$01

    ld bc, $a0fe
    ld e, b

jr_00b_5c09:
    jr nz, @+$5a

jr_00b_5c0b:
    jr nz, jr_00b_5c65

jr_00b_5c0d:
    rst $38
    jr nz, @+$5a

    jr nz, jr_00b_5c6a

    jr nz, jr_00b_5c6c

    jr nz, jr_00b_5c6e

    rst $38
    jr nz, jr_00b_5c71

    jr nz, jr_00b_5c73

    jr nz, jr_00b_5c75

    jr nz, jr_00b_5c77

    rst $38
    jr nz, jr_00b_5c7a

    jr nz, jr_00b_5c7c

    jr nz, jr_00b_5c7e

    jr nz, jr_00b_5c80

    rst $18

jr_00b_5c29:
    nop
    rlca
    jr jr_00b_5c3d

    ld h, $22
    ld b, [hl]
    rst $38
    nop
    ld b, b
    nop
    or b
    db $10
    or c
    nop
    add c
    rst $38
    nop
    ldh [$a0], a

jr_00b_5c3d:
    ld a, b
    cp b
    ld h, h
    inc a
    ld [bc], a
    rst $38
    inc a
    ld [bc], a
    ld d, $0d
    ld e, $8d
    sbc [hl]
    add c
    rst $38
    inc bc
    rlca
    nop
    rra
    ld [bc], a
    add hl, sp
    ld b, $79
    rst $38
    nop
    ld a, a
    db $10
    rst $08
    jr nc, jr_00b_5c29

    ld bc, $fffe
    ld b, b
    ldh [$d0], a
    cp b
    jr @-$02

    ld a, h

jr_00b_5c65:
    cp $ff
    ld a, $fe
    ld a, [hl-]

jr_00b_5c6a:
    rst $30
    or e

jr_00b_5c6c:
    ld a, a
    rst $38

jr_00b_5c6e:
    ld a, a
    rst $38
    ld e, a

jr_00b_5c71:
    ccf
    ret nz

jr_00b_5c73:
    ld a, a
    ccf

jr_00b_5c75:
    ret nz

    and b

jr_00b_5c77:
    ret nz

    rst $38
    adc a

jr_00b_5c7a:
    ret nz

    sbc [hl]

jr_00b_5c7c:
    ret nz

    sbc h

jr_00b_5c7e:
    ret nz

    sbc b

jr_00b_5c80:
    ret nz

    rst $38
    sub b
    ret nz

    add b
    ret nz

    add c
    ret nz

    add e
    ret nz

    rst $38
    and b
    ret nz

    cp c
    add $06
    rst $38
    cp a
    ld a, a
    or h
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, $00
    rst $38
    ld a, h
    nop
    ld sp, hl
    nop
    di
    nop
    rst $20
    nop
    rst $38
    ld c, [hl]
    nop
    adc h
    nop
    ld b, c
    add b
    sbc [hl]
    pop hl
    or h
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $00

jr_00b_5cbb:
    call c, $3900
    nop
    ld [hl], d
    nop
    rst $38
    db $e4
    nop
    adc $00
    sbc a
    nop
    ld hl, $fd00
    ld e, $00
    ld h, b
    rra
    sbc [hl]
    ld a, a
    rst $38
    rst $38
    ld a, [$03fc]
    cp $f8
    rlca
    dec b
    inc bc
    rst $38
    ld bc, $0903
    inc bc
    add hl, de
    inc bc
    add hl, sp
    inc bc
    rst $38
    ld a, c
    inc bc
    ld sp, hl
    inc bc
    pop af
    inc bc
    pop hl
    inc bc
    rst $38
    dec b
    inc bc
    adc l
    inc bc
    jr c, jr_00b_5cbb

    add c
    cp $00
    rst $38
    ld b, c
    cp a
    db $10
    ld h, e

Call_00b_5cfc:
    add h
    ld l, c
    adc b
    ld [hl], c
    rst $38
    cp [hl]
    ld b, c
    dec e
    db $e3
    ld b, e
    cp a
    ld e, l
    and e
    rst $38
    add hl, hl
    ret nc

    and h
    ret c

    or e
    call z, $c6e9
    rst $38
    call nc, $dbe3
    ldh [$fc], a
    ldh [$ee], a
    ldh a, [rIE]
    rst $38
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    db $fd
    cp $c0
    cp $ff
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, b
    rra
    rrca
    nop
    ret nz

    nop
    db $fd
    ldh a, [rP1]
    ccf
    ret nz

    rst $00
    jr c, jr_00b_5d43

    rst $38
    rrca
    nop
    add b
    nop
    ldh [rP1], a

jr_00b_5d43:
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $08
    ldh a, [$f8]
    rst $38
    rst $38
    cp $ff
    ld b, $f8
    ldh a, [rP1]
    inc bc
    nop
    db $fd
    rrca
    nop
    db $fc
    inc bc
    db $e3
    inc e
    ldh [rIE], a
    ldh a, [rP1]
    ld bc, $0700
    nop
    ccf
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0ff3
    rra
    rst $38
    rst $38
    add d
    db $fd
    ld [$21c6], sp
    sub [hl]
    ld de, $ff8e
    ld a, l
    add d
    cp b
    rst $00
    jp nz, $bafd

    push bc
    rst $38
    sub h
    dec bc
    dec h
    dec de
    call $9733
    ld h, e
    rst $38
    dec hl
    rst $00
    db $db
    rlca
    ccf
    rlca
    ld [hl], a
    rrca
    rst $38
    rst $38
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ret nz

    ld a, a
    rst $38
    rst $38
    ret


    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    di
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    call z, $ffbf
    ld a, a
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ret


    rst $38
    di
    set 7, a
    ld a, h
    rst $38
    rst $28
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $08
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    set 7, a
    rst $38
    sub l
    rst $38
    ld a, d
    rst $38
    db $fd
    rst $38
    jp c, $ffff

    db $fd
    rst $38
    ld a, [$f5ff]
    rst $38
    ei
    rst $38
    rst $38
    push af
    rst $38
    ld a, [$fdff]
    rst $38
    ld_long a, $ffff
    db $dd
    rst $38
    ld a, [$75ff]
    rst $38
    adc e
    rst $38
    cp a
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rlca
    dec b
    inc bc
    rst $38
    ld bc, $0903
    inc bc
    add hl, de
    inc bc
    add hl, sp
    inc bc
    rst $38
    ld a, c
    inc bc
    ld sp, hl
    inc bc
    pop af
    inc bc
    pop hl
    inc bc
    rst $38
    ret


    inc bc
    add hl, de
    inc bc
    ld b, c
    add a
    add c
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    sbc a
    ldh [$a0], a
    ret nz

    rst $38
    adc e
    ret nz

    sub [hl]
    ret nz

    adc h
    ret nz

    sbc b
    ret nz

    rst $38
    sub b
    ret nz

    add b
    ret nz

    add c
    ret nz

    add e
    ret nz

    rst $38
    add b
    ret nz

    xor c
    add $86
    rst $38
    cp a
    rst $38
    rst $38
    ld [hl], $ff
    adc b
    rst $38
    nop
    rst $38
    ld [$fff7], sp
    ld bc, $40fe
    cp a
    sub d
    ld l, l
    ld [hl], l
    adc d
    rst $38

jr_00b_5e4e:
    rst $18
    jr nz, jr_00b_5e4e

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $38
    nop
    cp [hl]
    nop
    ret


    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_00b_5e65:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_00b_5e7f:
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    db $eb
    inc d
    rst $10
    jr z, jr_00b_5e65

    jr nc, jr_00b_5e7f

    jr @+$01

    ei
    inc b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    cp $81
    db $f4
    adc e
    ldh [$9f], a
    ldh [$9f], a
    rst $38
    and b
    rst $18
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    rst $38
    sbc a
    jr nz, @-$21

    ld [hl+], a
    ret z

    scf
    ld b, b
    cp a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    jp $8030


    ld h, b
    rlca
    add b
    rrca
    nop
    rst $38
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    cpl
    ret nc

    rrca
    ldh a, [rTMA]
    ld sp, hl
    ld h, b
    sbc a
    rst $38
    pop af
    ld c, $f0
    rrca
    ret nz

    ccf
    nop
    rst $38
    rst $38
    ret nz

    ccf
    nop
    ldh [rTAC], a
    add b
    rrca
    nop
    rst $38
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ccf
    ret nz

    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld hl, sp-$01
    ld a, a
    add b
    ret nz

    add b
    rst $38
    add [hl]
    add b
    adc h
    add b
    cp h
    add b
    cp l
    add b
    rst $38
    cp $81
    db $f4
    adc e
    ldh [$9f], a
    ldh [$9f], a
    rst $38
    and b
    rst $18
    add b
    cp $85
    ld [c], a
    adc [hl]
    pop bc
    rst $38
    add e
    add b
    add $80
    ld hl, sp-$80
    ldh a, [$80]
    rst $38
    pop hl
    add b
    rst $20
    add b
    xor a
    ret nz

    rst $08
    and b
    rst $38
    xor a
    sub b
    add [hl]
    sbc c
    add b

jr_00b_5f45:
    sbc a
    and b
    sbc a
    di
    ret nc

    and b
    ret nz

    add b
    add c

jr_00b_5f4e:
    add b
    rst $38
    ret nz

    ccf
    nop
    ldh [rTAC], a
    add b
    rrca
    nop
    rst $38
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    cp a
    ret nz

jr_00b_5f64:
    sbc $61
    ldh [$3f], a
    rst $18
    ccf
    rst $38
    ret nc

    jr c, jr_00b_5f4e

    ld h, b
    ld b, b
    ret nz

    add c
    add b
    rst $38
    ret


    nop
    call $ef00
    nop
    rst $38
    nop
    rst $38

jr_00b_5f7d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and e
    ld e, h
    swap h
    rst $20
    jr jr_00b_5f64

    jr z, @+$01

    rst $28
    db $10
    rst $18
    jr nz, @-$6f

    jr nc, jr_00b_5f45

    db $10
    xor a
    rst $38

jr_00b_5f99:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    ld [$807f], sp
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    cp l
    ld b, d
    ld c, d
    or l
    db $10
    rst $28
    add h
    ld a, e
    rst $38
    ld de, $44ee
    cp e
    nop
    rst $38
    nop
    rst $38
    rst $38
    sbc l
    inc hl
    db $dd
    inc hl
    ret


    scf
    ld b, c
    cp a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    pop hl
    cp a
    sub c
    rst $38

jr_00b_5fd0:
    or c

jr_00b_5fd1:
    rst $38
    rst $28

jr_00b_5fd3:
    sbc a
    rst $38
    xor e
    call c, $f98e
    ret c

    rst $38
    ld a, a
    rst $38
    rst $38
    ld [hl], b
    rst $08
    add hl, hl
    cp $d3
    inc a
    db $fd
    ld [de], a
    rst $38
    rst $20
    jr jr_00b_5fd3

    ld d, $c7
    jr c, jr_00b_5f7d

    ld [hl], b
    rst $38
    db $fd
    ld [bc], a
    daa
    ret c

    ld e, l
    and d
    ld a, $c1
    rst $38
    ld a, $c1
    ld a, h
    add e
    ld a, b
    add a
    jr nc, jr_00b_5fd0

    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    pop bc
    ccf
    ldh [$1f], a
    rst $38
    ld [c], a
    inc e
    db $e4
    jr jr_00b_5fd1

    jr c, jr_00b_5f99

    ld a, b
    rst $38
    rlca
    ld hl, sp+$03
    db $fc

Call_00b_6018:
    nop
    rst $38
    ld h, b
    sbc a
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    and b
    rst $38
    nop
    cp a
    nop
    ld h, h
    nop
    sbc l
    nop
    cp a
    nop
    rst $38
    or a
    ld [$08f7], sp
    ld h, d
    sbc l
    ld h, b
    sbc a
    rst $38
    jr nz, jr_00b_605b

    ld [hl], d
    inc c
    ldh a, [$08]
    db $eb
    db $10
    rst $38
    add a
    ld a, b
    ld [hl-], a
    dec c
    jr jr_00b_6050

    ldh a, [rIF]
    rst $38
    ld a, [c]
    rrca
    di
    rrca

jr_00b_6050:
    ldh [$1f], a
    sub c
    ld h, b
    rst $38
    inc bc
    ret nz

    ld b, a
    add b
    rrca

jr_00b_605a:
    add b

jr_00b_605b:
    rrca
    add b
    rst $38
    ld l, a

Jump_00b_605f:
    ld b, b
    rra
    jr nz, jr_00b_605a

    db $10
    rst $20
    jr @+$01

    ld b, [hl]
    ld sp, hl
    jr nz, @+$01

    ret nc

    ccf
    pop hl
    rra
    rst $38

jr_00b_6070:
    jp hl


    rra
    cp $1f
    call c, $a03f
    ld a, a
    rst $38
    ld b, c
    cp $c6
    ld hl, sp-$70

jr_00b_607e:
    ldh [$a1], a
    ret nz

    rst $38
    ld h, c
    ld b, b
    inc bc
    jr nc, jr_00b_607e

    jr jr_00b_6070

    jr jr_00b_608b

jr_00b_608b:
    cp a
    ld a, a
    ret nz

    add b
    cp a
    add b
    cp a
    add b
    rst $38
    sbc a
    and b
    cp a
    add b
    cp e
    add h
    sbc a
    and b
    rst $38
    or l
    adc d
    cp a
    add b
    or l
    adc d
    cp b

jr_00b_60a4:
    add a
    rst $38
    xor d
    sub l
    or b
    adc a
    or h
    adc e
    cp b
    add a
    rst $38
    or d
    dec c
    ld l, b
    rla
    jp nc, $e82d

    rla
    rst $38
    or b
    ld c, a
    db $e4
    dec de
    ret nc

    cpl
    and b
    ld e, a
    rst $38
    ld b, h
    cp e
    jr nz, jr_00b_60a4

    ld [$40f7], sp
    cp a
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
    pop af
    ld c, $c6
    ccf
    inc b
    ld hl, sp-$7f
    ldh a, [rIE]
    add e
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, $c1
    rst $38
    ld hl, $31ff
    rst $38
    pop af
    rst $38
    rst $18
    rst $38
    db $fc
    adc e
    db $fc
    adc [hl]
    ld a, c
    jr @+$01

    rst $38
    add e
    nop
    ld c, c
    nop
    db $e3
    nop
    rst $00
    nop
    rst $38
    rst $08
    nop
    ld e, a
    add b
    rst $18
    nop
    sbc $21
    rst $38
    db $db
    inc h
    ld l, a
    sub b
    rra
    ldh [$5f], a
    and b
    rst $38
    ld e, $e1
    ld c, h
    or e
    nop
    rst $38
    nop
    rst $38
    rst $38
    add c
    add b
    add e
    add b
    rrca
    ret nz

    rrca
    ldh a, [rIE]
    inc hl
    inc e
    ld [hl], c
    ld c, $f0
    rrca
    ret nz

    ccf
    rst $38
    add b

jr_00b_612c:
    ld a, a
    nop
    rst $38

jr_00b_612f:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ld h, b
    sbc a
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
    sbc a
    jr nz, jr_00b_612f

    ld [hl+], a
    ret z

    scf
    add b
    ld a, a
    rst $38
    nop
    cp $60
    inc e
    di
    inc c
    pop af
    ld c, $ff
    ld [hl], a
    sub b
    rst $38
    db $10
    rst $10
    jr c, jr_00b_612c

    ccf
    rst $38
    ld a, [bc]
    rst $20
    rst $18
    jp $c3bd


    ld e, l
    db $e3
    rst $38
    cp c
    ld h, a
    pop bc
    ccf
    pop de
    ccf
    jp $ff3f


    rst $08
    ccf
    call $913e
    ld a, b
    inc sp
    ldh a, [rIE]
    add c
    add b
    inc bc
    add b
    rrca
    ret nz

    rrca
    ldh a, [rIE]
    add e
    db $fc
    ld sp, $14fe
    rst $28
    cp [hl]
    inc bc
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    cp a
    cp $03
    ld bc, $03fd
    db $fd
    inc bc
    rst $38
    ld a, c
    add a
    db $fd
    inc bc
    db $ed
    inc de
    ld a, l
    add e
    rst $38
    db $ed
    inc de
    ld d, l
    xor e
    dec a
    jp $ab55


    rst $38
    dec a
    jp Jump_00b_53ad


    dec d
    db $eb
    ld e, l
    and e
    rst $38
    inc a
    jp $a956


    rrca
    ldh a, [$9f]
    ld h, b
    rst $38
    dec hl
    call nc, $f10e
    ld d, l
    xor d
    ld a, [bc]
    push af
    rst $38
    daa
    ret c

    ld [$22f7], sp
    db $dd
    add hl, bc
    or $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $00
    jr c, jr_00b_61f6

    db $fc
    ld d, b
    ccf

jr_00b_61f6:
    rst $08
    ccf
    rst $38
    rst $08
    ccf
    cp a
    ld a, a
    ld [hl], c
    rst $38
    ldh [rIE], a
    rst $38
    adc $f1
    cp $c1
    cp h
    jp $e799


    db $fc
    ld b, c
    rst $38
    dec h
    cp $7e
    rst $38
    rst $38
    ldh a, [rIF]
    ld h, b
    sbc a
    pop bc
    ccf
    ldh [$1f], a
    rst $38
    ld [c], a
    inc e
    call nz, $0138
    ld hl, sp+$07
    ld hl, sp-$01
    ld c, h
    or e
    sub b
    ld l, a
    add b
    ld a, a
    and b
    ld e, a
    rst $38
    nop
    rst $38
    ld bc, $39fe
    add $fc
    inc bc
    rst $38
    di
    inc c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    inc e
    db $e3
    rst $38
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fc
    inc bc
    rst $38
    ldh a, [rIF]
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $0d
    inc bc
    rlca
    ld bc, $051b
    rst $38
    dec c
    inc bc
    ld b, l
    inc bc
    sbc l
    inc bc
    cp l
    inc bc
    rst $38
    sbc l
    inc hl
    db $dd
    inc hl
    ret


    scf
    ld b, c
    cp a
    rst $38
    ld bc, $c17f
    ccf
    pop hl
    rlca
    sbc l
    inc bc
    rst $38
    ld a, e
    rst $00
    db $d3
    rst $28
    jp $e3ff


    rst $38
    cp a
    rst $38
    rst $30
    rst $08
    push af
    adc a
    db $fd
    adc a
    rst $38
    xor l
    rst $18
    adc a
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    cp a
    rst $38
    inc hl
    rst $38
    reti


    ld h, a
    ei
    ld b, a
    rst $38
    di
    inc c
    db $fc
    rlca
    ei
    rlca
    ld_long a, $ff07
    ld a, [$fc07]
    rrca
    db $fc
    rra
    jr @+$01

    rst $38

jr_00b_62b2:
    jr nz, jr_00b_62b2

    pop bc
    db $fc
    pop bc
    ldh [$c3], a
    ret nz

    rst $38
    add a
    ret nz

    adc a
    add b
    rst $38
    add b
    adc a
    ldh a, [rP1]
    rst $38
    db $fc
    nop
    di
    nop
    rst $20
    nop
    and c
    nop
    rst $38
    inc sp
    nop
    ld [hl], a
    nop
    rst $18
    nop
    db $fd
    nop
    rst $38
    inc b
    nop
    inc bc
    nop
    rrca
    nop
    add hl, hl
    nop
    rst $38
    ld d, e
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    cp l
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    call c, $fe00
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $30
    nop
    db $e3
    nop
    inc hl
    nop
    inc d
    nop
    rst $38
    add b
    nop
    add sp, $00
    ld b, e
    nop
    add b
    nop
    rst $38
    sbc c
    nop
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    dec sp
    nop
    ld a, [bc]
    nop
    pop af
    nop
    ei
    nop
    rst $38
    di
    nop
    di
    nop
    sub h
    nop
    adc b
    nop
    rst $38
    jp hl


    nop
    rst $00
    nop
    sub e
    nop
    sub d
    nop
    rst $38
    db $fd
    ld [bc], a
    and a
    ld e, b
    ld d, c
    xor [hl]
    inc b
    ei
    rst $38
    ld hl, $04de
    di
    nop
    rst $20
    inc b
    ld [c], a
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$05
    ld a, [$7b84]
    rst $38
    ld [c], a
    dec c
    sub d
    dec c
    adc l
    ld [de], a
    inc e
    ld [bc], a
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$05
    ld a, [$fb04]
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $00fe
    cp $ff
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
    rst $30
    nop
    rst $20
    inc b
    ld [c], a
    rst $38
    ld [bc], a
    ldh [rNR10], a
    ldh [$0a], a
    ldh a, [$0a]
    ldh a, [rIE]
    ld [bc], a
    ldh [rNR41], a
    ret nz

    nop
    call nz, $cc10
    rst $38
    ld [bc], a
    call c, $fe01
    ld [bc], a
    pop af
    ld e, $c0
    rst $38
    ld c, e
    or h
    ret nz

    scf
    jr nc, jr_00b_639d

    add b
    ld [hl], c
    rst $38

jr_00b_639d:
    ld [$05f0], sp
    ld hl, sp+$10
    ld [c], a
    and [hl]
    ld b, b
    rst $38
    ld e, b
    add h
    ld h, b
    sbc h
    ld b, d
    cp h
    ld bc, $fffe
    inc bc
    nop
    dec c
    nop
    ld d, $00
    rla
    nop
    rst $38
    add hl, de
    nop
    ccf
    nop
    cpl
    nop
    ld [hl+], a
    nop
    rst $38
    ccf
    nop
    rra
    nop
    dec c
    nop
    rlca
    nop
    rst $38
    rra
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rst $38
    rra
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    rst $38
    jp $b700


    nop
    ld a, a
    nop
    rst $20
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    nop
    rst $28
    nop
    cp a
    nop
    ccf
    nop
    rst $38
    ld a, a
    nop
    cp a
    nop
    rst $08
    nop
    cp a
    nop
    rst $38
    db $fd
    nop
    ei
    nop
    ei
    nop
    cp $00
    rst $38
    ei
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    rst $38
    db $fc
    nop
    call $fb00
    nop
    ld l, a
    nop
    di
    ld b, a
    nop
    call nz, $1800
    nop
    rst $38
    dec de
    nop
    pop bc
    nop
    adc c
    nop
    adc l
    nop
    rst $38
    db $db
    nop
    ld a, [hl-]
    nop
    ret


    nop
    or e
    nop
    rst $38
    ld a, [de]
    pop hl
    inc h
    jp $00d9


    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_00b_6469

    adc b
    rlca
    ld d, h
    add e
    rst $38
    db $db
    inc h
    ld l, h
    sub e
    ld de, $44ee
    cp e
    rst $38
    db $10
    rst $28
    ld b, c
    cp [hl]
    nop
    rra
    jr nz, @+$21

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_6469:
    rst $38
    jr nz, jr_00b_6489

    sub b
    inc c
    inc b
    adc b
    nop
    adc b
    rst $38
    add b
    nop
    ret nc

    ld bc, $07d0
    sub h
    inc bc
    rst $38
    ld [bc], a
    add c
    ld de, $0900
    db $10
    add hl, bc
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38

jr_00b_6489:
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
    rra
    jr nz, jr_00b_64b5

    rst $38
    nop
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    rst $38
    ldh a, [rIF]
    ld [hl], b
    rrca
    ld [$0877], sp
    ld [hl], a
    rst $38
    ld c, e
    inc [hl]
    rlca
    jr c, jr_00b_64b3

    ld a, [$7b84]
    rst $38
    ld [c], a

jr_00b_64b3:
    dec c
    sub d

jr_00b_64b5:
    dec c
    adc l
    ld [de], a
    inc e
    ld [bc], a
    rst $38
    ld a, [hl-]
    dec b
    or d
    dec c
    add d
    dec c
    ld bc, $ff06
    ld bc, $1346
    ld h, b
    nop
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    nop
    ld [hl], b
    nop
    ld l, b
    nop
    call z, $ff00
    cp d
    nop
    ld a, [$1400]
    nop
    inc a
    nop
    rst $38
    ld a, [$fe00]
    nop
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    ld a, [c]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    inc bc
    nop
    rst $38
    inc e
    nop
    jr nc, jr_00b_6510

jr_00b_6510:
    ld b, b
    nop
    add b
    nop
    rst $38
    add b
    nop
    add b
    nop
    ld b, h
    nop
    inc e
    nop
    ret nz

    inc bc
    nop
    rst $38
    inc a
    jp $f00f


    inc bc
    db $fc
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
    db $fc
    inc bc
    ldh a, [rIF]
    db $e3
    inc e
    rst $08
    jr nc, @+$01

    sbc a
    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $ff
    ld bc, $01fe
    cp $01
    cp $01
    cp $ff
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    db $fc
    nop
    rst $38
    ld e, a
    rst $38
    rra
    nop
    ei
    ld e, $81
    dec bc
    rst $38
    nop
    sbc a
    nop
    add b
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
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    add b
    rst $38
    cp $f8
    db $fc
    ldh [$f0], a
    add b
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    ld sp, hl
    ld b, $f3
    inc c
    push hl
    dec de
    jp z, $ff37

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld sp, hl
    ld b, $fb
    inc b
    ei
    dec b
    di
    dec c
    rst $38
    rst $30
    add hl, bc
    push af
    dec bc
    push af
    dec bc
    dec c
    di
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp a
    nop
    inc bc
    nop
    inc b
    nop
    stop
    rst $38
    jr nz, jr_00b_6602

jr_00b_6602:
    jr c, jr_00b_6604

jr_00b_6604:
    rra
    nop
    rlca
    nop
    rst $38
    inc bc
    nop
    ld [$f000], sp
    nop
    jr jr_00b_6611

jr_00b_6611:
    jp $0004


    ret nz

    nop
    rst $38
    ld [hl+], a
    nop
    jr nz, jr_00b_661b

jr_00b_661b:
    jr nz, jr_00b_661d

jr_00b_661d:
    ld h, b
    nop
    db $fc
    ldh a, [rP1]
    rst $38
    nop
    rlca
    nop
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp-$3d
    inc a
    db $eb
    inc d
    rst $38
    dec a
    add d
    add hl, de

jr_00b_6633:
    ret nz

    dec l
    ret nz

    inc c
    ldh [rIE], a
    ccf
    ret nz

    rrca
    ldh a, [$c7]

Call_00b_663e:
    jr c, jr_00b_6633

    ld [$f9ff], sp
    inc b
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    jp $c300


    nop
    jp $c300


    nop
    rst $38
    jp $c300


    inc a
    pop hl
    ld e, $f0
    rrca
    rst $38
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    ei
    rlca
    adc $00
    rst $38
    ld hl, sp+$07
    nop
    rst $08
    ld [bc], a
    rst $38
    ld sp, hl
    rlca
    ld c, a
    cp a
    rst $38
    or a
    dec bc
    or l
    dec bc
    or l
    dec bc
    or l
    dec bc
    rst $38
    or l
    dec bc
    or l
    dec bc
    or l
    dec bc
    or l
    dec bc
    rst $38
    or l
    dec bc
    or l
    dec bc
    or l
    dec bc
    or l
    dec bc
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $fd
    ld bc, $01fe
    cp $01
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00b_66a5:
    rst $38
    nop
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    rst $38
    ldh a, [$f8]
    nop

jr_00b_66b3:
    add b
    add b
    nop
    rst $38
    ld hl, sp+$07
    jp $1f3c


    ldh [rPCM34], a
    adc a
    ld a, [$3cf8]
    ret nz

    ldh [$80], a
    nop
    rst $38
    sub h
    ld l, [hl]
    xor b
    ld e, h
    jr c, jr_00b_66a5

    ld [hl], b
    or b
    cp $e0
    jr nc, jr_00b_66b3

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld hl, sp-$80
    ret nz

    add b
    ret nz

    add b
    cp $00

Jump_00b_66df:
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    cp [hl]
    ld a, [hl]
    xor h
    ld e, h
    jr c, @-$26

    ld [hl], b
    or b
    cp $e0
    jr nc, @-$1e

    ld h, b
    ret nz

    ld h, b
    ret nz

    nop
    di
    ld c, h
    nop
    add d
    nop
    ld bc, $ff00
    add c
    nop
    add e
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    cp a
    nop
    ret nz

    nop
    ld h, b
    nop
    ld sp, hl
    nop
    jp $0026


    ld bc, $ff00
    ld b, b
    nop
    ret nz

    nop
    ld h, e
    nop
    ld a, l
    nop
    db $fc
    ld sp, hl
    nop
    rst $00
    nop
    add b
    nop
    rst $38
    ei
    rlca
    cp $0f
    rst $38
    inc e
    sbc $39
    rst $38
    db $fd
    inc sp
    xor d
    ld [hl], a
    db $fc
    ld h, a
    ld d, h
    rst $28
    rst $38
    ld hl, sp-$31
    xor b
    rst $18
    ldh a, [$9f]
    ret nc

    ccf
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    add b
    rst $38
    jr c, @+$09

    rst $38
    call nz, $c43f
    ccf
    call nz, $c43f
    ccf
    rst $38
    call nz, $f83f
    ccf
    ldh a, [$7f]
    ldh [rIE], a
    rst $08
    rst $38
    nop
    db $db
    nop
    db $db
    nop
    rst $38
    db $db
    nop
    inc e
    nop
    cp l
    nop
    add c
    nop
    db $fc
    sub b
    nop
    db $dd
    nop
    db $dd
    nop
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    nop
    ldh a, [rIF]
    rst $28
    ld a, h
    add e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ldh a, [$1f]
    adc b
    ld a, a
    adc d
    rst $38
    rrca
    nop
    add b
    nop
    rst $38
    ccf
    ret nz

    add a
    ld a, b
    pop af
    ld c, $de
    pop hl
    cp $1f
    jr c, @+$05

    ld b, $00
    ld bc, $ff00
    ld a, e
    nop
    dec a
    nop
    dec e
    nop
    ld c, $00
    rst $38
    ld c, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ldh a, [rSB]
    nop
    ld bc, $ff00
    ld a, a
    ld a, b
    dec a
    nop
    dec e
    nop
    ld c, $00
    rst $38
    ld c, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    ld h, b
    nop
    stop
    inc b
    nop
    ld h, $00
    db $fc
    cp [hl]
    nop
    db $fc
    nop
    ret nz

    nop
    add e
    nop
    ret nz

    nop
    rst $38
    jr nc, jr_00b_6808

jr_00b_6808:
    inc e
    nop
    ld [bc], a
    nop
    add c
    nop
    rst $38
    pop bc
    nop
    rlc b
    sbc [hl]
    nop
    ldh a, [rP1]
    ret nz

    ret nz

    nop
    rst $38
    or e
    rst $08
    sbc h
    ld a, a
    ld h, b
    rst $38
    add b
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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIE], a
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rra
    ldh [rIE], a
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld c, e
    cp a
    or l
    dec bc
    ld l, c
    sbc a
    add hl, sp
    adc a
    rst $38
    cp a
    dec bc
    rst $18
    dec hl
    ld e, a
    xor e
    ld [hl], l
    adc e
    rst $38
    cp c
    rrca
    dec hl
    sbc a
    ld l, e
    sbc a
    or l
    dec bc
    rst $38
    ld c, e
    cp a
    or l
    dec bc
    ld c, e
    cp a
    ld c, e
    cp a
    rst $38
    or l
    dec bc
    or l
    dec bc
    ld e, $01
    ld e, a
    rst $38
    rst $38
    rlca
    rst $38
    ld [bc], a
    ld bc, $01fe
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$80]
    rst $38
    xor d
    rra
    rlca

jr_00b_68af:
    ld bc, $ff00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    cp a
    ld b, b
    rst $18
    jr nz, jr_00b_68af

    db $10
    ld a, a
    add b
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $38
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ldh [$1f], a
    rst $38
    and $00
    or $00
    rst $30
    nop
    ei
    nop
    rst $38
    db $fc
    inc bc
    cp $01
    cp $00
    ret nz

    nop
    nop
    cp a
    nop
    ld bc, $0200
    nop
    dec b
    nop
    rst $38
    dec b
    nop
    rlca
    nop
    dec b
    nop
    add hl, bc
    nop
    rst $38
    add hl, bc
    nop
    jr jr_00b_6910

jr_00b_6910:
    jr c, jr_00b_6912

jr_00b_6912:
    ld c, h
    db $10
    rst $38
    ld l, [hl]
    ld de, $0897
    adc l
    ld [bc], a
    add e
    nop
    rst $38
    ld b, c
    nop
    ld a, h
    nop
    dec [hl]
    ld a, [bc]
    ld a, [hl-]
    dec b
    rst $38
    inc d
    dec bc
    inc b
    inc bc
    ld bc, $0e00
    ld bc, $2bff
    inc d
    ld d, a
    jr z, jr_00b_6984

    jr nc, jr_00b_695e

    jr @-$08

    dec bc
    inc b
    inc bc
    nop
    ld bc, $8000
    nop
    adc a
    nop
    ld bc, $0f00
    nop
    rst $38
    rlca
    nop
    ld hl, sp+$00
    adc [hl]
    nop
    ld d, $20
    rst $38
    inc e
    jr nz, jr_00b_695c

    sub b
    sub [hl]
    ld h, c
    ld c, l
    and d
    rst $38
    cp [hl]
    ld b, c

jr_00b_695c:
    sbc $20

jr_00b_695e:
    inc c
    nop
    ld d, l
    jr nz, @+$01

    rrca
    ldh a, [rBGP]
    cp b
    xor b
    ld d, b
    ld b, b
    and b
    rst $38
    add c
    ld b, b

jr_00b_696e:
    sbc $01
    ld a, a
    nop
    ld a, d
    add l
    rst $38
    dec a
    jp nz, $009f

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

jr_00b_6984:
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei

jr_00b_698c:
    nop
    reti


    nop

jr_00b_698f:
    rst $38
    ld c, c
    nop
    ld c, l
    nop
    cpl
    nop
    ccf
    nop
    rst $38
    add hl, sp
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ldh a, [rP1]
    ld c, b
    nop
    ld b, h
    nop
    rst $38
    inc h
    ld b, b
    xor b
    ld b, h
    ld [hl], $c8
    ld c, e
    add h

jr_00b_69b2:
    rst $38
    add c
    ld b, $01
    ld b, $09
    ld b, $eb
    inc d
    rst $38
    sub $28
    add sp, $10
    ld [hl], $01
    ld d, h
    inc bc
    rst $38
    ld a, [de]
    push hl
    sbc l
    ld h, d
    ld d, $e8
    cp e
    ld b, b
    rst $38
    ld [hl], b
    adc a
    ret nz

    ccf
    ld h, b
    sbc a
    ret


    ld [hl], $ff
    and d
    ld e, h
    jp z, $e434

    jr jr_00b_69b2

    jr z, @+$01

    db $ec
    db $10
    ret c

    jr nz, jr_00b_696e

    jr nc, jr_00b_698f

    db $10
    rst $38
    ret nz

    jr nc, jr_00b_698c

    ld d, b
    ret nz

    jr nc, jr_00b_6a43

    and b
    rst $38
    ldh a, [rIF]
    ret nz

    ccf
    ld h, b
    sbc a
    ret


    ld [hl], $80
    nop
    adc a
    nop
    add b
    nop
    jr nz, jr_00b_6a02

jr_00b_6a02:
    cp b
    nop
    jr c, jr_00b_6a82

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00b_6a90

    nop
    xor b
    nop
    ld a, h
    xor $ea
    ld e, [hl]
    inc a
    ldh [$fe], a
    nop
    xor e
    nop
    ld a, [hl]
    ld c, $18
    inc e
    adc d
    xor $7c
    nop
    xor e
    nop
    inc e
    inc a
    ld e, h
    ld a, h
    xor d
    call c, $1cfe
    nop
    xor d
    nop
    db $fc
    ldh [$fc], a
    xor [hl]
    ld c, $ee
    ld a, h
    db $fc

jr_00b_6a3e:
    nop
    cp [hl]
    nop
    inc a
    ld a, h

jr_00b_6a43:
    ld h, b
    ldh [$fc], a
    cp [hl]
    xor $6e
    xor $3c
    ld a, h
    nop
    xor b
    nop
    cp $ee
    ld [c], a
    jr jr_00b_6a70

    jr c, jr_00b_6a56

jr_00b_6a56:
    xor d
    nop
    ld a, h
    xor $7c
    adc d
    xor $7c
    nop
    cp h
    nop
    ld a, b
    ld a, h
    db $ec
    xor $be
    ld a, [hl]
    inc c
    ld c, $78
    ld a, h
    nop
    cp a
    nop
    jr jr_00b_6aac

jr_00b_6a70:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00b_6ab7

    nop
    cp [hl]
    nop
    jr jr_00b_6abc

    nop
    ld h, [hl]

jr_00b_6a82:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00b_6ac5

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_6a90:
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

jr_00b_6aac:
    nop
    rst $38
    cp a
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_00b_6ab6

jr_00b_6ab6:
    rst $30

jr_00b_6ab7:
    jr nz, jr_00b_6ab9

jr_00b_6ab9:
    ld b, b
    nop
    add b

jr_00b_6abc:
    jr nz, jr_00b_6a3e

    rst $18
    stop
    db $10
    ld b, b
    jr nz, jr_00b_6ac5

jr_00b_6ac5:
    ldh [$f8], a
    nop
    ret nz

    nop
    add b
    nop
    nop
    xor l
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    add d
    add b
    sub d
    adc a
    sub d
    adc a
    rst $38
    sub d
    adc a
    rst $28
    sbc h
    sub a
    adc h
    sub a
    adc h
    rst $38
    sub a
    adc h
    call z, $e0bf
    sbc a
    sub c
    adc a
    rst $38
    sub c
    adc a
    pop af
    adc a
    add c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    adc c
    nop
    adc [hl]
    rra
    adc [hl]
    rra
    rst $38
    adc [hl]
    rra
    sub e
    rrca
    sub a
    rrca
    sub a
    rrca
    rst $38
    sub a
    rrca
    sub a
    rrca
    add [hl]
    rra
    adc [hl]
    rra
    rst $38
    adc [hl]
    rra
    adc [hl]
    rra
    adc [hl]
    rra
    rst $38
    ld a, a
    cp a
    rst $38
    ld [$6f00], sp
    sbc b
    ld l, a
    sbc b
    rst $18
    ld l, b
    sbc a
    ldh a, [$7f]
    sub b
    ld a, a
    sub b
    rst $38
    ld a, a
    sub b
    sbc b
    rst $38
    ld l, a
    sbc b
    ld l, a
    sbc b
    db $fc
    ld l, a
    sbc b
    ld l, a
    sbc b
    ld [$ffff], sp
    sub a
    adc b
    nop
    ld bc, $0f97
    sub a
    rrca
    rst $38
    sub a
    rrca
    dec bc
    daa
    dec bc
    daa
    dec bc
    daa
    rst $38
    rst $38
    ld a, a
    ret nz

    add b
    adc c
    add b
    adc c
    add b
    rst $38
    adc b
    add a
    add b
    ldh a, [$f3]
    add b
    sub e
    add b
    cp a
    rst $38
    rst $18
    jr nz, jr_00b_6b89

    rst $38
    ld hl, $ffff
    ld hl, $e1ff
    rst $38
    rst $28
    rra
    ld [$ffff], sp
    ld hl, $40ff
    add b
    adc c
    add b
    adc c
    add b
    rst $38
    adc b
    add a
    add b
    ldh a, [$f3]
    add b

Call_00b_6b84:
    sub e
    add b
    rst $38
    sub c
    adc b

jr_00b_6b89:
    rst $18
    jr nz, @+$23

    rst $38
    ld hl, $ffff
    ld hl, $e1ff
    rst $38
    rst $28
    rra
    ld [$ffff], sp
    ret nz

    ld a, $00

jr_00b_6b9c:
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a

jr_00b_6ba1:
    rst $38
    ld bc, $0022
    jr c, @-$66

    ld h, b
    nop
    ld [$00ff], sp
    ld [$0800], sp
    inc b
    dec bc
    call z, $ff30
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rlca
    rst $38
    ld bc, $3dfe
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    rst $38
    dec a
    ld [bc], a
    nop
    rst $38
    rst $08
    jr nz, jr_00b_6b9c

    jr nz, @+$01

    rst $08
    jr nz, jr_00b_6ba1

    jr nz, jr_00b_6be3

    ldh [rP1], a
    rst $38
    rst $38
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0ff0], sp
    call c, $ff00

jr_00b_6be3:
    nop
    rst $38
    nop
    or h
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld bc, $c100
    ccf
    pop bc
    ccf
    rst $38
    ccf
    rst $38
    ld a, [bc]
    db $fc
    ld a, [bc]
    db $fc
    ld a, [bc]
    db $fc
    rst $38
    ld a, [bc]
    db $fc
    ld a, [$c3fc]
    ccf
    jp nz, $fe3f

    jp nz, $c23f

    ccf
    jp nz, $ff3f

    cp a
    rst $38
    ld bc, $9700
    rrca
    sub a
    rrca
    rst $38
    sub a
    rrca
    dec bc
    daa
    dec bc
    daa
    dec bc
    daa
    rst $38
    dec bc
    daa
    rlca
    ccf
    add e
    rst $38
    sub a
    rrca
    rst $38
    sub a
    rrca
    sub a
    rrca
    sub a
    rrca
    rst $38
    cp $ff
    rst $38
    cp $43
    ld bc, $c37d
    ld a, l
    jp $fdff


    jp Jump_00b_7fa3


    cp l
    ld h, e
    cp l
    ld h, e
    rst $18
    cp l
    ld h, e
    rst $38
    ld a, l
    jp $c37d


    rst $38
    ld a, l
    jp $c37d


    ld b, e
    rst $38
    cp $ff
    rst $38
    push af
    ld hl, sp-$07
    ldh [$e9], a
    ret nz

    adc c
    ret nz

    rst $38
    ret z

    add a
    add b
    ldh a, [$f3]
    add b
    sub e
    add b
    cp a
    rst $38
    inc hl
    nop
    call c, $dc23
    inc hl
    rst $38
    inc e
    db $e3
    cpl
    rra
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    cp $ff
    db $ed
    inc de
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rla
    rst $38
    rst $38
    rst $28
    rst $38
    inc hl
    nop
    call c, $dc23
    inc hl
    rst $38
    inc e
    db $e3
    cpl
    rra
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    call c, $ed23
    inc de
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rla
    rst $38
    rst $38
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld b, $ff
    nop
    cp $10
    cpl
    inc bc
    jr nz, jr_00b_6cc0

    jr nz, @+$01

    inc bc

jr_00b_6cc0:
    jr nz, jr_00b_6cc5

    jr nz, jr_00b_6cc4

jr_00b_6cc4:
    rst $38

jr_00b_6cc5:
    nop
    rrca
    rst $38
    nop
    ld [$0800], sp
    nop
    ld [$f800], sp
    rst $38
    rst $30
    ld [$3bcd], sp
    call $cd3b
    dec sp
    rst $38
    jp z, $3b3f

    call nz, Call_00b_4db7
    ld [hl], a
    call Call_00b_77ff
    call $cd77
    db $76
    rst $08
    rrca
    ldh a, [rIE]
    jp hl


    rla
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    add hl, bc
    rst $30
    nop
    add b
    nop
    add b
    nop
    cp a
    rst $38
    ld de, $d638
    jr z, jr_00b_6d7d

    rst $00
    rst $38
    adc $ff
    adc a
    sbc $bd
    adc [hl]
    cp a
    add c
    cp a
    rst $38
    ld de, $d638
    jr z, @-$01

    add $ff
    ld [hl], e
    rst $38
    pop af
    ld a, e
    cp l
    ld [hl], c
    db $fd
    add c
    cp a
    rst $38
    add e
    pop bc
    cp l
    add e
    cp l
    add e
    rst $38
    cp l
    add e
    cp l
    add e
    cp a
    add d
    cp c
    add a
    rst $38
    adc d
    add [hl]
    cp e
    add a
    cp c
    add a
    cp l
    add d
    db $fc
    adc a
    ldh a, [$83]
    db $fc
    jp $8fff


    nop
    ld bc, $0100
    inc bc
    di
    rlca
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $18
    rst $38
    rlca
    rst $38
    cp $07
    ld bc, $fffe
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc l
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    xor d
    pop de
    rst $38
    xor d
    rst $38
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [$6eef], sp
    adc c
    ld a, [hl]
    ld a, [de]
    ld e, e
    and a
    rst $38
    ld e, d
    ld l, $6f
    adc e
    ld l, [hl]

jr_00b_6d7d:
    ld a, [bc]
    ld e, e
    xor a
    cp a
    rst $38
    db $ed

jr_00b_6d83:
    rst $28
    db $dd

jr_00b_6d85:
    xor b
    cp l

jr_00b_6d87:
    cp a
    rst $38

jr_00b_6d89:
    rst $38
    db $fd
    rst $08

jr_00b_6d8c:
    or l
    pop af

jr_00b_6d8e:
    push af
    db $fd

jr_00b_6d90:
    rst $38
    rst $38

jr_00b_6d92:
    jr jr_00b_6d83

    jr jr_00b_6d85

    jr jr_00b_6d87

    jr jr_00b_6d89

    rst $38
    jr jr_00b_6d8c

    jr jr_00b_6d8e

    jr jr_00b_6d90

    jr jr_00b_6d92

    rst $38

jr_00b_6da4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    jr jr_00b_6da4

    ld [$d8ef], sp
    rrca
    ldh a, [rIE]
    rst $38
    db $fc
    nop
    db $fc
    rst $38
    db $fc
    nop
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f8
    rrca
    rst $30
    rst $38
    ld a, [de]
    db $ec
    scf
    db $db
    inc a
    sub $15
    push de
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    and $ff
    nop
    rst $38
    nop
    rst $38
    and a
    rst $38
    nop
    rst $38
    rst $28
    ld [$ffee], sp
    jr jr_00b_6ded

jr_00b_6ded:
    rst $38
    nop
    rst $38
    cp a
    ret nz

    rst $18
    ret nz

    rst $18
    add b
    ccf
    nop
    db $fc
    ld hl, sp+$0f
    ldh a, [$3f]
    ldh [rIE], a
    rst $38
    ld a, [bc]
    ld b, $fb
    rlca
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    db $fc
    rrca
    ldh a, [$03]
    db $fc
    inc bc
    rst $38
    cp a
    rst $38
    jp $3d83


    add e
    dec a
    add e
    rst $38
    dec a
    add e
    dec a
    add e
    dec a
    add e
    ld e, l
    add e
    rst $38
    jp $ddc1


    jp $83dd


    dec a
    inc bc
    db $fc
    ld sp, hl
    rrca
    pop af
    ccf
    db $e3
    rst $38
    adc l
    nop
    add b
    nop
    ret nz

    rst $38
    and b
    ret nz

    rst $18
    ldh [$80], a
    ldh [$df], a
    and b
    rst $18
    rst $38
    add b
    sbc a
    rra
    add b
    nop
    ccf
    rst $38
    nop
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $ed
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $30
    add c
    rst $38
    add c
    rst $38
    add c
    rst $30
    adc c
    xor b
    xor l
    sbc c
    add c
    cp a
    add c
    rst $38
    add c
    adc c
    sbc c
    rst $00
    xor l
    db $fd
    rst $28
    cp l
    rst $38
    sbc c
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $28
    rst $38
    add l
    rst $28
    add b
    rst $38
    db $dd
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    ld a, [hl]
    add c
    ld a, $c3
    ld b, h
    jr c, jr_00b_6ef2

    rst $38
    rst $38
    ld h, h
    jr c, @+$68

    rst $38
    ld h, h

jr_00b_6e93:
    jr c, jr_00b_6f03

jr_00b_6e95:
    rst $20
    rst $38

jr_00b_6e97:
    ld e, d
    xor a
    ld a, [hl]

jr_00b_6e9a:
    rst $28
    ld [$00ff], sp
    rst $28
    rst $38
    nop
    rst $28
    jr jr_00b_6e93

    jr jr_00b_6e95

    jr jr_00b_6e97

    rst $38
    jr jr_00b_6e9a

    ld [$17ef], sp
    ldh [rIF], a
    rst $38
    rst $38
    ccf
    nop
    ccf
    rst $38
    ccf
    nop
    ccf
    rst $38
    rst $38
    ccf
    push de
    ccf
    push de
    ccf
    push de
    ccf
    push de
    rst $38
    ccf
    push de
    ccf
    push de
    ccf
    push de
    ccf
    push de
    rst $38
    dec d
    push de
    ccf
    push de
    ld l, a
    dec [hl]
    db $db
    db $ed
    rst $38
    db $76
    dec de
    db $ec
    rst $30
    ld a, b
    rrca
    ldh a, [rIE]
    nop
    cp a
    rst $38
    ld bc, $fe03
    inc bc
    rst $38
    inc bc
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    add b
    nop

jr_00b_6ef2:
    cp a
    nop
    and a
    ld [$18af], sp
    rst $38
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    cp a

jr_00b_6f03:
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    db $fd
    and a
    ld [$18af], sp
    cp a
    nop
    rst $38
    rst $38
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor a
    rst $38
    cp $fd
    db $fc
    ei
    ld hl, sp-$01
    rst $30
    ldh a, [$ef]
    ldh [$df], a
    ret nz

    cp a
    add c
    rst $38

jr_00b_6f57:
    cp $c4
    ld a, c
    db $ec
    inc sp
    cp b
    ccf
    sbc b
    rst $38
    scf
    adc h
    dec sp
    add [hl]
    ccf
    add e
    ccf
    add c
    rst $38
    cp $c4
    ld sp, hl
    ld l, h
    di
    jr c, jr_00b_6f57

    jr @+$01

    rst $30
    inc c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $80bf
    cp a
    add b
    and a
    adc b
    xor a
    sbc b
    rst $38
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    db $fd
    and a
    adc b
    xor a
    sbc b
    cp a
    add b
    rst $38
    rst $38
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    rst $38
    adc a
    add b
    sbc $bf
    add e
    cp h
    rst $38
    rst $00
    cp b
    or b
    add b
    sbc $a1
    cp a
    rst $38
    cp a
    rst $38
    rrca
    nop
    ld e, $ff
    jp $fe3c


    add a
    ld a, b
    ldh a, [rP1]
    ld e, $e1
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp e
    add e
    cp e
    rst $38
    sbc a
    ld [c], a
    jp nc, $83ef

    rst $38
    rst $28
    rst $38
    rst $38
    xor [hl]
    rst $38
    ld hl, sp-$01
    rst $18
    add b
    rst $18
    rst $38
    rst $38
    rst $18
    add b
    rst $18
    rst $38
    add b
    rst $38
    ld a, a
    add b
    cp a
    rst $38
    ret nz

    add b
    cp a
    nop
    ccf
    add b
    rst $38
    ccf
    add b
    ccf
    add b
    ld a, a
    cp a

Jump_00b_7000:
    ccf
    rst $38
    rst $38
    nop
    ld bc, $01fe
    ld a, [c]
    dec b
    or $0d
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    ld a, [c]
    dec b
    or $0d
    cp $01
    nop
    rst $38
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    cp l
    add e
    cp l
    add e
    cp l
    add e
    cp l
    add e
    db $fc
    cp l
    add e
    cp l
    add e
    cp a
    rst $38
    rst $38
    db $e3
    rst $18
    add e
    add c
    cp l
    add e
    cp l
    add e
    rst $38
    cp l
    add e
    cp l
    add e
    cp l
    add e
    cp l
    add e
    rst $38
    cp a
    jp Jump_00b_66df


    cpl
    ld a, h
    sbc a
    jr c, @+$01

    rst $18
    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    cp a
    jp $67de


    ld l, $7d
    sbc [hl]
    add hl, sp
    rst $38
    sbc $31
    cp $61
    cp $c1
    cp $81
    xor a
    rst $38
    ld a, a
    cp a
    ccf
    rst $18
    rra
    rst $38
    rst $28
    rrca
    rst $30
    rlca
    ei
    inc bc
    db $fd
    add e
    cp a
    ld bc, $01ff
    di
    dec b
    rst $30
    dec c
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    di
    dec b
    rst $30
    dec c
    rst $38
    ld bc, $ffff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp a
    rst $38
    dec c
    inc bc
    rra
    rst $38
    pop bc
    ccf
    cp $85
    ld a, e
    di
    ld bc, $e31d
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add c
    ld a, a
    rst $38
    ld a, a
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    rst $38
    ld bc, $ffbf
    db $eb
    rst $38
    ld a, a
    db $eb
    pop bc
    ld a, a
    db $fc
    ld b, l
    rst $30
    ld c, l
    rst $38
    ld b, c
    rst $38
    rst $38
    ccf
    rst $28
    cp c
    ld l, a
    ld l, c
    rra
    pop af
    ld a, a
    rst $38
    ld a, e
    ld bc, $7ffb
    ld bc, $feff
    ld bc, $8000
    nop
    add b
    nop
    rst $38
    ld h, c
    nop
    rst $38
    nop
    rst $18
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
    ldh [rP1], a
    ei

jr_00b_7120:
    nop
    cp $00
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
    or b
    rst $38
    ret nz

    add b
    rst $38
    add [hl]
    add b
    adc h
    add b
    cp h
    add b
    cp l
    add b
    rst $38
    cp $81
    db $f4
    adc e
    ldh [$9f], a
    ldh [$9f], a
    rst $38
    and b
    rst $18
    add b
    rst $38

jr_00b_7149:
    add b
    rst $38
    add b
    rst $38
    db $fc
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    ld bc, $0300
    nop
    dec b
    ld [bc], a
    rst $38
    nop
    rst $38
    scf
    ret z

    db $e3
    jr jr_00b_71dc

    inc b
    inc e
    ld [hl+], a
    rst $38
    ld a, $01
    ld a, a
    nop
    ccf
    ld b, b
    ld a, a
    nop
    rst $38
    ld a, $01
    xor a
    ld b, c
    ld c, c
    inc sp

jr_00b_7176:
    ld [hl], b
    rrca
    rst $38
    ld a, a
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    rst $38
    rst $38
    rst $18
    rst $28
    jr nz, jr_00b_7176

    nop
    rst $28
    db $10
    rst $38
    rst $20
    db $10
    rst $20
    jr jr_00b_7120

    jr jr_00b_7149

    ld a, a
    rst $38
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    or $06
    rst $38
    rst $30
    add hl, bc
    rst $28
    nop
    rst $28
    db $10
    ld e, a
    nop
    rst $38
    sbc a
    jr nz, jr_00b_7218

    ret nz

    rst $20
    ldh a, [$f3]
    ld hl, sp-$02
    ld hl, sp-$04
    rst $38
    db $fd
    ei
    cp $ff
    rst $38
    sbc $81
    sbc $81
    ld b, c
    add c
    pop bc
    rst $38
    rst $38
    sbc [hl]
    pop bc
    sbc $81
    sbc $81
    sbc $81
    rst $38
    db $fc
    cp $e9
    ld hl, sp-$0f
    ldh [$f1], a
    ret nz

    rst $38
    or e
    ret nz

    db $d3
    add b
    ld d, e
    add b
    db $e3
    db $10
    rst $38
    inc de

jr_00b_71dc:
    nop
    inc sp
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    rst $38
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld a, h
    inc bc
    rst $38
    jr nc, jr_00b_71ef

jr_00b_71ef:
    ld sp, $3100
    nop
    ld sp, $ff00
    inc sp
    nop
    inc sp
    nop
    ld [hl], e
    nop
    db $e3
    db $10
    di
    jr nc, jr_00b_7201

jr_00b_7201:
    ld sp, $b600
    ld bc, $01ff
    nop
    ld bc, $0700
    nop

jr_00b_720c:
    cp a
    nop
    rst $38
    or a
    ld [$08f7], sp
    db $e3
    inc e
    ld h, c
    sbc [hl]

jr_00b_7217:
    rst $38

jr_00b_7218:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    cp a
    nop
    add c
    nop
    di
    nop
    cp e
    nop
    rst $38
    sbc a
    jr nz, jr_00b_720c

    ld [hl+], a
    ret z

    scf
    ld b, b
    cp a
    rst $38
    nop

jr_00b_7236:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld b, $01
    ld [bc], a
    ld bc, $030c
    rst $38
    ld b, $01
    ld [hl+], a
    ld bc, $01ce
    sbc $01
    rst $38
    adc $11
    xor $11
    db $e4
    dec de
    jr nz, jr_00b_7236

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_725e:
    nop
    rst $38
    rst $38
    db $fd
    inc bc
    rst $30
    inc c
    rst $18
    jr nc, jr_00b_7217

    ld h, b
    rst $38
    ld l, a
    sub b
    rst $30
    nop
    rst $30
    ld [$00fa], sp
    rst $38
    ld a, [$fd05]
    rlca
    push af
    rrca
    rst $28
    rra
    cp $5f
    ccf
    cp a
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld [bc], a
    ld bc, $7f83
    rst $38
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld a, l

jr_00b_7292:
    inc bc
    ld a, l
    inc bc
    rst $38
    rst $38
    ei
    rst $38
    inc b
    rst $38
    nop
    rst $30
    ld [$f7ff], sp
    ld [$18e7], sp
    add hl, bc
    jr jr_00b_7292

    cp $ff
    db $fd
    ld [bc], a
    call nz, $0103
    ld [bc], a
    ld bc, $ff02
    inc bc
    nop
    add e
    add b
    jp nz, $ff41

jr_00b_72b8:
    ld hl, $efff
    inc de
    rst $10
    jr jr_00b_725e

    jr z, jr_00b_72fb

    ld b, h
    rst $38
    ld a, [hl]
    add h

jr_00b_72c5:
    db $fd
    ld [bc], a

jr_00b_72c7:
    ld a, a
    ld [bc], a
    ld a, l
    ld [bc], a
    rst $38
    cp h
    ld bc, $8331
    add d

jr_00b_72d1:
    adc l
    ld l, [hl]
    sub c
    rst $38
    sbc $e1
    sbc $81

jr_00b_72d9:
    sbc $81
    sbc $81
    adc h
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    xor a
    ldh a, [$67]
    and b
    rst $38
    jp $c720


    jr nz, @-$37

    jr nz, jr_00b_72b8

    ld hl, $ceff
    ld hl, $21ce
    rst $28
    jr nz, jr_00b_7362

jr_00b_72fb:
    ldh [rIE], a
    rst $20
    jr nz, jr_00b_72c7

    jr nz, jr_00b_72c5

    jr nz, jr_00b_72c7

    jr nz, @+$01

    jp $c320


    jr nz, jr_00b_72d1

    ld hl, $3fdf
    rst $38
    rst $20
    jr nz, jr_00b_72d9

    jr nz, @+$1d

    nop
    add b
    ld a, a
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    and b
    ld e, a
    nop
    db $dd
    add b
    adc a
    ld hl, sp-$67
    adc b
    add h
    rst $38
    pop af
    adc [hl]
    add b
    add h
    ld b, c
    jp nz, Jump_00b_7f3f

    rst $38
    ld [$3eff], sp
    ld sp, hl
    rst $08
    ccf
    inc a
    inc de
    cp $02
    pop af
    call c, $2123
    nop
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    adc h
    rst $38
    ret nz

    cp a
    rst $28
    xor d
    rst $10
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $a3ff
    ld e, a
    cp a
    rst $38
    call c, $80ff
    rst $38
    add b

jr_00b_7362:
    rst $38
    ei
    ret nz

    cp a
    cp e
    call nz, $dfff
    rst $38
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $cfdf
    inc bc
    rst $38
    or [hl]
    rst $38
    nop
    rst $38
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    call nz, $d33b
    rst $38
    nop
    rst $38
    ld bc, $ffff
    dec e
    db $e3
    rst $28
    ld de, $03f9
    jp nz, $ff01

    ldh [$03], a
    ld [bc], a
    ld bc, $030d
    ld bc, $ffff
    sub e
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    adc a
    ld [hl], b
    db $fc
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    add e
    nop
    rst $38
    nop
    rst $38
    inc h
    db $db
    rst $38
    nop
    rst $38
    nop
    ld b, a
    nop
    ret nz

    dec bc
    nop
    add b
    nop
    rst $30
    rst $38
    nop
    ld b, l
    add b
    nop
    add b
    nop
    or b
    nop
    add b
    nop
    or b
    nop
    add b
    nop
    add b
    rst $38
    rst $08
    db $fd
    rst $38
    dec a
    rst $38
    rrca
    rst $38
    rst $38
    add h
    ld a, a
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    rst $38
    inc c
    rst $38
    adc h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    rst $38
    inc c
    rst $38
    adc h
    ld a, a
    reti


    ld h, $2f
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    rst $38
    rrca
    ldh a, [rNR10]
    rst $38
    di
    db $10
    jr jr_00b_7416

jr_00b_7416:
    cp $f8
    rrca
    daa
    jr jr_00b_7424

    nop
    rst $38
    or a
    rst $38
    pop hl
    rst $38
    rst $20
    ccf

jr_00b_7424:
    rst $38
    rst $38
    ld a, c
    rst $00
    ld e, $ff
    adc a
    ld b, $fa
    db $fc
    cp a
    rst $38
    jp hl


    rst $38
    ld bc, $03ff
    rst $38
    jp $ffdd


    cp e
    rst $38
    rst $38
    ld a, $ff
    sub b
    ld a, a
    ret nz

    ccf
    ld sp, hl
    add [hl]
    cp a
    rst $38
    ei
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ei
    nop
    rst $38
    ld hl, $ffdf
    ld sp, hl
    rst $38
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ei
    inc b
    rst $08
    nop
    rst $38
    cp a
    rst $38
    inc bc
    rst $38
    rst $38
    dec b
    ei
    dec e
    db $e3
    dec c
    di
    ld a, l
    add e
    di
    ld sp, hl
    rlca
    ld bc, $00ff
    rst $38
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    add a
    ld a, b

jr_00b_747b:
    rrca
    jr nc, jr_00b_747b

    ld a, a
    nop
    rra
    nop
    add b
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    ld bc, $59ff
    and a
    db $fc
    inc bc
    rst $38
    db $fd
    ld [bc], a
    call nz, $0103
    ld [bc], a
    ld bc, $ff02
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $01ff
    rst $38
    rla
    db $eb
    ld a, a
    add b
    ld a, a
    add b
    sbc $00
    db $d3
    ld c, b
    add b
    nop
    add b
    nop
    add e
    nop
    add b
    nop
    ld hl, sp-$01
    nop
    ld l, e
    add b
    nop
    or b
    nop
    add b
    nop
    add b
    nop
    or b
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    scf
    rst $38
    scf
    rst $38
    rst $38
    scf
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    rst $38
    inc de
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    db $fc
    inc de
    rst $38
    ld [hl], e
    rst $38
    cpl
    rst $38
    cp h
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    nop
    di
    ld c, h
    nop
    add d
    nop
    ld bc, $ff00
    add c
    nop
    add e
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    cp a
    nop
    ret nz

    nop
    ld h, b
    nop
    ld sp, hl
    nop
    jp $0026


    ld bc, $ff00
    ld b, b
    nop
    ret nz

    nop
    ld h, e
    nop
    ld a, l
    nop
    db $fc
    ld sp, hl
    nop
    rst $00
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $08
    rst $38
    nop
    db $db
    nop
    db $db
    nop
    rst $38
    db $db
    nop
    inc e
    nop
    cp l
    nop
    add c
    nop
    db $fc
    sub b
    nop
    db $dd
    nop
    db $dd
    nop
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    nop
    ldh a, [rIF]
    rst $28
    ld a, h
    add e
    nop
    ld a, a
    nop
    rst $38
    nop
    db $e3
    db $fc
    add e
    rst $38
    db $fc
    jp $fcfd


    jp $c3fc


    db $fc
    jp $bfff


    rst $38
    di
    adc [hl]
    di
    adc [hl]
    di
    adc [hl]
    cp a
    rst $38
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    adc d
    rst $38
    rrca
    nop
    add b
    nop
    rst $38
    ccf
    ret nz

    add a
    ld a, b
    pop af
    ld c, $de
    pop hl
    cp $1f
    jr c, @+$05

    ld b, $00
    ld bc, $ff00
    ld a, e
    nop
    dec a
    nop
    dec e
    nop
    ld c, $00
    rst $38
    ld c, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ldh a, [rSB]
    nop
    ld bc, $ff00
    ld a, a
    ld a, b
    dec a
    nop
    dec e
    nop
    ld c, $00
    rst $38
    ld c, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    ld h, b
    nop
    stop
    inc b
    nop
    ld h, $00
    db $fc
    cp [hl]
    nop
    db $fc
    nop
    ret nz

    nop
    add e
    nop
    ret nz

    nop
    rst $38
    jr nc, jr_00b_75df

jr_00b_75df:
    inc e
    nop
    ld [bc], a
    nop
    add c
    nop
    rst $38
    pop bc
    nop
    rlc b
    sbc [hl]
    nop
    ldh a, [rP1]
    ret nz

    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld c, e
    cp a
    or l
    dec bc
    ld l, c
    sbc a
    add hl, sp
    adc a
    rst $38
    cp a
    dec bc
    rst $18
    dec hl
    ld e, a
    xor e
    ld [hl], l
    adc e
    rst $38
    cp c
    rrca
    dec hl
    sbc a
    ld l, e
    sbc a
    or l
    dec bc
    rst $38
    ld c, e
    cp a
    or l
    dec bc
    ld c, e
    cp a
    ld c, e
    cp a
    rst $38
    or l
    dec bc
    or l
    dec bc
    ld e, $01
    ld e, a
    rst $38
    rst $38
    rlca
    rst $38
    ld [bc], a
    ld bc, $01fe
    rst $38
    nop
    rst $38
    rst $30
    adc a
    rst $30
    adc a
    rst $30
    adc a
    rst $30
    adc a
    adc a
    rst $38
    jp $c3ff


    rst $38
    cp a
    rst $38
    pop bc
    ccf
    rst $00
    ccf
    rst $00
    ccf
    adc a
    rst $38
    pop af
    adc a
    rst $30
    adc a
    add b
    rst $38
    xor d
    rra
    rlca

jr_00b_7655:
    ld bc, $ff00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    cp a
    ld b, b
    rst $18
    jr nz, jr_00b_7655

    db $10
    ld a, a
    add b
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $38
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ldh [$1f], a
    add b
    nop
    add b
    nop
    nop
    adc e
    nop
    rlca
    dec bc
    inc c
    rst $38
    dec bc
    inc c
    ccf
    jr c, jr_00b_76f4

    ld l, b
    xor a
    ret nc

    rst $38
    rst $28
    sub b
    rst $28
    sub b
    cp a
    ret nz

    ld a, a
    ld b, b
    cp $57
    ld l, b
    cpl
    jr c, jr_00b_76ca

    inc e
    rlca
    adc e
    nop
    ld c, $0f
    add hl, bc
    rst $38
    dec bc
    inc c
    rla
    jr jr_00b_772b

    ld [hl], b
    rst $18
    and b
    rst $38
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp $bf

jr_00b_76ca:
    ret nz

    ld d, e
    ld l, h
    ld h, $39
    rra
    adc e
    nop
    rlca
    dec de
    inc e
    rst $38
    ccf
    jr nz, jr_00b_7750

    ld a, b
    rst $38
    sub b
    rst $28
    sub b
    rst $38
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld l, a
    ld d, b
    cp $47
    ld a, b
    scf
    jr c, jr_00b_7704

    jr jr_00b_76fe

    add b
    nop
    adc e
    nop
    rrca

jr_00b_76f4:
    inc sp
    inc a
    rst $38
    ld e, a
    ld h, b
    cp a
    ret nz

    rst $38
    add c
    rst $38

jr_00b_76fe:
    add d
    cp $bd
    jp Jump_00b_605f


jr_00b_7704:
    inc sp
    inc a
    rrca
    add d
    nop
    rlca
    rst $38
    dec de
    inc e
    cpl
    jr nc, jr_00b_774f

    jr nz, @+$61

    ld h, b
    rst $38
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld e, [hl]
    ld h, c
    cp $3f
    jr nz, jr_00b_774f

    jr nc, jr_00b_7735

    inc e
    rrca
    cp a
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca

jr_00b_772b:
    ld [$17ff], sp
    jr jr_00b_7747

    jr jr_00b_7751

    db $10
    rra
    db $10

jr_00b_7735:
    rst $38
    rra
    db $10
    rra
    db $10
    rla
    jr jr_00b_7754

jr_00b_773d:
    jr jr_00b_773d

    rrca
    ld [$0c0b], sp
    dec b
    ld b, $03
    xor a

jr_00b_7747:
    nop
    inc bc
    dec b
    ld b, $07
    inc b
    rst $30
    rlca

jr_00b_774f:
    inc b

jr_00b_7750:
    ld [bc], a

jr_00b_7751:
    inc bc
    ld [bc], a
    inc bc

jr_00b_7754:
    ld [bc], a
    adc d
    ld bc, $1a02
    xor b
    ld a, $03
    ld bc, $0080
    add b
    nop

jr_00b_7761:
    xor d
    nop
    ld bc, $0f1d
    adc b
    inc bc
    ld bc, $008b
    jr c, jr_00b_7761

    call z, $faff
    ld b, $fe
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $77ff
    call $89ff
    rst $38
    call $cd33
    cp $fd
    inc de
    cp $02
    add [hl]
    ld a, [$8bfc]
    nop
    ldh [$58], a
    cp b
    rst $38
    db $f4
    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    cp e
    ld h, a
    rst $38
    ld b, l
    rst $38
    ld h, a
    sbc c
    ld h, a
    cp $fe
    ld a, [bc]
    ld a, [$1c06]
    db $ec
    ldh a, [$8b]
    nop
    ldh a, [$ec]
    inc e
    rst $38
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    ld [hl], a
    call $ffff
    adc c
    rst $38
    call $cd33
    db $fd
    inc de
    cp $fe
    ld [bc], a
    cp $06
    ld c, $f2
    db $fc
    add b
    nop
    adc e
    nop
    ldh a, [$cc]
    inc a
    rst $38
    ld a, [$fd06]
    inc bc
    rst $38
    adc l
    rst $38
    ld de, $edfe
    sbc a

jr_00b_77d9:
    ld a, [$cc26]
    inc a
    ldh a, [$82]
    nop
    ldh [rIE], a
    ret c

    jr c, jr_00b_77d9

    inc c
    db $fc
    inc b
    ld_long a, $ff06

jr_00b_77eb:
    xor $9a
    cp $12
    cp $9a
    ld h, d

jr_00b_77f2:
    sbc [hl]
    cp $fc
    inc h
    db $f4
    inc c
    ret z

    jr c, jr_00b_77eb

    cp a
    ret nz

    and b
    ld h, b

Call_00b_77ff:
    ret nc

    jr nc, jr_00b_77f2

    db $10
    rst $38
    ld c, b
    cp b
    add sp, -$48
    ld e, b
    xor b
    ld hl, sp-$58
    rst $38
    ld hl, sp-$58
    ld e, b
    xor b
    add sp, $58
    add sp, $18
    cp $f0
    db $10
    ret nc

    jr nc, @-$5e

    ld h, b
    ret nz

    cp a
    ld [hl], b
    ld hl, sp-$78
    ld [hl], h
    adc h
    cp $02
    rst $38
    sbc [hl]
    ld h, d
    sbc [hl]
    ld h, d
    db $e4
    inc e
    ld hl, sp+$08
    add sp, -$18
    sbc b
    ld [hl], b
    nop
    xor b
    ldh [$f0], a
    nop
    add b
    nop
    cp a
    inc e
    ld a, [hl]
    ld h, d
    ld a, [$ef86]
    sub c
    cp $ef
    sub c
    ei
    push bc
    ld a, $32
    ld a, h
    xor b
    ldh [$80], a
    nop
    cp a
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_00b_78b1

    ld h, e
    rst $38
    ld a, a
    ld b, d
    cp a
    jp nz, $83ff

    db $fd
    add e
    rst $38
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    cp $5f
    ld h, b
    cpl
    jr nc, jr_00b_7888

    inc e
    rlca
    sub a
    nop
    inc bc
    inc c
    rrca
    db $10
    rst $38
    rra
    jr nz, jr_00b_7898

    jr nz, jr_00b_78ba

    ld b, b
    ccf
    ld b, b
    rst $38
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, jr_00b_78a5

jr_00b_7886:
    jr nz, jr_00b_7886

jr_00b_7888:
    rrca
    db $10
    inc bc
    inc c
    nop
    inc bc
    nop
    cp a
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    rst $38

jr_00b_7898:
    jr nz, jr_00b_78b9

    jr nz, jr_00b_78bb

    ld b, b
    ccf
    ld b, b
    ccf
    rst $38
    ld b, b

Call_00b_78a2:
    ccf
    ld b, b
    ccf

jr_00b_78a5:
    jr nz, jr_00b_78c6

    jr nz, jr_00b_78c8

    db $f4
    db $10
    rrca
    inc c
    inc bc
    nop
    add b
    nop

jr_00b_78b1:
    cp a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_00b_78b9:
    rst $38

jr_00b_78ba:
    inc bc

jr_00b_78bb:
    nop
    rlca
    nop
    rla
    nop
    rra
    nop
    rst $38
    ccf
    nop
    ld a, a

jr_00b_78c6:
    nop
    rst $38

jr_00b_78c8:
    nop
    rst $38
    nop
    adc a
    nop
    stop
    stop
    add b
    nop
    rst $38
    stop
    stop
    jr jr_00b_78da

jr_00b_78da:
    jr jr_00b_78dc

jr_00b_78dc:
    rst $38
    jr c, jr_00b_78df

jr_00b_78df:
    inc a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rlca
    nop
    rrca
    rlca
    rrca
    inc bc
    rst $38
    rra
    rrca
    ld [hl], $19
    ccf
    db $10
    ccf
    db $10
    rst $38
    ld [hl], $19
    ccf
    rra
    ld l, l
    inc sp
    ld a, a
    ld hl, $7ffd
    ld hl, $336d
    ccf
    ld e, $00
    db $fd
    ld [$1f00], sp
    ld [$0f1f], sp
    rlca
    rst $38
    rlca
    inc bc
    rrca
    rlca
    dec de
    inc c
    scf
    jr @+$01

    ccf
    db $10
    ld l, a
    jr nc, jr_00b_799d

    jr nz, jr_00b_799f

    jr nz, @-$01

    ld a, a
    jr nz, @+$40

    ld de, $0f1f
    nop
    cp a
    nop
    dec b
    nop
    rrca
    dec b
    rrca
    rlca
    rst $38
    rrca
    inc bc
    inc e
    rrca
    ld [hl], $19
    inc a
    inc de
    rst $38
    ld l, b
    scf
    ld h, b
    ccf
    ld h, b
    ccf
    jr nc, jr_00b_7962

jr_00b_7943:
    push af
    jr nc, @+$21

    inc e
    rrca
    inc bc
    nop
    cp a
    ldh [$d8], a
    jr c, jr_00b_7943

    inc c
    ld_long $ff1e, a
    cp $12
    db $fd
    inc de
    ld a, e
    sbc l
    ld l, e
    sbc l
    rst $38
    rst $38
    ld bc, $21ff
    db $fd
    inc bc

jr_00b_7962:
    cp $02
    cp $fa
    ld b, $f4
    inc c
    ret c

    jr c, @-$1e

    push de
    nop
    inc bc
    rrca
    rra
    ccf
    rst $30
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    rra
    ccf
    rrca
    rra
    inc bc
    rrca
    nop
    inc bc
    add b
    nop
    rst $38
    inc a
    nop
    ld b, d
    inc a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    db $fd
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, d

jr_00b_799d:
    inc a
    nop

jr_00b_799f:
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    ld [$0c00], sp
    nop
    inc l
    nop
    rst $38
    ld a, $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    di
    stop
    stop
    stop
    rst $38
    stop
    stop
    stop
    jr nc, jr_00b_79c6

jr_00b_79c6:
    rst $38
    jr nc, jr_00b_79c9

jr_00b_79c9:
    jr c, jr_00b_79cb

jr_00b_79cb:
    jr c, jr_00b_79cd

jr_00b_79cd:
    ld a, b
    nop
    rst $38
    ld a, h
    nop
    cp $00
    rst $38
    nop
    rst $38

jr_00b_79d7:
    nop
    adc a
    nop
    add b
    nop
    call z, $ff80
    sbc $8c
    cp $9c
    db $fc
    ldh [$fc], a
    ldh [rIE], a
    cp $fc
    ld l, a
    sbc [hl]
    rst $38
    ld c, $ff
    ld a, [bc]
    db $f4
    ld l, [hl]
    sbc b
    ld hl, sp-$10
    nop
    adc a
    nop
    add b
    nop
    ld hl, sp-$80
    rst $38
    db $fc
    cp b
    cp $fc
    cp [hl]
    ld a, h
    rst $18
    ld [hl], $ff
    cp $18
    cp $1c
    cp $1c
    sbc $3c
    db $f4
    cp a
    ld h, [hl]
    and $c0
    nop
    cp a
    nop
    ret nz

    nop
    and $c0
    rst $38
    and $ff
    rst $38
    xor $7e
    ldh a, [$fe]
    db $fc
    rst $38
    cp $ff
    rst $28
    cp $8f
    cp $0e
    db $fc
    rra
    or $f5
    ld e, $f0
    ld [hl], b
    ldh [$80], a
    nop
    nop
    ld a, [$7c38]
    ld b, h
    add $ce
    sub $be
    and $44
    add $38
    ld a, h
    nop
    add b
    nop
    add b
    nop
    and d
    jr nc, jr_00b_7abb

    jr nc, jr_00b_79d7

    jr nc, jr_00b_7ac7

    nop
    add b
    nop
    add b
    nop
    ld [c], a
    ld a, b
    ld a, h
    add $06
    ld [$fc78], a
    ret nz

    cp $00
    add b
    nop
    add b
    nop
    and d
    ld a, h
    add $1c
    adc d
    add $7c
    nop
    add b
    nop
    add b
    nop
    xor d
    inc c
    inc e
    inc a
    ld l, h
    xor d
    call z, $0cfe
    nop
    add b
    nop
    add b
    nop
    xor d
    cp $c0
    db $fc
    ld b, $8a
    add $7c
    nop
    add b
    nop
    add b
    nop
    xor d
    ld a, h
    add $c0
    db $fc
    adc d
    add $7c
    nop
    add b
    nop
    add b
    nop
    xor d
    cp $c6
    adc $18
    add d
    jr nc, jr_00b_7a9f

jr_00b_7a9f:
    add b
    nop
    add b
    nop
    and d
    ld a, h
    add $7c
    adc d
    add $7c
    nop
    add b
    nop

jr_00b_7aad:
    add b
    nop
    and d
    ld a, h
    add $7e
    xor d
    ld b, $c6
    ld a, h
    nop
    add b
    nop
    add b

jr_00b_7abb:
    nop
    cp h
    jr c, jr_00b_7b03

    ld l, h
    ld b, h
    add $a2
    cp $c6
    nop
    add b

jr_00b_7ac7:
    nop
    add b
    nop
    and d
    db $fc
    add $fc
    adc d
    add $fc
    nop
    add b
    nop
    add b
    nop
    and d
    ld a, h
    add $c0
    adc d
    add $7c
    nop
    add b
    nop
    add b
    nop
    cp b
    ld hl, sp-$3c
    adc $c6
    cp d
    add $c4
    adc $f8
    nop
    add b
    nop
    add b
    nop
    and d
    cp $c0
    db $fc
    adc d
    ret nz

    cp $00
    add b
    nop
    add b
    nop
    and d
    cp $c0
    db $fc
    add d
    ret nz

jr_00b_7b03:
    nop
    add b
    nop
    add b
    nop
    xor d
    ld a, h
    add $c0
    sbc $8a
    add $7c
    nop
    add b
    nop
    add b
    nop
    add d
    add $fe
    add d
    add $00
    add b
    nop
    add b
    nop
    and b
    ld a, b
    jr nc, jr_00b_7aad

    jr nc, jr_00b_7b9d

    nop
    add b
    nop
    add b
    nop
    and b
    ld a, $0c
    adc d
    call z, $0078
    add b
    nop

jr_00b_7b33:
    add b
    nop
    xor e
    add $cc
    ret c

    ldh a, [$f8]
    cp $e8
    db $fc
    call nz, $c6ce
    adc $00
    add b
    nop
    add b
    nop
    add b
    ret nz

    adc d
    ret nz

    cp $00
    add b
    nop
    add b
    nop
    jp z, $c682

    xor $fe
    and d
    sub $c6
    nop
    add b
    nop
    add b
    nop
    sub a
    add $e6
    or $d6
    cp $fa
    adc $de
    add $ce
    add $00
    add b
    nop
    add b
    nop
    and b
    ld a, h
    add $8a
    add $7c
    nop
    add b
    nop
    add b
    nop
    and b
    db $fc
    add $a2
    db $fc
    ret nz

    nop
    add b
    nop
    add b
    nop
    and d
    ld a, h
    add $ce
    adc d
    sub $7e
    nop
    add b
    nop
    add b
    nop
    and b
    db $fc
    add $fa
    ld hl, sp-$04
    call z, $c6ce
    nop
    add b
    nop

jr_00b_7b9d:
    add b
    nop
    xor d
    ld a, h
    add $c0
    ld a, h
    xor d
    ld b, $c6
    ld a, h
    nop
    add b
    nop
    add b
    nop
    and b
    db $fc
    jr nc, jr_00b_7b33

    jr nc, jr_00b_7bb3

jr_00b_7bb3:
    add b
    nop
    add b
    nop
    add b
    add $8a
    add $7c
    nop
    add b
    nop
    add b
    nop
    db $fc
    add $ee
    add $ee
    add $6c
    and $6c
    jr z, jr_00b_7c04

    stop
    add b
    nop
    add b
    nop
    adc e
    add $d6
    ld l, h
    cp $fe
    ld l, h
    xor $c6

jr_00b_7bdb:
    ld l, h
    ld b, h
    ld l, h
    nop
    add b
    nop
    add b
    nop
    push de
    add $ee
    ld l, h
    jr c, jr_00b_7bf9

    cp $6c
    jr c, jr_00b_7bdb

    ld l, h
    add $ee

jr_00b_7bf0:
    nop
    add b
    nop
    add b
    nop
    add b
    call z, Call_00b_78a2

jr_00b_7bf9:
    jr nc, jr_00b_7bfb

jr_00b_7bfb:
    add b
    nop
    add b
    nop
    xor [hl]
    cp $0e
    inc c
    inc e

jr_00b_7c04:
    jr c, jr_00b_7bf0

    ld h, b
    ld [hl], b
    ldh [$fe], a
    nop
    nop
    cp b
    nop
    jr c, jr_00b_7c8c

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00b_7c9a

    nop
    xor b
    nop
    ld a, h
    xor $ea
    ld e, [hl]
    inc a
    ldh [$fe], a
    nop
    xor e
    nop
    ld a, [hl]
    ld c, $18
    inc e
    adc d
    xor $7c
    nop
    xor e
    nop
    inc e
    inc a
    ld e, h
    ld a, h
    xor d
    call c, $1cfe
    nop
    xor d
    nop
    db $fc
    ldh [$fc], a
    xor [hl]
    ld c, $ee
    ld a, h
    db $fc
    nop
    cp [hl]
    nop
    inc a
    ld a, h
    ld h, b
    ldh [$fc], a
    cp [hl]
    xor $6e
    xor $3c
    ld a, h
    nop
    xor b
    nop
    cp $ee
    ld [c], a
    jr jr_00b_7c7a

    jr c, jr_00b_7c60

jr_00b_7c60:
    xor d
    nop
    ld a, h
    xor $7c
    adc d
    xor $7c
    nop
    cp h
    nop
    ld a, b
    ld a, h
    db $ec
    xor $be
    ld a, [hl]
    inc c
    ld c, $78
    ld a, h
    nop
    cp a
    nop
    jr jr_00b_7cb6

jr_00b_7c7a:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00b_7cc1

    nop
    cp [hl]
    nop
    jr jr_00b_7cc6

    nop
    ld h, [hl]

jr_00b_7c8c:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00b_7ccf

    nop
    nop
    and b
    nop
    jp $c38a


jr_00b_7c9a:
    ei
    nop
    xor d
    nop
    ld a, $30
    inc a
    add d
    jr nc, jr_00b_7ca4

jr_00b_7ca4:
    xor d
    nop
    ld hl, sp-$40
    ldh a, [$8a]
    ret nz

    ld hl, sp+$00
    cp e
    nop
    ld [hl], c
    ei
    db $db
    ld h, e
    di
    xor $1b

jr_00b_7cb6:
    dec sp
    db $db
    ld [hl], c
    ei
    nop
    cp b
    nop
    rst $00
    rst $28
    ld l, l
    xor [hl]

jr_00b_7cc1:
    dec c
    ld l, l
    rst $00
    rst $28
    nop

jr_00b_7cc6:
    cp e
    nop
    inc a
    cp [hl]
    or [hl]
    cp h

jr_00b_7ccc:
    cp [hl]
    adc [hl]
    or [hl]

jr_00b_7ccf:
    ld [hl], $b6
    nop
    cp a
    nop
    inc h
    ld [hl], $5e
    ld e, d
    add [hl]
    jp nz, $affe

    xor c
    add a
    add c
    adc l
    jp $8a7f


    nop
    dec de
    adc $ff
    ld h, h
    and h
    ld l, [hl]
    ld l, $5b
    db $db
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_7cfb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$89], a
    ld [de], a
    ld a, l
    nop
    adc h
    jp $807d


    nop
    xor a
    rlca
    rrca
    rra
    inc de
    ld a, a
    ld [hl], a
    ld [$939f], a
    adc a
    ld b, a
    jr c, jr_00b_7ccc

    ldh a, [$e8]
    inc c
    inc a
    and d
    nop
    ld [bc], a
    rst $00
    cp a
    rst $20
    di
    sub e
    pop af
    pop de
    ld sp, hl
    sbc c
    xor d
    and $f0
    ld [$a878], sp
    ld h, b
    jr nc, jr_00b_7cfb

    xor d
    ld [de], a
    inc a
    jr c, @+$5d

    cp a
    ld b, a
    ld c, a
    ld c, c
    ccf
    dec sp
    rrca
    add hl, bc
    xor d
    rlca
    inc bc
    ld [bc], a
    inc b
    xor d
    inc b
    inc bc
    nop
    inc bc
    adc d
    ld [$eece], sp
    cp $f5
    sub l
    pop af
    pop de
    ld sp, hl
    sbc c
    and $a8
    ret nz

    jr nz, jr_00b_7d72

    xor d
    db $10
    jr nz, jr_00b_7dc6

    ld a, b
    add d
    nop
    ret nz

    cp a
    ldh [$f6], a
    sub [hl]
    ld sp, hl
    reti


    pop af
    sub c

jr_00b_7d72:
    xor d
    xor $cc
    jr nc, jr_00b_7d7f

    xor d
    ld [$6030], sp
    ld a, b
    add b
    nop
    adc d

jr_00b_7d7f:
    nop
    ret nz

    ldh [$fe], a
    ldh a, [$90]
    db $fc
    call c, $9cfc
    ld hl, sp-$56
    call nz, Call_00b_6018
    ld a, b
    add b
    nop
    add b
    nop
    xor e
    nop
    ret nz

    ldh [$f0], a
    sub b
    ld a, [$d0f0]
    ldh a, [$90]
    ldh [$f8], a
    add b
    nop
    add b
    nop
    xor d
    nop
    ret nz

    ldh [$f0], a
    adc d
    ldh a, [$e0]
    ld hl, sp-$58
    ld bc, $0702
    xor a
    add e
    jp nz, $24e4

    ld hl, sp-$48
    ld [$20e0], a
    ret nz

    add b
    ld h, b
    adc d
    db $10
    jr jr_00b_7de0

    nop
    adc e
    nop
    ret nz

jr_00b_7dc6:
    ld h, b
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$80]
    ld hl, sp-$58
    ld hl, sp+$70
    nop
    add b
    nop
    add d
    nop
    inc bc
    adc b
    rlca
    rrca
    and [hl]
    rrca
    rlca
    inc b
    rlca
    add d

jr_00b_7de0:
    nop
    ld e, $82
    rst $38
    cp $aa
    cp $fc
    ld hl, sp-$10
    and b
    ret nz

    nop
    add b
    nop
    xor a
    nop
    inc bc
    dec b
    rlca
    dec c
    rrca
    db $fc
    dec c
    rrca
    inc c
    rrca
    ld c, $0f
    sbc [hl]
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $00ab
    add b
    ld hl, sp-$7c
    db $fc
    rst $38
    add h
    db $fc
    inc b
    db $fc
    add h
    db $fc
    call c, $fefc
    db $e4
    db $fc
    jp nz, $c6fe

    cp $fc
    and b
    ldh a, [rP1]
    add b
    nop
    xor a
    nop
    inc e
    ld [hl+], a
    ld a, $21
    ccf
    cp $31
    ccf
    inc a
    ccf
    ld e, $1f
    rrca
    ld [$0607], a
    inc bc
    ld bc, $bf00
    ld h, b
    sub b
    ldh a, [rNR10]
    ldh a, [$e8]
    ld hl, sp-$01
    db $f4
    ld a, h
    db $fc
    inc a
    ld a, b
    cp b
    db $e4
    db $fc
    cp $32
    cp $9a
    cp $da
    cp $ee
    ld a, [$fc1c]
    db $10
    ldh a, [$e0]
    ret nz

    add b
    nop
    adc e
    nop
    ld [hl], b
    adc h
    db $fc
    rst $38
    add d
    cp $c2
    cp $71
    ld a, a
    inc a
    ccf
    ld [$0e0f], a
    inc bc
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    xor e
    nop
    rrca
    rra
    ccf
    ld a, $fa
    ld a, l
    ld a, e
    cp a
    cp l
    cp a
    sbc a
    xor d
    sbc a
    adc a
    ld b, a
    di
    xor b
    ld sp, hl
    ld hl, sp-$04
    xor [hl]
    db $fc
    ld hl, sp-$14
    ld [hl], h
    db $fc
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    rlca
    ld b, $0f
    dec c
    xor d
    rrca
    ccf
    ld e, a
    ld c, a
    xor e
    ld b, a
    ld d, b
    ld e, b

jr_00b_7ea2:
    db $ec
    db $fc
    db $fc
    db $ec
    db $fc
    call z, Call_00b_5cfc
    db $fc
    sbc [hl]
    ld hl, sp-$38
    ldh a, [$d0]
    ldh [$80], a
    nop
    add b
    nop
    cp a
    inc bc
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    cp $1c
    rra
    dec e
    rla
    rra
    rla
    rra
    adc b
    rra
    rrca
    xor e
    inc sp
    ld b, b
    ld c, [hl]
    ld d, c
    ld e, a
    db $fc
    ld h, c
    ld a, a
    db $e3
    rst $38
    ld b, [hl]
    cp $fa
    ld e, h
    db $ec
    ld hl, sp+$58
    ldh a, [$e0]
    add b
    nop
    add b
    nop
    adc e
    nop
    inc a
    ld b, d
    ld a, [hl]
    cp $41
    ld a, a
    add hl, sp
    ccf
    dec b
    rlca
    rra
    rst $38
    daa
    ld a, $22
    ccf
    dec l
    ccf
    dec e
    rra
    xor b
    rlca
    add hl, bc
    db $10
    cp a
    inc hl
    inc h
    daa
    ld l, b
    ld l, a
    di
    rst $38
    ld a, [$ef5f]
    db $fc
    ld e, h
    ldh a, [$e0]
    add b
    nop
    xor a
    nop
    ret nz

    ld h, b
    ldh [$b0], a
    ld [hl], b
    and d
    ldh a, [$f8]
    db $fc
    add d
    db $fc
    jr c, jr_00b_7ea2

    nop
    ld bc, $01a2
    nop
    inc bc
    adc b
    rlca
    rrca
    and [hl]
    rrca
    rlca
    ld b, $03
    add d
    nop
    add b
    cp a
    ldh [$b0], a
    ld [hl], b
    cp b
    ret c

    db $fc
    ld a, h
    adc b
    cp $ff
    xor d
    rst $38
    ccf
    ld c, $00
    and b
    ld bc, $aa02

Jump_00b_7f3f:
    ld bc, $0300
    rlca
    and b
    rlca
    rrca
    adc d
    rlca
    inc bc
    ld bc, $c0be
    ldh [$60], a
    ldh [$60], a
    ldh a, [$80]
    ldh a, [$a2]
    ldh a, [$e0]
    ret nz

    add b
    nop
    add b
    nop
    add d
    nop
    inc bc
    adc b
    rlca
    rrca
    sub [hl]
    rrca
    dec bc
    inc c
    rlca
    add b
    nop
    adc b
    ret nz

    ldh [$80], a
    ldh [$a2], a
    ldh [$c0], a
    add b
    add b
    nop
    adc d
    nop
    inc bc
    rlca
    and b
    rlca
    rrca
    or [hl]
    rrca
    dec de
    rla
    add hl, de
    ld c, $80
    nop
    add b
    nop
    add b
    nop
    xor e
    nop
    rrca
    rra
    ccf
    ld a, $fa
    ld a, l
    ld a, e
    cp [hl]
    cp l
    ccf
    rra
    xor d
    rrca
    add a
    ld b, e
    ldh a, [$88]
    ld hl, sp-$04
    and [hl]
    db $fc
    ld hl, sp+$28
    ldh a, [$80]
    nop
    add b

Jump_00b_7fa3:
    nop
    add d
    nop
    rlca
    xor a
    rrca
    rra
    ld e, $1d
    ld a, [hl]
    ld a, a
    xor d
    sbc a
    rrca
    rlca
    inc bc
    xor d
    add b
    ld b, b
    ldh a, [$f8]
    and b
    ld hl, sp-$04
    cp [hl]
    ld hl, sp+$70
    sub b
    or b
    ld [hl], b
    ldh [$80], a
    nop
    add b
    nop
    add b
    nop
    xor d
    nop
    rrca
    rra
    ccf
    ld hl, sp+$3f
    dec sp
    ccf
    dec sp
    ld a, a
    and d
    ld a, a
    ld e, a
    rst $38
    xor b
    rst $38
    ei
    db $fc
    adc [hl]
    db $fc
    xor $f2
    cp $80
    nop
    add b
    nop
    add d
    nop
    rrca
    adc a
    ccf
    ld a, a
    db $76
    ld a, a
    db $76
    add b
    ld a, a
    xor b
    ld a, a
    ld e, a
    rst $38
    and b
    ld hl, sp-$04
    or [hl]
    cp $f7
    ld sp, hl
    rst $30
    ld e, $00
    nop
    nop
    nop
