; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    nop
    sub h
    ld a, h
    ld b, h
    nop
    sub h
    rst $08
    ld d, [hl]
    nop
    sub h
    ld e, [hl]
    ld l, a
    nop
    sub h
    and l
    ld [hl], l
    nop
    sub h
    adc [hl]
    ld [hl], a
    nop
    sub b
    ld [hl], b
    ld b, b
    nop
    sub d
    ld e, a
    ld b, d
    nop
    sub [hl]
    ld l, e
    ld b, [hl]
    nop
    sub b
    ld l, c
    ld c, b
    nop
    sub d
    ld [hl], h
    ld c, d
    nop
    sub [hl]
    and h
    ld c, h
    nop
    sub b
    xor l
    ld c, [hl]
    nop
    sub [hl]
    call z, TimerOverflowInterrupt
    sub b
    sbc h
    ld d, d
    nop
    sub d
    cp [hl]
    ld d, h
    nop
    sub [hl]
    cp a
    ld e, b
    nop
    sub [hl]
    rst $08
    ld e, d
    nop
    sub b
    db $ed
    ld e, h
    nop
    sub d
    rst $38
    ld e, [hl]
    nop
    sub [hl]
    rrca
    ld h, c
    nop
    sub b
    jr z, jr_00a_40b7

    nop
    sub [hl]
    ld e, $65
    nop
    sub b
    inc c
    ld h, a
    nop
    sub [hl]
    ld a, $69
    nop
    sub b
    ld [hl], b
    ld l, e
    nop
    sub d
    adc d
    ld l, l
    nop
    sub [hl]
    inc a
    ld [hl], c
    nop
    sub d
    ld a, l
    ld [hl], e
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
    rst $38
    nop

Call_00a_4080:
    inc e
    inc l
    ld l, $14
    ld l, a
    ld l, $5f
    add b
    nop
    adc a
    nop
    add [hl]
    adc [hl]
    set 2, a
    add e
    nop
    ld h, $00
    rst $38
    adc b
    inc h
    ld d, h
    xor b
    add d
    ld a, c
    ld d, h
    ld a, [$01fc]
    nop
    ld [bc], a
    nop
    ld b, $00
    rst $38
    ld [$1100], sp
    nop
    db $10
    ld bc, $0103
    rst $38
    ld sp, $2003
    inc bc
    ld sp, $2203
    inc bc
    rst $38
    inc hl

jr_00a_40b7:
    inc bc
    dec h
    inc bc
    ld [hl+], a
    inc bc
    daa

jr_00a_40bd:
    inc bc
    rst $38
    ld hl, $2203
    inc bc
    daa
    ld bc, $0302
    db $fd
    inc hl
    dec b
    ld b, $03
    dec hl
    rla
    rrca
    rst $38
    adc c
    rrca
    ld [hl+], a
    rra
    ld h, l
    ld e, $20
    ld a, a
    rst $38
    adc b
    ld a, a
    sbc l
    rst $38
    dec sp
    push hl
    ld e, e
    push hl
    rst $38
    ld [hl], b
    rst $00
    inc hl
    push bc
    ld [hl], d
    push bc
    add hl, hl
    rst $00
    rst $38
    ld [hl], d
    push bc
    ld h, c
    rst $00
    ld [hl-], a
    push bc
    ld l, c
    rst $00
    rst $38
    jr nc, jr_00a_40bd

    ld hl, $70c7
    rst $00
    add hl, hl
    rst $00
    rst $38
    ld [hl], b
    rst $00
    and c
    rst $00
    ldh a, [$c7]
    xor c
    rst $00
    rst $38
    jr nc, jr_00a_414f

    ld h, c
    ld b, a
    jr nz, jr_00a_4153

    ld h, c
    ld b, a
    rst $38
    jr nz, jr_00a_4158

    ld hl, $3047
    ld b, a
    ld h, c
    ld b, a
    rst $38
    ld bc, $0200
    nop
    inc b
    nop
    ld [$ff00], sp
    ld de, $2200
    ld bc, $0342
    adc b
    rlca
    rst $38
    add hl, bc
    rrca
    ld b, c
    ld e, $e7
    inc a
    add [hl]
    ld a, b
    rst $38
    sbc a
    ldh a, [rNR41]
    rst $38
    ld b, b
    rst $38
    ld a, [hl+]
    rst $38
    db $fd
    ld a, d
    add b
    ldh [rP1], a
    and h
    nop
    rst $38
    rst $38
    nop
    rst $38
    push de
    rst $38
    jp hl


    add b
    ld d, b
    add b
    rst $38
    ld b, h
    add e

jr_00a_414f:
    ld b, b
    adc a
    ld b, e
    sbc a

jr_00a_4153:
    ld c, a
    cp a
    rst $38
    ld e, $ff

jr_00a_4158:
    add hl, hl
    cp $1e
    db $fd
    ld e, c
    cp $ff
    ld b, b
    ldh a, [$60]
    rst $38
    ld e, a
    rst $38
    ld a, h
    rst $38
    rst $38
    ld e, c
    cp $7a
    db $fd
    ld e, c
    cp $7a
    db $fd
    cp a
    nop
    ld [bc], a
    ld bc, $0006
    ld [$ff00], sp
    stop
    jr nz, jr_00a_417d

jr_00a_417d:
    ld b, d
    ld bc, $0780
    rst $38
    dec d
    rrca
    ld [hl+], a
    rra
    ld bc, $4b3e
    ld a, h
    rst $38
    ld d, $f8
    dec l
    ld hl, sp+$0a
    ld hl, sp-$78
    ld hl, sp-$01
    jp z, $ca39

    scf
    nop
    ccf
    jp hl


    rra
    rst $38
    ld hl, $145f
    db $fc
    inc [hl]
    db $dd
    sub b
    rst $38
    rst $38
    add hl, hl
    rra
    ld [$401f], sp
    rrca
    inc bc
    ei
    db $fc
    ld bc, $55fe
    rst $38
    ld d, d
    nop
    di
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    nop
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    sub e
    nop
    rst $38
    nop
    rst $38
    push de
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    rst $38
    xor b
    ld d, a
    db $d3
    nop
    rlca
    nop
    dec d
    nop
    rst $38
    inc bc
    nop
    ld [bc], a
    nop
    ret nz

    add b
    db $10
    ldh [rIE], a
    ret c

    ldh a, [rNR14]
    ld hl, sp-$7a
    ld a, h
    add hl, de
    db $76
    rst $38
    ld b, $71
    dec de
    ld [hl], b
    add h
    ld [hl], b
    db $10
    ld [hl], b
    rst $38
    ld [bc], a
    db $fc
    inc a
    rst $08
    rst $00
    rst $18
    rst $10
    rst $08
    rst $38
    rst $00
    rst $18
    ld [hl], b
    nop

Call_00a_4200:
    adc d
    ld d, l
    db $10
    rst $08
    rst $38
    rst $00
    rst $18
    rst $10
    rst $08
    dec b
    rst $38
    ld a, b
    rst $38
    rst $38
    ld c, d
    or l
    ld l, l
    rst $38
    sbc [hl]
    ld [hl], b
    db $10
    ld [hl], b
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld a, [hl]
    xor a
    rst $38
    ld l, $ff
    ld a, h
    xor a
    ld l, $ff
    inc l
    rst $38
    rst $38
    inc l
    cp $2e
    rst $38
    cpl
    rst $38
    ld l, $ff
    rst $38
    inc l
    rst $38
    ld l, $ff
    inc l
    rst $38
    inc l
    rst $38
    rst $38
    ld a, [hl-]
    push bc
    ld bc, $c800
    nop
    or l
    nop
    rst $38
    inc b
    nop
    ld [$3800], a
    nop
    ld c, [hl]
    nop
    rst $38
    jr nc, jr_00a_424f

jr_00a_424f:
    ld a, [hl-]
    nop
    inc bc

jr_00a_4252:
    nop
    ld b, $00
    rst $38
    add h
    nop
    ret nz

    add b
    ld h, e
    ret nz

    jr nc, @-$1e

    nop
    rst $38
    jr z, jr_00a_4252

    or h
    ld l, b
    ld a, [hl-]
    db $e4
    or l
    ld [c], a
    rst $38
    sub d
    pop hl
    ret nz

    ld a, a
    add b
    ld a, a
    push de
    rst $38
    db $fd
    ld [$94c0], a
    ret nz

    ld l, b
    add b
    ld a, a
    db $fc
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    nop
    di
    ld [bc], a
    db $fc
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    nop
    rst $38
    ld d, l
    xor d
    ld d, l
    xor d
    rst $38
    sub h
    nop
    ld bc, $c800
    nop
    or l
    nop
    rst $38
    inc b
    nop
    ld [$3800], a
    nop
    ld c, [hl]
    nop
    rst $38
    jr nc, jr_00a_42a3

jr_00a_42a3:
    ld a, [hl-]
    nop
    inc bc
    nop
    ld b, $00
    rst $38
    add h
    nop
    ld b, b
    add b
    inc hl
    ret nz

    ret nc

    ldh [$fd], a
    xor b
    db $10
    inc d
    ld [$008e], sp
    cp $ff
    nop
    rst $38
    ld d, l
    rst $38
    inc bc
    ld c, $02
    ld c, $ff
    ld b, b
    ld c, $82
    ld c, $00
    adc $c2
    xor $ff
    ld [hl], b
    xor $22
    cp $80
    ld a, [hl]
    ld d, d
    cp [hl]
    rst $38
    nop
    ld e, $02
    cp $f0
    cp $02
    cp $ff
    ld d, b
    cp [hl]
    and d
    ld e, [hl]
    ld b, b
    cp [hl]
    or d
    ld e, [hl]
    rst $38
    jr nc, jr_00a_42ea

jr_00a_42ea:
    ld a, [hl-]
    nop
    inc bc
    nop
    ld b, $00
    db $fd
    add h
    nop
    ld b, b
    add b
    ld h, e
    add b
    ld b, b
    rst $38
    and e
    ld b, b
    db $e3
    nop
    ld [hl+], a
    ld b, c

Jump_00a_42ff:
    and b
    ld b, b
    rst $38
    ld h, e
    nop
    ld h, b
    ld bc, $4023
    ld hl, $ff40
    ld h, e
    ld bc, $4221
    ld h, d
    ld bc, $4325
    rst $38
    ld hl, $0a43
    ld h, a
    ld [hl], l
    ccf
    ld c, a
    ccf
    rst $38
    dec d
    cpl
    ld b, d
    rra
    jr @+$31

    ld b, h
    rra
    rst $38
    dec l
    rra
    ld b, b
    rra
    inc b
    ccf
    ld l, c
    rra
    rst $38
    add b
    nop
    and b
    ld b, b
    ret nz

    db $10
    inc a
    nop
    rst $38
    add hl, bc
    ld b, $ee
    ld bc, $0122
    ld c, a
    nop
    rst $38
    ld [hl+], a
    ld bc, $012a
    ld d, l
    ld bc, $0308
    rst $38
    sbc $03
    add hl, sp
    ld b, $56
    dec c
    add hl, sp
    ld c, $ff
    ld h, h
    rra
    or b
    rra
    ld c, d
    dec [hl]
    and [hl]
    ld a, c
    rst $38
    ld c, b
    ccf
    ret


    db $76
    sub d
    ld l, l
    ret


    db $76
    rst $38
    inc [hl]
    rst $38
    ld [hl], d
    ld sp, hl
    adc d
    push af
    ld b, d
    ld sp, hl
    rst $38
    cp b
    rst $38
    ld c, e
    db $f4
    sbc b
    and $cb
    db $f4
    rst $38
    cp d
    ld bc, $8a75
    call $f220
    dec c
    rst $38
    db $ed
    ld [de], a
    cp b
    ld b, a
    ld d, a
    xor b
    cp h
    ld b, e
    rst $38
    xor d
    ld d, l
    ld e, e
    and h
    inc b
    ei
    and h
    ld a, a
    db $fc
    ld e, d
    rst $38
    rst $10
    rst $38
    cp $ff
    rst $38

jr_00a_4399:
    ld h, $ff
    rra
    db $fd
    sbc [hl]
    db $fd
    ld a, $fd
    rst $38
    rra
    db $fd
    ld e, [hl]
    db $fd
    sbc [hl]
    db $fd
    dec e

jr_00a_43a9:
    db $e3
    rst $38
    ld h, $ff
    ld de, $80ff
    rst $38
    jr z, @+$01

    rst $38
    ld bc, $40ff
    rst $38
    and h
    rst $38
    ld bc, $adff
    nop
    ld h, c
    rst $38
    cp [hl]
    rst $38
    ldh [$61], a
    di
    ld h, c
    rst $38
    ld e, c
    rst $38
    ld b, h
    xor b
    ld [hl-], a
    ret z

    call nz, $ffa8
    ret nz

    rst $38
    ret nc

    and b
    ld e, b
    and b
    ld d, b
    and b
    rst $38
    ret nz

    rst $38
    ld b, h
    xor b
    nop
    ret z

    ld b, h
    xor b
    rst $38
    nop
    rst $38
    db $10
    and b
    ret c

    jr nz, jr_00a_43f9

    and b
    rst $38
    ld a, [bc]
    push af
    ret nz

    ld [$8028], sp
    ret nz

    ld [$2efd], sp
    pop de
    nop
    jr nz, jr_00a_4399

jr_00a_43f9:
    nop
    jr nz, jr_00a_43a9

    nop
    add [hl]
    rst $38
    ei
    rst $38
    ldh [$86], a
    rst $08
    add [hl]
    rst $38
    ld l, $ff
    inc hl
    rra
    ld e, l
    scf
    dec sp
    rla
    rst $38
    xor [hl]
    ld a, a
    add hl, sp
    add a
    dec d
    adc a
    dec l
    sub a
    rst $38
    ld a, [hl+]
    rst $38
    dec h
    rla
    ld b, e
    ccf
    jr nz, jr_00a_4437

    rst $38
    or a
    ld a, a
    jr z, @-$77

    inc de
    adc l
    dec l
    sub [hl]
    rst $38
    cpl
    rst $38
    ld [hl+], a
    dec d
    ld h, l
    dec de
    ld [hl+], a
    ld de, $83ff
    ld a, a
    ld a, [hl+]
    add l

jr_00a_4437:
    add hl, de
    add [hl]
    ld a, [hl+]
    add l
    call $8000
    ret nz

    add b
    ret nz

    rst $18
    ld h, b
    ret nz

    ldh [$f0], a
    ld h, b
    ldh [$f0], a
    cp h
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    cp d
    rst $38
    set 6, h
    sbc b
    and $cb
    db $f4
    rst $38
    ld [$7cff], a
    rst $10
    or d
    rst $28
    ld d, h
    rst $38
    db $fd
    ld [$00ff], a
    jr nz, @-$5e

    nop
    jr nz, @+$01

    rst $28
    rst $38
    ld a, [bc]
    rst $38
    and l
    ld e, a
    xor d
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld a, [hl+]
    add l
    add hl, de
    add [hl]
    ld a, [hl+]
    add l
    nop
    rst $38
    rrca
    rst $38
    ld c, d
    ld sp, hl
    and h
    jp $81c8


    rst $38
    ret nz

    add l
    call z, $c681
    add c
    jp c, $ff85

    db $dd
    cp $d3
    rst $28
    ld b, l
    db $eb
    ld h, c
    rst $00
    rst $38
    ld l, c
    rst $00
    ld l, c
    rst $00
    ld c, c
    rst $20
    dec sp
    rst $20
    rst $38
    jp z, $c297

    xor a
    add [hl]
    db $ed
    or $8d
    rst $38
    and [hl]
    db $dd
    add [hl]
    db $fd
    adc l
    cp $7e
    rst $38
    rst $38
    add hl, sp
    rst $20
    xor e
    ld [hl], a
    sbc e
    ld [hl], a
    inc de
    rst $38
    rst $38
    inc de
    cp a
    inc de
    cp a
    inc de
    cp a
    adc e
    ccf
    rst $38
    or c
    jp $c182


    ld b, $81
    dec bc
    add b
    rst $38
    ld b, $81
    rla
    add b
    ld c, [hl]
    add c
    ld c, d
    add c
    rst $38
    ld l, h
    rst $38
    ld d, [hl]
    rst $38
    ld d, a
    ld a, a
    ld d, [hl]
    ld a, a
    rst $38
    sbc e
    ld a, a
    xor c
    ld a, a
    sub l
    ld a, a
    adc b
    ld a, a
    rst $38
    or [hl]
    ld b, c
    sbc d
    ld bc, $01b6
    sbc a
    nop
    rst $38
    sbc a
    nop
    db $db
    inc b
    db $db
    inc b
    ei
    inc b
    rst $38
    srl a
    srl a
    jp $4b3f


    cp a
    rst $38
    ld b, e
    cp a
    ld c, a
    cp a
    ld b, a
    cp a
    ld b, a
    cp a
    rst $38
    ld h, a
    cp $d1
    ld h, a
    pop bc
    ld h, a
    ld b, d
    push hl
    rst $38
    ld b, d
    push af
    jp z, $94f5

    db $eb
    call z, $ffe3
    ld c, a
    dec a
    ld c, [hl]
    add hl, sp
    ld c, h
    add hl, sp
    adc h
    ld a, c
    rst $38
    add b
    ld a, c
    sbc b
    ld [hl], c
    cp e
    ld [hl], b
    xor c
    ld [hl], b
    rst $38
    ld b, d
    rst $28
    ld b, d
    rst $38
    adc $ff
    xor e
    rst $10
    rst $38
    db $d3
    rst $28
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    or c

jr_00a_4541:
    ld a, a
    rst $38
    or e
    ld h, b
    dec a
    ld [c], a
    xor d
    ld [hl], b
    jr z, jr_00a_4541

    rst $38
    ld [hl-], a
    db $fd
    or c
    rst $38
    or [hl]
    rst $38
    cp $ff
    rst $38
    ld_long a, $ff85
    add c
    ei
    add l
    call nc, $ffab
    ld l, [hl]
    db $d3
    ld c, c
    or $7a
    rst $00
    ld e, c
    rst $20
    rst $38
    rst $08
    scf
    swap a
    swap a
    rst $08
    scf
    rst $38
    adc [hl]
    ld [hl], a
    sub e
    ld l, [hl]
    cp e
    ld l, [hl]
    adc e
    ld a, [hl]
    rst $38
    ld b, e
    rst $38
    scf
    rst $38
    sbc h
    ld a, a
    ld e, h
    cp a
    rst $38
    ld e, h
    cp a
    jp hl


    ld a, a
    ld e, a
    ei
    ld h, h
    rst $38
    rst $38
    ld l, $ff
    xor a
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    db $dd
    cp $b8
    nop
    jr c, jr_00a_461c

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00a_462a

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
    jr jr_00a_460a

    jr c, jr_00a_45f0

jr_00a_45f0:
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
    jr jr_00a_4646

jr_00a_460a:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00a_4651

    nop
    cp [hl]
    nop
    jr jr_00a_4656

    nop
    ld h, [hl]

jr_00a_461c:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00a_465f

    nop
    rst $38
    sbc [hl]
    ld a, a
    ld d, c
    db $e4
    nop

jr_00a_462a:
    ret nz

    jp z, $ff80

    and h
    sub e
    or e
    rst $08
    ld e, l
    rst $38
    ld h, d
    db $fd
    rst $38
    ld a, $ff
    ld [hl+], a
    pop bc
    ld b, b
    nop
    pop bc
    nop
    db $fd
    and b
    ld d, l
    ld b, h
    cp e
    or c
    rst $38

jr_00a_4646:
    rst $28
    rst $38
    ccf
    rst $38
    ld h, c
    add d
    ld b, $41
    ld h, l
    ld a, [bc]
    rst $18

jr_00a_4651:
    sbc b
    ld h, a
    rst $38
    sbc d
    rst $38

jr_00a_4656:
    ld h, $d9
    rst $38
    ld a, c
    cp $b7
    rst $08
    ld c, e
    scf

jr_00a_465f:
    ld e, a
    scf
    rst $38
    pop de
    ccf
    dec l
    rst $38
    db $dd
    rst $38
    xor $7f
    nop
    di
    inc b
    nop
    inc b
    nop
    inc b
    nop
    cp a
    nop
    ld a, [bc]
    nop
    ld b, $00
    ld [bc], a
    nop
    rst $38
    ld d, $00
    ld [de], a
    nop
    ld a, [bc]
    nop
    rlca
    nop
    rst $38
    ld bc, $0700
    nop
    rla
    nop
    inc bc
    nop
    rst $38
    dec b
    nop
    inc bc
    nop
    ld [de], a
    nop
    ld de, $ff00
    inc bc
    nop
    dec d
    nop
    ld a, [bc]
    nop
    ld bc, $ff00
    ld bc, $1200
    nop
    add [hl]
    nop
    ld [bc], a
    nop
    rst $38
    ld [bc], a

Jump_00a_46a9:
    nop
    add l
    nop
    inc bc
    nop
    add c
    nop
    rst $38
    ld [bc], a
    nop
    ld b, l
    nop
    ld b, a
    nop
    ld a, [hl+]
    nop
    rst $38
    inc l
    nop
    jr jr_00a_46be

jr_00a_46be:
    jr z, jr_00a_46c0

jr_00a_46c0:
    inc e
    nop
    rst $38
    ld a, [hl+]
    nop
    ld h, $00
    adc [hl]
    nop
    rlca
    nop
    rst $38
    inc d
    nop
    adc d
    nop
    inc b
    nop
    sbc [hl]
    nop
    rst $38
    ld c, d
    nop
    ld d, a
    nop
    ld h, $00
    dec d
    nop
    rst $38
    ld [hl+], a
    nop
    ld a, [bc]
    nop
    ld b, $00
    ld [de], a
    nop
    rst $08
    ld b, $00
    add hl, bc
    nop
    ld bc, $ff00
    stop
    stop
    ld bc, $1000
    nop
    rst $38
    ret nz

    nop
    or b
    nop
    ldh a, [rP1]
    sbc b
    nop
    rst $38
    xor h
    nop
    inc c
    nop
    add h
    nop
    ld a, [bc]
    nop
    rst $38
    dec b
    nop
    ld de, $0600
    nop
    ld a, [bc]
    nop
    rst $38
    ld b, $00
    ld a, [bc]
    nop
    daa
    nop
    ld a, [bc]
    nop
    rst $38
    ld d, l
    nop
    adc c
    nop
    add d
    nop
    and l
    nop
    rst $38
    ld b, c
    nop
    ld l, b
    nop
    or l
    nop
    ld l, b
    nop
    rst $38
    xor h
    nop
    ld b, b
    nop
    db $e4
    nop
    jp z, $ff00

    pop bc
    nop
    ld b, d
    nop
    ld h, c
    nop
    and d
    nop
    rst $38
    ldh [rP1], a
    and b
    nop
    ld de, $2000
    nop
    jp $000a


    ld [$ff00], sp
    ld b, b
    nop
    add c
    nop
    ret nz

    nop
    add c
    nop
    call z, $0081
    add b
    nop
    rst $38
    rrca
    nop
    dec de
    nop
    ld h, e
    nop
    ld b, l
    nop
    rst $38
    jp nz, $c700

    nop
    adc e
    nop
    sub l
    nop
    cp a
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    add b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    ld c, b
    nop
    rst $38
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    ld [bc], a
    nop
    rlca
    nop
    rrca
    nop
    ld [$ff00], sp
    stop
    stop
    ld de, $2000
    nop
    rst $38
    ld sp, $2000
    nop
    ld sp, $2200
    nop
    rst $38
    ld hl, $2300
    nop
    dec h
    nop
    inc bc
    nop
    rst $38
    ld b, l
    nop
    ld c, e
    nop
    ld b, l
    nop
    ld c, d
    nop
    rst $38
    ld d, [hl]
    nop
    ld c, e
    nop
    ld d, [hl]
    nop
    ld l, [hl]
    nop
    rst $38
    cp [hl]
    nop
    xor h
    nop
    cp b
    nop
    or b
    nop
    rst $38
    jr nz, jr_00a_47c8

jr_00a_47c8:
    ld h, b
    nop
    ldh [rP1], a
    ret nz

    nop
    rst $38
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    ld b, b
    nop
    ld h, c
    nop
    ld b, b
    nop
    add l
    nop
    rst $38
    ret nz

    nop
    adc d
    nop
    and l
    nop
    rst $18
    nop
    rst $38
    cp l
    nop
    ld l, d
    nop
    xor h
    nop
    ld l, d
    nop
    rst $38
    adc $00
    ret


    nop
    ld b, b
    nop
    ret c

    nop
    rst $38
    sub b
    nop
    ret nc

    nop
    ld d, c
    nop
    ret nc

    nop
    rst $38
    pop bc
    nop
    ld h, b
    nop
    jp z, $e600

    nop
    rst $38
    adc b
    nop
    ld a, [de]
    nop
    ld [$1200], sp
    nop
    rst $38
    ld a, [bc]
    nop
    ld d, $00
    ld [$1e00], sp
    nop
    rst $38
    jr z, jr_00a_4822

jr_00a_4822:
    ld a, b
    nop
    ld d, b
    nop
    cp b
    nop
    rst $38
    inc c
    nop
    inc d
    nop
    inc l
    nop
    inc d
    nop
    rst $38
    add hl, hl
    nop
    inc d
    nop
    dec l
    nop
    rla
    nop
    rst $38
    daa
    nop
    add hl, de
    nop
    ld a, [hl+]
    nop
    add hl, de
    nop
    jp $0088


    inc b
    nop
    add b
    nop
    adc h
    nop
    ld [bc], a
    nop
    cp a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    add b
    nop
    ld b, $00
    ld b, h
    nop
    adc [hl]
    nop
    rst $38
    ld d, d
    nop
    stop
    and c
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    stop
    ld b, b
    ld de, $5108
    rst $38
    inc de
    ld l, c
    dec e
    ld l, e
    db $f4
    cpl
    ld [hl], h
    xor a
    or a
    nop
    ld b, b
    nop
    ld b, b
    sub b
    ld b, b
    rst $38
    ld [hl+], a
    ret nc

    nop
    ld a, [c]
    and a
    ld a, [$eebb]
    rst $38
    ld [hl], e
    rst $38
    add c
    jp $8186


    dec bc
    add b
    rst $38
    ld b, $81
    sub a
    add b
    ld c, [hl]
    add c
    ld c, d
    add c
    rst $38
    or [hl]
    ld b, c
    ld a, [bc]
    sub c
    ld [hl-], a
    add l
    dec bc
    sub h
    rst $38
    or a
    adc h
    and $9d

jr_00a_48ae:
    adc l
    rst $38
    ld e, a
    rst $38
    rst $38
    ld l, c
    cp $d6
    ld a, a
    ld [hl], a
    ld e, a
    ld d, [hl]
    ld a, a
    rst $38
    sbc e
    ld a, a
    xor c
    ld a, a
    sub l
    ld a, a
    sbc [hl]
    ld l, a
    xor e
    nop
    add b
    ret nz

    ld h, b
    ldh [rIE], a
    sub b
    ldh a, [$38]
    ret z

    add h
    ld c, h
    ld b, $a6
    rst $38
    ld bc, $47c7
    xor a
    ld l, $d6
    adc [hl]
    db $fd
    rst $38
    pop af
    or $83
    db $e3
    sbc d
    db $e3
    ld c, h
    rst $30
    xor a
    nop
    add b
    ret nz

    ld b, b
    jr nz, jr_00a_494c

    rst $38
    ld d, b
    ldh a, [rOBP0]
    jr c, jr_00a_48ae

    inc e
    ld [hl-], a
    or [hl]
    add b

jr_00a_48f6:
    nop
    rst $38
    ld bc, $0603
    rrca
    rra
    ld a, $70
    pop hl
    rst $38
    ld bc, $0603
    rrca
    dec e
    ld a, $75
    cp $ff
    sub b
    rst $08
    inc de
    rrca
    ld b, h
    cp a
    ld b, $f9
    add b
    nop
    rst $38
    ld bc, $0703
    ld c, $1d
    ld a, $63
    rst $30
    rst $38
    ld bc, $0703
    rrca
    jr jr_00a_495d

    ld h, e
    ldh a, [rIE]

jr_00a_4927:
    ldh a, [$e1]
    ld d, l
    ld h, d
    cp d
    ld hl, $bb44
    rst $38
    dec b
    ret nz

    xor d
    push de
    ld d, c
    cp $7f
    ccf
    rst $38
    ld l, h
    add hl, de
    jp z, $0d3c

    cp $4b
    rst $30
    rst $38
    sub l
    rst $38
    cp [hl]
    ld a, a
    jr z, jr_00a_4927

    ld d, l
    cp $ff
    ld a, [c]

jr_00a_494c:
    rst $38
    ld [hl], e
    rrca
    ld b, h
    cp a
    ld b, $f9
    rst $38
    add b
    ret nz

    ldh [$f0], a
    jr jr_00a_48f6

    add $0f
    rst $38

jr_00a_495d:
    rrca
    add a
    xor d
    ld b, [hl]
    ld e, l
    add h
    ld [hl+], a
    db $dd
    add b
    nop
    rst $38
    add b
    ret nz

    ld h, b
    ldh a, [$f8]
    ld a, h
    ld c, $87
    rst $38
    xor c
    rst $38
    ld a, l
    cp $14
    ei
    xor d
    ld a, a
    rst $38
    ld c, a
    rst $38
    adc $f0
    ld [hl+], a
    db $fd
    ld h, b
    sbc a
    rst $38
    and b
    inc bc
    ld d, l
    xor e
    adc d
    ld a, a
    cp $fc
    rst $38
    ld [hl], $98
    ld d, e
    inc a
    or b
    ld a, a
    jp nc, $ffef

    add b
    ret nz

    ld h, b
    ldh a, [$b8]
    ld a, h
    xor [hl]
    ld a, a
    rst $38
    add hl, bc
    di
    ret z

    ldh a, [rNR43]
    db $fd
    ld h, b
    sbc a
    add b
    nop
    rst $38
    add b
    ret nz

    ldh [rSVBK], a
    cp b
    ld a, h
    add $ef
    rst $08
    nop
    ld [$081c], sp
    inc c
    jr @+$01

    add hl, bc
    inc e
    jr jr_00a_49da

    ld [hl], $1d
    ld d, $3d
    rst $38
    inc d
    ccf
    inc h
    ccf
    ld h, [hl]
    ccf
    ld [hl], $6f
    rst $38
    ld [hl], $6f
    ld d, [hl]
    ld l, a
    rst $30
    ld c, a
    rst $30
    rst $08
    rst $38
    add b
    ld [$0888], sp
    inc e
    adc b

jr_00a_49da:
    inc c
    sbc b
    rst $38
    ld c, c
    sbc h
    jr @-$21

jr_00a_49e1:
    ld [hl], $dd
    ld d, $fd
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    ld h, $ff
    ld [hl], $ef
    rst $38
    ld [hl], $ef
    ld d, [hl]
    rst $28
    ld [hl], a
    rst $08
    rst $30
    rst $08
    rst $38
    add b
    ld [$0888], sp
    inc e
    adc b
    inc c
    sbc b
    rst $38
    ld c, b
    sbc h
    jr jr_00a_49e1

    ld [hl], $dc
    ld d, $fc
    rst $38
    inc d
    cp $24
    cp $26
    cp $37
    xor $ff
    scf
    xor $56
    rst $28
    ld [hl], a
    rst $08
    rst $30
    rst $08
    rst $38
    sbc $2f
    srl a
    db $d3
    cpl
    ld c, e
    cp a
    db $fc
    ld b, e
    cp a
    rst $28
    cp a
    or a
    rst $38
    rst $38
    ld l, l
    rst $38
    sub d
    ld a, a
    ld d, l
    xor a
    or h
    ld c, e
    rst $38
    ld c, e
    inc d
    or d
    dec b
    dec d
    nop
    xor e
    nop
    rst $38
    inc d
    nop
    ld bc, $1200
    nop
    ld b, l
    nop
    rst $38
    stop
    inc b
    nop
    ld bc, $1000
    nop
    rst $38
    ld l, l
    rst $38
    sub d
    rst $38
    dec b
    rst $38
    sub h
    ld l, e
    rst $38
    add hl, hl
    sub $ca
    dec h
    db $fc
    ld [bc], a
    ld l, e
    nop
    rst $38
    sub [hl]
    nop
    ld b, l
    nop
    stop
    ld b, l
    nop
    rst $38
    stop
    ld b, h
    nop
    ld bc, $1000
    nop
    nop
    rst $38
    cp l
    nop
    xor d
    nop
    db $f4
    nop
    ld_long a, $ff00
    xor b
    nop
    pop af
    nop
    xor b
    nop
    ret nc

    nop
    rst $38
    adc b
    nop
    and d
    nop
    ld c, b
    nop
    and h
    nop
    rst $38
    adc b
    nop
    ld b, b
    nop
    add h
    nop
    add b
    nop
    rst $38
    xor d
    nop
    ld e, [hl]
    nop
    ld a, [hl-]
    nop
    ld d, d
    nop
    rst $38
    or [hl]
    nop
    ld d, d
    nop
    or [hl]
    nop
    ld d, d
    nop
    rst $38
    or l
    nop
    ld d, e
    nop
    or l
    nop
    ld d, e
    nop
    rst $38
    or l
    nop
    ld b, e
    nop
    or l
    nop
    ld d, e
    nop
    rst $38
    or $00
    db $e3
    nop
    ld [hl], a
    nop
    ld [c], a
    nop
    rst $38
    ld d, a
    nop
    and d
    nop
    ld [hl], a
    nop
    or e
    nop
    rst $38
    rla
    nop
    dec hl
    nop
    ld d, $00
    rrca
    nop
    rst $38
    ld h, $00
    rrca
    nop
    dec d
    nop
    dec bc
    nop
    rst $08
    add h
    nop
    add b
    nop
    and b
    nop
    cp a
    nop
    and b
    nop
    ldh [rP1], a
    push af
    nop
    rst $38
    ret nz

    nop
    xor c
    nop
    ret nc

    nop
    xor d
    nop
    rst $38
    push de
    nop
    cp d
    nop
    rst $30
    nop
    ld_long a, $ff00
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [c]
    nop
    rst $38
    pop hl
    nop
    ld [c], a
    nop
    pop hl
    nop
    jp $ff00


    push hl
    nop
    add e
    nop
    call nz, Call_00a_4200
    nop
    rst $38
    add l
    nop
    add d
    nop
    add h
    nop
    ld [bc], a
    nop
    rst $38
    add h
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    rst $38
    add a
    nop
    adc d
    nop
    add a
    nop
    dec bc
    nop
    rst $38
    rst $10
    nop
    ld l, d
    nop
    ld d, a
    nop
    xor $00
    rst $38
    ld a, a
    nop
    rst $18
    nop
    and d
    nop
    push bc
    nop
    rst $38
    ld a, l
    nop
    cp e
    nop
    ccf
    nop
    ld e, e
    nop
    rst $38
    cpl
    nop
    dec de
    nop
    cpl
    nop
    ld d, a
    nop
    rst $38
    cpl
    nop
    rla
    nop
    cpl
    nop
    ld d, a
    nop
    rst $38
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    rla
    nop
    rst $38
    cpl
    nop
    sub [hl]
    nop
    ld l, a
    nop
    ld e, [hl]
    nop
    rst $38
    dec a
    nop
    ld e, h
    nop
    ld l, $00
    ld e, h
    nop
    rst $38
    inc a
    nop
    ld d, [hl]
    nop
    inc l
    nop
    sbc [hl]
    nop
    rst $38
    inc l
    nop
    ld e, [hl]
    nop
    inc l
    nop
    ld e, h
    nop
    rst $38
    ld [hl], l
    nop
    di
    nop
    ld [hl], l
    nop
    di
    nop
    rst $38
    ld [hl], l
    nop
    db $e3
    nop
    push af
    nop
    di
    nop
    rst $38
    ld sp, hl
    nop
    ld e, e
    nop
    or l
    nop
    ld l, e
    nop
    rst $38
    sub a
    nop
    cpl
    nop
    rla
    nop
    ld c, e
    nop
    or e
    nop
    ld bc, $0100
    nop
    rst $38
    ld bc, $0300
    nop
    ld bc, $0100
    nop
    di
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jp $0002


    ld [bc], a
    nop
    rst $08
    dec b
    nop
    dec b
    nop
    ld [bc], a
    nop
    rst $38
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rst $38
    adc a
    nop
    rla
    nop
    rrca
    nop
    ld d, a
    nop
    rst $38
    xor a
    nop
    ld e, a
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop
    ld [bc], a
    nop
    ld bc, $0400
    nop
    cp a
    nop
    ld [bc], a
    nop
    ld de, $0200
    nop
    rst $38
    dec b
    nop
    ld [de], a
    nop
    dec h
    nop
    adc d
    nop
    rst $38
    ld d, l
    nop
    xor e
    nop
    ld [hl], a
    nop
    cp l
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    halt
    cp l
    nop
    rst $38
    ldh [rP1], a
    ret nc

    nop
    add b
    nop
    ld b, b
    nop
    rst $38
    rla
    nop
    dec hl
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rst $38
    dec d
    nop
    cpl
    nop
    ld e, a
    nop
    ccf
    nop
    rst $38
    ld e, l
    nop
    cp a
    nop
    ld e, [hl]
    nop
    and [hl]
    nop
    rst $38
    ld c, [hl]
    nop
    add [hl]
    nop
    call z, $a200
    nop
    cp a
    nop
    add b
    nop
    ld hl, $8a00
    nop
    rst $38
    push de
    nop
    xor e
    nop
    rst $10
    nop
    or b
    nop
    rst $38
    dec b
    nop
    dec bc
    nop
    dec b
    nop
    dec bc
    nop
    rst $38
    dec d
    nop
    dec bc
    nop
    dec b
    nop
    dec bc
    nop
    rst $38
    inc d
    nop
    xor e
    nop
    ld d, h
    nop
    xor d
    nop
    rst $38
    call nc, $aa00
    nop
    sbc $00
    ld [c], a
    nop
    rst $38
    dec b

Call_00a_4c81:
    nop
    dec bc
    nop
    add l
    nop
    dec hl
    nop
    rst $38
    add l
    nop
    jp $8500


    nop
    sub e
    nop
    rst $38
    ld b, l
    nop
    adc e
    nop
    ld d, h
    nop
    xor e
    nop
    rst $38
    push de
    nop
    ld a, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    add a
    nop
    rst $38
    dec bc
    nop
    dec b
    nop
    inc bc
    nop
    dec b
    nop
    rst $38
    inc bc

Call_00a_4cb8:
    nop
    dec b
    nop
    dec bc
    nop
    dec b
    nop
    rst $38
    dec bc
    nop
    ld b, $00
    dec bc
    nop
    ld b, $00
    rst $38
    adc b
    nop
    and d
    nop
    ld c, b
    nop
    and h
    nop
    rst $38
    adc b
    nop
    ld b, b
    nop
    add h
    nop
    add b
    nop
    rst $38
    ld a, [hl+]
    nop
    dec b
    nop
    ld hl, $4200
    nop
    di
    jr nz, jr_00a_4ce6

jr_00a_4ce6:
    ld [bc], a
    nop
    stop
    di
    add h
    nop
    dec bc
    nop
    add d
    nop
    ldh a, [rNR10]
    nop
    ld [bc], a
    nop
    rst $38
    and h
    nop
    stop
    add h
    nop
    ld de, $cc00
    add b
    nop
    ld bc, $f300
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jp $0002


    ld [bc], a
    nop
    rst $38
    and l
    nop
    ld b, e
    nop
    add b
    nop
    ld b, d
    nop
    rst $08
    inc b
    nop
    add b
    nop
    ld [bc], a
    nop
    rst $38
    rla
    nop
    dec hl
    nop
    ld d, $00
    dec b
    nop
    di
    inc h
    nop
    ld [$0800], sp
    nop
    rst $38
    adc a
    nop
    dec d
    nop
    rrca
    nop

jr_00a_4d37:
    dec d
    nop
    rst $38
    ld a, [hl+]
    nop
    dec b
    nop
    jr nz, jr_00a_4d40

jr_00a_4d40:
    inc b
    nop
    cp a
    nop
    db $10
    inc c
    nop
    ld a, h
    db $10
    ld l, b
    rst $38
    nop
    ld a, h
    db $10
    inc l
    nop
    inc a
    ld [$ff16], sp
    inc b
    ld a, [de]
    ld [$0416], sp

jr_00a_4d59:
    dec de
    db $10
    rrca
    rst $38
    inc b
    dec bc
    ld [bc], a
    dec c
    dec b
    jp z, $bc43

    rst $38
    jr nz, jr_00a_4d37

    ld [$0432], sp
    add hl, bc
    nop
    ld b, $ff
    ld bc, $0006
    ld c, $02
    dec c
    ld bc, $ff06
    nop
    ld h, a
    jr nz, jr_00a_4dd3

jr_00a_4d7c:
    ld [bc], a
    ld l, c
    db $10
    inc hl
    rst $38
    dec b
    jr jr_00a_4d96

    inc c
    ld b, $09
    ld bc, $ff0e
    ld a, [bc]
    dec b
    ld bc, $0006
    inc bc
    nop
    inc bc
    rst $38
    ld bc, $0002

jr_00a_4d96:
    inc bc
    ld bc, $0102
    ld [bc], a
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0102
    rst $38
    add hl, bc
    ld b, $00
    rrca
    inc b
    ld a, e
    ld h, h
    sbc e
    sbc a
    nop
    ld bc, $0100

jr_00a_4db2:
    nop
    ld [hl], d
    rst $38
    db $10
    ld l, a
    ld [$1026], sp
    inc l
    db $10
    ld l, b
    rst $38
    db $10
    ld l, b
    sub b
    ld c, e
    ldh [rNR13], a
    jr nz, jr_00a_4d59

    rst $38
    inc b
    or e
    add b
    scf
    jr nz, @+$21

    db $10
    cpl
    rst $38
    ld sp, $658e

jr_00a_4dd3:
    ld a, [de]
    ld e, b
    add [hl]
    cp h
    nop
    rst $38
    and b

jr_00a_4dda:
    jr jr_00a_4ded

    add b
    sub b
    ld [$4017], sp
    rst $38
    ld d, d
    add l
    sub e
    nop
    jp nz, $aa09

    dec b
    rst $38
    add $09

jr_00a_4ded:
    ld l, l
    nop
    ld b, a
    nop
    ld h, h
    ld bc, $81ff
    ld b, b
    ld [hl+], a
    add b
    add c
    jr nz, jr_00a_4d7c

    jr nz, @+$01

    sub e
    ld h, b
    pop de
    jr nz, jr_00a_4db2

    ld b, b
    ld d, [hl]
    and b
    rst $38
    xor h
    ld b, b
    ld b, l
    xor d
    add a
    ld l, b
    add l
    ld h, d
    rst $38
    ld [de], a
    push hl
    jr c, jr_00a_4dda

    ld h, $d9
    ld bc, $fffe
    nop
    stop
    stop
    jr nc, @+$22

    ld b, b
    db $e3
    ld b, b
    add b

jr_00a_4e23:
    nop
    ld bc, $ff00
    jr nz, @-$3b

    ld [bc], a
    call nz, $c904
    ld d, $89
    rst $38
    ld [$12b3], sp
    push hl
    ld b, h
    xor e
    ld e, b
    add [hl]
    rst $38
    sub c
    ld l, $20
    ld e, e
    ld b, b
    jr nc, jr_00a_4e60

    ld e, b
    rst $38
    ret nz

    jr nc, @-$7e

    ld h, b
    sub b
    ld l, h
    ld b, h
    cp d
    rst $38
    adc c
    ld b, [hl]
    inc h
    db $db
    add b
    ld a, [hl]
    inc b
    cp b
    rst $38
    and b
    ld d, b
    db $10
    ld h, b
    ld d, b
    and b
    add b
    ld [hl], b
    rst $38
    ld b, b
    or b
    adc b

jr_00a_4e60:
    ld [hl], b
    ld d, b
    xor b
    nop
    ld a, b
    rst $38
    nop
    cp b
    ld b, b
    cp b
    sub b
    ld l, h
    add b

jr_00a_4e6d:
    inc a
    rst $38
    add h
    ld a, d
    ld d, b
    cpl
    inc b
    ld l, e

Call_00a_4e75:
    adc b
    scf
    rst $38
    ld h, h
    sub e
    ld e, e
    add b
    dec d
    add sp, $41
    cp [hl]
    add c
    nop
    ld hl, $00ff
    rst $30
    and b

jr_00a_4e87:
    ld e, h
    ld d, b
    adc h
    ld b, b
    cp b
    rst $38
    add b
    ld [hl], b
    nop
    ret nz

    nop
    add b
    nop
    add b
    sbc a
    nop
    add b
    db $10
    ldh [rP1], a
    ccf
    add c
    nop
    ret nz

    rst $38
    ret nz

    jr nz, jr_00a_4e23

    ld [hl], b
    ld b, b
    cp [hl]
    jr nz, jr_00a_4e87

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
    add b
    nop
    adc a
    nop
    add [hl]
    adc [hl]
    set 2, a
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

jr_00a_4ee8:
    nop
    rst $08
    jr nc, jr_00a_4e6d

    ld e, [hl]
    ld b, d
    cp l
    rst $38
    rst $38

jr_00a_4ef1:
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
    ld sp, hl
    ld b, $70
    adc e
    add b
    nop
    adc a
    nop
    jr jr_00a_4f3f

    inc l
    ld e, h
    rst $38
    ldh a, [rIF]
    jp z, $8535

    ld h, d
    and d
    ld b, b
    rst $38
    add b
    ld b, b
    ld [hl+], a

jr_00a_4f16:
    ret nz

    ld b, l
    add b
    ld h, $c0
    rst $38
    ld c, e
    add b
    ld d, [hl]
    add b
    dec l
    ret nz

    ld b, e
    and b
    rst $38
    cpl
    add b
    dec d
    and b
    ld d, a
    add b
    ld a, [de]
    ret nz

    rst $38
    xor a
    ld b, b
    sub [hl]
    ld b, c
    sbc h
    ld b, b
    cp e
    ld b, b
    rst $38
    ld e, a
    and b
    ld e, e
    and b
    cpl
    add b
    inc de
    add b

jr_00a_4f3f:
    rst $38
    rra
    ret nz

    rrca
    ldh [$8a], a
    ld [hl], l
    add a
    ld a, b
    rst $38
    inc de
    add sp, $03
    ret c

    ld [hl-], a
    call $ec13
    rst $38
    rra
    ldh [rSC], a
    db $fd
    ld de, $44ee
    cp d
    rst $38

jr_00a_4f5b:
    add hl, sp
    ld b, [hl]
    ld c, b
    jr nc, jr_00a_4ef1

    jr z, jr_00a_4ee8

    jr nz, @+$01

    ld e, e
    jr nz, jr_00a_4f16

    db $10
    push hl
    ld [$017a], sp
    rst $38
    db $ec
    inc bc
    ei
    inc b
    ld a, [hl]
    nop
    sbc e
    ld h, h
    rst $38
    jr jr_00a_4f5b

    xor h
    db $10
    cpl
    ld d, b
    sbc a
    jr nz, @+$01

    ld b, c
    cp [hl]
    ld [hl], b
    adc a
    pop hl
    nop
    adc c
    jr nc, @+$01

    rst $08
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $30
    ld [$f9ff], sp
    ld b, $ab
    ld d, h
    ldh a, [rIF]
    ld e, c
    and [hl]
    rst $38
    add b
    ld a, a
    ld [$22c7], sp
    ld bc, $0116
    rst $38
    ld c, c
    nop
    or h
    ld [bc], a
    ld l, l
    nop
    ld sp, hl
    nop
    rst $38
    cp [hl]
    nop
    rst $28
    nop
    db $fd

jr_00a_4fb1:
    nop
    rla
    ldh [rIE], a
    rrca
    ldh a, [$cf]
    db $10
    inc de
    ld [$003f], sp
    rst $38
    db $ed
    ld [bc], a
    rra
    nop
    ei
    inc b
    cp $01
    rst $38
    ei
    inc b
    rst $18
    jr nz, @+$7c

    add l
    ret z

    scf
    rst $38
    and d
    dec e
    ret nz

    rra
    ldh a, [rIF]
    ret nz

    ccf
    rst $38
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

jr_00a_4fe0:
    ccf
    rst $38
    ld a, a
    add b
    adc b
    ld [hl], a
    ld [de], a
    db $ed
    db $eb
    nop
    rst $38
    inc d
    pop bc
    xor a
    nop
    ld a, h
    ld bc, $00bf
    rst $38
    rst $20
    jr @+$63

    sbc [hl]
    and c
    ld e, [hl]
    ld_long $ff11, a
    reti


    jr nz, jr_00a_4fb1

    nop
    jp hl


    db $10
    call $ff30
    rst $00
    jr @+$64

    adc h
    push af
    nop
    rst $28
    db $10
    rst $38
    ld b, a
    cp b
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    rst $38
    add b
    ld a, a
    ld [$04f7], sp
    ld sp, hl
    jr z, @-$2b

    rst $38
    ld [de], a
    db $ed
    or b
    ld c, a
    ld b, b
    cp a
    pop de
    ld l, $ff
    ld h, b
    sbc a
    ld hl, sp+$07
    db $f4
    dec bc
    db $fc
    inc bc
    rst $38
    or $09
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, c
    ld b, $ff
    ld h, l
    db $10
    add $20
    call $e800
    inc bc
    rst $38
    jr c, jr_00a_4fe0

    ld a, b
    rlca
    ld e, l
    ld [bc], a
    ld e, l
    and d
    rst $38
    ld a, [hl+]
    pop bc
    dec b
    ld hl, sp+$09

jr_00a_5065:
    or $e3
    inc e
    rst $38
    pop af
    ld c, $fa
    inc b
    ld sp, hl
    inc b
    ld hl, sp+$06
    rst $38
    ccf
    ret nz

    rlca
    ld hl, sp+$07
    ld hl, sp-$3f
    ld a, $ff
    ld [$20f7], sp
    rst $18
    nop
    rst $38
    nop
    rst $38
    rst $38
    jr nz, jr_00a_5065

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
    ld d, $e9
    adc h
    ld [hl], e
    rst $38
    ld h, c
    sbc [hl]
    ret nc

    cpl
    ld a, h
    add e
    dec a
    jp nz, $ffff

    nop
    ld b, [hl]
    add hl, sp
    ld bc, $021e
    dec b
    rst $38
    db $db
    nop
    cp [hl]
    ld b, b
    rlca
    nop
    rst $38
    nop
    rst $38
    ld a, h
    inc bc
    ld [hl], b
    dec bc
    ld sp, hl
    ld [bc], a
    db $f4
    dec bc
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
    nop
    rst $38
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    add a
    nop
    rst $38
    dec bc
    nop
    dec b
    nop
    inc bc
    nop
    dec b
    nop
    rst $38
    inc bc
    nop
    dec b
    nop
    dec bc
    nop
    dec b
    nop
    rst $38
    dec bc
    nop
    ld b, $00
    dec bc
    nop
    ld b, $00
    rst $38
    adc b
    nop
    and d
    nop
    ld c, b
    nop
    and h
    nop
    rst $38
    adc b
    nop
    ld b, b
    nop
    add h
    nop
    add b
    nop
    rst $38
    ld a, [hl+]
    nop
    dec b
    nop
    ld hl, $4200
    nop
    di
    jr nz, jr_00a_510e

jr_00a_510e:
    ld [bc], a
    nop
    stop
    di
    add h
    nop
    dec bc
    nop
    add d
    nop
    ldh a, [rNR10]
    nop
    ld [bc], a
    nop
    rst $38
    and h
    nop
    stop
    add h
    nop
    ld de, $cc00
    add b
    nop
    ld bc, $f300
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jp $0002


    ld [bc], a
    nop
    rst $38
    and l
    nop
    ld b, e
    nop
    add b
    nop
    ld b, d
    nop
    rst $08
    inc b
    nop
    add b
    nop
    ld [bc], a
    nop
    rst $38
    rla
    nop
    dec hl
    nop
    ld d, $00
    dec b
    nop
    di
    inc h
    nop
    ld [$0800], sp
    nop
    rst $38
    adc a
    nop
    dec d
    nop
    rrca
    nop
    dec d
    nop
    rst $38
    ld a, [hl+]
    nop
    dec b
    nop
    jr nz, jr_00a_5168

jr_00a_5168:
    inc b
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld b, a
    cp b
    rst $38
    ld de, $00ee
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    rst $38
    add $39
    xor c
    ld d, [hl]
    ld a, [c]
    dec c
    ldh a, [rIF]
    rst $38
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ld [hl], h
    adc e
    rst $38
    or b
    ld c, a
    ld h, h
    sbc e

jr_00a_519c:
    cp b
    ld b, a
    add sp, $17
    rst $38
    rra
    ldh [$03], a
    db $fc
    ld bc, $08fe
    rst $30
    rst $38
    add b
    ld a, a
    jr nz, @-$1f

    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rst $38
    nop
    rst $38
    add d
    ld a, l
    ld [$01f7], sp
    db $fc
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ldh a, [rIF]
    db $e4
    dec de
    sub c
    ld h, [hl]
    and b
    ld d, c
    rst $38
    adc b
    ld b, b
    ld [bc], a
    ldh [$5d], a
    add b
    ld c, b
    or c
    rst $38
    rlca
    add sp, $1c
    pop hl
    ld c, c
    sub [hl]
    db $10
    adc l
    rst $38
    or c
    ld b, [hl]
    adc c
    ld [hl], h
    ld b, c
    sbc [hl]
    inc b
    cp e
    rst $38
    ccf
    ret nz

    inc b
    ei
    ld a, [bc]
    db $f4
    or c
    ld b, b
    rst $38
    and e
    ld [$0095], sp
    ld c, d
    jr nc, @-$77

    ld a, b
    rst $38
    add hl, sp
    add $47
    add b
    ld hl, $bb80
    ld b, h
    rst $38
    adc h
    jr nc, jr_00a_519c

    ld b, b
    ld a, $c1
    xor a
    ld d, b
    rst $38
    ret nz

    ccf
    db $10
    rst $28
    add d
    ld a, l
    dec b
    ld e, d
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$07
    ret nc

    cpl
    rst $38
    ld l, d
    dec d
    ld e, l
    add d
    db $76
    adc c
    db $fd
    ld [bc], a
    rst $38
    adc $31
    add l
    ld a, d
    sub b
    rrca
    jp z, $ff05

    ccf
    ret nz

    inc bc
    db $fc
    ld b, c
    cp [hl]
    ld bc, $fffe
    ld d, c
    xor [hl]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
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
    ld b, d
    cp l
    jr z, @-$27

    ld bc, $fffc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    add b
    nop
    rst $38
    nop
    inc e
    inc l
    ld l, $14
    ld l, a
    ld l, $5f
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
    add b
    nop
    add b
    nop
    rst $38
    ld [$0800], sp
    nop
    ld [$0800], sp
    inc b
    rst $38
    dec c
    ld [bc], a
    db $10
    ld l, b
    ld c, b
    and b
    nop
    adc b
    rst $18
    nop
    ld [$0416], sp
    ld a, [de]
    db $10
    ld l, e
    rst $38
    ld d, b
    xor c
    ld [$00c0], sp
    ret z

    ld [$ff90], sp
    nop
    ld bc, $3f00
    rra
    ld h, b
    inc a
    ld b, e
    rst $28
    nop
    inc a
    nop
    ld [bc], a
    ld bc, $0205
    rst $18
    ld [bc], a
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec d
    ld a, [bc]
    rst $38
    ld a, [bc]
    dec d
    ld a, [bc]
    dec d
    ld c, $11
    ld a, [bc]
    dec d
    rst $38
    ld a, [de]
    dec h
    ld [de], a
    dec l
    inc de
    inc l
    inc hl
    ld e, h
    rst $38
    dec h
    ld e, d
    ld h, c
    sub d
    ld b, b
    or c
    nop
    ldh [rIE], a
    inc b
    dec bc
    inc b
    bit 0, d
    or l
    ld [hl], c
    adc [hl]
    db $fd
    inc e

jr_00a_5302:
    ld h, e
    ld bc, $041e
    dec bc
    inc [hl]
    rst $38
    ld [hl], $c9
    call $1932
    and $39
    add $ff
    jr nz, jr_00a_5373

    ld e, $e1
    ldh [$1f], a
    sbc b
    ld h, a
    rst $38
    add hl, sp
    add $b2
    ld c, l
    ld [hl], d
    adc l
    ld d, d
    xor l
    rst $38
    ld e, e
    and h
    ld a, e
    add h
    ld l, a
    sub b
    dec l
    jp nc, $37ff

    ret z

    ld [de], a
    db $ed

jr_00a_5331:
    add hl, de
    and $48
    or a
    rst $38
    ld c, h
    sub e
    add h
    ld c, d
    add b
    ld b, [hl]
    nop
    ret nz

    rst $38
    ld h, [hl]
    sbc c
    inc sp
    call z, $23dc
    ld h, [hl]
    sbc c
    rst $38
    jr jr_00a_5331

    ld h, a
    sbc b
    sbc a
    ld h, b
    ld a, l
    add d
    rst $38
    rst $10
    jr z, jr_00a_5302

    ld d, c
    ld c, l
    or d
    add hl, de
    and $ff
    inc de
    db $ec
    inc de
    db $ec
    ld [c], a
    dec e
    ld a, [de]
    push hl
    rst $38
    ld a, [bc]
    push af
    and c
    ld e, [hl]
    or c
    ld c, [hl]
    sbc d
    ld h, l
    rst $38
    ld b, b
    cp a
    ld h, h
    sbc e
    sub l
    ld l, d
    add c

jr_00a_5373:
    ld a, [hl]
    rst $38
    ret


    ld [hl], $49
    or [hl]
    add hl, hl
    sub $15
    ld [$15ff], a
    ld [$6b14], a
    ld d, $29
    ld [de], a
    dec l
    rst $38
    inc de
    inc l
    inc de
    inc l
    ld d, c
    ld l, $21
    ld e, d
    rst $38
    ld hl, $205a
    db $d3
    ld b, b
    or c
    nop
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
    sbc b
    ld h, a
    rlca
    ld hl, sp-$01

jr_00a_53a2:
    ldh a, [rIF]
    inc bc
    db $fc
    db $ec

jr_00a_53a7:
    inc de
    ldh a, [rIF]
    rst $38
    call c, $b323
    ld c, h
    and $19
    ld l, c
    sub [hl]
    rst $38
    ld h, [hl]
    sbc c
    ld c, b
    or a
    ld hl, $43de
    cp h
    rst $38

jr_00a_53bd:
    sub [hl]
    ld l, c
    ld h, $d9
    ld l, $d1
    dec c
    ld a, [c]
    rst $38
    ld c, l
    or d
    ld c, l
    or d
    ld c, l
    or d
    ld h, h
    sbc e
    rst $38
    inc h
    db $db
    ld h, $d9

jr_00a_53d3:
    sub d
    ld l, l
    sbc h
    ld h, e
    rst $38
    rst $08
    jr nc, jr_00a_53a2

    jr c, jr_00a_53bd

    rra
    ld [hl], b
    adc b
    rst $38
    jr c, jr_00a_53a7

    ld [$04f6], sp
    db $db
    ld [bc], a
    adc l
    ld hl, sp+$00
    add e
    nop
    add b
    nop
    rst $38
    and $19
    reti


    ld h, $23
    call c, $b946
    rst $38
    and h
    ld e, e
    ld c, h
    or e
    ret z

    scf
    sbc b
    ld h, a
    rst $38
    jr nc, jr_00a_53d3

    ld c, $f1
    ld [hl], b
    adc a
    add c
    ld a, [hl]
    rst $38
    dec bc
    db $f4
    sub e
    ld l, h
    daa
    ret c

    ld b, a
    cp b
    rst $38
    add $39
    adc [hl]
    ld [hl], c
    adc h
    ld [hl], e
    xor h

jr_00a_541b:
    ld d, e
    rst $38
    inc l
    db $d3
    inc l
    db $d3
    inc h
    db $db
    or l
    ld c, d
    rst $38
    inc d
    db $eb
    inc d
    db $eb
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    dec [hl]
    ld hl, sp+$00
    sbc a
    ld bc, $0082
    rst $38
    ld [de], a
    db $ed
    db $e4
    dec de
    or d
    ld c, l
    ld [hl], c
    adc [hl]
    rst $38
    ld h, c
    sbc [hl]
    call z, $d833
    daa
    push de
    ld a, [hl+]
    rst $38
    inc bc

jr_00a_5448:
    db $fc
    ld h, [hl]
    sbc c
    rst $00
    jr c, jr_00a_541b

    ld [hl-], a
    rst $38
    swap h
    adc e
    ld [hl], h
    dec de
    db $e4
    ld e, e
    and h
    rst $38
    jp nc, $d22d

    dec l
    or c
    ld c, [hl]
    and l
    ld e, d
    rst $38
    add l
    ld a, d
    add h
    ld l, e
    nop

Call_00a_5467:
    rst $28
    nop
    add $ff
    pop bc
    ld a, $a6
    ld e, c
    jr z, jr_00a_5448

    nop
    rst $38
    rst $38
    add [hl]
    ld a, c
    add c
    ld a, [hl]
    ld [hl], c
    adc [hl]
    db $fc
    inc bc
    rst $38
    ld a, d
    add l
    rst $28
    db $10
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    cp e
    ld b, h
    ld [hl], a
    adc b
    db $76
    adc c
    ld l, a
    sub b
    rst $38
    rst $28
    db $10
    db $eb
    inc d
    swap h
    ld d, [hl]

jr_00a_5496:
    xor c
    rst $38
    ld d, [hl]
    xor c
    ld d, l
    xor d
    ld d, l
    xor d
    sbc l
    ld h, d
    rst $38
    dec c
    ld [de], a
    add hl, bc
    ld d, $0a
    dec d
    nop
    inc c
    add b
    nop
    rst $38
    ld l, c
    sub [hl]
    and a
    ld e, b
    xor b
    ld d, a
    sub e
    ld l, h
    rst $38
    and a
    ld e, b
    ld [hl+], a
    db $dd
    rrca
    ldh a, [$0d]
    ld a, [c]
    nop
    rst $38
    ld h, h
    sbc e
    ld [hl], d
    adc l
    ld c, b
    or a
    jr nc, jr_00a_5496

    rst $38
    sbc b
    ld h, a
    db $dd
    ld [hl+], a
    sub c
    ld l, [hl]
    call z, $ff33
    db $ec
    inc de
    xor $11
    ld d, [hl]
    xor c
    ld [c], a
    dec e
    rst $38
    ld [$e415], a
    dec de
    sub l
    ld l, d
    or h
    ld c, e
    rst $38
    inc [hl]
    swap h
    jp z, Jump_00a_56a8

    ld l, b
    sub [hl]
    rst $38
    ld c, b
    or h
    ld [$24f4], sp
    ld e, b
    db $10
    ld [$f3df], sp
    inc c
    di
    ld l, e
    sub h
    ld a, $c1
    rst $38
    sbc $21
    ld l, e
    sub h
    dec [hl]
    jp z, $ea15

    rst $38
    sbc d
    ld h, l
    adc d
    ld [hl], l
    add b
    ld a, a
    rra
    ldh [rIE], a
    ldh a, [rIF]
    add b
    ld a, a
    ld sp, $3cce
    jp $1bff


    db $e4
    db $dd

jr_00a_551b:
    ld [hl+], a
    ld l, h
    sub e
    or $09
    rst $38
    or [hl]
    ld c, c
    sbc a
    ld h, b
    ld e, e
    and h
    rrca
    or b
    rst $38
    adc e
    inc [hl]
    add hl, bc
    ld d, $09
    ld d, $00
    dec e
    ldh [rP1], a
    add hl, bc
    nop
    rst $38
    sbc b
    ld h, a
    inc c
    di
    add h
    ld a, e
    ld a, b
    add a
    rst $38
    add a
    ld a, b
    ld c, h
    or e
    ld d, c
    xor [hl]
    ld d, d
    xor l
    rst $38
    ld d, h
    xor e
    xor b
    ld d, a
    ld [$c0f7], sp
    ccf
    rst $38
    jr c, jr_00a_551b

    rlca
    ld hl, sp-$68
    ld h, a
    call c, $ff23
    ld l, h
    sub e

jr_00a_555d:
    or [hl]
    ld c, c
    or $09
    db $db
    inc h
    rst $38
    ei
    inc b
    ld l, l
    sub d
    ld a, h
    add e
    db $76
    adc c
    rst $38
    or e
    ld c, h
    cp b
    ld b, a
    sbc b
    ld h, a
    call c, $ff22
    ld c, l
    or d
    ld b, $e9
    ld [bc], a
    dec c
    ld bc, $ff06
    and b
    ld e, b
    or b
    ld c, b
    jr nz, jr_00a_555d

    ld b, b
    or b
    rst $18
    add b
    ld a, h
    add e
    rst $00
    jr c, jr_00a_5596

    rst $30
    rst $38
    inc sp
    call z, $f30c
    and [hl]
    ld e, c

jr_00a_5596:
    ld d, [hl]
    xor c
    rst $38
    ld d, e
    xor h
    inc de
    db $ec
    jp nz, $343d

    set 7, a
    adc b
    ld [hl], a
    pop de
    ld l, $68
    sub a
    ld h, h
    sbc e
    rst $38
    ld a, [c]
    dec c
    or l
    ld c, d
    sbc $21
    ld a, e
    add h
    rst $38
    ld l, l

jr_00a_55b5:
    sub d
    rst $30
    ld [$c936], sp
    inc sp
    ld c, h
    rst $38
    inc bc
    inc a

jr_00a_55bf:
    ld bc, $011a

jr_00a_55c2:
    ld [bc], a
    nop
    ld bc, $0080
    or a
    nop
    sub d
    inc c
    ld a, [c]
    ldh a, [$0e]
    rst $38
    inc b
    ld hl, sp-$40
    jr nz, jr_00a_5634

    sub b
    cp b
    ld b, b
    rst $38
    ld d, h
    xor b
    ld e, b
    and [hl]
    ld c, [hl]
    or c
    add $39
    rst $38
    and b
    ld d, [hl]
    jr nz, jr_00a_55b5

    jr nz, jr_00a_55bf

    db $10
    ld l, b
    rst $30
    ld [$00b0], sp
    add b
    ld b, b
    ret nz

    jr nz, @+$01

    ld l, b
    sub b
    jr nc, jr_00a_55c2

    inc e
    ld [c], a
    inc c
    ld a, [c]
    rst $38
    ld [bc], a
    call c, Call_00a_4080
    add b
    ld b, b
    nop
    add b
    rst $38
    xor l
    ld a, [c]
    db $eb
    or $f8
    rst $30
    ld [$bfff], a
    rst $38
    or l
    rst $38
    sbc $ff
    jp hl


    rst $38
    rst $38
    call nc, $a0ff
    rst $38
    rst $08
    ld hl, sp+$69
    or $ff
    ld d, a
    ld hl, sp-$0f
    xor $a5
    rst $38
    ld l, b
    rst $18
    rst $38
    inc [hl]
    swap l
    res 5, b
    ld d, a
    ld l, c
    sub a
    rst $38
    ld c, c
    or a
    rrca
    di

jr_00a_5634:
    and a
    ei
    ld d, a
    ei
    rst $38
    sub [hl]
    rst $38
    rst $28
    ccf
    ld a, a
    rst $18
    xor e
    ld a, a
    rst $38
    rst $10
    cp a
    xor d
    ld a, a
    rra
    rst $38
    ld [hl], a
    rst $28
    add c
    nop
    ld [$00eb], sp
    inc b
    ld b, $03
    ld bc, $ff4b
    inc hl
    dec h
    inc d
    scf
    add hl, de
    ld d, $97
    jp c, Jump_00a_5eff

    ld a, e
    ccf
    ld a, e
    cpl
    ld a, e
    cpl
    ld a, e
    sub a
    nop
    ld [bc], a
    add d
    ld b, [hl]
    ld b, e
    di
    inc hl
    ld h, [hl]
    ld h, $36
    ld [hl+], a
    cp [hl]
    rst $38
    ld l, $fb
    xor [hl]
    ei

jr_00a_5678:
    cp a
    db $eb
    sbc e
    rst $28
    rst $38
    reti


    rst $28
    ld e, l
    rst $28
    ld c, l
    rst $38
    ld l, h
    rst $38
    add c
    nop
    jr nz, @+$01

    nop
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    db $f4
    sub h
    push af
    rst $38
    push af
    or a
    push af
    cp a
    db $eb
    cp a
    xor e
    rst $38
    rst $38
    ld a, d
    rst $18
    rst $38
    ld e, d
    ld e, a
    ld a, [$fb5e]
    add d
    nop
    jr nz, jr_00a_5678

    ld b, b

Jump_00a_56a8:
    ld h, b
    ret nz

    ret nc

    rst $18
    ld d, b
    ret nc

    ld e, b
    add sp, $78
    ld sp, hl
    ld l, c
    rst $38
    ld a, d
    db $eb
    xor [hl]
    cp $da
    cp $ca
    cp $ff
    db $10
    ld [$2e10], sp
    ld [$1075], sp
    adc b
    rst $38
    nop
    inc a
    db $10
    inc l
    jr nz, jr_00a_56e8

    nop
    jr jr_00a_56cf

jr_00a_56cf:
    rst $38
    dec e
    ld a, $25
    ld a, e
    call z, Call_00a_5467
    set 7, a
    or b
    jp nz, $d4a3

    and l
    add d
    and c
    add h
    rst $38
    add c
    xor h
    and b
    call nc, $b4ca

jr_00a_56e8:
    add l
    ld a, [$76ff]
    db $db
    ld c, [hl]
    db $fd
    xor $7f
    cp $6f
    rst $38
    inc a
    rst $38
    adc c
    rst $30
    ld a, [$0b81]
    inc d
    rst $38
    dec [hl]
    ld a, [bc]
    ld h, c
    inc e
    ld d, c
    inc l
    ld [hl+], a
    ld e, c
    rst $38
    jp nc, $c529

    dec sp
    sub c
    ld a, a
    or e
    ld a, a
    rst $38
    inc de
    ld a, a
    dec sp
    rst $38
    db $fd
    cp a
    sbc a
    rst $38
    rst $38
    adc l
    ld a, [hl]
    ld l, l
    di
    adc h
    rst $00
    xor h
    inc de
    rst $38
    ld sp, $4692
    jr nz, @+$67

    ld [bc], a
    pop de
    inc h
    rst $38
    adc l
    ld h, b
    ret nz

    inc [hl]
    ld l, d
    or h
    add hl, sp
    or $ff
    ld [hl], $fb
    ld d, d
    db $fd
    cp d
    rst $38
    cp d
    ld a, a
    rst $38
    inc [hl]
    ld hl, sp-$23
    cp $ca
    sbc a
    ld b, $0b
    rst $38
    ld d, c
    cpl
    dec bc
    dec d
    ld d, l
    add hl, hl
    dec hl
    ld d, l
    rst $38
    reti


    daa
    add e
    ld [hl], a
    db $d3
    ld h, a
    ld a, [hl+]
    rst $30
    rst $38
    db $76
    rst $28
    ld a, d
    rst $28
    db $eb
    cp $b7
    cp $ff
    xor [hl]
    ld a, a
    db $ed
    ld a, a
    ld a, l
    rst $38
    db $db
    cp $ff
    cp $fd
    db $dd
    rst $38
    sbc a
    rst $38
    ld e, d
    rst $38
    rst $38
    ld [hl], e
    rst $38
    or $fa
    cp d
    rst $38
    rst $18
    rst $38
    rst $38
    cp $ff
    ld d, h
    rst $38
    db $76
    rst $38
    rst $18
    ld [hl], a
    rst $38
    rst $10
    cp $af
    and $d7
    rst $28
    xor $ef
    rst $38
    ld sp, hl
    cp $b4
    and $76
    xor $a6
    ld e, l
    rst $38
    ld b, a
    ld [hl], l
    xor d
    rst $30
    ld a, l
    rst $30
    dec a
    ei
    rst $38
    ld l, l
    cp [hl]
    cp a
    cp [hl]
    rst $18
    cp [hl]
    sub [hl]
    rst $30
    rst $38
    sbc $bf
    ld l, l
    ld a, a
    sbc l
    ld a, a
    ld e, e
    cp $ff
    cp d
    ld a, l
    ld a, [$b3f9]
    ld a, a
    ld e, b
    pop af
    rst $38
    sub e
    ld [hl], a
    db $76
    ld sp, hl
    jp c, Jump_00a_6b3b

    ld sp, hl
    rst $38
    sbc $bb
    push de
    cp e
    db $76
    ld e, a
    cp [hl]
    ld d, a
    rst $38
    rst $10
    ld l, [hl]
    dec hl
    and $57
    rst $28
    ld l, d
    rst $20
    rst $38
    push bc
    cp $d4
    and $46
    xor $ca
    db $fd
    rst $38
    ld d, a
    push hl
    xor $df
    ld h, a
    rst $08
    db $fd
    sbc a
    rst $38
    ld a, l
    adc [hl]
    cp e
    ld a, d
    ld a, a
    sbc d
    sub $37
    cp b
    nop
    jr c, jr_00a_586f

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, @+$7e

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
    jr jr_00a_585d

    jr c, jr_00a_5843

jr_00a_5843:
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
    jr jr_00a_5899

jr_00a_585d:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00a_58a4

    nop
    cp [hl]
    nop
    jr jr_00a_58a9

    nop
    ld h, [hl]

jr_00a_586f:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00a_58b2

    nop
    rst $38
    jp hl


    ld a, a
    ld e, l
    rst $28
    ld a, $df
    ld [hl], a
    adc $ff
    ld a, [$6d9f]
    db $db
    sub a
    ld a, e
    db $ed
    ld e, e
    rst $38
    dec de
    cp $f7
    ld c, [hl]
    ld [$b95f], a
    ld l, a
    rst $30
    rst $38
    xor e
    push hl
    cp a
    rst $30
    or [hl]

jr_00a_5899:
    ld a, a
    rst $38
    ld [hl], l
    cp $b6
    rst $38
    cp [hl]
    rst $38
    db $db
    ld a, a
    rst $38

jr_00a_58a4:
    ld a, a
    cp a
    cp e
    rst $38
    ld sp, hl

jr_00a_58a9:
    rst $38
    ld e, d
    rst $38
    rst $38
    adc $ff
    ld l, a
    ld e, a
    ld e, l

jr_00a_58b2:
    rst $38
    ei
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    ld l, [hl]
    rst $38
    ei
    xor $00
    sbc l
    nop
    inc bc
    ld [bc], a
    inc b
    jr c, @+$01

    jr jr_00a_592c

    dec h
    ld b, b
    ld [bc], a
    ld h, b
    dec d
    ld b, b
    rst $38
    ld [hl+], a
    ld b, b
    ld de, $0720
    jr nc, jr_00a_58f0

    ld h, b
    rst $38
    ld l, l
    sub b
    inc de
    ret nz

    add hl, bc
    add b
    sbc [hl]
    ld b, b
    rst $38
    nop
    inc e
    inc b
    and d
    ld [hl+], a
    ld b, c
    ld d, l
    nop
    rst $38
    ld a, [hl+]
    ld bc, $0056
    ld a, e
    nop

jr_00a_58f0:
    rla
    nop
    db $fd
    db $dd
    nop
    ld l, e
    inc d
    sub d
    ld h, c
    sub b
    rst $38
    sub [hl]
    nop
    add hl, bc
    add b
    rst $10
    nop
    xor a
    ld b, b
    add c
    nop
    ld bc, $00ff
    ld b, $04
    ld [$000d], sp
    ld b, $08
    rst $38
    add hl, bc
    ld [hl], b
    inc h
    ld c, b
    ld c, e
    add b
    add [hl]
    nop
    rst $38
    dec hl
    add b
    ld e, d
    add b
    cpl
    ld b, b
    ld a, [de]
    ld h, b
    rst $38
    ld l, c
    add b
    ld b, c
    add b
    sub d
    ld b, b
    xor l
    nop
    rst $38
    rst $00

jr_00a_592c:
    nop
    db $ed
    nop
    xor a
    nop
    ei
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
    nop
    inc bc
    ld bc, $0c0e
    db $10
    ld [$ffd0], sp
    ld d, b
    jr nz, @+$14

    nop
    ld hl, $5600
    nop
    rst $38
    cp e
    nop
    push hl
    nop
    add e
    nop
    xor b
    nop
    rst $38
    ld d, l
    nop
    xor $00
    db $d3
    nop
    rst $30
    nop
    rst $38
    nop
    sbc $4a
    ld sp, $2011
    ret nc

    nop
    rst $38
    ld d, $00
    xor d
    nop
    ld a, e
    nop
    xor [hl]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    db $db
    nop
    cp $00
    or a
    nop
    rst $38
    nop
    sbc a
    nop
    ret nz

    ld b, b
    jr nc, @+$12

    ld [$40ff], sp
    ld [$1688], sp
    inc b
    ld [bc], a
    or d
    ld bc, $a4ff
    ld bc, $0bc4
    jr nc, jr_00a_59a8

    ret nc

    ld c, $ff
    and d

jr_00a_59a8:
    ld bc, $0b80
    dec b
    nop
    ld l, e
    nop
    sub a
    nop
    inc e
    db $e3
    ld b, l
    and b
    rst $38
    adc d
    nop
    ld d, h
    nop
    cp e
    nop
    ld e, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    ld sp, hl
    ld b, $d7

jr_00a_59cb:
    jr z, jr_00a_59cb

    ld bc, $14eb
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @-$08

    add hl, bc
    xor e
    ld d, h
    rst $38
    add $39
    xor c
    ld d, [hl]
    ld d, d
    xor l
    and c
    ld e, [hl]
    add c
    nop
    ldh a, [rIE]
    ld d, b
    adc b
    add b
    inc b
    ld d, b
    inc b
    ld h, b
    ld a, [bc]
    rst $38
    call nc, $e802
    ld b, $a2
    ld bc, $0049
    rst $38
    and b
    nop
    ld c, d
    nop
    push de
    nop
    ld a, d
    nop
    rst $30
    rrca
    jr nc, jr_00a_5a76

    adc l
    ld [bc], a
    ld b, l
    ld [bc], a
    rst $38
    adc e
    nop
    xor d
    ld bc, $01f6
    db $dd
    ld [bc], a
    rst $38
    or $01
    ld_long $ff05, a
    nop
    cp l
    ld [bc], a
    rst $38
    push af
    nop
    ld [c], a
    nop
    push de
    nop
    rst $38
    nop
    rst $38
    db $dd
    ld [hl+], a
    ld l, d
    sub l
    adc c
    ld b, $16
    ld bc, $adff
    ld [bc], a
    cp d
    ld bc, $01f6
    ld a, a
    nop
    add l
    nop
    add b
    ld b, b
    rst $38
    nop
    ld b, b
    ret nz

    jr nz, jr_00a_5a9f

    nop
    ret nz

    jr nz, @+$01

    and b
    ld e, b
    ret nz

    inc b
    or h
    ld [bc], a
    ldh [rSC], a
    rst $38
    ld d, d
    ld bc, $01ea
    or [hl]
    ld bc, $02ec
    rst $38
    jr jr_00a_5a57

jr_00a_5a57:
    jr c, jr_00a_5a59

jr_00a_5a59:
    inc l
    nop
    jr z, jr_00a_5a5d

jr_00a_5a5d:
    rst $38
    ld e, h
    nop
    inc [hl]
    nop
    jr c, jr_00a_5a64

jr_00a_5a64:
    jr jr_00a_5a66

jr_00a_5a66:
    rst $38
    jr jr_00a_5a69

jr_00a_5a69:
    inc sp
    nop
    push de
    nop
    cp e
    nop
    rst $38
    sbc [hl]
    nop
    ld l, b
    nop
    ld e, h
    nop

jr_00a_5a76:
    jr z, jr_00a_5a78

jr_00a_5a78:
    rst $38
    jr jr_00a_5a7b

jr_00a_5a7b:
    ld [$1400], sp
    nop
    jr z, jr_00a_5a81

jr_00a_5a81:
    di
    stop
    ld [$0800], sp
    nop
    add b
    nop
    rst $38
    jr c, jr_00a_5a8d

jr_00a_5a8d:
    ld l, [hl]
    nop
    or [hl]
    nop
    and l
    nop
    rst $38
    ld e, d
    nop
    ld c, d
    nop
    ld bc, $1400
    nop
    call z, $0041

jr_00a_5a9f:
    ld [$ff00], sp
    jr jr_00a_5aa4

jr_00a_5aa4:
    ld a, [hl]
    nop
    ld l, e
    nop
    sbc $00
    rst $38
    ld l, c
    nop
    sub [hl]
    nop
    ld l, a
    nop
    and l
    nop
    adc h
    nop
    inc b
    nop
    di
    add b
    nop
    stop
    ld d, h
    nop
    rst $38
    stop
    and l
    nop
    stop
    ld d, h
    nop
    di
    add h
    nop
    ld hl, $2400
    nop
    nop
    rst $38
    dec [hl]
    ld a, a
    ld l, b
    rst $38
    jp z, $b7f5

    add sp, -$01
    rst $08
    ldh a, [$b7]
    add sp, -$36
    push af
    ld l, b
    rst $38
    ei
    ld a, a
    rst $38
    adc a
    ldh a, [rIE]
    add sp, -$01
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    pop af
    cp $7f
    rst $38
    rst $38
    ld e, h
    cp $0e
    rst $38
    sub a
    ld a, a
    ld c, a
    cp a
    rst $38
    sub a
    ld a, a
    ld c, a
    cp a
    sub a
    ld a, a
    ld l, $ff
    ei
    cp $ff
    ld b, l
    cp a
    rst $38
    xor a
    ld a, a
    rst $18
    rst $18
    rst $38
    rst $18
    rst $08
    ccf
    cp $ff
    rst $38
    ld a, [hl]
    rst $38
    ei
    rst $00
    reti


    cp a
    push af
    xor a
    rst $38
    push hl
    cp a
    sbc c
    rst $38
    jp Jump_00a_7eff


    rst $38
    rst $38
    jr nz, jr_00a_5b99

    ret nc

    cp b
    or b
    rst $28
    rst $30
    db $ec
    rst $38
    db $f4
    ld l, a
    ld a, a
    rst $28
    ret z

    db $fc
    jr nc, jr_00a_5b70

    cp a
    nop
    ld bc, $3903
    cp $ef
    ld [hl-], a
    ret c

    ld h, a
    cp $ff
    rlca
    xor a
    nop
    add b
    ld b, a
    rst $38
    ld a, l
    add $c8
    ld e, b
    rst $38
    ret nz

    rst $38
    inc b
    ld c, $0b
    dec e
    dec c
    rst $30
    rst $28
    scf
    rst $38
    cpl
    or $fe
    rst $30
    inc de
    ccf
    inc c
    inc e
    rst $38
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    nop
    rlca
    rst $38
    dec b
    ld b, $07
    dec b

jr_00a_5b70:
    ld b, $0d
    add hl, bc
    rrca
    rst $38
    inc c
    dec bc
    ld c, $1b
    ld d, $1e
    jr jr_00a_5bb3

    rst $38
    inc l
    inc [hl]
    jr z, jr_00a_5bfe

    ld a, b
    ret z

    or b
    ret c

jr_00a_5b86:
    add c
    ret nz

    ldh [rIE], a
    add b
    ldh [$a0], a
    ldh [$a0], a
    ldh [rLCDC], a
    ldh a, [rIE]
    ld d, b
    ld [hl], b
    db $10
    ld [hl], b
    jr nz, jr_00a_5bd1

jr_00a_5b99:
    jr z, @+$3a

    rst $38
    ld [$143c], sp
    inc e
    ld [$0a1e], sp
    rrca
    rst $38
    inc c
    ld bc, $0010
    ld bc, $4000
    nop
    rst $38
    ld b, d
    nop
    add b
    nop
    add c

jr_00a_5bb3:
    nop
    add b
    nop
    rst $38
    sub c
    nop
    ld c, b
    ld [bc], a
    ld c, e
    inc b
    db $10
    inc b
    rst $38
    jr jr_00a_5bc4

    ld a, [bc]
    nop

jr_00a_5bc4:
    inc c
    nop
    dec b
    nop
    rst $38
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_00a_5bd1:
    rst $08
    ld bc, $0100
    nop
    ld bc, $8300
    nop
    ld [hl+], a
    nop
    rst $38
    xor e
    nop
    ld h, [hl]
    nop
    call nc, $a200
    nop
    rst $38
    ld [hl], l
    ld a, [bc]
    xor d
    inc d
    dec [hl]
    add b
    xor d
    inc d
    rst $38
    dec hl
    sub b
    sbc $01
    ld a, b
    add e
    dec d
    add d
    rst $38
    ld b, $51
    jr z, jr_00a_5c02

    ld d, h
    add hl, bc

jr_00a_5bfe:
    jr z, jr_00a_5b86

jr_00a_5c00:
    rst $38
    adc h

jr_00a_5c02:
    ld hl, $9862
    add b
    ld l, e
    jr z, @-$6d

    rst $38
    sbc e
    ld b, h
    sub h
    jr nz, jr_00a_5c00

    nop
    add b
    ld b, b
    rst $38
    jp nz, $8000

    nop
    ld b, c
    nop
    ret nz

    nop
    rst $38
    push de
    nop

jr_00a_5c1e:
    jp z, $b424

    inc bc
    push de
    jr nz, @+$01

    and d
    add hl, de
    add sp, $10

jr_00a_5c29:
    ld d, h
    xor c
    pop bc
    jr c, @+$01

    add h
    ld e, b
    ld d, e
    xor h
    ld hl, $a05c
    ld e, l
    rst $38
    add hl, de
    and h
    ld h, l
    adc b
    ld [de], a
    xor h
    jp z, $ff34

    ld e, c
    inc h
    jr nz, jr_00a_5c1e

    sub h
    ld l, b
    ld [$ff70], sp
    add b
    ld [hl], b
    db $10
    and b
    xor d
    ld d, b
    ld [de], a
    and b
    rst $38
    ld c, d
    or c
    add h
    ld a, b
    jr z, jr_00a_5c29

    dec h
    ld e, b
    rst $38
    adc d
    ld [hl], b
    nop
    cp c
    ld c, d
    or b
    ld c, $f1
    rst $38

jr_00a_5c64:
    ld h, b
    nop
    sbc b
    nop
    jr jr_00a_5c8e

    inc c
    ld [bc], a
    rst $38
    ld b, d
    inc d
    inc l
    ld [bc], a
    jr @+$48

    ld [bc], a
    xor b
    rst $38
    ld c, b
    or h
    sub b
    ld l, b
    jr nz, jr_00a_5ccc

    ld b, c
    or b
    rst $38
    ld a, [bc]
    ld [hl], b
    ld d, [hl]
    and b
    sub a
    ld l, b
    dec bc
    db $f4
    rst $38
    add b

jr_00a_5c89:
    nop
    ld [$7020], sp
    inc b

jr_00a_5c8e:
    sbc $00
    rst $38
    db $10
    ld a, [hl+]
    xor $11
    ld a, [de]
    ld b, l
    and h
    ld e, e
    rst $38
    ld c, d
    dec [hl]
    and b
    ld e, [hl]
    inc h
    jp c, $fc00

    rst $38
    ld b, b
    cp h
    xor b
    inc d
    ld d, h
    xor b
    sub b
    jr z, jr_00a_5c89

    xor h

jr_00a_5cad:
    ld d, b
    ld [$508c], sp
    xor b
    rst $38
    inc h
    jr jr_00a_5cbe

    inc h
    sub h
    jr z, jr_00a_5c64

    inc d
    rst $38
    jr jr_00a_5cbe

jr_00a_5cbe:
    ld l, $00
    dec e
    nop
    ld l, d
    nop
    rst $38
    dec d
    nop
    and b
    nop
    dec d
    nop
    ld b, b

jr_00a_5ccc:
    nop
    db $fc
    ld [de], a
    nop
    inc b
    nop
    ld hl, $ff00
    ld [$2000], sp
    nop
    inc b
    nop
    stop
    adc a
    nop
    inc d
    nop
    add hl, hl
    nop
    rst $38
    sub l
    nop
    ld l, $00
    xor c
    nop
    ld b, h
    nop
    nop
    add b
    nop
    add b
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
    ld bc, $12fe
    db $ec
    dec l
    ret nz

    ld l, d
    sub l
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    ld a, a
    rst $38
    ld b, b
    ccf
    sub b
    cpl
    ld l, b
    add a
    ld a, [hl+]
    pop de
    rst $28
    nop
    add b
    ret nz

    ld h, b
    ldh [rNR10], a
    jr nc, @+$01

    ld c, b
    jr jr_00a_5cad

    inc c
    inc d
    adc [hl]
    adc a
    ld h, a
    rst $38
    dec b
    ccf
    ld l, [hl]
    add hl, de
    add hl, bc
    ld sp, $51b0
    rst $38
    ld b, d
    ld sp, $7295
    ld [hl-], a
    ld sp, hl
    ld a, [hl-]
    rst $38
    rst $30
    rra
    ccf
    ld l, [hl]
    ld a, c
    db $d3
    pop bc
    sub e
    rst $38
    ret nz

    sub e
    adc e
    reti


    ld c, a
    rst $38
    ld a, d
    ld a, a
    rst $38
    ld e, b
    ld [hl], a
    ld h, l
    ld c, a
    ld a, a
    ld l, d
    ld h, l
    ld c, e
    rst $38
    ld h, h
    ld [hl], a
    ld l, a
    ld c, d
    dec h
    ld [hl], a
    ld hl, $ff3b
    rlca
    rrca
    ld a, [de]
    dec a
    add hl, hl
    jr nc, jr_00a_5da6

    ld h, b
    rst $38
    ld b, [hl]
    ld h, c
    ld c, d
    ld h, c
    dec [hl]
    ld h, a
    ld de, $ff3f
    dec h
    ld a, d
    ld d, [hl]
    ld h, c
    ld h, d
    ret nz

    add [hl]
    pop bc
    rst $38
    xor l
    jp nz, $c5bb

    ld a, d
    rst $08
    ld b, a
    rst $38
    rst $38
    ld l, [hl]
    ld a, a
    add hl, sp
    ccf
    rra
    dec de
    dec c
    dec de
    ld hl, sp+$0d
    rrca
    inc bc
    rlca
    nop
    rst $38
    ld l, $71
    ld d, e
    ld h, b
    ld h, l
    jp $cf85


    rst $38
    sub e
    rst $08
    xor l
    sbc $46
    db $fc
    ld l, b
    db $fd
    rst $38
    sbc c
    call c, $cd6a
    dec [hl]

jr_00a_5da6:
    ld l, [hl]
    ld d, [hl]
    xor a
    db $fc
    sub l
    ld a, a
    ld d, e
    rst $38
    xor l
    rst $38
    rst $38
    call nc, $01ff
    cp $2a
    push de
    or l
    ld c, d
    rst $38
    ld b, b
    cp a
    dec d
    rst $38
    xor e
    rst $38
    db $fd
    cp $ff
    rst $38
    ld hl, sp-$4a
    ld sp, hl
    ld d, a
    ld hl, sp-$4a
    ld sp, hl
    rst $38
    ld [hl], a
    ld hl, sp-$4e
    db $fd
    ld l, d
    rst $38
    adc l
    rst $08
    xor $07
    rrca
    rlca
    ld bc, $0003
    add b
    nop
    db $dd
    db $10
    jr c, jr_00a_5e5d

    ld c, h
    ld a, h
    ld e, h
    rst $38
    ld l, h
    sbc $be
    sbc $ee
    sbc [hl]
    xor $be
    adc a
    nop
    ld l, b
    nop
    ld e, d
    nop
    rst $38
    db $e4
    nop
    ld d, c
    nop
    and l
    nop
    ld d, b
    nop
    cp a
    nop
    add b
    nop
    ret nc

    nop
    xor c
    nop
    rst $38
    sbc $00
    dec h
    nop
    ld c, d
    nop
    inc d
    nop
    di
    ld [$4200], sp
    nop
    inc b
    nop
    di
    ld b, b
    nop
    ld [bc], a
    nop
    ld [$ff00], sp
    ld a, [bc]
    nop
    dec d
    nop
    ld e, a
    nop
    db $ed
    nop
    rst $38
    ld e, d
    nop
    and l
    nop
    ld c, b
    nop
    ld hl, $af00
    add b
    ret nz

    and b
    ld h, b

jr_00a_5e32:
    sub b
    jr nc, jr_00a_5e32

    ld e, b
    cp b
    call c, $bafc
    cp $7f
    rst $38
    call nz, $e9ff
    sbc h
    and [hl]
    add hl, de
    ld a, [bc]
    add hl, sp
    rst $38
    ld a, [bc]
    add hl, sp
    ld l, $99
    cp d
    db $dd
    ld a, b
    rst $38
    rst $38
    db $fd
    cp a
    ld d, [hl]
    rst $38
    ei
    rst $38
    cpl
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ld a, l

jr_00a_5e5d:
    rst $38
    rst $18
    rst $38
    rst $38
    jp $98e7


    ld a, h
    db $e4
    ld e, $11
    xor $ff
    nop
    rst $38
    ld sp, hl
    rst $20
    ld hl, sp-$09
    ld a, c
    rst $38
    rst $38
    xor [hl]
    rst $38
    add l
    ld a, a
    ret nc

    cpl
    xor d
    ld d, l
    rst $38
    ld b, c
    cp [hl]
    ld d, h
    rst $38
    xor d
    rst $38
    ld a, l
    rst $38
    rst $38
    adc a
    rst $38
    push de
    cp [hl]
    ld l, a
    cp h
    ld e, a
    cp h
    rst $38
    ld l, a
    cp h
    sbc h
    rst $38
    ld a, d
    rst $38
    ld bc, $ff03
    cp h
    rst $38
    ld d, a
    rst $38
    ld a, l
    rst $38
    db $db
    rst $20
    rst $38
    dec [hl]
    ei
    ld c, b
    ccf
    and h
    ld e, a
    add h
    ld a, a
    rst $38
    ld c, d
    cp a
    sub [hl]
    ld a, a
    ld c, [hl]
    cp a
    ld d, l
    rst $38
    di
    xor d
    rst $38
    ld a, l
    rst $38
    ld b, a
    rst $38
    rst $38
    ld d, l
    xor e
    inc a
    jp $11ee


    ld d, d
    xor l
    rst $38
    inc b
    ei
    ld b, d
    db $fd
    or h
    rst $38
    ld e, b
    rst $38
    rst $38
    dec a
    rst $38
    jp c, $bd7f

    rst $38
    ld e, a
    rst $38
    rst $38
    cp l
    rst $38
    ld a, [hl]
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    db $eb
    rst $38
    rst $18
    rst $38
    ld b, a
    ld a, a
    rst $38
    inc sp
    ld l, a
    scf
    ccf
    dec c
    rra
    inc bc
    rlca
    rst $38
    ld [$4100], sp
    nop
    inc d
    nop
    ld [hl+], a
    nop
    di
    adc b
    nop
    ld [hl+], a
    nop
    add hl, bc
    nop
    nop

Jump_00a_5eff:
    rst $38
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
    sbc a
    rst $28
    rst $38
    db $db
    rst $20
    sub $ff
    ld a, [hl]
    ld a, a
    ld h, b
    ld a, a
    rst $38
    ret nz

    pop af
    adc d
    sub l
    xor l
    rst $38
    ld a, a
    rst $38
    rst $38
    sbc $ff
    db $fd
    rst $38
    sbc a
    rst $38
    rst $20
    cp $ff
    db $db
    rst $38
    rst $30
    rst $38
    sbc d
    rst $38
    db $fc
    rst $38
    rst $18
    db $f4
    rst $38
    ei
    or h
    db $ed
    ei
    db $fc
    rst $38
    or $ff
    set 7, a
    ld a, e
    ei
    rst $18
    or $af
    rst $38
    nop
    ld d, d
    nop
    ld de, $feae
    and a
    ld e, a
    xor l
    rst $38
    ld d, h
    cp $ff
    rst $38
    ld h, b
    rst $38
    or e
    ldh [$f0], a
    ld h, l
    push af
    rst $38
    cp $80
    rst $38
    xor $c4
    rst $38
    xor d
    rst $38
    rst $38
    cp h
    rst $38
    sub $e1
    ld bc, $c8cc
    add [hl]
    rst $38
    ld h, $df
    rst $00
    rst $38
    cp e
    ld a, [hl]
    scf
    inc e
    rst $38
    sbc d
    ld b, a
    ld d, b
    cp a
    or [hl]
    ld sp, hl
    ret nc

    ldh [rIE], a
    rlca
    nop
    ret z

    scf
    ei
    ccf
    rst $18
    cp $ff
    ld h, l
    rst $38
    jp nz, $c5ff

    rst $38
    adc e
    rst $38
    rst $38
    add $ff
    call $a7ff
    rst $38
    ld c, d
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    ld l, a
    rst $38
    push af
    rst $38
    rst $38
    db $db
    rst $38
    sbc d
    rst $30
    ld e, l
    db $eb
    push af
    or a
    rst $38
    ld e, e
    xor $57
    ei
    cp l
    ld hl, sp-$26
    db $ec
    rst $38
    and a
    or a
    sbc b
    rst $30
    ei
    ccf
    rst $18
    cp $bf
    rst $38
    adc h
    sbc b
    db $ec
    sbc b
    reti


    db $fc
    rst $38
    ld hl, sp-$03
    adc e
    cp $bc
    adc a
    sbc a
    rst $28
    rst $38
    db $db
    rst $20
    sub $ff
    cp $ff
    ldh [rIE], a
    db $fc
    ret nz

    pop af
    adc d
    sub l
    xor l
    rst $38
    rst $38
    or b
    rst $38
    rst $18
    di
    or h
    db $ed
    db $db
    db $fd
    rst $38
    or $ff
    set 7, a
    ld a, e
    ei
    rst $18
    or $83
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    di
    rst $28
    dec e
    ei
    and $7e
    ld sp, hl
    rst $38
    cp $95
    ld e, l
    xor $56
    xor a
    ccf
    rst $18
    call z, $ffd3
    rst $28
    rst $38

Jump_00a_600d:
    rst $38
    cp $ff
    dec b
    inc bc
    ld d, l
    inc bc
    inc de
    xor a
    cp $a5
    ld e, e
    xor e
    rst $38
    ld d, h
    rst $38
    cp $ff
    ld h, e
    rst $38
    or c
    db $e3
    pop af
    ld h, a
    rst $30
    rst $38
    rst $38
    add d
    cp $ee
    rst $00
    rst $38
    xor e
    cp $ff
    cp a
    rst $38
    db $fd
    rst $38
    ld l, a
    rst $38
    push af
    rst $38
    rst $38
    db $db
    rst $38
    sub [hl]
    rst $38
    ld c, [hl]
    ei
    db $fd
    scf
    rst $38
    add $c7
    db $f4
    ld l, c
    jp hl


    rst $38
    or $9f
    rst $38
    cp l
    ld e, [hl]
    ld l, e
    ld a, a
    dec sp
    jp hl


    sub h
    ccf
    cp a
    rst $38
    jr jr_00a_605f

    db $e4
    jr jr_00a_60b3

    xor b
    rst $38
    ld hl, sp-$03
    ld e, e

jr_00a_605f:
    cp $3c
    rrca
    sbc a
    rst $28
    rst $38
    ld e, e
    rst $20
    sub $ff
    ld a, [hl]
    rst $38
    ldh [rIE], a
    rst $38
    ret nz

    pop af
    ld a, [bc]
    dec d
    xor l
    rst $38
    ld a, a
    rst $38
    rst $38
    db $f4
    rrca
    rst $10
    db $eb
    ld a, e
    cp l
    ld h, $1f
    rst $38
    db $db
    cpl
    push de
    rst $38
    cp $3f
    inc c
    cp $ff
    xor h
    ldh a, [$34]
    pop bc
    cp c
    rst $28
    ld d, $ff
    rst $38
    sbc l
    ld e, $09
    inc e
    ld a, [hl-]
    ret


    sub h
    cpl
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld a, e
    rst $38
    xor a
    rst $38
    or e
    rst $38
    rst $18
    rst $38
    ld d, h
    rst $38
    rst $38
    db $f4
    ld l, a
    ccf
    db $eb
    ei
    cp l
    ld h, [hl]
    ld a, a
    rst $38

jr_00a_60b3:
    db $db
    rst $28
    push de
    rst $38
    cp $3f
    inc c
    cp $ff
    xor h
    ldh a, [$34]
    pop bc
    ld sp, hl
    rst $28
    sub $ff
    rst $38
    sbc l
    sbc $29
    inc a
    ld a, [$b4c9]
    cpl
    cp a
    rst $38
    dec b
    inc bc
    ld d, l
    inc bc
    inc de
    xor a
    db $fc
    and l
    ld e, e
    xor e
    rst $38
    ld d, l
    rst $38
    rst $38
    ld h, c
    rst $38
    or c
    db $e3
    pop af
    ld h, a
    rst $30
    rst $38
    cp $83
    rst $38
    rst $28
    rst $00
    rst $38
    xor e
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp l
    rst $38
    ei
    db $fd
    ld a, [c]
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, [hl]
    di
    and h
    ei
    cp [hl]
    ld [hl], l
    cp $7f
    sub l
    and l
    ld a, a
    ld a, [hl]
    ei
    rst $38
    call nc, $fffe
    cp $ff
    nop
    cp a
    rst $38
    or [hl]
    db $dd
    ld e, c
    xor [hl]
    ld d, a
    cp h
    rst $38
    ld l, d
    sub l
    ld [hl], a
    cp h
    ld a, [hl+]
    db $dd
    ld l, a
    cp h
    rst $38
    or $9d
    ld c, e
    db $fc
    dec sp
    call nc, $ad72
    rst $38
    ld a, a
    sub h
    ld l, a
    cp h
    dec [hl]
    sbc $af
    rst $38
    rst $38
    ld c, a
    rst $38
    ld a, [$8fbf]
    ld a, a
    or l
    rst $38
    rst $38
    adc a
    ld a, a
    ld e, l
    ld a, [$3ce7]
    xor a
    db $fd
    rst $38
    ccf
    push af
    ld c, l
    rst $38
    sub $bf
    rst $38
    ld l, a
    db $fc
    ld a, [hl-]
    rst $38
    rst $28
    or a
    ld e, e
    rst $38
    cp a
    rst $38
    or h
    rst $38
    db $ed
    ld_long a, $fff5
    rst $38
    ld a, [hl]
    db $fd
    jp hl


    rra
    rst $38
    and $7a
    rst $38
    rst $38
    adc h
    rst $30
    sbc $ff
    xor h
    ei
    db $db
    db $e4
    rst $38
    ld a, [$eedf]
    rst $18
    ld l, e
    push af
    db $db
    rst $38
    rst $38
    db $fd
    cp $ed
    db $f4
    db $eb
    ret z

    or e
    ret z

    rst $38
    xor a
    or b
    ld l, $b1
    dec hl
    or l
    db $ec
    inc bc
    rst $38
    cp d
    dec b
    ld e, l
    inc bc
    ld a, d
    dec b
    or b
    rrca
    rst $38
    ld c, e
    cp a
    cp [hl]
    rst $00
    sub e
    adc $c7
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    xor d
    db $dd
    and l
    sub d
    ld a, [hl-]
    add l
    rst $38
    ld c, [hl]
    and e
    adc d
    rst $00
    ld e, d
    rst $00
    ld l, b

jr_00a_61ac:
    sub a
    rst $38
    sub h
    xor e
    ld hl, $149e
    xor e
    add sp, -$69
    rst $18
    sbc d
    push bc
    ld a, [hl-]
    ld l, h
    rra
    ccf
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld d, h
    cp e
    and l
    ld c, c
    ld d, h
    and c
    rst $38
    ld [hl], d
    push bc
    ld e, c
    db $e3
    ld e, [hl]
    db $e3
    ld [de], a
    jp hl


    rst $38
    dec l
    pop de
    inc b
    ld sp, hl
    jr z, jr_00a_61ac

    sub a
    ld l, c
    rst $38
    add hl, hl
    db $d3
    ld b, e
    cp h
    ld [hl], $f8
    db $fc
    rst $38
    rst $38
    cp a
    ld a, a
    or a
    cpl
    cp a
    inc de
    ret


    inc de
    rst $38
    rst $10
    dec c
    ld [hl], h
    adc l
    sub $ad
    dec a
    ret nz

    rst $38
    ld d, [hl]
    and b
    cp h
    ret nz

    ld e, [hl]
    and b
    dec c
    ldh a, [rIE]
    jp nc, Jump_00a_7dfd

    db $e3
    ret


    ld [hl], e
    db $e3
    rst $38
    cp a
    rst $38
    db $ed
    cp e
    sub d
    ld l, l
    ld l, [hl]
    or c
    rst $38
    ld a, [c]
    dec a
    ld c, d
    or l
    ld h, h
    cp e
    sbc $35
    rst $38
    ld [hl], a
    cp c
    ld a, [$442d]
    cp e
    ld c, d
    or l
    rst $38
    xor $31
    ld e, d
    cp l
    and h
    ld a, e
    push af
    rst $38
    add e
    rst $38
    cp $ff
    cp a
    rst $38
    cp $ff
    db $fd
    rst $38
    or $ff
    rst $38
    db $fd
    rst $38
    ld a, [$ecff]
    rst $38
    ld_long a, $ffff
    db $f4
    rst $38
    add sp, -$01
    db $f4
    rst $38
    ld hl, sp-$01
    rst $38
    db $f4
    rst $38
    ld [$fcff], a
    rst $38
    ld a, [$fcff]
    push af
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    cp d
    rst $38
    push de
    rst $38
    rst $38
    ld b, d
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    ret nc

    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    rst $38
    inc bc
    rst $38
    and e
    rst $38
    add e
    rst $38
    ld l, c
    rst $38
    rst $38
    pop de
    rst $38
    and l
    rst $38
    ei
    rst $38
    ei
    rst $38
    call z, $fff7
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld e, l
    rst $38
    xor e
    rst $38
    rst $38
    ld b, d
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    dec bc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [c]
    rst $38
    rst $38
    ret nz

    rst $38
    push bc
    rst $38
    pop bc
    rst $38
    sub [hl]
    rst $38
    rst $38
    adc e
    rst $38
    and l
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    call z, $ffef
    rst $28
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    ld e, a
    rst $38
    rst $38
    cpl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    db $fc
    xor a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    ldh a, [$fc]
    sbc $fe
    adc d
    rst $38
    call $feff
    adc e
    rst $38
    db $dd
    rst $38
    cp d
    rst $38
    cp $80
    cp $be
    cp $7c
    cp $fc
    cp $fc

jr_00a_6303:
    rst $38
    scf
    rst $38
    ld d, l
    ei
    ld a, [hl+]
    rst $30
    jr jr_00a_6303

    rst $38
    ld sp, $12ff
    rst $38
    ld e, c
    rst $38
    scf
    rst $38
    rst $38
    cp l
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    push af
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    ei
    rst $38
    nop
    add b
    nop
    add b
    nop
    sbc a
    jr nz, @+$32

    db $10
    ld [hl], b
    ld d, h
    ld [hl], h
    rst $30
    ld [hl], h
    ld e, [hl]
    ld e, d
    ld e, [hl]
    jp c, $db5e

    rst $38
    adc [hl]
    db $db
    adc c
    rst $18
    dec c
    rst $18
    xor c
    rst $18
    rst $38
    rst $28
    sbc a
    push bc
    cp a
    rst $28
    sbc a
    rst $00
    cp a
    rst $38
    ld d, [hl]
    rst $38
    sub a
    add sp, $0f
    ldh a, [$b7]
    ret z

    rst $38
    add hl, bc
    or $a2
    db $dd
    ld d, h
    rst $38
    ld_long a, $ffff
    jp nc, $f4ff

    nop
    ld d, h
    nop
    and c
    nop
    rst $38
    ld d, h
    add b
    add sp, $10
    cp c
    ld b, d
    and d
    db $fd
    rst $38
    add hl, hl
    sub $55
    and b
    add sp, -$80
    ld d, h
    add b
    rst $38
    ld hl, $9480
    ld b, b
    ld a, [hl+]
    add b
    or c
    ld b, h
    jp $0090


    jr nz, jr_00a_6388

jr_00a_6388:
    adc a
    nop
    ld b, b
    nop
    stop
    jp $0009


    inc b
    nop
    adc a
    nop
    ld [bc], a
    nop
    ld [$ff00], sp
    sub h
    ld l, e
    xor d
    dec b
    rla
    ld bc, $0122
    rst $38
    add h
    ld bc, $0229
    ld d, h
    ld bc, $228d
    rst $38
    ld c, e
    rst $38
    cpl
    nop
    ld a, [hl+]
    nop
    add l
    nop
    rst $38
    ld a, [hl+]
    ld bc, $0817
    sbc l
    ld b, d
    ld b, l
    cp a
    rst $38
    ld l, d
    rst $38
    jp hl


    rla
    ldh a, [rIF]
    db $ed
    inc de
    rst $38
    sub b
    ld l, a
    ld b, l
    cp e
    ld a, [hl+]
    rst $38
    ld e, a
    rst $38
    cp $ad
    sbc $fb
    rst $38
    rst $00
    ld sp, hl
    ld a, a
    ld [$7f72], a
    ccf
    ld a, $00
    xor $dd
    dec sp
    rst $38
    ld h, [hl]
    sbc [hl]
    cp $ee
    ld a, $fe
    ld hl, sp-$10
    ld hl, sp+$00
    call c, $c0ff
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    cp e
    rst $38
    or $bb
    push af
    cp e
    db $fc
    add sp, -$49
    or b
    rst $28
    ret nz

    rst $38
    db $fc
    rst $38
    ret nz

    and b
    rst $18
    call nc, $ffff
    rst $38
    ld a, a
    ld l, a
    sbc a
    ld e, $e1
    ei
    rst $38
    rst $38
    or $09
    adc a
    ld a, [hl]
    ld e, c
    cp [hl]
    jp c, $fcbd

    dec [hl]
    ei
    ld a, e
    rst $20
    nop
    rst $38
    call c, $00ff
    rst $38
    dec b
    rst $38
    rst $38
    ld e, a
    rst $38
    cp $ff
    db $f4
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, l
    sbc a
    rra
    rst $28
    rra
    rst $28
    ccf
    rst $20
    db $fc
    db $e4
    cp e
    sbc e
    rst $30
    nop
    rst $38
    db $fc
    rst $38
    ld a, [bc]
    inc e
    rst $38
    ld h, h
    rst $38
    cp a
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    push af
    ld l, l
    rst $38
    ei
    rst $38
    rst $08
    scf
    rst $38
    rra
    db $fc
    sbc d
    ld a, l
    inc bc
    rst $38
    rst $20
    rst $38
    db $fc
    ld a, a
    cp a
    ld h, l
    rst $38
    set 7, a
    cp a
    rst $38
    adc e
    rst $38
    rst $18
    db $fc
    xor [hl]
    db $fd
    rst $38
    rst $38
    cp $fb
    or $bd
    rst $08
    adc $f9
    rst $38
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $fc
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $18
    ldh [$a0], a
    ld e, a
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    ld b, c
    rst $38
    nop
    rst $38
    rst $38
    rrca
    cp $4c
    rst $38
    db $ec
    rst $18
    and a
    rst $18
    db $fc
    sub b
    rst $28
    ret nc

    rst $28
    nop
    rst $38
    rst $38
    cp $01
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    rst $38
    inc hl
    rst $18
    ld h, $df
    add [hl]
    rst $38
    ld [hl], $ef
    rst $38

Call_00a_64bc:
    ld l, e
    rst $30
    ldh a, [$7f]
    adc [hl]
    ld a, c
    ld de, $fcfe

jr_00a_64c5:
    dec e
    rst $38
    ld c, $ff
    nop
    rst $38
    rst $38
    di
    cpl
    inc d
    rst $28
    nop
    rst $38
    ld bc, $ffff
    add e
    ld a, a
    ld b, b
    cp a
    ld h, [hl]
    sbc l
    ld b, [hl]
    cp l
    rst $38
    adc a
    ld a, a
    dec e
    ei
    ld e, c
    rst $20
    jr nz, jr_00a_64c5

    db $fc
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $fcff
    ret nz

    rst $38
    adc d
    rst $38
    push de
    rst $38
    rst $38
    ret nz

    rst $38
    cp e
    rst $38
    cp h
    rst $38
    ld sp, hl
    rst $38
    db $fc
    ld a, [$bdff]
    rst $38
    jp z, $fcff

    rst $00
    rst $38
    cp h
    rst $38
    db $dd
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ld d, h
    rst $38
    ei
    rst $38
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    cp $ff
    rst $10
    rst $38
    nop
    db $fc
    xor $ff
    rst $30
    rst $38
    xor d
    rst $38
    db $fc
    inc bc
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    ld e, a
    rst $38
    cp $ff
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    dec a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    db $fc
    xor b
    rst $38
    db $d3
    rst $38
    xor d
    rst $38
    db $fc
    dec hl
    rst $38
    sbc a
    rst $38
    ld h, l
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    db $dd
    rst $38
    xor e
    rst $38
    rst $08
    db $ed
    rst $38
    rst $08
    rst $38
    ld d, a
    rst $38
    rst $38
    cp b
    rst $38
    ld e, [hl]
    rst $38
    xor e
    rst $38
    rst $30
    rst $38
    db $fc
    cp a
    rst $38
    ld h, l
    rst $38
    set 7, a
    rst $38
    rst $00
    cp a
    rst $28
    sbc a
    push bc
    cp a
    rst $28
    sbc a
    rst $38
    xor c
    rst $18
    dec c
    rst $18
    adc c
    rst $18
    adc a
    db $db
    rst $30
    rst $18
    db $db
    rst $18
    db $db
    rst $18
    rst $38
    rst $18
    db $f4
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    jr jr_00a_658e

jr_00a_658e:
    ld a, [hl]
    nop
    rst $08
    nop
    rlca
    nop
    rst $38
    rra
    nop
    ccf
    nop
    ld a, l
    nop
    ld [hl], a
    nop
    rst $38
    rst $08
    nop
    adc a
    nop
    rrca
    nop
    ld c, $00
    rst $38
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc b
    nop
    rst $38
    jr c, jr_00a_65b2

jr_00a_65b2:
    ld [hl], b
    nop
    ld h, b
    nop
    ld l, a
    nop
    rst $38
    ld a, h
    nop
    ld hl, sp+$00
    ret z

    nop
    cp $00
    rst $38
    cp a
    nop
    rrca
    nop
    ld c, a
    nop
    ld h, c
    nop
    rst $38
    ld [hl], b
    nop
    jr nc, jr_00a_65cf

jr_00a_65cf:
    jr nc, jr_00a_65d1

jr_00a_65d1:
    stop
    rst $38
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    rst $38
    jr nz, jr_00a_65df

jr_00a_65df:
    ld h, b
    nop
    jr nz, jr_00a_65e3

jr_00a_65e3:
    jr nc, jr_00a_65e5

jr_00a_65e5:
    rst $38
    jr nz, jr_00a_65e8

jr_00a_65e8:
    stop
    jr nz, jr_00a_65ec

jr_00a_65ec:
    stop
    rst $08
    stop
    ld [$0800], sp
    nop
    cp a
    nop
    jr nz, jr_00a_65f9

jr_00a_65f9:
    ld h, b
    nop
    jr nz, jr_00a_65fd

jr_00a_65fd:
    rst $38
    ld h, b
    nop
    jr nz, jr_00a_6602

jr_00a_6602:
    jr nz, jr_00a_6604

jr_00a_6604:
    ld h, b
    nop
    rst $38
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    rst $38
    add b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    rst $08
    jr nz, jr_00a_661b

jr_00a_661b:
    add b
    nop
    inc b
    nop
    ret nz

    jr nz, jr_00a_6622

jr_00a_6622:
    rst $38
    ld c, $00
    rlca
    nop
    inc de
    nop
    ld a, a
    nop
    rst $38
    dec sp
    nop
    ccf
    nop
    ld l, e
    nop
    push de
    nop
    rst $38
    jr z, jr_00a_6637

jr_00a_6637:
    add d
    nop
    add hl, hl
    nop
    ld [bc], a
    nop
    di
    add b
    nop
    add hl, bc
    nop
    inc b
    nop
    add b
    nop
    rst $38
    rlca
    nop
    rrca
    nop
    inc bc
    nop
    add hl, de
    nop
    rst $38
    ccf
    nop
    cp l
    nop
    rst $38
    nop
    or [hl]
    nop
    rst $38
    db $db
    nop
    ld d, d
    nop
    add c
    nop
    ld [hl+], a
    nop
    rst $38
    jr z, jr_00a_6664

jr_00a_6664:
    add d
    nop
    add hl, hl
    nop
    ld [bc], a
    nop
    di
    add b
    nop
    add hl, bc
    nop
    inc b
    nop
    rst $38
    jr nc, jr_00a_6674

jr_00a_6674:
    jr jr_00a_6676

jr_00a_6676:
    db $dd
    nop
    db $fd
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    rst $38
    nop
    ld a, e
    nop
    rst $10
    nop
    cp $00
    rst $38
    ld d, a
    nop
    cp [hl]
    nop
    ld [hl], l
    nop
    ld_long a, $ff00
    dec hl
    nop
    sub [hl]
    nop
    add hl, hl
    nop
    ld d, $00
    di
    add b
    nop
    add hl, bc
    nop
    inc b
    nop
    rst $38
    stop
    ldh a, [rP1]
    or $00
    rst $38
    nop
    rst $38
    cp $00
    rst $38
    nop
    xor a
    nop
    ld a, a
    nop
    rst $38
    ei
    nop
    rst $38
    nop
    db $ed
    nop
    rst $10
    nop
    rst $38
    ld a, c
    nop
    jp z, $f500

    nop
    push de
    nop
    rst $38
    ld l, b
    nop
    jp nc, $2d00

    nop
    ld a, [hl+]
    nop
    rst $38
    add b
    nop
    add hl, bc
    nop
    jr nz, jr_00a_66d9

jr_00a_66d9:
    inc b
    nop
    rst $38
    sbc h
    nop
    rst $38
    nop
    rst $28
    nop
    cp a
    nop
    rst $38
    halt
    xor e
    nop
    sub $00
    ld b, e
    nop
    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld l, h
    nop
    rst $38
    cp a
    nop
    db $fd
    nop
    cp d
    nop
    ld l, l
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
    rlc b
    cp $00
    ld l, a
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
    cp $00
    rst $00
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
    xor c
    ld e, $32
    ld e, l
    ld c, d
    cp l
    ld sp, $ff1c
    inc a
    ld a, c
    ld [hl], a
    add hl, sp
    ret


    ld l, a
    add d
    add $ff
    ld a, e
    rst $28
    cp e
    rst $28
    ld [hl], a
    ei
    or e
    ld a, a
    rst $38
    di
    ld a, a
    xor a
    ld [hl], a
    ld h, l
    rst $38
    ld l, a
    or a
    rst $38
    ld l, a
    or a
    cp $b7
    rst $18
    cp a
    xor [hl]
    rst $38
    rst $38
    sbc a
    rst $38
    cpl
    rst $18
    ccf
    rst $18
    ld c, e
    rst $38
    rst $38
    add hl, sp
    rst $18
    ld d, c
    cp a
    reti


    cp a
    or e
    rst $38
    rst $38
    di
    rst $38
    sub $fb
    xor e
    rst $30
    or [hl]
    ei
    rst $38
    rst $38
    rst $30
    rst $18
    ei
    xor d
    rst $38
    rst $18
    rst $28
    rst $38
    db $fd
    xor a
    ld e, d
    rst $28
    xor l
    rst $18
    and [hl]
    rst $18
    rst $38
    ei
    rst $28
    ei
    rst $28
    rst $30
    ei
    di
    rst $38
    rst $38
    ld [hl], e
    rst $38
    rst $28
    rst $30
    push hl
    rst $38
    rst $28
    rst $30
    rst $38
    xor a
    rst $30
    cp $f7
    sbc a
    rst $38
    xor [hl]
    rst $38
    rst $38
    sbc a
    rst $38
    xor a
    rst $18
    cp a
    rst $18
    ld c, e
    rst $38
    rst $38
    dec sp
    rst $18
    ld d, c
    cp a
    db $db
    cp a
    or e
    rst $38
    rst $38
    di
    rst $38
    rst $10
    ei
    xor c
    rst $30
    or l
    ei
    rst $38
    db $fd
    rst $30
    db $dd
    ei
    xor c
    rst $38
    db $db
    db $ed
    rst $38
    rst $30
    xor l
    ld e, e
    db $ed
    xor l
    rst $18
    and l
    rst $18
    rst $38
    or a
    ei
    jp nc, $8dff

    rst $30
    ld d, e
    rst $38
    rst $38
    xor c
    rst $10
    ld e, e
    rst $20
    xor h
    jp $e759


    rst $38
    rla
    ret


    ld d, c
    and a
    ld h, [hl]
    adc e
    ld d, c
    add a
    rst $38
    ld h, a
    adc e
    reti


    add e
    rst $00
    add e
    rst $10
    add e
    rst $38
    add d
    rst $00
    and a
    jp $c6ef


    call nc, $ffef
    db $eb
    cp $bd
    cp $8a
    db $fc
    pop de
    cp [hl]
    rst $38
    jp z, $aabc

    call c, $def8
    ld_long a, $fffc
    ld hl, sp-$02
    db $fd
    cp $fc
    rst $38
    cp $ff
    rst $38
    ld [hl], c
    rst $08
    or [hl]
    rst $08
    db $ed
    rst $18
    or [hl]
    rst $28
    rst $38
    adc $ff
    ld a, h
    rst $38
    xor d
    rst $38
    inc [hl]
    ei
    rst $38
    add sp, -$29
    sub [hl]
    jp hl


    and c
    di
    ld d, [hl]
    pop hl
    rst $38
    and c
    di
    ld h, [hl]
    ei
    push af
    rst $38
    ld e, d
    rst $38
    rst $38
    cp a
    rst $38
    xor $7f
    cp a
    rst $18
    xor d
    ld a, a
    rst $38
    sbc l
    cp a
    ld l, $7f
    xor c
    rra
    inc d
    ccf
    rst $38
    xor c
    ld e, $32
    ld e, l
    ld c, d
    cp l
    ld sp, $ff1c
    dec a
    ld e, b
    ld d, h
    add hl, sp
    or d
    ld a, l
    add hl, sp
    rst $38
    rst $38
    or a
    ei
    ld d, d
    rst $38
    call $53f7
    rst $38
    rst $38
    xor c
    rst $10
    ld e, e
    rst $20
    xor h
    jp $e759


    rst $38
    sub a
    ret


    ld d, c
    and a
    ld h, $cb
    sub c
    rst $00
    rst $38
    rst $20
    adc e
    sbc c
    jp $c307


    sub a
    jp Jump_00a_42ff


    rst $00
    and e
    rst $00
    rst $28
    add $d4
    rst $28
    rst $38
    db $eb
    cp $bd
    cp $5a
    db $fc
    ld d, c
    cp [hl]
    rst $38
    ld c, d
    cp h
    xor d
    ld e, h
    ld l, b
    sbc $da
    db $fc
    rst $38
    ld hl, sp-$02
    db $fc
    cp $fc
    rst $38
    cp $ff
    rst $38
    ld [hl], a
    rst $08
    or l
    rst $08
    db $ed
    rst $18
    or a
    db $ed
    rst $38
    ret z

    rst $38
    ld a, d
    db $fd
    xor b
    db $fd
    ld [hl], $f9
    rst $38
    jp hl


    push de
    sub h
    jp hl


    and c
    di
    ld d, a
    pop hl
    rst $38
    and c
    di
    ld h, a
    ei
    or l
    rst $38
    ld e, l
    rst $38
    rst $38
    cp b
    rst $38
    sub $7d
    cp c
    sbc $af
    ld a, h
    rst $38
    inc de
    cp h
    ld a, $6d
    xor l
    rra
    inc de
    ccf
    rst $38
    xor c
    rra
    dec [hl]
    ld e, e
    ld c, l
    cp e
    dec [hl]
    dec de
    rst $30
    ccf
    ld e, e
    ld e, a
    ccf
    ld a, a
    ccf
    rst $38
    rst $38
    nop
    rst $38
    ld c, $30
    ld d, c
    ld a, $51
    ld a, $ff
    ld d, c
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $ff
    ld d, c
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $ff
    ld d, c
    ld a, $51
    ld a, $51
    ld a, $51
    ld a, $ff
    nop
    rst $38
    add b
    nop
    ld [hl], d
    add b
    ld [hl], d
    add b
    rst $38
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    rst $38
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    rst $38
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    ld [hl], d
    add b
    nop
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rra
    ccf
    rst $38
    ld c, a
    rra
    adc e
    rrca
    dec d
    adc a
    adc [hl]
    ld h, a
    rst $38
    dec b
    ccf
    ld l, [hl]
    add hl, de
    add hl, bc
    ld sp, $51b0
    rst $38
    ld b, d
    ld sp, $7295
    ld [hl-], a
    ld sp, hl
    ld a, [hl-]
    rst $38
    adc a
    rst $38
    cp a
    ld a, a
    sbc a
    ccf
    rst $38
    ld e, a
    cp a
    rst $10
    rst $38
    cp e
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    dec bc
    rst $38
    db $dd
    ccf
    jp c, $bf3f

    ld e, a
    rst $38
    ret c

    ccf
    rst $10
    ccf
    sbc d
    ld a, a
    dec [hl]
    rst $38
    rst $38
    and l
    ld a, [$ee55]
    cp d
    push af
    and l
    sbc $ff
    ld b, d
    db $fd
    sub a
    ld a, d
    jp nz, $1bfd

    rst $28
    db $fd
    ld b, c
    ld e, $12
    dec a
    dec b
    ld a, [hl-]
    inc d
    rst $38
    add [hl]
    add hl, sp
    add hl, bc
    ld [hl], $a6
    ld e, c
    add hl, bc
    or [hl]
    rst $38
    rlca
    ld hl, sp-$67
    ld b, b
    ld [hl+], a
    add h
    adc b
    ld d, b
    rst $38
    call nz, $1800
    and b
    and d
    ld b, b
    inc d
    xor c
    rst $38
    ld b, l
    ld a, [de]
    ld de, $5a24
    jr nz, @+$3a

    inc b
    rst $38
    add hl, bc
    jr nz, jr_00a_69f9

    nop
    add b
    nop
    inc d
    nop
    rst $38
    cpl
    ret nc

    ld d, l
    nop
    add h
    nop
    ld d, b
    nop
    cp a
    nop
    ld [$4000], sp
    nop
    add h
    nop
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    ld a, [c]
    rst $38
    rst $28
    rst $38
    rst $08
    ld hl, sp-$01
    or $ff
    db $fd
    rst $38
    db $fd
    and c
    ld e, [hl]
    jp nc, $c53d

    ld a, [hl-]
    call nc, $c6ff
    add hl, sp
    ret


    ld [hl], $a6

jr_00a_69f9:
    ld e, c
    add hl, bc
    or [hl]
    rst $38
    ld c, d
    cp h
    xor d
    ld e, h
    ld l, b
    sbc $d2
    db $f4
    rst $38
    add b
    adc [hl]
    inc b
    add [hl]
    nop
    rlca
    ld bc, $ff03
    xor c
    ld e, $32
    ld e, l
    ld c, d
    cp l
    ld sp, $ff1c
    dec a
    ld a, b
    ld [hl], h
    add hl, sp
    jp z, $806d

    add $ff
    ld e, d
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

jr_00a_6a30:
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
    di

jr_00a_6a3d:
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, e
    rst $38

jr_00a_6a44:
    rst $38
    and l

jr_00a_6a46:
    sbc $29

jr_00a_6a48:
    sbc $29
    sbc $29
    sbc $ff
    add hl, hl

jr_00a_6a4f:
    sbc $29
    sbc $29
    sbc $29
    sbc $ff
    add hl, hl
    sbc $29
    sbc $29
    sbc $29
    sbc $ff
    add hl, hl

jr_00a_6a61:
    sbc $29
    sbc $29
    sbc $8c
    rst $38

jr_00a_6a68:
    rst $38
    sbc $31
    rst $18
    jr nc, jr_00a_6a3d

    jr nc, jr_00a_6a4f

    jr nc, @+$01

    rst $08
    jr nc, jr_00a_6a44

    jr nc, jr_00a_6a46

    jr nc, jr_00a_6a48

    jr nc, @+$01

    rst $18
    jr nc, @-$2f

    jr nc, jr_00a_6a4f

    jr nc, jr_00a_6a61

    jr nc, @+$01

    rst $08
    jr nc, @-$1f

    jr nc, jr_00a_6a68

    jr nc, jr_00a_6a30

    ld a, e
    rst $38
    ld h, c
    sbc [hl]
    ld [hl], h
    adc e
    push af
    adc e
    ld [hl], h
    adc e
    rst $38
    ld [hl], l
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    rst $38
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    db $f4
    adc e
    rst $38
    ld [hl], h
    adc e
    push af
    adc e
    ld [hl], h
    adc e
    ld h, $db
    rst $38
    ld b, b
    inc a
    add b
    ld a, [hl]
    cp c
    ld b, [hl]
    inc a
    add e
    rst $38
    cp h
    inc bc
    cp e
    nop
    ld b, h
    ld [bc], a
    or h
    ld [$2dff], sp
    db $10
    ld b, d
    jr jr_00a_6b1c

    ld [$0cb1], sp
    ei

jr_00a_6acc:
    cp d
    inc b
    ld l, b
    ld d, $00
    sub $00
    rst $38
    add hl, hl
    sbc $29
    sbc $29
    sbc $29
    sbc $ff
    ld e, c

jr_00a_6ade:
    cp $fd
    cp $a6
    rst $38

jr_00a_6ae3:
    dec bc
    rst $38

jr_00a_6ae5:
    rst $38
    ld b, $ff
    sub l
    cp $cc
    cp e
    dec [hl]
    adc $ff
    add hl, bc
    cp $29
    sbc $29
    sbc $29
    sbc $ff
    rst $18
    jr nc, @-$2f

    jr nc, jr_00a_6acc

    jr nc, jr_00a_6ade

    jr nc, @+$01

    rst $08
    jr nc, jr_00a_6ae3

    jr nc, jr_00a_6ae5

    inc a
    cp a
    ld a, a
    rst $38
    rst $30
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    add d
    rst $38
    rst $38
    dec b
    cp $c6
    ld a, e
    ld e, c
    and [hl]
    sub a
    ld a, b
    rst $38

jr_00a_6b1c:
    pop af
    cp $74
    db $eb
    push af
    db $eb
    and h
    db $db
    rst $38
    push hl
    dec de
    ld [hl], h
    adc e
    db $f4
    dec bc
    ld [hl], h
    adc e
    rst $18
    ld b, b
    nop
    inc e
    nop
    ld a, $00
    ld a, [hl]
    rst $38
    ld [de], a
    call z, $0cf0
    dec h

Jump_00a_6b3b:
    ld [$0820], sp
    rst $38
    dec h
    ld [$0fa0], sp
    jr z, jr_00a_6b4c

    rra
    nop
    rst $38
    rst $10
    nop
    dec bc
    nop

jr_00a_6b4c:
    ld h, $00
    ld d, c
    nop
    or e
    nop
    inc b
    nop
    ld [de], a
    nop
    db $fc
    inc b
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    rst $38
    db $10
    ldh [rDIV], a
    ld hl, sp-$1e
    inc e
    ld hl, sp+$07
    rst $38
    ei
    nop
    db $e4
    nop
    jr jr_00a_6b6d

jr_00a_6b6d:
    ldh [rP1], a
    nop
    add b
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

Call_00a_6b84:
    rst $38
    nop
    rst $38
    ldh [rP1], a
    ei
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
    ld l, e
    ldh a, [$eb]
    ld [hl], b
    cpl
    ldh a, [$3b]
    db $e4
    rst $38
    ld h, l
    ld_long a, $fff0
    sbc b
    rst $38
    ld [hl], a
    adc a
    rst $38
    db $db
    rst $38
    and l
    rst $38
    ld c, d
    rst $38
    daa
    db $fd
    rst $38
    ret z

    cp a
    ld [hl+], a
    rst $38
    sbc b
    rst $28
    add d
    ld a, a
    rst $38
    ld a, d
    and l
    or l
    ld c, d
    xor $10
    cp c
    inc b
    rst $38
    ld c, e
    nop
    sub l
    nop
    ld c, b
    nop
    ld [bc], a
    nop
    rst $38
    rst $28
    rra
    or a
    ld a, b
    jp c, Jump_00a_7060

    ret nz

    rst $38
    and d
    ret nz

    sub c
    ret nz

    and l
    ret nz

    sbc e
    ret nz

    rst $38
    adc l
    ld [c], a
    sub [hl]
    jp hl


    ld c, e
    rst $30
    ld h, h
    rst $38
    rst $38
    db $db
    ld a, h
    rst $20
    ld a, b
    ld e, [hl]
    ldh a, [$c9]
    ldh a, [rIE]
    rst $30
    ld hl, sp-$73
    ld a, [hl]
    rst $00
    ld a, $22
    ld e, a
    rst $38
    db $d3
    cpl
    jp hl


    rla
    pop de
    cpl
    ld b, e
    cp a
    rst $38
    sub d
    ld l, a
    inc bc
    cp $47
    cp [hl]
    ld a, [bc]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $eb
    ccf
    or c
    ld e, a
    push de
    dec sp
    rst $38
    rra
    ldh [$aa], a
    ld [hl], l
    ld b, h
    ei
    ld [hl], b
    rst $38
    rst $38
    adc $ff
    adc a
    ldh a, [$30]
    ret nz

    dec h
    ret nz

    rst $38
    cp a
    ld a, a
    ld c, [hl]
    rst $38
    inc bc
    pop bc
    ld b, d
    add c
    rst $38
    nop
    add b
    cp b
    add b
    cp $80
    rra
    ldh [$fb], a
    ld b, c
    cp $82
    pop bc
    add b
    rra
    ret nz

    rst $38
    add c
    cp $fa
    pop af
    ld h, c
    ldh [$97], a
    ld h, b
    rst $38
    rst $18
    rst $38
    ld [hl], b
    ldh a, [rNR44]
    ldh [rNR51], a
    ldh [rIE], a
    rlca
    ldh a, [$1f]
    ldh a, [rNR52]
    rra
    ret nz

    nop
    rst $38
    rst $38
    nop
    rra
    ldh [$0a], a
    nop
    rst $38

jr_00a_6c77:
    nop
    rst $38
    pop hl
    rra
    inc e
    db $e3
    ld h, h
    ld e, $98
    ld a, h
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
    jp Jump_00a_7d3f


    rst $38
    and $ff
    rst $38
    cp $ff

jr_00a_6ca8:
    ld d, a
    rst $28
    inc sp
    rst $08
    ld bc, $ffff
    add c
    ld a, a
    ld d, $ff
    ld a, [hl]
    add c
    rlca
    nop
    rst $38
    ld b, b
    cp a
    rst $30
    rrca
    ld [bc], a
    rst $38
    add a
    ld a, a
    db $fd
    rst $28
    rst $38
    nop
    ldh a, [$08]
    rlca
    jr jr_00a_6ca8

    dec a
    cp $ff
    rst $08
    rst $38
    adc a
    rst $38
    rst $38
    db $dd
    rst $38
    add hl, sp
    rst $38
    ld a, [de]
    rst $38
    add d
    ld a, a
    db $fc
    inc c
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    rst $38
    set 7, a
    cp l
    ld a, a
    dec b
    rst $38
    push de
    cpl
    rst $38
    ld h, e
    sbc a
    inc c
    add e
    jr jr_00a_6c77

    ret nz

jr_00a_6cf1:
    cp a
    rst $38
    add a
    rst $38
    ld l, [hl]
    db $fc
    or h
    ld a, b
    pop de
    ld a, b
    rst $38
    rst $00
    sbc b
    sub b
    rst $08
    add c
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $20
    ld hl, sp-$16
    push af
    ld [hl], b
    rst $38
    ccf
    rst $38
    rst $38
    ld hl, sp-$10
    ld hl, sp-$10
    ld l, b
    ldh a, [$f9]
    ldh [rIE], a
    rst $08
    ldh a, [$03]
    inc e
    nop
    rrca
    ret nz

    inc bc
    rst $38
    pop bc
    ld a, $9e
    pop hl
    rst $38
    nop
    jr c, @-$37

    db $fc
    and e
    ld a, h
    jr @+$01

    ccf
    rst $38
    rst $38
    ld e, a
    jr nz, jr_00a_6cf1

    ld b, c
    ld a, l
    add d
    rst $38
    nop
    rst $38
    rst $30
    ld [$13ec], sp
    rra
    rst $38
    ld b, c
    add b
    rst $38
    nop
    ccf
    ld [$baff], sp
    ld b, a
    db $76
    adc c
    db $fc
    call $2233
    rst $38
    rst $00
    rst $38
    rst $38
    inc hl
    rst $18
    and e
    ld e, a
    and l
    ld e, a
    ld b, l
    cp a
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    cp $1f
    di
    ld h, e
    rst $38
    rrca
    rst $38
    ld b, l
    rst $38
    rst $38
    adc e
    rst $38
    ccf
    rst $38
    cp $ff
    ret nz

    cp $ff
    ld l, a
    sbc b
    ld l, a
    sbc b
    ld a, [bc]
    db $fd
    sbc d
    db $fd
    rst $38
    or h
    rst $38
    ld [hl], e
    rst $28
    and a
    ld a, a
    db $db
    inc a
    add b
    nop
    add b
    nop
    nop
    adc a
    nop
    inc c
    nop
    ld de, $c000
    inc c
    nop
    db $fc
    sbc b
    nop
    ld b, d
    nop
    add c
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    dec [hl]
    nop
    add d
    nop
    cp a
    nop
    ld a, [bc]
    nop
    and l
    nop
    jr jr_00a_6dac

jr_00a_6dac:
    add b
    nop
    add b
    nop
    di
    dec e
    nop
    ld h, b
    nop
    add b
    nop
    db $fc
    jr z, jr_00a_6dba

jr_00a_6dba:
    ld d, d
    nop
    add c
    nop
    add b
    nop
    add b
    nop
    db $fc
    stop
    jp z, $3400

    nop
    rst $38
    dec b
    nop
    ld [de], a
    nop
    ld bc, $4200
    nop
    db $fc
    ld bc, $8400
    nop
    stop
    cp h
    nop
    add c
    nop
    ld d, h
    nop
    add b
    nop
    add b
    nop
    rst $38
    jp z, $3000

    nop
    ld bc, $4400
    nop
    cp a
    nop
    add b
    nop
    ld [bc], a
    nop
    add h
    nop
    ret nz

    ld b, b
    nop
    rst $38
    dec b
    nop
    ld d, $00
    ld [$4000], sp
    nop
    rst $38
    sub b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    cp h
    nop
    and b
    nop
    ld [$8000], sp
    nop
    rst $38
    ld h, e
    nop
    inc c
    nop
    ld [bc], a
    nop
    inc b
    nop
    rst $38
    inc bc
    nop
    inc d
    nop
    ld c, d
    nop
    inc h
    nop
    or e
    nop
    add b
    nop
    or b
    nop
    rst $38
    inc b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    add e
    nop
    jr jr_00a_6e36

jr_00a_6e36:
    db $fc
    ld h, $00
    jp $1800


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
    ret


    ld [hl], $b6
    ld c, c
    rst $38
    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    ccf
    ret nz

    ld a, a
    add b
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
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
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
    call z, $a033
    ld e, [hl]
    add l
    ld e, d
    xor h
    ld b, e
    rst $38
    nop
    rst $20
    ld d, b
    and [hl]
    ld [$42b2], sp
    sbc b
    rst $38
    or c
    ld c, b
    dec bc
    ld [hl], b

jr_00a_6eae:
    adc b
    ld b, $70
    adc a
    rst $38
    ld c, $f1
    or h
    ld b, e
    sub b
    ld l, a
    push bc
    ld a, [hl-]
    rst $38
    ld c, a
    or b
    ld de, $02ee
    ld l, l
    ld d, [hl]
    add hl, hl
    rst $38
    or h
    dec bc
    ld h, h
    sbc e
    ld h, b
    sbc a
    ld l, c
    sub [hl]
    rst $38
    jr z, @-$27

    add c
    ld d, [hl]
    ld l, b
    rlca
    jp nc, $ff0d

    inc h
    sbc e
    add hl, hl
    sub [hl]
    jp $cf3c


    jr nc, @+$01

    add d
    ld a, h
    dec h
    ret c

    ld [hl+], a
    adc c
    ld b, h
    cp e
    rst $38
    nop
    rst $38
    add h
    ld a, e
    adc a
    ld [hl], b
    push bc
    ld a, [hl-]
    rst $38
    ld [hl], $c9
    or h
    ld c, e
    and b
    ld e, a
    nop
    rst $38
    rst $38
    sub b
    ld l, a
    ld bc, $21fe
    sub [hl]
    add e
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    and [hl]
    ld e, a
    db $d3
    cpl
    ld h, c
    rra
    rst $38
    reti


    daa
    pop hl
    rra
    ld c, d
    or a
    and b
    ld e, a
    rst $38
    ld d, e
    xor a
    add a
    ld a, a
    ld c, e
    db $fc
    sub [hl]
    ld a, b
    rst $38
    cp l
    ld d, b
    reti


    jr nc, jr_00a_6eae

    ld [hl], b
    db $dd
    jr nc, @+$01

    rrca
    ldh a, [$96]
    ld a, c
    dec a
    ld a, [c]
    jp nc, $fffd

    ld l, b
    sbc a
    rst $10
    cpl
    add sp, $17
    and b
    ld e, a
    rst $38
    sbc a
    rst $38
    ld l, [hl]
    pop af
    or b
    ret nz

    ld bc, $ffc0
    ld h, h
    add b
    ld d, e
    add b
    ld l, a
    add b
    jp c, $ffa5

    dec [hl]
    jp z, $f58a

    ld [hl], e
    rst $38
    ret z

    ld a, a
    rst $38
    db $d3
    ld a, h
    xor l
    ld [hl], b
    sbc b
    ld h, b
    inc sp
    ldh [rP1], a
    rst $38
    dec [hl]

jr_00a_6f60:
    cp $4a
    db $fc
    ld a, [hl]
    call z, $9ce0
    rst $38
    call z, Call_00a_4cb8
    cp b
    ld b, b
    cp b
    jr jr_00a_6f60

    rst $30
    add b
    ldh a, [$a0]
    ldh a, [$e0]
    or b
    ldh [rIE], a
    and b
    ldh [rSB], a
    ldh [rNR11], a
    ldh [$5d], a
    ldh [rIE], a
    ld e, a
    ldh [$73], a
    db $ec
    ret c

    rst $30
    adc b
    rst $30
    rst $38
    xor b
    rst $18
    ld [hl], l
    adc a
    ld l, d
    sub a
    ld h, c
    sbc [hl]
    rst $38
    ld l, a
    sbc b
    adc a
    ld hl, sp-$76
    db $fd
    jp c, $fffd

    ld [hl], h
    rst $38
    ccf

jr_00a_6fa0:
    db $e3
    cp a
    ld h, c
    and d
    ld a, a
    rst $38
    ld l, a
    rra
    ld a, [hl-]
    rlca
    inc c
    inc bc
    dec d
    inc bc
    rst $38
    add hl, hl
    rlca
    ld [hl], $09
    inc l
    dec de
    ld d, c
    rrca
    rst $38
    ld d, $2f
    ld h, d
    ld e, $e4
    ld e, $c2
    inc a
    rst $38
    rst $08
    inc a
    add a
    ld a, d
    adc l
    ld [hl], d
    ld [de], a
    pop hl
    rst $38
    inc hl
    pop hl
    ld b, $e1
    ld h, e
    ret nz

    and [hl]
    pop bc
    rst $38
    inc c
    jp $c33d


    jr c, jr_00a_6fa0

    reti


    ld h, a
    rst $38
    add hl, bc
    rst $30
    inc hl
    cp $35
    cp $2a
    db $fd
    db $fc
    ld c, b
    rst $38
    ld c, b
    rst $38
    jp hl


    rst $38
    rst $38
    inc de
    db $fc
    add hl, de
    ldh a, [$38]
    ldh a, [$50]
    ldh [rIE], a
    add b
    ldh [$80], a
    ret nz

    ld b, b
    add b
    add c
    nop
    rst $38
    ld bc, $1500
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    dec e
    ld [bc], a
    sbc h
    inc bc
    jr c, @+$09

    cp c
    rlca
    rst $38
    ld [hl], c
    ld c, $f2
    ld c, $e2
    inc e
    add $3c
    rst $38
    ret z

    inc a
    inc c
    ld hl, sp-$6f
    ld hl, sp-$27
    ldh a, [rIE]
    ld l, e
    ldh a, [$eb]
    ld [hl], b
    cpl
    ldh a, [$3b]
    db $f4
    rst $38
    ld [hl], l
    ld_long a, $ff98
    adc h
    rst $38
    rra
    rst $38
    rst $38
    add hl, de
    cp $cc
    ccf
    db $e4
    rra
    ld b, [hl]
    ccf
    rst $38
    jp nz, $833f

    ld a, a
    adc e
    ld a, a
    add a
    ld a, a
    rst $38
    add a
    ld a, a
    adc e
    ld a, a
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
    rst $38
    ld h, [hl]
    rra
    ld [hl-], a
    rrca
    ld a, [de]
    rlca
    dec hl
    rlca

Jump_00a_7060:
    rst $38
    add hl, bc
    rlca
    reti


    rlca
    pop af
    rrca
    pop hl
    rra
    rst $38
    jp $c33f


    ccf
    adc e
    ld a, a
    ld d, d
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    dec h
    cp $4d
    cp $fb
    db $fc
    cp b
    nop
    jr c, jr_00a_70fb

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00a_7109

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
    jr jr_00a_70e9

    jr c, jr_00a_70cf

jr_00a_70cf:
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
    jr jr_00a_7125

jr_00a_70e9:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00a_7130

    nop
    cp [hl]
    nop
    jr jr_00a_7135

    nop
    ld h, [hl]

jr_00a_70fb:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00a_713e

    nop
    rst $38
    ld c, e
    cp h
    ld d, a
    cp b
    sbc [hl]

jr_00a_7109:
    pop af
    db $f4
    ei
    rst $38
    sbc h
    ei
    adc b
    rst $38
    call nz, $efff
    rst $38
    rst $38
    jp $c33f


    ccf
    adc e
    ld a, a
    ld d, e
    rst $38
    rst $38
    ld h, $ff
    inc h
    rst $38
    ld c, l
    rst $38

jr_00a_7125:
    ld sp, hl
    rst $38
    cp a
    rst $38
    add b
    pop bc
    cp [hl]
    nop
    ld l, a
    db $10
    rst $18

jr_00a_7130:
    push de

jr_00a_7131:
    ld a, [hl+]
    db $dd
    rst $00
    rst $38

jr_00a_7135:
    cp b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld sp, hl

jr_00a_713e:
    ld b, $e2
    add hl, de
    call nz, $c22a
    inc l
    rst $38
    ld [de], a
    db $e4
    ld [bc], a
    cp h
    ld b, c
    or [hl]
    ld [$ffe3], sp
    add d
    ld a, h
    dec h
    ret c

    ld [hl+], a
    adc c
    ld b, h
    cp e
    rst $38
    nop
    rst $38
    sub c
    ld l, [hl]
    add [hl]
    ld a, c
    dec e
    ld [c], a
    rst $38
    dec sp
    ret nz

    inc de
    ldh [rNR51], a
    ret nc

    ld b, c
    and b
    rst $38
    ld d, a
    and b
    inc de
    ldh [$27], a
    ret nc

    dec e
    ldh [rIE], a
    xor d
    ld b, c
    inc hl
    call nc, $a25d
    rrca
    ldh a, [rIE]
    ld de, $2aea
    push de
    and c
    ld e, [hl]
    add h
    ld a, e
    rst $38
    daa
    ret c

    inc de
    ld h, h
    adc b
    ld [hl], a
    add d
    ld e, l
    rst $38
    ld d, [hl]
    adc c
    jr nz, jr_00a_7131

    ld c, h
    or e
    ld c, e
    and h
    rst $38
    inc sp
    ret z

    or h
    ld c, e
    and b
    ld e, a
    nop
    rst $38
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld l, b
    sub a
    add b
    ld a, a
    rst $38
    ld b, b
    cp a
    ret nc

    cpl
    and b
    ld e, a
    jp z, $ff34

    and e
    ld e, h
    sub b
    ld l, a
    ld h, b
    sbc a
    add b
    ld a, a
    rst $38
    and b
    ld e, a
    sub b
    ld l, a
    ld b, c
    cp [hl]
    and b
    ld e, a
    rst $38
    ld d, c
    ld l, $22
    db $dd
    ld bc, $40fe
    cp a
    rst $38
    jp $883c


    ld h, a
    inc hl
    call c, $a855
    rst $38
    add hl, bc
    ldh a, [rNR30]
    ldh [rNR51], a
    ret nc

    dec b
    ld a, [$8bff]
    ld [hl], h
    sub d
    ld l, c
    add hl, bc
    or $12
    db $ed
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$4a
    or c
    sub b
    cpl
    rst $38
    add hl, bc
    ld [hl], d
    call nc, $0923
    and $1a
    ld h, h
    rst $38
    sub c
    inc l
    sbc d
    dec h
    ld c, b
    or a
    ld bc, $fffe
    nop
    rst $38
    and d
    ld e, l
    dec d
    ld [c], a
    ld l, [hl]
    add c
    rst $38
    ld d, l
    add d
    adc [hl]
    ld b, c
    ld [hl], l
    add d
    ld e, d
    add l
    rst $38
    rrca
    ldh a, [rSCX]
    cp h
    inc bc
    db $fc
    dec hl
    ld d, h
    rst $38
    ld b, c
    cp [hl]
    ld hl, $80de
    ld a, a
    ld c, b
    or a
    rst $38
    add b
    ld a, a
    ld c, h
    or e
    nop
    rst $38
    adc c
    db $76
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    sbc h
    ld h, c
    ld e, $ff
    ld b, $f9
    sub [hl]
    ld h, c
    add hl, bc
    ld h, $82
    ld a, l
    rst $38
    ld b, $c9

jr_00a_7244:
    ld hl, $499e
    ld [hl], $89
    ld h, [hl]
    rst $38
    or e
    ld c, h
    ld bc, $21fe
    sbc $40
    cp a
    rst $38
    adc b
    ld [hl], a
    ld d, b
    xor a
    nop
    rst $38
    ld hl, $ffde
    ld sp, hl
    ld b, $c4
    add hl, sp
    sub h
    ld l, c
    ld h, h
    sbc c
    rst $38
    ld b, l
    sbc b
    sub b
    ld c, h
    ld [hl+], a
    call z, $ee00
    rst $38
    ld b, h
    xor e
    ld [de], a
    pop hl
    ld d, h
    inc hl
    and b
    rlca
    rst $38
    ld d, b

jr_00a_7279:
    adc a
    and l
    ld c, d
    jr z, jr_00a_7244

    ld d, h
    and e
    rst $38
    ld a, [hl+]
    sub c
    ld h, l
    sbc d
    ld hl, $699e
    sub [hl]
    rst $38
    ld b, b
    sbc [hl]
    and e
    ld c, h
    sub e
    ld h, b
    call $ff30
    ld [c], a
    add hl, de
    call nz, $b239
    ld c, h
    sub a
    ld h, b
    rst $38
    call z, $e033
    rra
    rst $38

jr_00a_72a1:
    nop
    rst $38
    nop
    rst $38
    and h
    ld c, c
    inc b
    db $eb
    ld [hl+], a
    call z, Call_00a_4c81
    rst $38
    jr nz, jr_00a_7279

    inc b
    jp Jump_00a_46a9


    ld bc, $ff0e
    sub h
    ld a, [bc]
    inc hl
    call z, $c422
    sub e
    ld h, b
    rst $38
    ld a, [bc]
    pop af
    ld sp, $44c8
    jr c, jr_00a_72d1

    add b
    rst $38
    or h
    ld b, d
    ld bc, $087e
    ld [hl], a
    sub b
    ld l, a

jr_00a_72d1:
    rst $38
    ld [bc], a
    db $fd
    inc h
    db $db
    add d
    ld c, l
    jr z, jr_00a_72a1

    rst $38
    inc d

jr_00a_72dc:
    db $e3
    ld c, c
    or b
    ld d, $68
    adc a
    jr nc, @+$01

    ld a, l
    add d
    jr nc, @-$30

    add b
    ld a, [hl]
    call $ff32
    sub d
    ld c, c
    db $76
    adc c
    ld b, d
    cp l
    jr jr_00a_72dc

    rst $38
    ld b, h
    and e
    add d
    ld sp, $7801
    ld de, $ffec
    ld b, c
    cp [hl]
    inc b
    cp d
    add hl, hl
    sub [hl]
    ld h, b
    sbc [hl]
    rst $38
    inc hl
    sbc h
    ld b, d
    add hl, sp
    sub e
    ld l, b
    add c
    ld a, h
    rst $38
    and c
    ld e, [hl]
    ld [$5877], sp
    daa
    or c
    ld c, $ff
    jp nc, Jump_00a_600d

    sbc a
    ld l, h
    sub d
    pop bc
    inc a
    rst $38
    sub e
    ld h, b
    ld c, $c1
    cp h
    inc bc
    xor $11
    rst $38
    ld b, e
    inc a
    sub b
    ld l, a
    sbc h
    ld h, e
    adc $31
    rst $38
    rst $30
    ld [$7483], sp
    dec hl
    call nc, $946b
    rst $38
    dec c
    ld a, [c]
    sub c
    ld l, [hl]
    dec h
    jp c, $3ec1

    rst $38
    inc b
    ei
    sub d
    ld l, l
    ld [$00f7], sp
    rst $38
    rst $38
    ld hl, $08de
    rst $30
    ld c, h
    or e
    add l

jr_00a_7357:
    ld a, d
    rst $38
    ld [$ca77], sp
    dec h
    ld [hl], d
    adc l
    ld h, b
    sbc a
    rst $38
    ld [hl+], a
    sbc l
    call z, $b033
    ld c, a
    ld h, c
    ld e, $ff
    add b
    ld a, a
    ld [de], a
    db $ed
    inc c
    di
    add hl, de
    and $ff
    push af
    ld a, [bc]
    add l
    ld a, d
    inc bc
    db $fc
    ccf
    ret nz

    nop
    rst $38
    ld [c], a
    ld a, l
    push de
    ld a, d
    ld [c], a
    ld a, l
    push de
    ld a, d
    rst $38
    ld [c], a
    ld a, l
    push de
    ld a, e
    ld [c], a
    ld a, a
    call nc, $ff7f
    db $e3
    ld a, l
    rst $10
    ld a, e
    pop hl
    ld a, [hl]
    jp nc, $ff7d

    push af
    ld a, d
    ld [c], a
    ld a, l
    cp b
    ld a, a
    rst $38
    rra
    rst $38
    xor b
    db $10
    ret nc

    jr jr_00a_7357

    db $10
    add sp, $38
    rst $38
    call c, $e468
    call z, $c462
    add e
    ld b, a
    rst $38
    jp $e3c1


    add c
    push de
    ld b, e
    rst $38
    inc hl
    rst $38
    ld a, $ff
    xor a
    ld [hl], a
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    or l
    ld a, [bc]
    ld a, d
    dec b
    or l
    ld a, [bc]
    ld a, d
    dec b
    rst $38
    or l
    ld a, [bc]
    ld a, d
    dec b
    or l
    ld a, [bc]
    ld a, d
    dec b
    ei
    dec [hl]
    adc d
    cp d
    push bc
    rst $38
    dec c
    di
    rst $38
    ld a, a
    cp a
    ldh a, [rIE]
    rst $18
    ccf
    rst $38
    nop
    rst $38
    ld l, e
    cp $97
    cp $b3
    cp $9f
    or $ff
    di
    cp $57
    xor $7b
    cp $6f
    sbc $ff
    ld a, e
    cp $77
    cp $9b
    ld a, [hl]
    ld [hl], a
    sbc $ff
    rst $38
    cp [hl]
    rst $30
    adc $ad
    cp $7b
    db $fc
    rst $38
    rst $28
    rra
    or b
    ld a, a
    xor $71
    pop af
    ld a, [hl]
    rst $38
    ld a, [$d97d]
    ld a, [hl]
    rst $28
    ld a, a
    pop de
    ld a, a
    rst $38
    ld [c], a
    ld a, l
    push de
    ld a, d
    ld [c], a
    ld a, l
    push de
    ld a, d
    rst $38
    ld [c], a
    ld a, l
    push de
    ld a, d
    ld [c], a
    ld a, l
    push de
    ld a, d
    rst $38
    sbc a
    rst $38
    ldh a, [rIE]
    xor d
    ld d, l
    rla
    add sp, -$03
    db $fd
    nop
    ld l, d
    sub l
    inc bc
    rst $38
    db $fc
    rst $38
    and b
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    rst $38
    and b
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ret nz

    ccf
    ld d, l
    ld a, [bc]
    rst $38
    rst $08
    jr nc, jr_00a_74df

    rst $38
    db $f4
    adc e
    cp d
    dec b
    rst $38
    cp l
    ld a, [bc]
    ld a, d
    dec d
    and l
    ld a, [de]
    ld a, d
    dec d
    rst $38
    or l
    ld a, [de]
    ld a, h
    cpl
    cp a
    ld c, d
    dec sp
    ld d, l
    rst $38
    ld a, e
    db $fc
    adc l
    cp $77
    adc [hl]
    sbc a
    ld a, [hl]
    rst $38
    ei
    ld e, $f7
    ld e, $db
    cp [hl]
    rst $38
    cp $ff
    rla
    cp $2b
    cp $17
    cp $2b
    cp $ff
    rla
    cp $2b
    cp $17
    cp $2b
    cp $b3
    rst $38
    or h
    rst $38
    ld b, d
    rst $38
    rst $38
    sbc a
    di
    sub a
    cp $cf
    db $fd
    ld b, c
    rst $38
    db $d3
    di
    ld a, a
    rst $38
    and a
    db $fc
    rst $38
    push de
    cp $a3
    cp $d5
    ei
    xor a
    rst $38
    or e
    rst $38
    nop
    rst $38
    xor d
    rst $28
    db $fd
    push de
    ld h, $f6
    inc d
    xor l
    cp [hl]
    rst $38
    ei
    ei
    db $fd
    sbc a
    ldh a, [rIE]
    ldh [rLCDC], a
    rst $18
    pop hl
    and b
    sbc b
    ld d, c
    add b
    db $ed
    ldh a, [$b3]
    rst $38
    ld bc, $5bff
    rst $30
    rst $38
    cp b

jr_00a_74df:
    ld h, a
    ld a, l
    ld l, d
    or a
    cp $7c
    rst $38
    ei
    rst $28
    rst $18
    ld [hl], e
    adc a
    rst $38
    or l
    ld c, d
    rst $30
    ld e, d
    dec h
    or l
    ld a, [hl-]
    ld c, a
    ld e, l
    cp a
    or e
    rst $38
    ld l, c
    rst $38
    jp nz, $ffff

    jp hl


    rst $18
    jp hl


    rst $38
    di
    rst $38
    ld h, d
    rst $38
    di
    rst $08
    ld a, [hl]
    cp $ff
    dec d
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    cp e
    rst $38
    db $fd
    rst $38
    rst $38
    rst $18
    ccf
    ld [$5571], a
    ldh [rWY], a
    ldh [rIE], a
    ld h, b
    ret nz

    ld [hl], l
    ret nz

    ld c, d
    ldh [$a8], a
    push af
    rst $38
    and d
    call c, $c1b4
    adc d
    push hl
    adc b
    di
    rst $38
    rst $10
    ld [$e5ba], a
    pop de
    rst $38
    xor d
    rst $38
    rst $38
    sbc e
    rst $20
    ld l, a
    db $fc
    ld e, a
    ld a, $b5
    ld e, $ff
    inc l
    rrca
    ld e, d
    rrca
    and e
    add hl, bc
    ld d, a
    inc hl
    rst $38
    xor e
    ld e, h
    rra
    xor b
    push de
    ld a, [bc]
    xor d
    ld e, l
    rst $18
    ld e, c
    xor a
    ld [hl], l
    ld c, d
    rst $38
    cp l
    rst $38
    rst $38
    cp $ff
    ld bc, $8103
    nop
    sub h
    nop
    rst $38
    rst $28
    nop
    or l
    ld b, d
    adc d
    push hl
    dec h
    jp c, $daff

    and l
    xor b
    ld d, a
    sub $ab
    and c
    ld e, a
    rst $38
    ld e, c
    rst $28
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    rst $38
    ld a, l
    cp $b6
    db $db
    ld a, [hl]
    di
    or $2b
    rst $38
    xor d
    scf
    ld [hl], e
    xor l
    and e
    ld a, l
    ld c, c
    or a
    rst $38
    sbc c
    ld [hl], a
    ld d, l
    cp e
    xor c
    rst $38
    ld e, l
    rst $38
    rst $38
    xor e
    db $fd
    rst $10
    db $fd
    rst $28
    db $fd
    ld e, a
    rst $38
    nop
    cp a
    rrca
    inc sp
    inc a
    ld b, b
    ld [hl], b
    ld b, b
    ld h, b
    rst $38
    and b
    ret nz

    add b
    ret nz

    ret


    add b
    pop bc
    add b
    rst $38
    adc d
    add b
    sbc a
    add b
    rst $08
    add b
    db $db
    add h
    rst $30
    or e
    call z, Call_00a_4e75
    ld a, a
    dec a
    ld a, a

jr_00a_75c7:
    rst $38
    dec l
    ld a, e
    dec h
    ld a, e
    ld e, l
    ld [hl], e
    ld e, l
    ld [hl], e
    rst $38
    ld d, [hl]
    ld l, e
    ld a, a
    res 5, b
    rst $18
    ld l, d
    sbc a
    rst $38
    push hl
    sbc [hl]
    push hl
    sbc [hl]
    push hl
    sbc [hl]
    cp [hl]
    rst $10
    rst $38
    ld [hl], e
    rst $18
    ld e, e
    ld l, a
    ld l, $7f
    rla
    ccf
    cp $f8
    rst $38
    inc de
    rrca
    inc b
    inc bc
    nop
    cp a
    nop
    ld d, c
    nop
    xor d
    nop
    ld a, l
    nop
    rst $38
    rst $38
    nop
    rst $08
    jr nc, jr_00a_75c7

    add hl, sp
    sbc [hl]
    ld a, c
    rst $38
    cp d
    ld a, l
    dec [hl]
    rst $38
    ld a, e
    rst $38
    push hl
    rst $38
    rst $38
    db $d3
    rst $38
    ld l, e
    rst $38
    db $db
    xor $73
    adc $ff
    rst $38
    adc $ff
    adc [hl]
    ld e, l
    xor [hl]
    push de
    xor [hl]
    rst $38
    sbc $af
    rst $00
    cp a
    adc a
    rst $38
    adc a
    ld a, [hl]
    rst $38
    rst $28
    ld a, [hl]
    inc [hl]
    rst $38
    cp $ff
    push af
    rst $38
    cp $3f
    rst $38
    add a
    ld hl, sp+$60
    add b
    nop
    cp a
    nop
    ld sp, $ec00
    nop
    ei
    nop
    rst $38
    ld e, $e0
    ld l, a
    ldh a, [rPCM34]
    ld hl, sp-$09
    ld hl, sp-$01
    rst $28
    ld hl, sp-$2d
    db $fc
    call nc, $2bff
    rst $38
    rst $38
    db $eb
    ccf
    rst $10
    ccf
    db $eb
    scf
    cp e
    ld h, a
    rst $38
    sbc e
    ld h, a
    inc sp
    rst $28
    ld [hl], e
    rst $28
    ld a, d
    rst $28
    rst $38
    ld [hl], d
    rst $28
    ld a, d
    rst $28
    ld h, h
    rst $38
    push de
    rst $38
    rst $38
    push de
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    inc [hl]
    rst $38
    cp a
    ldh a, [$cc]
    inc a
    or d
    ld c, [hl]
    ld h, [hl]
    ld e, $ff
    ld hl, $539f
    cpl
    ld h, l
    sbc a
    or c
    ld e, a
    rst $38
    ld d, e
    xor a
    xor c
    ld e, a
    ld b, e
    cp a
    ld h, $ff
    cp $8a
    ld a, a
    ld h, $fe
    db $76
    cp $fc
    rst $38
    cp h
    cp $bc
    cp $7e
    cp $76
    cp $ff
    db $76
    cp $3e
    rst $38
    dec a
    rst $38
    cp l
    rst $38
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    ld e, [hl]
    cp $7e
    cp $f4
    db $fc
    cp b
    nop
    jr c, jr_00a_773d

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00a_774b

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
    jr jr_00a_772b

    jr c, jr_00a_7711

jr_00a_7711:
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
    jr jr_00a_7767

jr_00a_772b:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00a_7772

    nop
    cp [hl]
    nop
    jr jr_00a_7777

    nop
    ld h, [hl]

jr_00a_773d:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00a_7780

    nop
    rst $38
    ccf
    rst $38
    add a
    ld hl, sp+$62

jr_00a_774b:
    add c
    dec d
    nop
    rst $38
    ld [bc], a
    nop
    dec [hl]
    nop
    xor $00
    ei
    nop
    rst $38
    ld e, $e0
    ld l, l
    ld a, [c]
    ld [hl], a
    ld hl, sp-$0b
    ld a, [$eeff]
    ld sp, hl
    pop de
    cp $d4
    rst $38

jr_00a_7767:
    dec hl
    rst $38
    rst $38
    cp e
    ld a, a
    rst $18
    ld a, a
    ei
    ccf
    xor e
    ld a, a

jr_00a_7772:
    rst $38
    sbc e
    ld l, a
    dec a
    rst $28

jr_00a_7777:
    ld [hl], l
    rst $28
    ld a, [hl]
    rst $28
    rst $38
    ld a, d
    rst $28
    ld l, d
    rst $38

jr_00a_7780:
    ld h, d
    rst $38
    rst $10
    rst $38
    rst $38
    rst $10
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    ccf
    nop
    jp $c33c


    ccf
    rst $38
    jp $c33e


    ld a, $ff
    cp $87
    ld a, [hl]
    db $fc
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rst $38
    cp $02
    jp nz, $c33e

    ccf
    jp $ff3e


    adc c
    add b
    adc c
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
    rst $38
    sub e
    add b
    sub e
    add b
    sub e
    add b
    sub b
    adc a
    rst $38

jr_00a_77cc:
    sub b
    adc b
    sub c
    adc b
    add c
    ld hl, sp-$77
    add b
    rst $38
    or b
    adc a
    adc b
    rst $38
    set 7, h
    or h
    adc a
    rst $38
    add a
    rst $38
    or a
    call z, $ffc3
    ld a, a

jr_00a_77e5:
    rst $38
    rst $38
    call c, $dc23
    inc hl
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
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rrca
    ldh a, [rIE]
    rrca
    jr nc, jr_00a_77cc

    ccf
    rst $18
    jr nz, jr_00a_77e5

    inc hl
    rst $38
    rrca
    ldh a, [rNR10]
    rst $38
    rst $10
    jr c, @+$09

    ld hl, sp-$04
    ld hl, sp-$01
    sbc a
    ld a, a
    ld [$ffff], sp
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    rst $38
    ld hl, $e1ff
    rst $38
    rst $28
    rra
    ld [$ffff], sp
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    ld [$f8ff], sp
    rst $38
    cp a
    ld a, a
    jr nz, @+$01

    rst $38
    ld [$f8ff], sp
    rst $38
    rra
    rst $38
    db $10
    rst $38
    call z, $ff33
    ld hl, $8fff
    rst $38
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
    adc a
    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cpl
    rst $38
    cp h
    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    call z, $ffc1
    adc a
    rst $38
    cp a
    rst $38
    add b
    ld b, c
    ld e, l
    add e
    cp a
    inc bc
    rst $38
    rst $38
    inc bc
    ld a, l
    add e
    ld h, l
    dec de
    push de
    inc sp
    rst $38
    rst $20
    inc bc
    rst $38
    inc bc
    ccf
    jp $e7db


    add b
    rst $38
    cp b
    nop
    jr c, jr_00a_7911

    xor $8e
    xor $38
    ld a, h
    nop
    or h
    nop
    jr @+$3a

    ld a, b
    adc d
    jr c, jr_00a_791f

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
    jr jr_00a_78ff

    jr c, jr_00a_78e5

jr_00a_78e5:
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
    jr jr_00a_793b

jr_00a_78ff:
    inc h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    cp $5e
    ld a, [hl]
    inc l
    ld a, [hl]
    jr jr_00a_7946

    nop
    cp [hl]
    nop
    jr jr_00a_794b

    nop
    ld h, [hl]

jr_00a_7911:
    ld b, d
    cp [hl]
    ld b, d
    nop
    ld h, [hl]
    jr jr_00a_7954

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00a_791f:
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

jr_00a_793b:
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    xor a
    rst $38
    nop
    db $fd
    nop

jr_00a_7946:
    db $dd
    jr nz, @+$01

    db $dd
    nop

jr_00a_794b:
    db $fd
    nop
    call $d530
    jr nz, jr_00a_7952

jr_00a_7952:
    sbc d
    ld a, c

jr_00a_7954:
    cp d
    ld a, c
    jp c, $fa79

    ld a, c
    ld a, [de]
    ld a, d
    ld a, [hl-]
    ld a, d
    ld e, d
    ld a, d
    ld a, d
    ld a, d
    sbc d
    ld a, d
    cp d
    ld a, d
    jp c, $fa7a

    ld a, d
    ld a, [de]
    ld a, e
    ld a, [hl-]
    ld a, e
    ld e, d
    ld a, e
    ld a, d
    ld a, e
    sbc d
    ld a, e
    cp d
    ld a, e
    jp c, $fa7b

    ld a, e
    ld a, [de]
    ld a, h
    ld a, [hl-]
    ld a, h
    ld e, d
    ld a, h
    ld a, d
    ld a, h
    sbc d
    ld a, h
    cp d
    ld a, h
    jp c, $fa7c

    ld a, h
    ld a, [de]
    ld a, l
    ld a, [hl-]
    ld a, l
    ld e, d
    ld a, l
    ld a, d
    ld a, l
    sbc d
    ld a, l
    cp d
    ld a, l
    jp c, $fa7d

    ld a, l
    ld h, c
    nop
    rst $38
    nop
    rst $18
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
    ldh [rP1], a
    ei
    nop
    cp $00
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
    nop
    nop
    rlca
    nop
    ccf
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
    nop
    nop
    nop
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    cp a
    nop
    ei
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
    jp z, $bf00

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
    rlc b
    cp $00
    ld l, a
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
    cp $00
    rst $00
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
    rst $00
    nop
    ld a, h
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
    rst $10
    nop
    db $fd
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
    nop
    rst $38
    nop
    ei

jr_00a_7a5d:
    nop
    sbc [hl]
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
    ccf
    nop
    or $00
    rst $18
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
    db $eb
    nop
    cp a
    nop
    db $ed
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
    cp h
    nop
    rst $20
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $24fc
    ret c

    ld l, l
    add d
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld d, b
    cpl
    jr nc, jr_00a_7ac5

Call_00a_7ab6:
    xor b
    rlca
    xor d
    ld b, c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc

jr_00a_7ac5:
    db $fc
    dec d
    add sp, $6a
    add c
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    db $10
    ld l, a
    add b
    cpl
    jr c, jr_00a_7a5d

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $11fe
    xor $03
    add sp, $7a
    add c
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
    add b
    ld e, a
    inc h
    dec de
    ldh a, [$03]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld b, $f8
    db $10
    add sp, $79
    add d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    ld a, a
    db $10
    cpl
    call nz, $b60b
    ld b, c
    stop
    jr nc, jr_00a_7b1e

jr_00a_7b1e:
    jr z, jr_00a_7b20

jr_00a_7b20:
    inc l
    nop
    ld h, b
    inc b
    jr nz, jr_00a_7b6a

    ld b, $40
    call nc, $2b02
    sub b
    ld b, $b9
    ld h, d
    cp l
    ld [hl+], a
    db $fd
    and h
    ld a, e
    db $10
    ld a, [hl]
    inc [hl]
    jr jr_00a_7b49

    jr jr_00a_7b43

    nop
    nop
    nop
    inc h
    nop
    ld b, b
    nop
    ld b, h

jr_00a_7b43:
    nop
    ld b, d
    nop
    ld d, d
    nop
    adc e

jr_00a_7b49:
    db $10
    and l
    jr jr_00a_7b54

    cp b
    ld [c], a
    dec a
    ld [hl+], a
    db $fd
    xor h
    ld a, e

jr_00a_7b54:
    db $10
    ld a, [hl]
    inc [hl]
    jr jr_00a_7b69

    jr jr_00a_7b5b

jr_00a_7b5b:
    nop
    nop
    nop
    ld [$2800], sp
    nop
    nop
    nop
    inc h
    nop
    ld d, d
    nop
    ld c, d

jr_00a_7b69:
    db $10

jr_00a_7b6a:
    ld a, [hl+]
    db $10
    add a
    jr c, jr_00a_7bd1

    cp l
    inc hl
    db $fc
    and h
    ld a, e
    db $10
    ld a, [hl]
    inc [hl]
    jr @+$12

    jr jr_00a_7b7b

jr_00a_7b7b:
    nop
    stop
    nop
    nop
    inc h
    nop
    jr nz, jr_00a_7b84

jr_00a_7b84:
    ld b, [hl]
    nop
    ld e, d
    nop
    rl b
    xor d
    ld de, $b805
    ldh [$3d], a
    ld [hl+], a
    db $fd
    xor h
    ld a, e
    db $10
    ld a, [hl]
    inc [hl]
    jr jr_00a_7ba9

    jr jr_00a_7c19

    rst $38
    push bc
    add e
    db $fd
    jp $e3fd


    db $fd
    jp $83fd


    add c
    rst $38
    rst $38

jr_00a_7ba9:
    rst $38
    ld a, [hl]
    rst $38
    push bc
    add e
    db $fd
    jp $e3fd


    db $fd
    jp $83fd


    add c
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [hl], c
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh [$60], a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [hl], c
    ldh [$7f], a
    ldh a, [$7f]

jr_00a_7bd1:
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh [$60], a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld e, h
    jr c, @-$1f

    inc a
    rst $18
    ld a, $df
    inc a
    rst $18
    jr c, jr_00a_7bff

    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld e, h
    jr c, @-$1f

    inc a
    rst $18
    ld a, $df
    inc a
    rst $18
    jr c, jr_00a_7c0f

    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rla
    ld c, $f7

jr_00a_7bff:
    rrca
    rst $30
    adc a
    rst $30
    rrca
    rst $30
    ld c, $06
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rla
    ld c, $f7

jr_00a_7c0f:
    rrca
    rst $30
    adc a
    rst $30
    rrca
    rst $30
    ld c, $06
    rst $38
    rst $38

jr_00a_7c19:
    rst $38

jr_00a_7c1a:
    ld a, [hl]
    rst $38
    push bc
    add e
    cp e
    add a
    or a
    adc a
    cp e
    add a
    db $fd
    add e
    add c
    rst $38
    rst $38
    rst $38

jr_00a_7c2a:
    ld a, [hl]
    rst $38
    push bc
    add e
    cp e
    add a
    or a
    adc a
    cp e
    add a
    db $fd
    add e
    add c
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rla
    ld c, $ee
    ld e, $de
    ld a, $ee
    ld e, $f7
    ld c, $06
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rla
    ld c, $ee
    ld e, $de
    ld a, $ee
    ld e, $f7
    ld c, $06
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld e, h
    jr c, jr_00a_7c1a

    ld a, b
    ld a, e
    ld hl, sp-$45
    ld a, b
    rst $18
    jr c, jr_00a_7c7f

    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld e, h
    jr c, jr_00a_7c2a

    ld a, b
    ld a, e
    ld hl, sp-$45
    ld a, b
    rst $18
    jr c, jr_00a_7c8f

    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [hl], c
    ldh [$ee], a

jr_00a_7c7f:
    pop hl
    db $ed
    db $e3
    xor $e1
    ld a, a
    ldh [$60], a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [hl], c
    ldh [$ee], a

jr_00a_7c8f:
    pop hl
    db $ed
    db $e3
    xor $e1
    ld a, a
    ldh [$60], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc a
    nop
    cp h
    nop
    sbc c
    nop
    sbc c
    nop
    add c
    nop
    add c
    nop
    jp $c300


    nop
    rst $30
    nop
    rst $38
    nop
    jp $c700


    nop
    rst $20
    nop
    cp $00
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    cp h
    nop
    cp l
    nop
    sbc c
    nop
    sbc e
    nop
    jp $3400


    nop
    sub b
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    jp $f700


    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]

jr_00a_7cf5:
    nop
    inc a
    nop
    inc a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc [hl]
    nop
    inc b
    nop
    nop
    nop
    add b
    nop
    add c
    nop
    sbc c
    nop
    db $db
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
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0011
    ld b, h
    jr c, jr_00a_7d38

    call z, Call_00a_6b84
    ld [hl+], a
    db $fd
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    call nz, $e402
    ld e, c
    and [hl]
    ld a, [hl+]
    push de

jr_00a_7d38:
    ld [hl-], a
    db $dd
    nop
    nop
    inc [hl]
    nop
    add hl, bc

Jump_00a_7d3f:
    ld [de], a
    db $10
    dec c
    and b
    ld c, a
    inc d
    ld l, e
    add h
    ld a, e
    jr z, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    sub b
    inc d
    add sp, $40
    cp [hl]
    dec h
    jp c, $df20

    nop
    nop
    nop
    nop
    add b
    nop
    and b
    ld b, b
    ld b, h
    jr c, jr_00a_7cf5

    ld l, a
    ld [$20f7], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    nop
    db $fc
    ld c, c
    or [hl]
    ld h, $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $7b84
    ld de, $08ee
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld l, b
    sub b
    ld [de], a
    db $ec
    ld c, b
    or a
    ld [hl+], a
    rst $18
    rst $38
    rst $38
    ld de, $d638
    jr z, jr_00a_7e1e

    rst $00
    adc $ff
    adc a
    sbc $bd
    adc [hl]

jr_00a_7da8:
    cp a
    add c
    rst $38
    rst $38
    ld de, $d638
    jr z, @-$01

    add $73
    rst $38
    pop af
    ld a, e
    cp l
    ld [hl], c
    db $fd
    add c
    rst $38
    rst $38
    ld b, h
    ld c, $b5
    ld a, [bc]
    ld e, a
    or c
    rst $00
    rst $38
    sbc e
    rst $00
    cp a
    add b
    and a
    sbc c
    rst $38
    rst $38
    ld b, h
    ld c, $b5
    ld a, [bc]
    ld e, a
    or c
    inc bc
    rst $38
    reti


    dec sp
    ld sp, hl
    dec a
    ld sp, hl
    cp l
    rst $38
    rst $38
    ld de, $6d83
    add d
    rst $10
    ld l, h
    rst $00
    rst $38
    sbc l
    jp $b897


    cp a
    cp c
    rst $38
    rst $38
    ld de, $6d83
    add d
    rst $10
    ld l, h
    db $e3
    rst $38
    cp c
    jp $1de9


    db $fd
    sbc l
    rst $38
    rst $38
    ld b, h

Jump_00a_7dfd:
    ldh [$5b], a
    and b
    push af
    dec de
    ret nc

    rst $28
    sbc e
    call c, $bc9f
    sbc a
    cp l
    rst $38
    rst $38
    ld b, h
    ldh [$5b], a
    and b
    push af
    dec de
    db $e3
    rst $38
    reti


    db $e3
    db $fd
    ld bc, $99fd
    jr nz, jr_00a_7da8

    ld e, $7e

jr_00a_7e1e:
    adc e
    nop
    rra
    ld h, b
    ld a, a
    rst $38
    and c
    sbc $f3
    adc h
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    or e
    call z, $fec1
    pop hl
    cp [hl]
    di
    adc h
    cp $bf
    ret nz

    rst $38
    ldh a, [$f9]
    adc a
    rst $38
    xor a
    nop
    rra
    ld h, d
    ld a, l
    add e
    db $fc
    rst $38
    rst $20
    sbc b
    ld e, [hl]
    and c
    ld a, [hl]
    pop bc
    rst $20
    sbc b
    rst $38
    add e
    db $fc
    ld b, e
    db $fc
    ld h, a
    cp b
    cp $81
    cp $be
    pop bc
    ld b, c
    rst $38
    cp a
    ld a, a
    pop hl
    adc e
    nop
    rrca
    rla
    ld a, [de]
    rst $38
    rra
    ld de, $111f
    dec d
    ld a, [de]
    ld c, $09
    rst $38
    rrca
    ld [$090e], sp
    dec d
    ld a, [de]
    rra
    ld de, $1ffa
    ld de, $1a17
    rrca
    nop
    xor a
    nop
    rra
    ld h, b
    ld a, a
    sub b
    rst $28
    rst $38
    ld sp, hl
    ld b, [hl]
    rst $18
    ld h, b
    cp a
    ldh a, [$f9]
    and [hl]
    rst $38
    ldh a, [$af]
    ldh a, [$bf]
    or c
    xor $ff
    ld b, b
    cp $ff
    ld e, [hl]
    rst $28
    pop af
    ld sp, $1e2f
    cp a
    ld a, $c5
    ei
    ld b, e
    cp h
    jp $ff3c


    and a
    ld e, b
    cp $81
    cp $01
    rst $20
    jr @+$01

    jp $c3bc


    ld a, h
    rst $20
    jr @+$40

    pop bc
    cp $c1
    rst $38
    ld a, a
    rst $38
    rst $30
    add hl, sp
    adc $bf
    ld c, $1d
    dec de
    rra
    dec d
    ld e, $15
    rst $38
    rra
    inc d
    rra
    inc d
    ld a, $25
    dec sp
    inc l
    cp $3c
    dec hl
    ccf
    jr z, @+$20

    ld de, $800f
    nop
    xor a
    nop
    rra
    ld h, b
    ld a, a
    or e
    call z, $dfff
    and b
    rst $38
    ret nz

    or e
    call z, $dee1
    rst $38
    pop hl
    cp [hl]
    di
    adc h
    cp a
    ret nz

    ccf
    db $fc
    cp $de
    db $e3
    ld h, e
    ld e, a
    ld b, e
    ld a, a
    inc a
    add d
    nop
    inc e
    rst $38

Jump_00a_7eff:
    ld l, $3a
    ccf
    dec h
    ld a, $25
    ccf
    inc h
    rst $38
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld [de], a
    ccf
    inc h
    cp $3e
    dec h
    ccf
    dec h
    ld l, $3a
    inc e
    add d
    nop
    ret c

    rst $38
    cp h
    ld h, h
    xor h
    ld [hl], h
    ld a, [de]
    cp $1e
    ld a, [c]
    rst $38
    sbc [hl]
    ld [hl], d
    cp $12
    cp $12
    sub d
    ld a, [hl]
    cp $2c
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$48
    ldh [$8b], a
    nop
    call z, Call_00a_7ab6
    rst $38
    ld l, $f2
    add hl, de
    rst $30
    rra
    ld sp, hl
    ccf
    pop de
    rst $30
    rst $38
    ld de, $19ff
    rst $30
    ld l, $f2
    cp $f6
    ld a, [$9c7c]
    sub b
    ld [hl], b
    ldh [$8b], a
    nop
    jr c, jr_00a_7fd3

    ld h, h
    rst $38
    ld a, a
    ld d, e
    ld a, l
    ld d, e
    ld a, e
    ld d, l
    dec a
    dec hl
    rst $38
    ccf
    add hl, hl
    dec a
    dec hl
    ld a, e
    ld d, l
    ld a, l
    ld d, e
    cp $7f
    ld d, d
    ld a, a
    ld h, [hl]
    ld a, [hl-]
    dec sp
    ld bc, $008b
    ldh a, [$a8]
    ld a, b
    rst $38
    ld hl, sp+$28

jr_00a_7f7a:
    sub h
    ld a, h
    sbc h
    ld [hl], h
    call c, $ff34
    db $fc
    inc d
    db $fc
    inc d
    call nc, $b83c

jr_00a_7f88:
    ld l, b
    cp $28
    ld hl, sp+$70
    ldh a, [$c0]
    ld b, b
    ret nz

    xor l
    nop
    add b
    ld b, b
    ret nz

    ld b, b
    rst $38
    jr nz, jr_00a_7f7a

    jr nc, @-$0e

    jr c, @-$16

    jr c, jr_00a_7f88

    rst $38
    ld hl, sp+$28
    cp b
    ld l, b
    ld e, b
    add sp, $68
    ret c

    jp c, $90f0

    ldh a, [$60]
    nop
    adc e
    nop
    ld bc, $0203
    rst $38
    rra
    ld e, $2d
    inc sp
    ld a, l
    ld d, e
    ld a, e
    ld d, l
    rst $38
    ld l, a
    ld e, c
    ld e, l
    ld l, e
    ccf
    add hl, hl
    dec a
    dec hl
    cp $3f
    dec hl
    inc sp
    ld a, $1e
    rra
    ld bc, $30bf
    ld e, b
    ld l, b
    db $ec

jr_00a_7fd3:
    call nc, Call_00a_64bc
    rst $38
    inc a
    db $e4
    inc e
    db $f4
    sub h
    ld a, h
    db $fc

jr_00a_7fde:
    inc d
    rst $38
    db $fc
    inc d
    sbc h
    ld [hl], h
    jr jr_00a_7fde

    ld [hl], b
    ldh a, [$de]
    cp b
    ret z

    cp b
    adc b
    ld hl, sp+$70
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
