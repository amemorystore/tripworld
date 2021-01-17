; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    add b
    adc b
    inc a
    ld b, b
    add b
    adc b
    ld l, a
    ld b, [hl]
    add b
    adc b
    sbc l
    ld c, l
    ld b, b
    adc h
    ld l, l
    ld d, h
    add b
    adc b
    rra
    ld e, b
    nop
    adc h
    add h
    ld e, [hl]
    nop
    adc c
    ld e, $61
    nop
    adc d
    and [hl]
    ld h, h
    nop
    adc l
    ld [hl], b
    ld h, a
    ld b, b
    adc l
    ld d, l
    ld l, d
    add b
    adc b
    db $e3
    ld l, d
    add b
    adc e
    jr z, jr_009_409b

    add b
    adc b
    add l
    ld l, a
    db $20, $8c
    ld a, [hl+]
    db $76
    add b
    adc b
    cp b
    ld a, c
    add b
    nop
    xor b
    nop
    ld h, b
    ldh a, [$ba]
    ldh a, [$b0]
    ret nc

    ld [hl], b
    ld a, c
    rst $38
    ld a, a
    ld a, [hl]
    ccf
    inc a
    dec sp
    inc a
    ccf
    jr c, @+$01

    rla
    jr @+$19

    jr jr_009_4076

    db $10
    rra
    ld de, $16ff
    dec de
    dec d
    ld e, $0f
    inc c
    ld c, $0d
    cp $06
    dec b
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0080
    add b
    nop
    add d
    nop
    ld bc, $02ff
    inc bc
    rlca

jr_009_4076:
    inc b
    rrca

Call_009_4078:
    dec bc
    ld e, $17
    cp $16
    rra
    inc de
    rra
    inc c
    rrca
    inc bc
    add b
    nop
    add b
    nop
    adc e
    nop
    inc bc
    dec c
    ld c, $fe
    rra
    db $10
    inc de
    inc e
    ld c, $0f
    ld bc, $0080
    adc e
    nop
    rrca
    dec e
    dec de

jr_009_409b:
    rst $38
    dec de
    rra
    dec e
    ld e, $0b
    inc c
    rla
    jr @+$01

    rra
    db $10
    cpl
    jr nc, jr_009_40e9

    jr nz, jr_009_40eb

    jr nz, @+$01

    ccf
    jr nz, jr_009_40f0

    jr nz, jr_009_40e2

    jr nc, @+$61

    ld [hl], b
    rst $38
    ld [hl], a
    ld e, b
    ei
    adc h
    db $fd
    add [hl]
    rst $38
    add e
    ld a, [$83fd]
    ld a, d
    ld b, [hl]
    inc a
    nop
    add b
    nop
    cp a
    inc a
    ld b, e
    ld a, a
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    ldh [$9f], a
    cp b
    rst $00
    ld e, a
    ld h, b
    ld [hl], a
    ld a, b
    rst $38
    cp a
    rst $08
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_009_40e2:
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    ld b, b

jr_009_40e9:
    ld e, a
    ld h, b

jr_009_40eb:
    rst $38
    ccf
    jr nz, jr_009_410e

    db $10

jr_009_40f0:
    dec bc
    inc c
    ld b, $07
    and b
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ccf
    rst $18
    ldh [$7f], a
    add b
    rst $38
    rst $38

jr_009_4108:
    nop
    rst $38
    nop
    rst $20
    jr jr_009_4108

jr_009_410e:
    dec b
    rst $38
    rst $38
    nop
    rst $30
    ld [$07fb], sp
    rst $38
    ldh [rIE], a
    rst $38
    db $10
    rst $38
    ld [$e81f], sp
    rrca
    ld hl, sp-$02
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1e
    rst $38
    pop hl
    add b
    nop
    cp a
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$1817], sp
    rst $38
    rra
    db $10
    cpl
    jr nc, @+$60

jr_009_4139:
    ld h, c
    rst $38
    adc a
    rst $28
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    cp $0f
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$80
    nop
    cp a
    ld bc, $0203
    rlca
    inc b
    rrca
    ld [$3fff], sp
    jr nc, jr_009_4139

    ldh [$7f], a
    add b
    rst $38
    nop
    cp $ff
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    nop
    and b
    inc a
    rst $38
    rst $38
    ld [hl], a
    adc a
    rst $38
    inc bc
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    xor a
    ld [hl], b
    ld l, e
    sbc h
    add sp, -$12
    pop af
    ccf
    jr nz, @-$76

    stop
    cp a
    inc bc
    inc b
    rlca
    cp $fd
    ld a, [hl]
    push bc
    rst $38
    dec a
    and $3f
    db $e3
    rst $38
    daa
    cp a
    ld h, a
    rst $38
    rst $38
    rst $00
    ei
    rlca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $38
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    xor b
    rst $38
    inc a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    add b
    ld h, b
    ldh [$d8], a
    jr c, @+$01

    db $f4
    inc c
    ld a, [$bd06]
    ld b, e
    rst $18
    ld hl, $7eff
    and c
    rst $08
    jr nc, @+$01

jr_009_41e6:
    sub b
    xor $53
    rst $38
    ld sp, hl
    ld h, $df
    jr nz, jr_009_41e6

    ld c, $ff
    ld bc, $ffff
    ld bc, $03fe
    rst $38
    ld [bc], a
    cp e
    add $e8
    ld a, [hl]
    ld a, a
    ld bc, $af00
    nop
    ret nz

    or b
    ld [hl], b
    rst $28
    rra
    ld hl, sp-$01
    nop
    rst $28
    rra
    rst $38
    add e

jr_009_420e:
    rst $38
    db $fd
    rst $38
    ld a, [$fec6]
    jr c, jr_009_420e

    ret nz

    nop
    add b
    nop
    cp a
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    db $10
    ldh a, [rIE]
    adc h
    ld a, h
    inc bc
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    cp $f0
    rrca
    ldh [$1f], a
    rst $38
    nop
    rst $38
    add b
    nop
    adc d
    nop
    add b
    ldh [rIE], a
    ret nc

    ldh a, [$d8]
    add sp, -$24
    db $e4
    ld a, [hl-]
    add $ff
    cp $02
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    cp $02
    rst $38
    ld a, [$fc06]
    inc b
    db $ec
    inc e

jr_009_425b:
    cp h
    ld [hl], h
    ld a, [$e4fc]
    db $f4
    call z, Call_009_4078
    adc b
    jr nz, jr_009_4267

jr_009_4267:
    cp a
    ret nz

    jr nc, jr_009_425b

    ld [$04f8], sp
    db $fc
    rst $38

jr_009_4270:
    ld [bc], a
    cp $c6
    cp d
    cp $c2
    ld a, [$bfc6]
    db $fc
    ld a, [$fec6]
    jp nz, Jump_009_42fe

    rst $38
    cp $c2
    ld a, [$fcc6]
    call nz, $ccb4
    cp $b8
    ret z

    ldh a, [$90]
    jr nz, jr_009_4270

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
    add d
    nop
    rrca
    cp $1f
    dec e
    ld e, $1d
    rra
    ld e, $0f
    adc l
    add b
    ld b, b
    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ld hl, sp+$78
    or h
    call z, $847c
    rst $38
    db $e4
    inc e
    call nz, $c43c
    inc a
    adc b
    ld a, b
    ld a, [$7888]
    db $10
    ldh a, [$e0]
    nop
    and c
    jr nc, jr_009_433f

    ld l, b
    ld [c], a
    ld l, c
    ld a, c
    ccf

jr_009_42cc:
    rra
    xor b
    rrca
    inc bc
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ret nz

    jr nc, jr_009_42cc

    cp $18
    add sp, $68
    sbc b
    ld [hl], b
    ldh a, [$80]
    rst $38
    or $09
    ei
    dec c
    or $0d
    ld a, a
    add h
    rst $38
    cp a
    ld b, b
    rst $38
    inc c
    db $fd
    ld [de], a
    rst $38
    db $10
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    and b
    ld a, a

Jump_009_42fe:
    ret nz

Jump_009_42ff:
    ld a, [$40ff]
    rst $38
    ld a, a
    add e
    nop
    add b
    nop
    add b
    ld bc, $03ab
    rlca
    ld a, a
    rst $38
    rst $28
    ld a, [$eff7]
    rst $38
    rst $30
    ld a, h
    nop
    add b
    nop
    add b
    ld bc, $038a
    rlca
    ccf
    cp $7f
    ld [hl], a
    ld a, e
    ld [hl], a
    ld a, a
    ld a, e
    inc a
    add b
    nop
    add b
    ld bc, $038a
    rlca
    ccf
    cp $7f
    ld [hl], a
    ld a, e
    ld [hl], a
    ld a, a
    ld a, e
    inc a
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_009_433f:
    ld b, b
    rst $38
    ld e, a
    ld h, b
    ccf
    jr nz, jr_009_4375

    jr nc, jr_009_437f

    jr c, @+$01

    ld a, l
    ld a, [hl]
    ld a, e
    ld [hl], a
    xor $f1
    rst $38
    ldh [$fe], a
    rst $38
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$9f]
    ld [c], a
    rrca
    dec c
    rra
    ld e, $a8
    ld e, $0c
    nop
    add b
    nop
    add b
    nop
    rst $38
    cpl
    jr nc, jr_009_43ca

    ld h, b
    cp a
    ret nz

    ld sp, hl
    add [hl]
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop

jr_009_4375:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

Jump_009_437c:
    ld a, a
    add b
    rst $38

jr_009_437f:
    sbc a
    ld l, a
    ld [hl], b
    ld a, [$203f]
    ccf
    jr nz, jr_009_43a7

jr_009_4388:
    nop
    add d
    nop
    ret nz

    ld hl, sp-$10
    jr nc, jr_009_4388

    add sp, -$08
    xor d
    ld hl, sp-$10
    ldh [$80], a
    add b
    nop
    rst $38
    ret nc

    jr nc, jr_009_4405

    sbc b
    db $f4
    adc h
    db $fc
    add h
    rst $38
    ld a, [$fe06]
    ld h, d

jr_009_43a7:
    ld a, [hl]
    sub d
    cp $12
    rst $38
    ld a, [$fc16]
    inc d
    db $f4
    inc c
    ld [$fa1e], a
    cp [hl]
    ld [hl], d
    cp $c2
    db $fc
    nop
    rst $38
    cpl
    jr nc, jr_009_441e

    ld h, b
    cp a
    ret nz

    ld sp, hl
    add [hl]
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38

jr_009_43ca:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    sbc a
    rst $28
    ldh a, [$fa]
    rst $38
    ldh [$3f], a
    jr nz, @+$21

    nop
    rst $38
    cpl
    jr nc, jr_009_4440

    ld h, b
    cp a
    ret nz

    cp $81
    rst $38
    ld a, a
    add b
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
    add b
    rst $38
    add c
    rst $38
    jp nz, $edfe

    or $9f
    sbc h
    ld b, $05

Jump_009_43ff:
    inc bc
    rst $38
    cpl
    jr nc, jr_009_4463

    ld h, b

jr_009_4405:
    cp a
    ret nz

    ld a, [c]
    adc l
    rst $38
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    cp $ff
    sbc b

jr_009_441e:
    cp a
    rst $00
    ld e, [hl]
    ld h, c
    ccf
    add b
    nop
    xor a
    nop
    inc bc
    dec b
    ld b, $0b
    inc c
    rst $38
    rla
    jr jr_009_4449

    ld d, $2e
    ld sp, $203f
    rst $38
    ccf
    jr nz, @+$61

    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld a, a

jr_009_4440:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld e, a

jr_009_4449:
    ld h, b
    ccf
    jr nz, jr_009_447c

    jr nc, jr_009_4466

    jr @+$01

    dec e
    ld e, $1b
    rla
    ld l, $31
    ccf

jr_009_4458:
    jr nz, jr_009_4458

    ccf
    jr nz, jr_009_449c

    jr nz, @+$31

    jr nc, jr_009_4480

    xor b
    nop

jr_009_4463:
    ld h, b
    ldh a, [$be]

jr_009_4466:
    ldh a, [$b0]
    ret nc

    cp b
    ld hl, sp+$78
    xor a
    ld a, h
    ld a, a
    ld a, $3f
    dec sp
    inc a
    rst $38
    rra
    db $10
    ccf
    jr nz, jr_009_44d8

    ld h, b
    ld a, a
    ld b, b

jr_009_447c:
    rst $38
    cp a
    ret nz

    rst $38

jr_009_4480:
    add b
    rst $38
    add b
    push af
    adc d
    rst $38
    cp $81
    rst $38
    add b

jr_009_448a:
    cp $81
    cp l
    jp nz, Jump_009_7fff

    ld b, b
    ld e, a
    ld h, e
    dec l
    ld [hl], $1b
    inc e
    cp $0f
    ld [$080f], sp

jr_009_449c:
    inc c
    dec bc
    rlca
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    rrca
    scf
    jr c, jr_009_448a

    ldh [rIE], a
    rst $38
    nop
    cp a
    ld [hl], b
    db $eb
    inc e
    ld a, e
    add h
    rst $38
    cp a
    ld b, b
    rst $38
    inc c
    db $fd
    ld [de], a
    rst $38
    db $10
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    and b
    ld a, a
    ret nz

    ld a, [$40ff]
    rst $38
    ld a, a
    add e
    nop
    rst $38
    rst $38
    nop
    rst $18
    jr c, @-$09

    ld c, $5d
    and d
    rst $38

jr_009_44d8:
    xor a
    ld d, b
    rst $38
    ld b, $fe
    add hl, bc
    rst $38
    ld [$ffff], sp
    ld [$f8ff], sp
    ld a, a
    adc b
    rst $38
    inc b
    cp $ff
    inc b
    add a
    ld a, a
    ld c, $ff
    di
    rst $38
    rst $38
    nop
    ld a, a
    ldh [$d7], a
    add hl, sp
    or $09

jr_009_44fa:
    rst $38
    ld a, a
    add b
    rst $38
    jr jr_009_44fa

    dec h
    rst $38
    jr nz, @+$01

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    nop
    ld [$00ff], a
    rst $38
    add b
    nop
    add b
    nop
    cp a
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    cp a
    ld [hl], b
    rst $38
    db $eb
    inc e
    ld a, e

jr_009_4520:
    add h
    cp a
    ld c, h
    db $fd
    ld [de], a
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    rst $28
    rst $38
    nop
    rst $38
    ld a, e
    db $fc
    rst $28
    ld l, b
    cp $eb
    ld l, h
    rst $00
    ld b, h
    jp nz, $81c3

    add b
    nop
    add b
    nop
    xor a
    nop
    cp $fd
    inc bc
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
    ld a, a
    add b
    rst $38
    ld h, b
    rst $38
    rst $10
    add hl, sp
    or $09
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld a, [c]
    dec c
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld [$fffe], sp
    add hl, bc

jr_009_4582:
    rra
    rst $28
    ld de, $e0f1
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ldh a, [$ec]
    inc e
    ei
    rlca
    rst $38
    ret nc

    jr nc, jr_009_4520

    ld a, b
    db $f4
    call z, $847c
    rst $38
    ld a, [$fe06]
    ld h, d
    ld a, [hl]
    sub d
    cp $12
    rst $38
    ld a, [$fc16]
    inc d
    db $f4
    inc c
    ld [$fa1e], a

jr_009_45b0:
    cp [hl]
    ld [hl], d
    cp $c2
    db $fc
    nop
    rst $38
    ret nc

    jr nc, jr_009_4582

    jr c, jr_009_45b0

    ld l, h
    cp h
    ld b, h
    rst $38
    ld a, [$fe06]
    ld [hl-], a
    cp [hl]
    ld c, d
    cp $0a
    rst $38
    ld a, [$fc0e]
    inc c
    db $f4
    inc c
    add sp, $18
    cp $b0
    ld [hl], b
    ld hl, sp-$38
    ld a, b
    adc b
    ldh a, [rIE]
    ret nc

    jr nc, jr_009_4605

    ret c

    db $f4
    adc h
    db $fc
    inc b
    rst $38
    ld a, [$fe06]
    jp nz, $22fe

    cp $22
    rst $38
    ld a, [$fe26]
    ld a, $ed
    inc sp
    rst $38
    ld b, c
    cp $bf
    pop bc
    pop af
    adc a
    jp nz, Jump_009_7cbe

    add b
    nop
    xor a
    nop
    ret nz

    and b
    ld h, b
    sub b
    ld [hl], b

jr_009_4605:
    rst $38
    add sp, -$28
    ld a, b
    adc b
    db $f4
    ld l, h
    ld a, h
    sub h
    rst $38
    db $fc
    inc d
    ld a, [$fa16]
    ld d, $fe
    ld a, [bc]
    rst $38
    cp $02
    cp $02
    cp $02
    cp $02

jr_009_4620:
    rst $38
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    add sp, $18
    rst $28
    or b
    ld [hl], b
    ldh [$d0], a
    jr nc, jr_009_4620

    db $10
    cp $f0
    db $10
    ldh a, [rNR10]
    ret nc

    jr nc, @-$1e

    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    and b
    ld h, b
    ret nc

    jr nc, @-$0e

    db $10
    add sp, $18
    rst $38
    ld hl, sp+$08
    db $f4
    inc c
    or h
    ld c, h
    inc a
    call nz, $fcff
    add h
    db $fc
    inc b
    db $fc
    inc [hl]
    db $f4
    call z, $f4ff
    inc c
    cp $3e
    db $dd
    ld h, e
    rst $38
    add c
    cp $7f
    add c
    db $e3
    dec e
    add d
    ld a, [hl]
    db $fc
    nop
    xor a
    nop

jr_009_4671:
    ldh [$f8], a
    jr jr_009_4671

    inc b
    rst $38
    cp $02
    cp $02
    rst $38
    ld bc, $49b7
    rst $38
    ld c, e
    or l
    ei
    sub l
    cp $66
    db $fc
    sub h
    cp $fc
    inc c
    cp $92
    ld a, [c]
    xor $1c
    add b
    nop
    adc e
    nop
    ccf
    rst $38
    ret nz

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
    ei
    inc b
    db $ec
    inc de
    rst $28
    db $10
    rst $38
    sbc a
    ld h, c
    cp $01
    rst $38
    ld [$0cf3], sp
    rst $38
    rst $38
    inc b
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
    ld bc, $06fa
    db $ec
    inc e
    and b
    ldh a, [rP1]
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
    push af
    ld a, [bc]
    ld c, [hl]
    or c
    ld a, l
    add [hl]
    rst $38
    rst $38
    ld bc, $06fd
    rst $38
    ld a, b
    rst $38
    add h
    cp $ff
    inc b
    call nz, $0f3f
    rst $38
    ldh a, [$af]
    nop
    inc bc
    rrca
    inc c
    rra
    db $10
    rst $38
    ccf
    jr nz, @+$81

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, l
    ld b, d
    cp $53
    ld l, h
    cpl
    jr nc, jr_009_471c

    dec e
    rrca
    cp a
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

jr_009_471c:
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld h, b
    cp $2f
    jr nc, @+$15

    inc e
    inc c
    rrca
    inc bc
    cp a
    inc bc
    dec c
    ld c, $17
    jr @+$31

    jr nc, @+$01

    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    sbc a
    ldh [$9f], a
    ldh [rIE], a
    sbc a
    ldh [$8f], a
    ldh a, [rVBK]
    ld [hl], b
    ld b, a
    ld a, b
    cp $21
    ld a, $10
    rra
    inc c
    rrca
    inc bc
    xor a
    nop
    ld b, $0b
    dec c
    rrca
    ld c, $ff
    rla
    jr jr_009_4799

    jr nz, jr_009_47db

    ld b, b
    ld a, a
    ld b, b
    rst $38
    rst $38
    add b
    ld a, [$e785]
    sbc b
    rst $18
    and b
    cp $5f
    ld h, b
    ccf
    inc hl
    cpl
    inc [hl]
    rra
    xor a
    nop
    ld bc, $0302
    ld c, $0f
    rst $38
    dec a
    inc sp
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    db $ed
    sub d
    ld e, d
    ld h, l
    cp $3f
    jr nz, jr_009_47cc

    jr nz, jr_009_47be

    jr nc, jr_009_47b0

    add b
    nop
    add d
    nop
    ret nz

    rst $38
    ldh [rNR41], a

jr_009_4799:
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    db $fc
    inc b
    cp h
    ld b, h
    call c, $dc24
    inc h
    rst $38
    add sp, $18
    ld a, b
    adc b
    cp $8e
    db $fd

jr_009_47b0:
    inc de
    rst $38
    rst $38
    ld hl, $27f9
    pop af
    ld c, a
    ld [c], a
    ld e, [hl]
    ld a, [$dee2]
    ld b, h

jr_009_47be:
    ld a, h
    jr c, jr_009_47c1

jr_009_47c1:
    add b
    nop
    rst $38
    db $fc
    inc b
    cp $02
    cp $02
    cp $02

jr_009_47cc:
    rst $38
    cp $02
    sbc $22
    ld l, d
    sub [hl]
    cp h
    ld l, h
    rst $38
    ld hl, sp-$78
    xor b
    ld a, b
    db $fc

jr_009_47db:
    inc e
    cp $22
    cp $7e
    jp nz, $8ef2

    call nz, $78bc
    xor a
    nop
    ret nz

    ld hl, sp+$38
    db $ec
    inc [hl]
    rst $38
    db $e4
    inc a
    cp $1a
    cp $02
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    rst $38
    ld bc, $926e
    cp $92
    ld l, [hl]
    db $fc
    add h
    add sp, $58
    ld hl, sp-$41
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    cp $02
    cp $02
    rst $38
    ld bc, $01ff

jr_009_4818:
    rst $38
    rst $38
    ld bc, $01ff
    cp $02
    cp $32
    cp $dc
    ld l, h
    ret z

    ld a, b
    jr nc, jr_009_4818

    ret nz

    cp a
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    cp $02
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $03fd
    cp $02
    ld a, [$fe06]
    db $e4
    inc e
    ld [$30f8], sp
    ldh a, [$c0]
    adc e
    nop
    ldh [$f8], a
    jr @+$01

    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    ld bc, $b7ff
    ld c, c
    ld c, e
    or l
    ei
    dec b
    cp $56
    cp $fc
    ld d, h
    xor h
    ld e, h
    db $fc
    sub h
    db $fc
    xor a
    nop
    add b
    ret nz

    ld b, b
    ld [hl], b
    ldh a, [rIE]
    cp h
    call z, $02fe
    cp $02
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    or a
    ld c, c
    ld e, d
    and [hl]
    cp $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c
    ld hl, sp-$01
    ccf
    jr nz, jr_009_48ce

    jr nz, jr_009_4910

    ld b, b
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
    rst $38
    rst $38
    add b
    db $fc
    add e
    cp e
    call nz, $4877
    cp $4f
    ld [hl], a
    dec hl
    inc a
    rra
    jr @+$09

    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $07ff
    ld b, $0f
    ld [$101f], sp
    ccf
    jr nz, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_009_48ce:
    rst $38
    add b
    rst $38
    cp b
    rst $00
    ld [hl], a
    ld c, b
    ld c, a
    ld [hl], b
    cpl

jr_009_48d8:
    jr nc, jr_009_48d8

    rla
    add hl, de
    rrca
    ld c, $03
    ld [bc], a
    ld bc, $00af
    add hl, de
    cpl
    ld [hl], $2f
    jr c, @+$01

    rra
    db $10
    ccf
    jr nz, jr_009_496d

    ld b, b
    ld a, a
    ld b, b
    rst $38
    db $fc
    add e
    rst $38
    add b
    ei
    add h
    rst $20
    sbc b
    cp $9f
    ldh [$7f], a
    ld c, [hl]
    ccf
    ld sp, $bf1f
    ld bc, $3736
    ld e, e
    ld l, h
    ld b, a
    ld a, b
    rst $38
    cpl
    jr nc, jr_009_496d

    ld h, b
    ld a, a

jr_009_4910:
    ld b, b
    cp [hl]
    pop bc
    rst $38
    rst $38
    add b
    db $fd
    add d
    di
    adc h
    sbc a
    ldh [$fe], a
    ld a, a
    ld b, e
    dec l
    ld [hl], $1e
    dec e
    rlca
    cp a
    ld bc, $0e0f
    rla
    jr jr_009_494a

    db $10
    rst $38
    ccf
    jr nz, jr_009_49af

    ld b, b
    ld a, [hl]
    ld b, c
    ld sp, hl
    add [hl]
    rst $38
    rst $38
    add b
    rst $30
    adc b
    rst $08
    or b
    cp a
    ret nz

    cp $7f
    ld h, b
    ld [hl], a
    ld e, b
    ld a, e
    ld b, a
    inc a
    cp a
    ld bc, $3637

jr_009_494a:
    ld e, a
    ld l, b
    ld e, a
    ld [hl], b
    rst $38
    ccf
    jr nz, jr_009_4991

    jr nz, jr_009_49d0

    ld b, e
    ld [hl], a
    ld c, b
    rst $38
    rst $30
    adc b
    rst $28
    sub b
    rst $38
    add b
    rst $18
    and b
    cp $7f
    ld h, b
    ld a, a
    ld d, b
    ld [hl], l
    ld c, [hl]
    dec sp
    cp a
    jr jr_009_499a

    scf
    dec hl

jr_009_496d:
    inc a
    rra
    db $10
    rst $38
    ccf
    jr nz, jr_009_49f3

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    rst $30
    adc b
    call z, $bfb3
    ret nz

    ld a, a
    ld b, b
    cp $3f
    daa
    dec de
    inc e
    inc c
    dec bc
    rlca
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a

jr_009_4991:
    or $09
    rst $38
    rst $30
    ld [$30cf], sp
    rst $38
    ld [bc], a

jr_009_499a:
    ld a, a
    add d
    rst $38
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    ret nz

    db $fd
    inc hl
    cp $3e
    ret nz

    add b
    nop

jr_009_49af:
    add b
    nop
    adc e
    nop
    ld a, [hl]
    rst $38
    add c
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
    push af
    ld a, [bc]
    ld c, [hl]
    or c
    ld a, a

jr_009_49d0:
    add b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld a, d
    rst $38
    add h
    cp $ff
    inc b
    call nz, $0f3f
    rst $38
    ldh a, [$af]
    nop
    ld hl, sp-$0c
    inc c
    cp $02
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $49b7
    ld c, e
    or l
    rst $38

jr_009_49f3:
    ld a, [$fc06]
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    cp $fc
    inc b
    ld hl, sp+$08
    db $fc
    inc d
    db $fc
    cp a
    ld hl, sp-$0c
    inc c
    cp $02
    db $fd
    inc bc
    rst $38
    rst $38
    ld bc, $25db
    and a
    ld e, c
    ld a, [hl]
    add d
    rst $38
    db $f4
    inc l
    db $f4
    inc l
    db $f4
    inc l
    db $fc
    inc b
    db $fc
    db $fc
    add h
    ld hl, sp+$48
    ld d, b
    ldh a, [$bf]
    ld hl, sp-$0c
    inc c
    cp $02
    db $fd
    inc bc
    rst $38
    rst $38
    ld bc, $916f
    sub a
    ld l, c
    ld_long a, $ff06
    db $fc
    and h
    db $fc
    and h
    db $fc
    and h
    db $f4
    inc c
    cp $fe
    ld c, $de
    ld [hl-], a
    ld a, [c]
    xor $3c
    cp a
    ldh a, [$fc]
    inc c
    cp $02
    db $fd
    inc bc
    rst $38
    or a
    ld c, c
    ld c, e
    or l
    xor e
    ld d, l
    cp $56
    rst $38
    db $fc
    ld d, h
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, [$10f0]
    and b
    ld h, b
    ret nz

    add b
    xor a
    nop

jr_009_4a69:
    ldh [$f8], a
    jr jr_009_4a69

    inc b
    rst $38
    cp $02
    cp $02
    rst $38
    ld bc, $49b7
    rst $38
    ld c, e
    or l
    ei
    dec b
    cp $56
    db $fc
    ld d, h
    cp $ac
    ld e, h
    cp $92
    ld a, [c]
    xor $1c
    rst $38
    cp $02
    cp $02
    sbc $22
    ld l, [hl]
    sub d
    rst $38
    ld [$fc16], a
    ld c, h
    ld hl, sp+$48
    cp b
    ld c, b
    rst $38
    add sp, $18
    db $fc
    inc e
    cp $22
    cp $42
    ld a, [$8ef2]
    db $e4
    sbc h
    ld a, b
    nop
    cp a
    inc bc
    inc c
    rrca
    rla
    jr jr_009_4af0

    jr nz, @+$01

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld [hl], l
    ld c, d
    cp $2e
    ld sp, $203f
    cpl
    jr nc, @+$21

    rst $38
    db $fc
    inc b
    cp $02
    cp $02
    cp $02
    rst $38
    cp $02
    sbc $22
    ld l, d
    sub [hl]
    db $fc
    inc c
    rst $38
    ld hl, sp+$48
    add sp, $58
    cp h
    ld e, h
    cp $22
    cp $7e
    jp nz, $8ef2

    call nz, $78bc
    add b

jr_009_4af0:
    nop
    add b
    nop
    add b
    nop
    cp a
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rst $38
    ccf
    jr nz, jr_009_4b40

    jr nz, jr_009_4b82

    ld b, b
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
    rst $38
    rst $38
    add b
    db $fc
    add e
    cp e
    call nz, Call_009_4b77
    ld a, [$764d]
    daa
    inc a
    rra
    nop
    rst $38
    ccf
    jr nz, @+$41

    jr nz, jr_009_4ba4

    ld b, b
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
    rst $38
    rst $38
    add b
    rst $38
    add b
    cp [hl]
    pop bc
    ld a, l
    ld b, d
    ld a, [$645b]
    scf
    add hl, sp
    rrca

jr_009_4b40:
    ld bc, $3fff
    jr nz, jr_009_4b84

    jr nz, jr_009_4bc6

    ld b, b
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    db $fd
    add d
    rst $38
    db $fd
    add d
    di
    adc h
    xor a
    ret nc

    ld e, a
    ld [hl], b
    cp $6f
    ld a, h
    dec sp
    daa
    ld l, $31
    rra
    add b
    nop
    add b
    nop
    cp a
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rst $38
    cpl
    jr nc, jr_009_4bb3

    jr nz, jr_009_4bd5

    ld h, b

Call_009_4b77:
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    cp $81
    ld sp, hl
    add [hl]

jr_009_4b82:
    rst $38
    rst $30

jr_009_4b84:
    adc b
    rst $28
    sub b
    rst $18
    and b
    ld e, a
    ld h, b
    rst $38
    ld e, a
    ld h, b
    cpl
    jr nc, jr_009_4bc8

    jr c, jr_009_4bf0

    ld l, [hl]
    cp $7f
    ld b, e
    ld a, a
    ld b, c
    ld e, l
    ld h, e
    ld a, $9f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_009_4ba4:
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

jr_009_4bb3:
    db $db
    inc h
    cp $3c
    jp $00ff


    rst $38
    nop
    rst $38
    rst $38
    rrca
    inc c
    rla
    jr jr_009_4bf2

    jr nc, jr_009_4c24

    ld h, b

jr_009_4bc6:
    rst $38
    ld a, a

jr_009_4bc8:
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_009_4bd5:
    add b
    cp b
    rst $00
    cp $47
    ld a, b
    ccf
    ld hl, $322f
    rra
    add b
    nop
    add b
    nop
    adc e
    nop
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_009_4bf0:
    rst $38
    nop

jr_009_4bf2:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    or $09
    rst $30
    ld [$32cf], sp
    ld a, a
    add d
    rst $38
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fa], a
    rst $38
    db $10
    db $fc
    inc de
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    di
    inc c

jr_009_4c24:
    rst $18
    jr nz, @+$01

    rst $18
    jr nz, jr_009_4c69

    ret nz

    rst $38
    jr c, @+$01

    ld b, h
    cp $ff
    add h
    and $1d
    adc a
    ld a, [hl]
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$d8ff], sp
    daa
    rst $18
    jr nz, jr_009_4c85

    ret z

    rst $38
    ld [$f7ff], sp
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ld a, [$01fe]
    ld a, c
    add a
    rst $38
    nop
    add b
    nop
    adc e
    nop
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_009_4c69:
    rst $38
    rst $38
    nop
    ei
    inc b
    db $ec
    inc de
    rst $28
    db $10
    rst $38
    sbc a
    ld h, h
    rst $38
    inc b
    ei
    inc b
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

jr_009_4c85:
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    or $0e
    cp $ff
    ld sp, hl
    ccf
    ld hl, $332d
    ld e, $80
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    rlca
    ccf
    jr c, @+$01

    ret nz

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

Call_009_4cb4:
    rst $38
    db $fd
    ld [bc], a
    or $09
    ld c, a
    or d
    ei
    ld b, $fe
    rst $38
    inc b
    rst $38
    ldh a, [rIE]
    ld [$80ff], sp
    nop
    add b
    nop
    adc e
    nop
    add b
    ldh [$60], a
    rst $38
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    cp $02
    cp $02
    cp $02
    sbc $22
    rst $38
    ld l, d
    sub [hl]
    db $fc
    inc c
    ld hl, sp+$48
    ld hl, sp+$48
    rst $38
    cp b
    ld c, b
    add sp, $18
    ldh a, [rNR10]
    ldh a, [$30]
    ld a, [$c878]
    ld hl, sp-$78
    ld hl, sp+$00
    rst $38
    cp $02
    cp $02
    cp $02
    db $76
    adc d
    rst $38
    sub d

jr_009_4d04:
    ld l, [hl]
    db $f4
    inc c
    ld hl, sp-$58
    ld hl, sp-$58
    rst $38
    ld e, b
    xor b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    add $40
    ret nz

    ld b, b
    ret nz

    rst $38
    cp $02
    cp $02
    cp $02
    cp [hl]
    ld b, d
    rst $38
    jp z, $f436

    inc c
    ld hl, sp-$78
    ld hl, sp-$78
    rst $38
    ld l, b
    sbc b
    ldh a, [rNR10]

jr_009_4d30:
    ld hl, sp+$38
    db $fc
    ld b, h
    cp $fc
    add h
    db $e4
    inc e
    adc b
    ld a, b
    ldh a, [$80]
    nop
    add d
    nop
    ret nz

    rst $38

jr_009_4d42:
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    db $fc
    inc b
    cp h
    ld b, h
    call c, $ec24
    inc d
    rst $38
    db $e4
    sbc h
    add sp, -$68
    ld [hl], b
    sub b
    ldh a, [rNR10]
    rst $38
    ret nc

    jr nc, jr_009_4d30

    jr nc, jr_009_4d42

    jr nz, jr_009_4d04

    ld h, b
    add sp, -$40
    ld b, b
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
    xor a
    nop

jr_009_4d74:
    ldh [$f8], a
    jr jr_009_4d74

    inc b
    rst $38
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    rst $38
    cp $02
    cp $02
    cp $02
    cp $02
    rst $38
    jp c, Jump_009_6c26

    sbc h
    ld hl, sp+$48
    ld l, b
    ret c

    cp $f0
    sub b
    ldh a, [$30]
    ld [hl], b
    ret nc

    ldh a, [rP1]
    add b
    nop
    add e
    nop
    dec b
    nop
    add b
    nop
    add b
    nop
    rst $38
    jr nz, jr_009_4de9

    ld b, b
    ld a, a
    adc b
    rst $38
    sub c
    rst $38
    cp $91
    rst $38
    sub c
    rst $38
    ld c, b
    ld a, a
    ccf
    ld a, [$0c0b]
    dec b
    ld b, $03
    ld bc, $0080
    add d
    nop
    inc bc
    rst $38
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$0bff], sp
    inc c
    rlca
    inc b
    rlca
    ld b, $0b
    rrca
    rst $38
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld de, $121f
    rra
    rst $38
    ld [de], a
    rra
    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    rst $38

jr_009_4de9:
    add b
    rst $38
    adc b
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    cp $31
    ccf
    ld de, $081f
    rrca
    rlca
    and b
    ld bc, $8000
    nop
    cp a
    nop
    ld c, $00
    ccf
    nop
    rst $38
    nop
    ldh a, [$3f]
    nop
    ld c, $00
    add b
    nop
    rst $38
    inc a
    nop
    ld c, $00
    add a
    nop
    rlca
    nop
    rst $38
    rlca
    nop
    ld b, $00
    ld c, $00
    db $fc
    nop
    rst $38
    ld c, $00
    ld b, $00
    rlca
    nop
    rlca
    nop
    db $fc
    add a
    nop
    ld c, $00
    inc a
    nop
    rst $38
    ld e, $00
    inc sp
    nop
    ld hl, $2500
    nop
    ldh a, [rNR23]
    nop
    ld [bc], a
    nop
    cp a
    nop
    ld [bc], a
    nop
    jr jr_009_4e43

jr_009_4e43:
    dec h
    nop
    db $fc
    ld hl, $3300
    nop
    ld e, $00
    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    rlca
    dec b
    ccf
    ld a, $ff
    ld e, d
    ld l, l
    xor $99
    xor $99
    rst $20
    sbc h
    cp a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    rlca
    nop
    rra
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    rst $38
    ld a, [hl]
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ldh a, [$03]
    nop
    ld [bc], a
    nop
    rst $38
    ld [hl], b
    rst $08
    ccf
    ldh [$bf], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    cp [hl]
    pop bc
    ld a, a
    add b
    rst $38
    nop
    and b
    rst $38
    nop
    rst $38
    dec a
    inc hl
    ld a, [hl-]
    daa
    dec hl
    ld [hl], $f3
    cp $ff
    rst $38
    ld a, $f3
    rra
    jp hl


    rra
    ld hl, sp+$0f
    rst $38
    ld hl, sp+$0f
    db $fc
    rrca
    cp $0f
    ld l, d
    sbc a
    rst $38
    or $fb
    dec a
    di
    cpl
    ldh a, [$7f]
    ldh [rIE], a
    ld e, a
    ldh [$de], a
    pop hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$cf]
    ld h, b
    rst $18
    jr nz, @+$01

    and b
    rst $38
    rst $18
    ldh [rIE], a
    rst $28
    rst $30
    ld hl, sp-$11
    ldh a, [$fe]
    rst $38
    and b
    ld a, h
    ld h, e
    db $10
    rra
    rrca
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $03ef
    ld [bc], a
    ld a, e
    or a
    call z, $99ee
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $03ef
    ld [bc], a
    ld a, e
    cp l
    add $f7
    adc h
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $03ef
    ld [bc], a
    ld a, e
    cp a
    call z, $b3dc
    add b
    nop
    add b
    nop
    xor a
    nop
    ld a, b
    or h
    call z, Call_009_66da
    rst $38
    ld a, [hl+]
    or $2a
    or $2c
    db $f4
    cpl
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    rlca
    ld e, $1d
    dec hl
    scf
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
    add b
    db $fd
    add e
    or $8f
    and b
    rst $38
    nop
    rst $38
    ld a, a
    rst $30
    adc d
    ld a, l
    rst $20
    inc e
    add a
    ld a, h
    ei
    add a
    ld a, h
    adc [hl]
    ld a, c
    rst $38
    ld b, h
    rst $38
    rst $38
    inc bc
    rst $38
    ld hl, $31ff
    rst $38
    ld sp, $ffff
    ld [hl], d
    rst $18
    rst $30
    sbc [hl]
    db $eb
    inc e
    rst $38
    nop
    rst $38
    rst $38
    nop
    sbc a
    ldh [$ae], a
    ld [hl], c
    rst $38
    ld de, $ffff
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add e
    rst $38
    call nz, $20ff
    rst $38
    ld de, $fefe
    inc de
    dec de
    or $3f
    cp $c1
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    rst $28
    ld b, b
    ret nz

    sbc $b9
    ld h, a
    dec e
    di
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    rst $28
    ld b, b
    ret nz

    sbc $f9
    scf
    adc l
    ld a, e
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    rst $28
    ld b, b
    ret nz

    sbc $79
    rst $20
    dec a
    db $e3
    add b
    nop
    add b
    nop
    add b
    nop
    add d

jr_009_4fc9:
    nop
    ld [hl], b
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld h, b
    sbc $be
    sub l
    ei
    rst $38
    db $f4
    inc c
    db $f4
    inc c
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_009_4fc9

    jr nz, @+$01

    ld hl, sp+$78
    or h
    call z, $847c
    db $fc
    inc b
    and b
    ld hl, sp+$00
    cp a
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, h
    db $fc
    rst $38
    jp c, $fee6

    jp nz, $e23e

    ld l, $f2
    rst $38
    ld e, $f2
    ld a, [de]
    or $9c
    db $f4
    sbc b
    ld hl, sp-$21
    or b
    ldh a, [$d0]
    add sp, $18
    ld hl, sp+$08
    rst $38
    db $f4
    inc c
    ld d, h
    db $ec
    db $fc
    add h
    db $fc
    inc b
    rst $38
    db $f4
    inc c
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    rst $38
    add sp, $18
    ld hl, sp+$78
    cp h
    call nz, $02fe
    cp $fe
    ld [bc], a
    jp nz, $043e

    db $fc
    ld hl, sp-$75
    nop
    ld a, $5d
    ld h, e
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, @+$01

    rra
    db $10
    dec bc
    inc c
    ld b, $07
    dec bc
    rrca
    rst $38
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    rst $38
    ld [de], a
    rra
    ld [hl], b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    ld d, b
    ld a, a
    ld [hl], c
    ld a, a
    ei
    ld sp, $183f
    rra
    rlca
    ld [bc], a
    inc bc
    adc b
    ld bc, $8b00
    nop
    rlca
    rrca
    ld [$1fff], sp
    db $10
    rra
    db $10
    rra
    db $10
    rla
    jr @+$01

    rrca
    ld [$0407], sp
    ld b, $07
    dec bc
    rrca
    rst $38
    ld [$080f], sp
    rrca
    ld de, $111f
    rra
    rst $38
    ld de, $701f
    ld a, a
    ret nz

    rst $38
    sub b
    rst $38
    rst $38
    and d
    rst $38
    and h
    rst $38
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ei
    inc h
    ccf
    ld a, [de]
    rra
    rlca
    ld [bc], a
    inc bc
    and b
    ld bc, $8b00
    nop
    ld a, h
    cp d
    add $ff
    rst $38
    add c
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    cp $3f

jr_009_50c5:
    jr nz, jr_009_50de

    jr jr_009_50d6

    ld c, $0f
    rst $38
    dec bc
    rrca
    ld a, [bc]
    rrca
    inc d
    rra
    dec d
    rra
    rst $38
    dec d

jr_009_50d6:
    rra
    ld h, c
    ld a, a
    pop bc
    rst $38
    add c
    rst $38
    rst $38

jr_009_50de:
    sub c
    rst $38
    and b
    rst $38
    ld h, e
    ld a, a
    ld h, a
    ld a, a
    ld sp, hl
    daa
    ccf
    inc de
    rra
    rrca
    add hl, bc
    cp $0f
    ld [$0c0b], sp
    dec b
    ld b, $03
    xor a
    ld bc, $bd7e
    jp $80ff


    rst $38
    rst $38
    add b
    cp a
    ret nz

    ld e, a
    ld h, b
    scf
    jr c, jr_009_50c5

    rrca
    add hl, bc
    rrca
    ld de, $121f
    rra
    rst $38
    ld [de], a
    rra
    jr nz, jr_009_5151

    jr nz, jr_009_5153

    jr nz, @+$41

    rst $38
    ld b, b
    ld a, a
    adc b
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ei
    sub b
    rst $38
    ld c, b
    ld a, a
    ccf
    rlca
    ld b, $ff
    ld [bc], a
    inc bc
    dec b
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$0ffe], sp
    ld [$080f], sp
    rlca
    inc b
    inc bc
    cp $ee
    sbc c
    xor $99
    ld l, d
    ld e, l
    ccf
    rst $38
    ldh [rIE], a
    ret nz

    ld a, a
    ldh [$3f], a
    call nc, $ff3f
    cp $1f
    cp $1f
    rst $10
    dec sp
    rst $38

jr_009_5151:
    ldh a, [rIE]

jr_009_5153:
    cpl
    ldh a, [$7f]
    ldh [$7f], a
    ldh [$df], a
    pop hl
    rst $38
    rst $18
    ldh [$f0], a
    rst $08
    ldh [$df], a
    ldh [$df], a
    rst $38
    ld h, b
    rst $18
    jr nz, @+$01

    or b
    rst $28
    rst $38
    ldh [$fb], a
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    cp [hl]
    pop bc
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    adc h
    or a
    call z, $eed5
    ld a, a
    rst $38
    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    db $ec
    rra
    cp $0f

jr_009_518e:
    rst $38
    rst $38

jr_009_5190:
    rrca
    rst $38
    dec c
    xor $19
    rst $38
    ld hl, sp-$01
    rst $38
    ldh a, [$9f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rIE], a
    ccf
    ldh [$3c], a
    db $e3
    jr c, jr_009_518e

    jr c, jr_009_5190

    rst $38
    jr @-$07

    ld [$2cff], sp
    ei
    ld a, a
    ld hl, sp-$01
    ld a, a
    ld hl, sp+$3f
    ei
    rst $38
    db $fc
    rst $30

jr_009_51ba:
    jr jr_009_51ba

    ld l, a
    or b
    cp $e1
    jr c, jr_009_51e9

    rra
    cp $dc
    or e
    call c, Call_009_56b3
    ld a, c
    ccf
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    xor b
    ld a, a
    rst $38
    db $fc
    ccf
    db $fc
    ccf
    cp e
    ld [hl], a
    rst $38
    ldh [rIE], a
    rst $18
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    jp $ffff


    add b

jr_009_51e9:
    pop hl
    sbc [hl]
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, c
    sbc $ff
    ret nz

    rst $38
    rst $38
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp $ff
    ret nz

    or a
    ld a, b
    rst $28
    rra
    ldh a, [rIE]
    rst $18
    ccf
    or b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    rst $38
    db $ec
    ccf
    cp $1f
    cp $1f
    push de
    dec sp
    rst $38
    rst $38
    ldh a, [$ef]
    pop af
    ld a, a
    ldh [rSVBK], a
    rst $28
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    ldh [$df], a
    rst $38
    ld [hl], b
    rst $08

jr_009_5230:
    cp a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$bf], a
    ld a, a
    cp $e8
    jr @-$16

    jr @-$2e

    jr nc, jr_009_5230

    rst $38
    dec e
    di
    dec e
    di
    ld a, [de]
    or $bf
    rst $38
    rst $38
    ld [hl], d
    rst $38
    ld hl, $31ff
    rst $38
    ld sp, $ffff
    ld sp, $73ff
    sbc $ff
    sbc h
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    ldh [rIE], a
    sbc a
    ld [hl], c
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld bc, $02ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, [$80ff]
    ld sp, hl
    add a
    rst $38
    nop
    rst $38
    adc l
    ld a, e
    adc l
    ld a, e
    adc d
    ld a, [hl]
    rst $18
    rst $38
    rst $38
    add hl, sp
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    rst $38
    jr @+$01

    add hl, sp
    rst $28
    rst $30
    adc $ff
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc a
    rst $38
    di
    ld c, $3f
    ret nz

    rra
    ldh [$1f], a
    ldh [rIE], a
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    cp $ff
    db $10
    add hl, de
    rst $30
    dec a
    cp $df
    rst $38
    dec l
    di
    dec l
    di
    ld a, [hl+]
    or $df
    rst $38
    rst $38
    db $e4
    rst $38
    ld b, d
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    rst $38
    ld h, e
    rst $38
    rst $20
    cp l
    sbc $39
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    pop bc
    rst $38
    ld a, $e3
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
    cp $03
    rst $38
    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
    inc bc
    ei
    ld b, $ff
    cp $01
    rst $38
    ld [c], a
    rst $38
    ld b, c
    rst $38
    ld hl, $31ff
    rst $38
    rst $38
    ld sp, $33ff
    cp $6f
    call c, $80ff
    rst $38
    rst $38
    nop
    rst $18
    ldh [$9f], a
    ld [hl], c
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
    add c
    rst $38
    rst $38
    ld [bc], a
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

jr_009_5358:
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    inc bc
    and $1e
    db $fd
    ei
    cp $bf
    pop bc
    cp a
    pop bc
    ld e, l
    ld h, e
    ld a, $8b
    nop
    ld a, b
    db $f4
    call z, $3cff
    db $e4
    inc e
    db $f4

jr_009_5375:
    sbc h
    db $f4
    sub h
    db $fc
    ei
    sbc b
    ld hl, sp-$58
    ld hl, sp-$10
    and b
    ld h, b
    rst $38
    ret nc

    jr nc, jr_009_5375

    db $10

jr_009_5386:
    add sp, $18
    ld a, b
    add sp, -$01
    inc [hl]
    call z, $0cf4
    db $e4
    inc e
    db $e4
    inc e
    rst $38
    db $e4
    inc e
    db $e4
    inc e
    ld [hl], h
    adc h
    ld hl, sp+$08
    rst $38
    add sp, $18
    ldh a, [rNR10]
    ret c

    jr c, jr_009_5358

    ld l, h
    ld a, [$c47c]
    db $fc
    add h
    ld hl, sp+$00

jr_009_53ac:
    adc e
    nop
    ldh a, [$f8]
    add sp, -$01
    jr jr_009_53ac

    adc b
    ld hl, sp-$38

jr_009_53b7:
    ld hl, sp-$38
    ld hl, sp-$01
    ret z

    ld hl, sp-$28
    ld a, b
    ldh a, [rSVBK]
    and b
    ld h, b
    rst $38
    ret nc

    jr nc, jr_009_53b7

    db $10
    add sp, $18
    ret c

    jr c, @+$01

    call nz, $f47c
    inc c
    db $f4
    inc c
    db $f4
    inc c
    rst $38
    db $f4
    inc c
    db $f4
    inc c
    call nc, $f86c
    adc b
    rst $38
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_009_5386

    ld h, b
    cp $60
    ldh [$60], a
    and b
    ldh [rNR41], a
    ret nz

    adc e
    nop
    inc a
    jp c, $ffe6

    ld a, [hl]
    jp nz, $e23e

jr_009_53f9:
    ld a, $e2
    ld a, [hl-]
    and $fb
    inc a
    db $e4
    ld l, b
    ret c

    ldh a, [$a0]
    ld h, b
    rst $38
    ret nc

    jr nc, jr_009_53f9

    db $10
    add sp, $18
    ld hl, sp-$38
    rst $38
    ld [hl], h
    adc h
    db $e4
    inc e
    call nz, $c43c
    inc a
    rst $38
    call nz, $c43c
    inc a
    db $e4
    inc e
    ld hl, sp+$08
    rst $38
    add sp, $18
    ld hl, sp+$78
    cp h

jr_009_5426:
    call nz, $02fe
    cp $fe
    ld [bc], a
    jp nz, $043e

    db $fc
    ld hl, sp-$01
    jr nz, @-$1e

    jr @-$06

    sub h
    db $fc
    sbc h
    db $f4
    rst $38
    sbc h
    db $f4
    or h
    db $ec
    ld l, b
    ld hl, sp-$30
    jr nc, @+$01

jr_009_5444:
    ldh a, [rNR10]
    ld l, b
    ld hl, sp+$38
    ret z

    db $f4
    inc c
    rst $38
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    ld h, h
    sbc h
    rst $38
    db $f4
    inc c
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    rst $38
    ldh a, [rNR10]
    ret nc

    jr nc, jr_009_5444

    jr nz, jr_009_5426

    ld b, b
    and b
    add b
    nop
    add b
    nop
    nop
    add d
    nop
    rlca
    rst $38
    ld e, $19
    jr nc, jr_009_54a4

    jr nz, jr_009_54b6

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

    cp $20
    ccf
    db $10
    rra
    inc c
    rrca
    inc bc
    add b
    nop
    cp a
    rlca
    ld e, $19
    jr nc, @+$31

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
    cp $40
    ld a, a
    ld b, c
    ld a, [hl]
    cpl
    add hl, sp

jr_009_54a4:
    rra
    adc e
    nop
    rlca
    dec de
    inc e
    rst $38
    jr z, jr_009_54e4

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    add b
    rst $38

jr_009_54b6:
    add b
    rst $38
    add a
    rst $38
    ld e, a
    ld a, b
    cp $7f
    ld h, b
    ccf
    ld a, $1e
    ld de, $af1f
    ld bc, $0f03
    inc c
    jr @+$19

    rst $38
    jr nz, jr_009_550d

    jr nz, jr_009_550f

    ld b, b
    ld a, a
    ld b, e
    ld a, a
    rst $38
    ld c, l
    ld a, [hl]
    ld a, a
    ld [hl], c
    ld e, a
    ld h, c
    ccf
    ld [hl+], a
    or $2f
    jr nc, jr_009_54f2

    ld e, $11
    rra

jr_009_54e4:
    xor a
    nop
    rlca
    ld e, $19
    jr nc, jr_009_551a

    rst $38
    jr nz, jr_009_552d

    ld b, e
    ld a, a
    ld c, a
    ld a, h

jr_009_54f2:
    ld a, l
    ld [hl], d
    rst $38
    or l
    set 6, a
    adc c
    rst $38
    add b
    ld a, a
    ld b, b
    cp $2f
    jr nc, @+$12

    rra
    rrca
    ld [$af0f], sp
    nop
    inc bc
    ld c, $0d
    ld a, [de]
    rla
    rst $38

jr_009_550d:
    rla
    inc e

jr_009_550f:
    cpl
    jr c, @+$81

    ld [hl], b
    rst $20
    sbc e
    rst $38
    rst $38
    add h
    ld a, a
    ld b, b

jr_009_551a:
    ccf
    jr nz, jr_009_553c

    db $10
    cp $0b
    inc c
    inc b
    rlca
    rrca
    ld [$800f], sp
    nop
    add d
    nop
    add b
    sbc $40

jr_009_552d:
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    xor a
    nop
    ret nz

    ld [hl], b
    or b
    ld e, b
    add sp, -$01

jr_009_553c:
    add sp, $38
    db $f4
    inc e
    cp $4e
    dec a
    jp $ffff


    add b
    rst $38
    nop
    db $fd
    ld b, $fb
    dec bc
    cp $d0
    jr nc, @+$22

    ldh [$f0], a
    db $10
    ldh a, [$aa]
    jr nc, jr_009_55c8

    add b
    ldh [rIE], a
    cp b
    ret c

    call nz, $043c
    db $fc
    ld [bc], a
    cp $ff
    ld [bc], a
    cp $02
    cp $02
    cp $04
    db $fc
    cp $04
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    adc d
    nop
    ld [hl], b
    sbc b
    cp a
    ld hl, sp-$48
    ret c

    call nz, $023c
    cp $ff
    ld [bc], a
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    cp $02
    cp $82
    ld a, [hl]
    db $f4
    sbc h
    ld hl, sp-$55
    nop
    ld h, b
    ldh a, [$b8]
    ld hl, sp-$01
    inc [hl]
    db $fc
    ld [bc], a
    cp $02
    cp $01
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    pop hl

jr_009_55a6:
    rst $38
    ld a, [$fe1e]
    cp $06
    db $fc
    inc a
    cp b
    ld c, b
    ld hl, sp-$51
    add b
    ret nz

    jr nc, jr_009_55a6

    ld [$fff8], sp
    inc b
    db $fc
    inc b
    db $fc
    ld a, [hl]
    cp $ba
    add $ff
    cp $42
    and $3a
    cp $02

jr_009_55c8:
    ld a, [$fe26]
    db $fc
    call nz, $1ce4
    sbc $22
    cp $af
    nop
    ret nz

    jr nc, @-$0e

    inc e
    db $fc
    rst $38
    xor $f2
    cp $02
    cp [hl]
    ld b, d
    cp d
    ld h, [hl]
    rst $38
    cp $22
    cp $02
    cp [hl]
    ld h, d
    xor d
    db $76
    cp $ee
    ld [hl], $ff
    add hl, bc
    ld a, l
    sub e
    cp $af
    nop
    ret nz

    or b
    ldh a, [$ee]
    ld e, $ff
    rst $30
    add hl, bc
    rst $38
    ld sp, $43fd
    cp $02
    rst $38
    sbc [hl]
    ld h, d
    xor $72
    xor [hl]
    ld [hl], d
    adc $36
    cp $ff
    add hl, bc
    ld sp, hl
    rla
    ld a, c
    rst $30
    adc $af
    nop
    inc bc
    ld c, $0d
    ld a, [de]
    rla
    rst $38
    rla
    inc e
    cpl
    jr c, jr_009_56a0

    ld [hl], d
    db $e4
    sbc e
    rst $38
    rst $38
    add c
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_564b

    db $10
    cp $0b
    inc c
    inc b
    rlca
    rrca
    ld [$bf0f], sp
    rlca
    dec de
    inc e
    cpl
    ld [hl-], a
    ld a, h
    ld h, e
    rst $38
    rst $28
    sub c
    rst $30
    adc b
    cp a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld e, a
    ld h, b
    ld a, a
    ld b, b

jr_009_564b:
    ccf
    jr nz, jr_009_568d

jr_009_564e:
    jr nz, jr_009_564e

    ld l, a
    ld d, b
    ld [hl], e
    ld c, h
    ld e, a
    ld h, e
    inc a
    cp a
    inc bc
    rrca
    inc c
    dec de
    rla
    ld l, $3d
    rst $38
    dec l
    ld a, [hl-]
    ld e, a
    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    ld a, $da
    cpl
    ld sp, $1f2f
    nop
    xor a
    nop
    ld bc, $0607
    inc c
    dec bc
    rst $38
    inc de
    rra
    cpl
    inc a
    ccf
    jr nc, jr_009_5705

    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_009_568d:
    ld b, b
    ccf
    inc hl
    cp $2f
    inc [hl]
    ld e, $19
    inc c
    dec bc
    rlca
    adc e
    nop
    inc bc
    rrca
    inc c
    rst $38
    jr jr_009_56b7

jr_009_56a0:
    ld hl, $2d3f
    ld a, $6f
    ld [hl], b
    rst $38
    ld e, l
    ld h, d
    ld a, [hl]
    ld b, c
    ld e, a
    ld h, b
    ccf

jr_009_56ae:
    jr nz, jr_009_56ae

    jr z, jr_009_56e9

    rla

Call_009_56b3:
    dec de
    rrca
    inc c
    rlca

jr_009_56b7:
    xor a
    nop
    inc bc
    rrca
    inc c
    jr jr_009_56d5

    rst $38
    jr nz, jr_009_5700

    ld hl, $473f
    ld a, [hl]
    ld e, a
    ld a, c
    rst $38
    ld a, [hl]
    ld h, c
    ld [hl], a
    ld c, b
    ld l, a
    ld d, b
    ccf

jr_009_56cf:
    jr nz, jr_009_56cf

    dec sp
    inc h
    rla
    dec de

jr_009_56d5:
    rrca
    inc c
    rlca
    xor a
    nop
    inc bc
    inc c
    rrca
    inc de
    inc e
    rst $38
    rra
    ld [de], a
    ld a, a
    ld h, d
    cp a
    jp nz, $80ff

    rst $38

jr_009_56e9:
    cp [hl]
    pop bc
    ld a, a
    ld h, c
    rra
    ld de, $111e
    cp $0f
    ld [$0e09], sp
    ld e, $11
    rra
    cp a
    rlca
    add hl, de
    ld e, $37
    jr z, jr_009_572f

jr_009_5700:
    ld sp, $5fff
    ld h, c
    ld e, a

jr_009_5705:
    ld h, [hl]
    ld [hl], a
    ld c, d
    ld a, e
    ld b, h
    rst $38
    cp e
    call nz, $80ff
    rst $38
    sub b
    ld l, a
    ld l, b
    sub $05
    ld b, $05
    ld b, $03
    xor a
    nop
    ret nz

    or b
    ldh a, [$ee]
    ld e, $ff
    rst $30
    ld c, c
    sbc a
    ld h, c
    db $fd
    inc hl
    cp $02
    rst $38
    sbc [hl]
    ld h, d
    xor $72
    xor [hl]

jr_009_572f:
    ld [hl], d
    adc $36
    cp $ff
    add hl, bc
    ld sp, hl
    rla
    ld a, c
    rst $30
    adc $bf
    ret nz

    or b
    ld [hl], b
    add sp, $58
    sbc b
    ld l, b
    rst $38
    db $f4
    inc l
    db $fc
    inc b
    sbc [hl]
    ld h, d
    rst $38
    ld h, c
    rst $38
    rst $38
    ld h, c
    ld a, [$9c66]
    ld h, h
    ld hl, sp+$08
    cp $ec
    inc e
    xor [hl]
    ld [hl], d
    jp nc, $3cee

    xor a
    ret nz

    ldh a, [$e8]
    jr jr_009_57d6

    adc h
    rst $38
    cp h
    ld d, h
    ld a, [$ea56]
    ld d, [hl]
    ld_long a, $ff86
    ld a, [hl]
    add d
    jp c, $ee36

    ld [hl-], a
    or $0a
    cp $ec
    inc e
    ret nc

    jr nc, @-$46

    ret z

    ld hl, sp-$52
    nop
    ldh [$98], a
    ld a, b
    db $fc
    rst $38
    db $f4
    inc c
    ld a, [$fe0e]
    ld a, [bc]
    ld [hl], $ca
    rst $38
    adc $32
    cp $0a
    db $fc
    inc c
    sbc h
    db $f4
    cp $f8
    ld c, b
    ld d, b
    ldh a, [$e0]
    and b
    ldh [$8b], a
    nop
    ldh [$98], a
    ld a, b
    rst $08
    inc b
    db $fc
    ld a, [$fe06]
    ld c, d

jr_009_57a9:
    rst $38
    cp $4a
    cp $4a
    ld a, [hl]
    add d
    ld a, h
    or h
    cp $f4
    call z, $38e8

jr_009_57b7:
    jr nc, jr_009_57a9

    ret nz

    xor a
    nop
    ret nz

    jr c, jr_009_57b7

    inc l
    db $f4
    rst $38
    ld [hl], h
    call z, $a6fa
    jp z, $fe36

    ld [de], a
    rst $38
    ld a, [hl]
    add d
    cp $82
    or $1a
    or $1a
    cp $fb
    dec b

jr_009_57d6:
    pop af
    rst $08
    cp $3e
    ldh [$af], a
    nop
    ret nz

    ld [hl], b
    or b
    ret z

    jr c, @+$01

    db $f4
    ld c, h
    cp $46
    ei
    ld b, l
    rst $38
    ld bc, $7fff
    add c
    cp $82
    db $fc
    add h
    ld a, h
    add h
    cp $fc
    inc c
    sbc $32
    ld a, [c]
    xor $3c
    cp a
    add b
    ld h, b
    ldh [$5c], a
    cp h
    sbc d
    ld h, [hl]
    rst $38
    cp $82
    cp $02
    db $f4
    inc c
    inc a
    call nz, $dcff
    db $e4
    db $76
    adc $bf
    ld c, c
    ld sp, hl
    rla
    cp $d9
    scf
    ld l, [hl]
    xor $c0
    ld b, b
    add b
    nop
    cp a
    inc a
    ld b, [hl]
    ld a, d
    ld a, [hl]
    ld b, d
    ld a, e
    ld b, a
    rst $38
    inc a
    ccf
    ld b, b
    ld a, a
    ld a, b
    ld b, a
    cp $81
    rst $38
    pop af
    adc [hl]
    rst $20
    sbc a
    rst $28
    sbc b
    cp a
    ret nc

    rst $38
    ld a, a
    ld d, d
    ld a, a
    ld d, b
    ccf
    jr z, jr_009_5870

    scf
    cp $1f
    ld e, $17
    jr jr_009_5865

    inc de
    rra
    cp $02
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0080
    add b
    nop
    cp a
    jr c, @+$66

    ld e, h
    ld a, [hl]
    ld b, d
    sbc $e2
    rst $38
    inc a
    db $fc
    ld b, d
    cp $e6
    cp d

jr_009_5865:
    rst $28
    pop af
    rst $38
    di
    db $ed
    db $fd
    rra
    rst $38
    and e
    rst $38
    ld b, c

jr_009_5870:
    rst $38
    rst $38
    ld c, c
    rst $38
    ld b, c
    cp $e2
    cp $5e
    rst $38
    ld e, h
    db $ec
    cp d
    and $6e
    or d
    ld a, [hl]
    cp [hl]
    or $60
    and b
    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    dec b
    ld b, $04
    rlca
    rst $38
    inc b
    rlca
    ld b, $07
    ld a, [hl]
    ld a, a
    ld a, d
    ld b, a
    rst $38
    ld d, c
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    ret nz

    cp a
    ldh [$9f], a
    cp $81
    cp $81
    rst $38
    cp $81
    cp h
    jp Jump_009_437c


    ld e, h
    ld h, a
    cp $24
    ccf
    inc a
    ccf
    ld a, d
    ld b, a
    ld a, l
    add b
    nop
    add b
    nop
    add b
    ld bc, $3fbf
    dec a
    inc hl
    jr z, @+$41

    jr nc, @+$41

    rst $38
    jr nz, jr_009_5914

    ld b, b
    ld a, a
    ld h, b
    ld e, a
    and b
    rst $18
    rst $38
    ldh [$9f], a
    ldh a, [$8f]
    db $fc
    add e
    cp h
    jp Jump_009_7cff


    ld b, e
    ld c, h
    ld [hl], a
    inc h
    ccf
    inc [hl]
    ccf
    cp $7c
    ld c, a
    ld a, h
    ld h, a
    ld a, [de]
    dec de
    ld bc, $0080
    add b
    nop
    adc b
    nop
    ld bc, $3fbf
    dec a
    inc hl
    add hl, hl
    ccf
    ld sp, $ff3f
    jr nz, jr_009_5946

    ld b, b
    ld a, a
    ld h, b
    ld e, a
    ldh [$9f], a
    rst $38
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$8f]

jr_009_5914:
    or b
    rst $08
    rst $38
    ld a, b
    ld b, a
    inc [hl]
    cpl
    jr z, jr_009_595c

    ld a, b
    ld e, a
    cp $78
    ld c, a
    jr c, jr_009_5953

    inc e
    rra
    inc bc
    adc e
    nop
    rra
    ld l, $31
    rst $38
    ld e, l
    ld h, e
    ld h, c
    ld e, a
    add c
    rst $38
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ld a, [$3f20]
    jr jr_009_5962

    rlca
    nop
    cp a

jr_009_5946:
    dec a
    ld [hl], a
    ld c, [hl]
    ld a, e
    ld a, a
    cp e
    rst $00
    rst $38
    rst $38
    adc [hl]
    rst $38
    sub c
    rst $38

jr_009_5953:
    and h
    rst $38
    and b
    rst $38
    sbc a
    pop af
    sbc a
    cp $6d

jr_009_595c:
    ld [hl], e
    ld a, e
    ld b, a
    ld a, [$3f3d]

jr_009_5962:
    add hl, de
    rra
    rlca
    ld bc, $0080
    add b
    nop
    adc b
    nop
    add b
    db $fd
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld hl, sp+$78
    ret z

    rst $38
    sbc b
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $ff
    ld b, $fa
    dec b
    ei
    rrca
    pop af
    rrca
    pop af
    rst $38
    rrca
    pop af
    rlca
    ld sp, hl
    dec c
    ei
    ld a, [bc]
    cp $fe
    ld b, $fe
    inc b
    db $fc
    inc b
    db $fc
    ld hl, sp-$80
    nop
    add d
    nop
    ret nz

    rst $18
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    rst $38
    ld a, h
    cp h
    inc a
    db $e4
    call z, $04fc
    db $fc
    rst $38
    ld [bc], a
    cp $02
    cp $05
    ei
    inc bc
    db $fd
    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rrca
    pop af
    rrca
    pop af
    rst $38
    dec c
    di
    ld c, $fa
    ld a, [bc]
    cp $0c

jr_009_59c8:
    db $fc
    cp $0c
    db $fc
    inc c
    db $fc
    jr jr_009_59c8

    ldh [$80], a
    nop
    add b
    nop
    xor l
    nop
    ret nz

    and b
    ld h, b
    and b
    rst $38
    ld a, h
    cp h
    ld a, h
    and h
    ld l, h
    cp h
    inc h
    db $fc
    rst $38
    jp nz, $02fe

    cp $05
    ei
    rlca
    ld sp, hl
    rst $38
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    dec b
    ei
    rst $38
    ld c, $f2
    ld c, $fa
    ld a, [bc]
    cp $0c

jr_009_59fe:
    db $fc
    cp $1c
    db $f4
    inc d
    db $fc
    jr jr_009_59fe

    ldh [$af], a
    nop
    ret nz

    db $fc
    inc a
    jp c, $ffe6

    xor [hl]
    ld [hl], d
    ld h, c
    cp a

jr_009_5a13:
    ld h, c
    cp a
    ld h, c
    cp a
    rst $38
    ld h, c
    cp a
    ld hl, $c2ff

jr_009_5a1d:
    cp $02
    cp $fa
    inc b
    db $fc
    jr jr_009_5a1d

    ldh [rP1], a
    cp a
    cp h
    xor $72
    sbc $fe
    db $dd
    db $e3
    rst $38
    rst $38
    add hl, sp
    rst $38
    ld b, l
    rst $38
    sub e
    rst $38
    add e
    rst $38
    ld a, l
    rst $20
    db $fd
    rst $18

jr_009_5a3d:
    ld a, e
    and a
    ccf
    pop de
    cp $3e
    sbc $34
    call c, $f818
    ldh [$8b], a
    nop
    ld b, $0f
    add hl, bc
    rst $38
    ld c, $09
    dec bc
    inc c
    rla
    jr jr_009_5a75

    db $10
    rst $38
    cpl
    jr nc, @+$01

    ldh [$fd], a
    ld [hl+], a
    rst $38
    ld hl, $fffe
    jr nz, jr_009_5a13

    ld [hl], a
    rst $18
    ret c

    rrca
    adc e
    nop
    inc bc
    rlca
    inc b
    rst $38
    rlca
    inc b
    dec b
    ld b, $0b
    inc c
    rla

jr_009_5a75:
    jr @+$01

    rra
    db $10
    rst $28
    ldh a, [rIE]
    jr nz, jr_009_5a3d

    ld h, b
    cp $bf
    ld h, e
    xor l
    db $76
    ld [hl], $fd
    rst $08
    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    rlca
    inc b
    rrca
    ld [$0ffe], sp
    ld [$080f], sp
    dec bc
    inc c
    rlca
    add b
    nop
    cp a
    rrca
    ld e, $19
    ld a, $29
    dec sp
    inc h
    rst $38
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    cp $41
    cp $df
    ld h, b
    cp a
    ld h, a
    ld e, a
    ret c

    sbc a
    add b
    nop
    add b
    nop
    xor a
    nop
    rlca
    rra
    jr jr_009_5aee

jr_009_5abf:
    jr nc, jr_009_5abf

    cpl
    jr nc, jr_009_5af3

    jr nc, jr_009_5aed

    jr c, jr_009_5ae7

    add b
    nop
    add b
    nop
    xor a
    nop
    ld bc, $0302
    dec b
    ld b, $fe
    dec b
    ld b, $05
    ld b, $04
    rlca
    inc bc
    add b
    nop
    cp a
    jr nc, @+$81

    ld c, a
    ld [hl], a
    ld c, b
    ld e, a
    ld h, b
    rst $38
    cp a

jr_009_5ae7:
    ret nz

    rst $38
    add d
    rst $38
    add d
    rst $28

jr_009_5aed:
    sub b

jr_009_5aee:
    cp $f7
    adc h
    rst $38
    di

jr_009_5af3:
    rst $38
    adc b
    rst $38
    add b
    nop
    add b

jr_009_5af9:
    nop
    xor a
    nop
    rlca
    rra
    jr jr_009_5b2f

jr_009_5b00:
    jr nc, jr_009_5b00

    ccf
    jr nz, @+$41

    jr nz, jr_009_5b35

    ld sp, $8b1f
    nop
    jr jr_009_5af9

    db $f4
    rst $38
    db $f4
    inc c
    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld bc, $83ff
    cp $ff
    ld a, l
    cp $02
    rst $30
    adc l
    rst $38
    adc e
    nop
    jr nc, @-$26

    add sp, -$01
    ld [hl], h

jr_009_5b2f:
    adc h
    ld a, [$fe06]
    ld [bc], a
    db $fd

jr_009_5b35:
    inc hl
    rst $38
    rst $38
    inc hl
    ld a, a
    add c
    rst $38
    ld h, e
    rst $38
    dec e
    cp $fe
    add d
    ld a, [$6646]
    jp c, $82fe

    nop
    ld b, $ff
    rrca
    add hl, bc
    ld e, $19
    dec hl
    inc [hl]
    ccf
    jr nz, @+$01

    ld e, a
    ld h, b
    rst $38
    ret nz

    cp $41
    rst $38

jr_009_5b5b:
    jr nz, jr_009_5b5b

    rst $38
    jr nz, @+$01

    daa
    xor a
    ld a, b
    rst $18
    add b
    nop
    cp a
    ld h, b
    or b
    ret nc

    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    db $fc
    inc b
    db $fc
    ld b, h
    cp $46
    cp $02
    cp $fe
    add $fe
    ld a, [hl-]
    db $f4
    adc h
    db $fc
    adc e
    nop
    jr jr_009_5bc2

    daa
    rst $38
    dec sp
    inc h
    cpl
    jr nc, jr_009_5ba9

    db $10
    cpl
    ld sp, $3fff
    ld hl, $e8d7
    rst $38
    ld b, [hl]
    rst $38
    ld b, c
    cp $ff

jr_009_5b98:
    ld b, b
    rst $38
    ld a, b
    rst $38
    call nz, $827f
    nop
    jr @+$01

    ccf
    daa
    dec sp
    inc h
    cpl
    jr nc, jr_009_5be8

jr_009_5ba9:
    jr nz, @+$01

    ld e, a
    ld h, c
    rst $38
    pop bc
    rst $30
    ld c, b
    rst $38
    ld b, [hl]
    cp $7f
    pop hl
    rst $18
    or b
    cp a
    ret z

    rst $38
    add b
    nop
    or a
    jr nc, jr_009_5b98

    add sp, $18

jr_009_5bc2:
    ld hl, sp+$08
    rst $38
    db $fc
    inc b
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc b
    cp $fc
    inc e
    db $f4
    db $ec
    xor $1a
    cp $ff
    db $fc
    add h
    cp $82
    cp [hl]
    jp nz, $c1bf

    cp $7f
    ld b, c
    ld e, a
    ld h, c
    dec l
    inc sp
    ld e, $80
    nop

jr_009_5be8:
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    rlca
    rra
    jr jr_009_5c32

    jr nz, @+$81

    ld b, b
    cp $7f
    ld b, b
    ld a, [hl]
    ld b, c
    ld e, l
    ld h, e
    ld a, $80
    nop
    xor a
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    cp a
    ccf
    ld e, a
    ld h, c
    cp e
    push bc
    db $fd
    add d
    cp $ff
    add d
    cp $83
    ld a, e
    ld b, a
    ld a, $82
    nop
    ld h, b
    rst $38
    or b
    ret nc

    add sp, $18
    db $f4
    inc c
    db $fc
    inc b
    rst $38
    ld a, [$fe46]
    ld b, [hl]
    cp $02
    cp $c6
    cp $fe
    ld a, [hl-]
    db $fc
    inc b
    db $f4

jr_009_5c32:
    adc h
    ld hl, sp-$80
    nop
    cp a
    inc bc
    dec b
    ld b, $0b

jr_009_5c3b:
    inc c
    rrca
    ld [$0cfe], sp
    dec bc
    inc c
    dec bc
    rlca
    inc b
    inc bc
    add sp, $03
    ld [bc], a
    ld bc, $8b00
    nop

jr_009_5c4d:
    jr jr_009_5c3b

    db $f4
    rst $38
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fe06]
    ld [de], a
    rst $38
    cp $12
    cp $02
    cp $0e
    cp $f2
    cp $fa
    ld b, $ff
    dec b
    db $ed
    dec de
    cp $82
    nop
    jr jr_009_5c4d

    db $ec
    db $f4
    inc c
    db $fc
    inc b
    ld_long a, $ff06
    cp $12
    cp $12
    cp $02
    cp $0e
    cp $fe
    ld a, [c]
    ld a, [$f706]
    dec c
    rst $38
    cp $fe
    add d
    cp [hl]
    jp nz, $665a

    inc a
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    cp $82
    cp [hl]
    jp nz, $c1bf

    ld a, a
    ld b, c
    cp $7f
    ld b, c
    ld e, a
    ld h, c
    dec l
    inc sp
    ld e, $80
    nop
    add b
    nop
    adc e
    nop
    rlca
    ld a, e
    ld a, h
    rst $38
    rst $28
    sub d
    rst $38
    add d
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    db $fd
    add e
    ei
    add a
    db $fc
    add e
    rst $38
    add b
    cp $bf
    ret nz

    rst $18
    xor $3f
    ld sp, $bf1f
    rrca
    ccf
    jr nc, jr_009_5d4c

    ld b, a
    rst $38
    adc a
    rst $38
    ld sp, hl
    xor a
    ld a, c
    adc a
    rst $38
    rrca
    db $fc
    rrca
    rst $38
    ld [hl], a
    adc h
    ei
    inc b
    ld a, h
    add e
    cp $8f
    cp $bf
    pop de
    ld sp, hl
    rst $20
    inc sp
    cpl
    inc e
    cp a
    ld a, b
    rst $00
    rst $38
    db $ed
    or d
    ldh [$9f], a
    rst $38
    ld a, b
    ld b, a
    ld c, [hl]
    ld [hl], c
    di
    adc h
    db $dd
    and d
    rst $38
    ld a, a
    ld h, b
    cp a
    ret nc

    rst $38
    adc e
    rst $20
    sbc h
    cp $ff
    add h
    rst $38
    add d
    ld a, l
    ld b, e
    ld a, $82
    nop
    ld hl, sp-$01
    ld a, a
    add a
    add b
    ld a, a
    add b
    ld a, a
    rlca
    ld hl, sp-$01
    rlca
    ld hl, sp+$03
    db $fc
    add b
    ld a, a
    ld [hl], b
    adc a
    rst $38
    cp $e1
    rst $18
    cp $7f
    ld c, c
    or [hl]
    adc $ff
    cp h
    call nz, $8cf4
    ld a, [$fe86]
    add d
    cp $fe
    add d
    cp [hl]
    jp nz, $665a

    inc a
    add b
    nop
    add b
    nop
    add d
    nop
    rlca
    rst $38
    dec de
    inc e
    cpl
    jr nc, @+$58

    ld l, c
    ld h, b
    ld e, a
    rst $38

jr_009_5d4c:
    and b
    rst $18
    pop hl
    sbc [hl]
    pop af
    adc [hl]
    ldh a, [$8f]
    ei
    ld h, b
    ld e, a
    jr nc, jr_009_5d98

    rrca
    dec b
    ld b, $bf
    inc bc
    rrca
    inc c
    inc e
    inc de
    ld sp, $ff2e
    ld h, e
    ld e, h
    ld h, e
    ld e, h
    pop hl
    sbc [hl]
    ldh a, [$8f]
    rst $38
    ldh a, [$8f]
    ldh a, [$8f]
    ld h, e
    ld e, a
    ld c, [hl]
    ld a, a
    db $fd
    dec a
    ld a, $05
    ld b, $03
    ld [bc], a
    inc bc
    adc e
    nop
    inc bc
    rrca
    inc c
    rst $38
    inc e
    inc de
    ld sp, $632e
    ld e, h
    ld h, e
    ld e, h
    rst $38
    pop hl
    sbc [hl]
    ldh a, [$8f]
    ldh a, [$8f]
    pop af
    adc a
    rst $38
    ld h, [hl]
    ld e, a

jr_009_5d98:
    ld c, a
    ld a, h
    add hl, sp
    ld a, $0f
    ld c, $8b
    nop
    ret nz

    or b
    ld [hl], b
    rst $38
    add sp, $38
    ld hl, sp+$28
    db $f4
    inc c
    ld l, h
    db $f4
    rst $08
    db $f4
    db $fc
    db $e4
    db $fc
    inc c
    db $f4
    cp $fc
    inc c
    sbc $32
    cp $e2
    inc e

jr_009_5dbb:
    xor [hl]
    nop
    add b
    ret nz

    ld b, b
    ret nz

    cp l
    ret nz

    jr nz, @-$1e

    and b
    ld h, b
    ldh [rIE], a
    jr nc, jr_009_5dbb

    ld [hl], b
    sub b
    ld a, b
    xor b
    jr @-$16

jr_009_5dd1:
    cp $fc
    inc d
    cp [hl]
    ld h, d
    xor $f2
    inc e
    adc e
    nop
    ret nz

    ldh [rNR41], a
    rst $38
    db $10
    ldh a, [rBCPS]
    sbc b
    or h
    ld c, h
    jp nz, $ff3e

    and $1a
    rst $20
    add hl, de
    or e
    ld c, l
    reti


jr_009_5def:
    and a
    ld a, [$718f]
    cp $6e
    sbc b
    nop
    add b
    nop
    xor a
    nop
    ret nz

    ld h, b
    and b
    jr nc, @-$2e

jr_009_5e00:
    rst $38
    sub b
    ld [hl], b
    adc b
    ld a, b
    jr jr_009_5def

    jr c, jr_009_5dd1

    ld a, [$c838]
    ret nc

    jr nc, jr_009_5def

    ret nz

    add b
    nop
    add b
    nop
    xor a
    nop
    inc bc
    rrca
    inc c
    rla

jr_009_5e1a:
    jr jr_009_5e1a

    rra
    db $10
    rra
    db $10
    rla
    jr jr_009_5e32

    add d
    nop
    ldh [rIE], a
    ret c

    jr c, @+$16

    db $ec
    ld a, [de]
    and $0e
    ld a, [c]
    rst $38
    pop bc
    ccf

jr_009_5e32:
    pop hl
    rra
    db $e3
    dec e
    rst $00
    add hl, sp
    ei
    ld b, $fa
    inc c
    db $fc
    ldh a, [$e0]
    jr nz, jr_009_5e00

    ldh [$d8], a
    jr c, jr_009_5e61

    db $e4
    adc [hl]
    ld [hl], d
    rst $38
    jp nz, $c13e

    ccf
    add c
    ld a, a
    rlca
    ld sp, hl
    rst $38
    rlca
    ld sp, hl
    inc bc
    db $fd

jr_009_5e56:
    ld a, [$bcfe]
    ld a, h
    rst $38
    ret nc

    jr nc, jr_009_5e56

    ld [$04fc], sp

jr_009_5e61:
    db $fc
    inc b
    adc e
    nop
    ldh [$d8], a
    jr c, @+$01

    inc e
    db $e4
    adc [hl]
    ld [hl], d
    jp nz, $c13e

    ccf
    rst $38
    add c
    ld a, a
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    ei
    db $fd
    rst $38
    xor $1e
    call c, $f03c
    db $10
    ldh a, [rNR10]
    nop
    xor a
    nop
    rlca
    dec bc
    inc c
    rra
    jr @+$01

    ccf
    jr nz, jr_009_5f0e

    ld b, b
    ld a, a
    ld c, b
    ld [hl], a
    ld c, b
    rst $38
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_5ed1

    jr c, jr_009_5ecb

jr_009_5e9c:
    jr nc, jr_009_5e9c

    cpl
    jr nc, jr_009_5ed0

    ld a, $17
    add hl, de
    rra
    cp a
    rlca
    dec bc
    inc c
    rra
    jr jr_009_5edb

    jr nc, @+$01

    ccf
    jr nz, jr_009_5ef0

    inc h
    dec sp
    inc h
    cpl
    jr nc, @+$01

    ccf
    jr nc, @+$29

    jr c, jr_009_5eeb

    jr nc, jr_009_5eed

jr_009_5ebe:
    jr nc, jr_009_5ebe

    dec d
    dec de
    rrca
    ld c, $04
    rlca
    inc bc
    cp a
    rlca
    dec bc
    inc c

jr_009_5ecb:
    scf
    jr c, jr_009_5f2d

    ld h, b
    rst $38

jr_009_5ed0:
    cp [hl]

jr_009_5ed1:
    pop bc
    rst $38
    sub c
    rst $28
    sub c
    cp [hl]
    pop bc
    rst $38
    ld e, a
    ld h, b

jr_009_5edb:
    cpl
    jr nc, jr_009_5f0d

    jr nc, jr_009_5f0f

jr_009_5ee0:
    jr nc, jr_009_5ee0

    scf
    jr c, @+$41

    cpl
    ld l, $32
    inc e
    xor a
    nop

jr_009_5eeb:
    rlca
    dec bc

jr_009_5eed:
    inc c
    rra
    db $10

jr_009_5ef0:
    rst $38
    cpl
    jr nc, jr_009_5f23

    jr nc, jr_009_5f33

    inc sp
    ld e, [hl]
    ld h, c
    rst $38
    ld [hl], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    cp $3f
    jr nc, jr_009_5f35

    ld a, $17
    add hl, de
    rra
    cp a
    rlca
    dec bc

jr_009_5f0d:
    inc c

jr_009_5f0e:
    rra

jr_009_5f0f:
    db $10
    cpl
    jr nc, @+$01

    cpl
    jr nc, @+$38

    add hl, sp
    cpl
    jr nc, @+$3d

    inc h
    rst $38
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf

jr_009_5f23:
    jr c, jr_009_5f23

    dec d
    dec de
    rrca
    ld c, $04
    rlca
    inc bc
    cp a

jr_009_5f2d:
    rlca
    dec bc
    inc c
    rra
    db $10
    cpl

jr_009_5f33:
    jr nc, @+$01

jr_009_5f35:
    cpl
    jr nc, jr_009_5f93

    ld h, [hl]
    cp l
    jp $91ee


    rst $38
    rst $38
    sub b
    rst $38
    sub b
    cp $91
    ld l, a
    ld [hl], b
    cp $37
    jr c, jr_009_5f89

    cpl
    ld l, $32
    inc e
    xor a
    nop
    rlca
    dec bc
    inc c
    rra
    jr @+$01

    ccf
    jr nz, @+$81

    ld b, b
    ld a, a
    ld c, b
    ld [hl], l
    ld c, e
    rst $38
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_5f9b

    jr c, jr_009_5f95

jr_009_5f66:
    jr nc, jr_009_5f66

    cpl
    jr nc, jr_009_5f9a

    ld a, $17
    add hl, de
    rra
    xor a
    nop
    rlca
    dec bc
    inc c
    rra
    db $10
    rst $18
    add hl, hl
    ld [hl], $29
    cpl
    ld sp, $233d
    rst $38
    dec sp
    ld h, $2f
    jr nc, jr_009_5fb3

    jr nc, jr_009_5fb5

jr_009_5f86:
    jr nc, jr_009_5f86

    cpl

jr_009_5f89:
    jr nc, jr_009_5fba

    ld a, $17

jr_009_5f8d:
    add hl, de
    rra
    xor a
    nop
    ldh [$d0], a

jr_009_5f93:
    jr nc, jr_009_5f8d

jr_009_5f95:
    ld [$f4ff], sp
    inc c
    ld l, h

jr_009_5f9a:
    sub h

jr_009_5f9b:
    db $fc
    sub h
    db $fc
    sub h
    rst $38
    ld l, d
    sub [hl]
    ld a, [$fa06]
    ld h, $fc
    inc h
    cp $dc
    inc h
    add sp, $18

jr_009_5fad:
    call c, $7ce4
    cp a
    ldh [$d0], a

jr_009_5fb3:
    jr nc, jr_009_5fad

jr_009_5fb5:
    ld [$0cf4], sp
    rst $38
    or h

jr_009_5fba:
    ld c, h
    db $fc
    ld c, h
    db $fc
    ld c, h
    or h
    ld c, h
    rst $38
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    inc d
    db $ec
    inc d
    ld a, [$c8f8]
    ldh a, [rSVBK]
    ldh [$c0], a
    cp a
    ldh [$d0], a
    jr nc, @-$06

    ld [$0cf4], sp
    rst $38
    call c, $fc24
    inc h
    ld a, [$dd26]
    inc hl
    rst $38
    ei
    dec b
    ei
    ld b, l
    rst $38
    ld b, c
    cp d
    ld b, [hl]
    cp $fc
    inc e
    xor $f2
    ld d, d
    ld l, [hl]
    inc a
    xor a
    nop
    db $ec
    sbc $32
    cp $0a
    rst $38
    ld a, [c]
    ld c, $fa
    ld b, $fa
    ld c, $f4
    sbc h
    rst $38
    ld l, h
    sub h
    db $fc
    inc b
    db $fc
    ld h, h
    ld l, h
    sub h
    cp $fc
    inc b
    add sp, $18
    call c, $7ce4
    cp a
    ld hl, sp-$34
    inc [hl]
    db $fc
    inc c
    db $f4
    inc c
    rst $38
    db $fc
    inc b
    db $fc
    add h
    ld a, h
    call z, Call_009_4cb4
    rst $38
    db $fc
    inc b
    db $fc
    inc [hl]
    or h
    ld c, h
    db $fc
    inc b
    ld a, [$c8f8]
    ldh a, [rSVBK]
    ldh [$c0], a
    cp a
    and $df
    add hl, sp
    rst $38
    add hl, bc
    di
    dec c
    rst $38
    ei
    dec b
    push af
    dec de
    ld [$dc36], a
    inc h
    rst $38
    db $fc
    inc b
    db $fc
    call nz, $24dc
    db $f4
    inc c
    cp $fc
    inc e
    xor $f2
    ld d, d

jr_009_6055:
    ld l, [hl]
    inc a
    xor a
    nop
    ldh [$d0], a
    jr nc, jr_009_6055

    ld [$f4ff], sp
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    sbc h
    rst $38
    ld a, [$fa06]
    ld b, $fa
    ld b, $fc
    ld h, h
    cp $fc
    inc b
    add sp, $18
    call c, $7ce4
    xor a
    nop
    ldh [$d0], a
    jr nc, @-$06

    ld [$f4ff], sp
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    sbc h
    rst $38
    db $f4
    inc c
    xor $12
    cp $12
    ld a, [$fe76]
    db $fc
    inc c
    add sp, $18
    call c, $7ce4
    xor a
    nop
    ldh [$d0], a
    jr nc, @-$06

    ld [$f4ff], sp
    inc c
    db $fc
    inc b
    db $e4
    sbc h
    ld_long a, $ff66
    cp $62
    cp $92
    ld a, [$6c06]
    db $f4
    cp $fc
    inc b
    add sp, $18
    call c, $7ce4
    xor a
    nop
    rlca
    dec bc
    inc c
    rra
    db $10
    rst $38
    cpl
    jr nc, jr_009_6104

    jr nz, jr_009_6100

    daa
    scf
    jr z, @+$01

    ccf
    jr nz, jr_009_610c

    ld hl, $273b
    cpl

jr_009_60d2:
    jr nc, jr_009_60d2

    cpl
    jr nc, @+$31

    ld a, $17

jr_009_60d9:
    add hl, de
    rra
    xor a
    nop
    ldh [$d0], a
    jr nc, jr_009_60d9

    ld [$f4ff], sp
    inc c
    xor $12
    cp $12
    cp $9a
    rst $38
    ld l, h
    sub h
    db $fc
    inc b
    db $fc
    ld h, h
    ld l, h
    sub h
    cp $fc
    inc b
    add sp, $18
    call c, $7ce4
    xor a
    nop
    rlca
    dec bc

jr_009_6100:
    inc c
    rra
    db $10
    rst $38

jr_009_6104:
    cpl
    jr nc, jr_009_6146

    jr nz, jr_009_613e

    dec hl
    ld a, [hl-]
    dec h

jr_009_610c:
    rst $38
    dec a
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl-], a
    cpl
    inc a
    cp $2f
    jr nc, jr_009_6148

    ld a, $17
    add hl, de
    rra
    nop
    adc e
    nop
    inc b
    ld a, [bc]
    ld c, $ff
    ld a, [bc]
    ld c, $11
    rra
    ld de, $211f
    ccf
    rst $38
    ld hl, $223f
    ld a, $42
    ld a, [hl]
    ld b, h
    ld a, h
    rst $38
    ld b, h
    ld a, h
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    jr z, jr_009_6176

jr_009_613e:
    add b
    nop
    add b

jr_009_6141:
    nop
    add d
    nop
    jr jr_009_6141

jr_009_6146:
    inc h
    inc a

jr_009_6148:
    inc l
    inc a
    ld a, $3d
    ccf
    rst $38
    add hl, de
    rra
    ld hl, $413f
    ld a, a
    ld b, d
    ld a, [hl]

jr_009_6156:
    rst $38
    add d

jr_009_6158:
    cp $84
    db $fc
    adc a
    rst $38
    ld c, a
    ld a, a
    rst $28
    cpl
    ccf
    rra
    ld b, $07
    jr jr_009_6186

    cp $20
    ccf
    jr nz, jr_009_61ab

    jr nz, jr_009_61ad

    rra
    add b
    nop
    xor a
    nop
    ret nz

    jr nz, jr_009_6156

jr_009_6176:
    jr nz, jr_009_6158

    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$e8], a
    jr nz, @-$1e

    ret nz

    nop

jr_009_6186:
    add b
    nop
    cp a
    inc c
    ld a, [bc]
    ld c, $0a
    ld c, $11
    rra
    rst $38
    ld de, $211f
    ccf
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    rst $38
    add h
    db $fc
    add h
    db $fc
    adc b
    ld hl, sp-$78
    ld hl, sp-$01
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    inc h
    inc a
    inc de
    rra

jr_009_61ab:
    ld hl, sp+$0c

jr_009_61ad:
    rrca
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_009_61f9

    cp $20
    ccf
    ld hl, $123f
    ld e, $0c
    cp a
    ld [$1c14], sp
    inc d
    inc e
    jr z, jr_009_6202

    rst $38
    jr z, jr_009_6205

    jr z, jr_009_6207

    inc h
    inc a
    inc h
    inc a
    rst $38
    inc d
    inc e
    ld [de], a
    ld e, $12
    ld e, $12
    ld e, $ff
    ld [de], a
    ld e, $12
    ld e, $24
    inc a
    inc h
    inc a
    rst $38
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    adc b
    ld hl, sp-$70
    ldh a, [rIE]
    sub b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rIE]
    sub b

jr_009_61f9:
    ldh a, [$90]
    ldh a, [rOBP0]
    ld a, b
    ld c, b
    ld a, b
    cp $48

jr_009_6202:
    ld a, b
    jr z, jr_009_623d

jr_009_6205:
    jr z, jr_009_623f

jr_009_6207:
    jr nc, @+$01

    and b
    ldh [$50], a
    ld [hl], b
    inc l
    inc a
    ld [hl+], a
    ld a, $ff
    ld [de], a
    ld e, $11
    rra
    ld de, $211f
    ccf
    rst $38
    ld hl, $423f
    ld a, [hl]
    ld b, d
    ld a, [hl]
    add h
    db $fc
    cp $88
    ld hl, sp-$70
    ldh a, [$a0]
    ldh [$60], a
    add b
    nop
    cp a
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$78]
    ld hl, sp-$78
    db $fc
    cp $ae
    cp $fc
    cp $7a

jr_009_623d:
    cp $80

jr_009_623f:
    nop
    add d
    nop
    ret nz

    rst $38
    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$fa]
    db $10
    ldh a, [rNR41]
    ldh [$c0], a
    nop
    add b
    nop
    add b
    nop
    cp a
    inc e
    ld [de], a
    ld e, $09
    rrca
    add hl, bc
    rrca
    rst $38
    ld de, $211f

jr_009_6263:
    ccf
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]

jr_009_6268:
    rst $38
    add h
    db $fc
    adc b
    ld hl, sp-$78

jr_009_626e:
    ld hl, sp-$74

jr_009_6270:
    db $fc
    ld a, [$7f4f]
    ld [hl], $3f
    rrca
    inc bc
    cp a
    ld bc, $0706
    jr jr_009_629d

    jr nz, jr_009_62bf

    cp $20
    ccf
    jr nz, jr_009_62c4

    inc hl
    ccf
    inc e
    add b
    nop
    cp a
    ret nz

    jr nz, jr_009_626e

    jr nz, jr_009_6270

    db $10
    ldh a, [rIE]
    db $10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$e8], a
    ld b, b

jr_009_629d:
    ret nz

    add b
    nop
    cp a
    inc b
    ld a, [bc]
    ld c, $12
    ld e, $22
    ld a, $ff
    inc h
    inc a
    ld b, h
    ld a, h
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ei
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, @+$2a

    jr c, jr_009_6268

    jr jr_009_62c8

    ld a, [bc]
    ld c, $06

jr_009_62bf:
    rst $38
    dec b
    rlca
    dec b
    rlca

jr_009_62c4:
    add hl, bc
    rrca
    add hl, bc
    rrca

jr_009_62c8:
    rst $38
    ld de, $221f
    ld a, $22
    ld a, $44
    ld a, h
    rst $38
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld hl, sp+$48
    ld a, b
    ld c, b
    ld a, b
    jr nc, jr_009_6263

    nop
    ccf
    rst $38
    ld d, c
    ld a, a
    ld h, [hl]
    ld a, a
    ret z

    rst $38
    sub b
    rst $38
    rst $38
    sub b
    rst $38
    and c
    rst $38
    and c
    rst $38
    jp $feff


    ld b, e
    ld a, a
    ld b, e
    ld a, a
    daa
    inc a
    rra
    add d
    nop
    ld e, $ff
    ld [hl], c
    ld a, a
    and d
    rst $38
    call nz, $c8ff
    rst $38
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    and c
    rst $38
    cp $41
    ld a, a
    ld b, d
    ld a, a
    inc hl
    ld a, $1f
    add d
    nop
    rrca
    rst $38
    ld sp, $463f
    ld a, a
    ld c, b
    ld a, a
    sub b
    rst $38
    rst $38
    and c
    rst $38
    and e
    rst $38
    jp $c7ff


    rst $38
    cp $47
    ld a, a
    ld c, l
    ld a, e
    dec hl
    inc a
    rra
    add d
    nop
    jr @+$01

    daa
    ccf
    jr z, jr_009_637e

    ld d, b
    ld a, a
    ld h, c
    ld a, a
    rst $38
    ld h, d
    ld a, a
    ld b, h
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    cp $50
    ld a, a
    ld sp, $333f
    ccf
    rra
    add d
    nop
    inc c
    rst $38

jr_009_6358:
    inc de
    rra
    ld [de], a
    rra
    inc h
    ccf
    jr z, jr_009_639f

    rst $38
    jr nc, @+$41

    jr nz, jr_009_63a4

    ld b, c
    ld a, a
    ld b, [hl]
    ld a, a
    cp $48
    ld a, a
    ld d, b
    ld a, a
    jr nc, jr_009_63af

    rra
    cp a
    inc c
    ld d, $1e
    ld h, $3e
    dec l
    ccf
    rst $38
    jr c, jr_009_63bb

    db $10
    rra

jr_009_637e:
    jr nz, jr_009_63bf

    ld hl, $ff3f
    ld b, c
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    cp $28
    ccf
    db $10
    rra
    db $10
    rra
    rrca
    cp a
    ld [$1c14], sp
    inc d
    inc e
    ld [de], a
    ld e, $ff
    ld [de], a
    ld e, $22

jr_009_639f:
    ld a, $22
    ld a, $44
    ld a, h

jr_009_63a4:
    rst $38

jr_009_63a5:
    ld b, h
    ld a, h
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld d, b
    ld [hl], b
    ei
    ld d, b

jr_009_63af:
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, @+$2a

    jr c, jr_009_63a5

    jr z, jr_009_63f0

    jr jr_009_63ce

    inc e

jr_009_63bb:
    inc d
    inc e

jr_009_63bd:
    rst $38
    ld [de], a

jr_009_63bf:
    ld e, $12
    ld e, $22
    ld a, $22
    ld a, $ff
    ld [hl+], a
    ld a, $44
    ld a, h
    ld b, h
    ld a, h
    ld c, b

jr_009_63ce:
    ld a, b
    cp $48
    ld a, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, jr_009_6358

    nop
    cp a
    ret nz

    jr nz, jr_009_63bd

    db $10
    ldh a, [$78]
    ld hl, sp-$71
    db $fc
    cp $d6
    cp $d6
    xor [hl]
    cp $fc
    cp $7a
    cp $80
    nop
    cp a

jr_009_63f0:
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$38]
    ld hl, sp-$31
    ld a, h
    db $fc
    cp $ea
    cp $ea
    sbc h
    cp $3e
    inc a
    db $fc
    add d
    nop
    add b
    cp a
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$78
    ld hl, sp-$71
    db $fc
    cp $ae
    cp $ae
    or [hl]
    cp $ff
    db $fd
    ei
    cp $80
    nop
    xor a
    nop
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [rIE]
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    add $74
    db $fc
    inc [hl]
    db $fc
    add b
    nop
    xor a
    nop
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [rIE], a
    ld d, b
    ldh a, [$90]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$02
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$e0]
    add b
    nop
    add d
    add b
    ldh [rIE], a
    ret nc

    ldh a, [$d0]
    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp-$02
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$e0]
    cp a
    db $10
    jr z, jr_009_649d

    jr z, jr_009_649f

    inc h
    inc a
    rst $38
    inc d
    inc e
    inc d
    inc e
    ld [de], a
    ld e, $12
    ld e, $ff
    ld [hl+], a
    ld a, $22
    ld a, $44
    ld a, h
    ld b, h
    ld a, h
    rst $38
    ld c, b
    ld a, b
    adc b
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [rIE]
    sub b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$50]
    ld [hl], b
    rst $38
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    jr z, jr_009_64cc

    jr z, jr_009_64ce

    rst $38
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a

jr_009_649d:
    ld b, h
    ld a, h

jr_009_649f:
    ld hl, sp+$48
    ld a, b
    ld c, b
    ld a, b
    jr nc, jr_009_64a6

jr_009_64a6:
    add b
    nop
    add b
    nop
    cp a
    ret nz

    or b
    ld [hl], b
    db $ec
    call c, $06fa
    cp $6e
    jp c, $91ff

    db $db
    ld l, l
    cp $80
    nop
    add b
    nop
    cp a
    inc bc
    dec c
    ld c, $37
    dec sp
    ld e, a
    ld h, b
    cp $7f
    ld b, b
    cp a
    ret nz

    rst $38

jr_009_64cc:
    add b
    ld a, a

jr_009_64ce:
    add b
    nop
    xor a
    nop
    ldh a, [$ec]
    inc e
    ld l, d
    sbc $ff
    cp $92
    reti


    ld l, a
    rst $38
    ld bc, $01ff
    ld a, [$32ce]
    db $fc
    ld a, h
    ldh [rP1], a
    add b
    nop
    xor a
    nop
    rrca
    add hl, de
    ld d, $17
    jr @+$01

    cpl
    jr nc, jr_009_6553

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp $bf
    ret nz

    ld sp, hl
    add [hl]
    rst $28
    sbc a
    ld a, h
    add b
    nop
    cp a

jr_009_6504:
    ldh [$d8], a
    jr c, jr_009_6504

    call nz, $62be
    rst $38
    sbc $e2
    db $fd
    inc bc
    daa
    reti


    rst $38
    sub c
    cp $db
    ld l, l
    cp $02
    call c, $e03c
    add b
    nop
    cp a
    rlca
    dec sp
    inc a
    ld e, a
    ld h, e
    db $fd
    add [hl]
    rst $38
    ei
    add a
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    cp $ff
    add b
    ld a, a
    ld b, b
    dec sp
    inc a
    rlca
    adc e
    nop
    ldh [rNR23], a
    ld hl, sp-$01
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, h
    cp h
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $f6
    ld c, $fe
    rla
    ld sp, hl

jr_009_6553:
    rst $30
    ld c, $8b
    nop
    rlca
    inc e
    dec de
    rst $38
    jr c, jr_009_6584

    jr c, jr_009_6586

    inc l
    inc sp
    inc hl
    inc a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    cp $2e
    ccf
    scf
    add hl, sp
    add hl, de
    rla
    ld c, $af
    nop
    inc bc
    dec e
    ld e, $3b
    daa
    rst $38
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_009_6584:
    rst $38
    ld a, a

jr_009_6586:
    ld b, b
    cp a
    ret nz

    db $fd
    adc [hl]
    sub d
    rst $38
    or $61
    ld a, a
    ld a, $3f
    ld sp, $bf1f
    inc bc
    dec e
    ld e, $3b
    daa
    ld e, a
    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    rst $38
    add b
    rst $30
    adc [hl]
    xor c
    rst $18
    ld [hl], b
    ld a, a
    cp $27
    ccf
    dec sp
    inc a
    ld e, $19
    rrca
    cp a
    inc bc
    dec e
    ld e, $3b
    daa
    ld e, a
    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, c
    cp a
    pop bc
    rst $38
    cp $81
    rst $18
    or b
    xor e
    db $fc
    ld b, a
    ld a, a
    or $70
    ld a, a
    ld l, h
    ld e, a
    ld h, a
    inc a
    cp a
    rrca
    add hl, de
    ld d, $17
    jr jr_009_660d

    jr nc, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    rst $38
    cp c
    rst $08
    ld hl, sp-$71
    ldh a, [$9f]
    ld h, b
    ld a, a
    sbc $30
    ccf
    cpl
    ld l, $32
    inc e
    add d
    nop
    rrca
    rst $38
    jr jr_009_6615

    ld a, $21
    jr nz, jr_009_6641

    jr nz, jr_009_6643

    rst $38
    jr nz, jr_009_6646

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_009_660d:
    or $40
    ld a, a
    ld l, $3f
    ld sp, $8b1f

jr_009_6615:
    nop
    rrca
    jr @+$19

    rst $18
    ccf
    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_009_6660

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    cp $27
    ccf
    dec hl
    inc a
    ld e, $19
    rrca
    adc e
    nop
    rrca
    jr jr_009_664e

    rst $38
    dec a
    ld [hl+], a
    jr nz, jr_009_667b

    jr nz, jr_009_667d

    jr nz, @+$41

    rst $38

jr_009_6641:
    ld b, b
    ld a, a

jr_009_6643:
    ld b, b
    ld a, a
    ld b, b

jr_009_6646:
    ld a, a
    ld b, b
    ld a, a
    or $70
    ld a, a
    ld l, h
    ld e, a

jr_009_664e:
    ld h, a
    inc a
    cp a
    inc bc
    ld c, $0d
    jr jr_009_666d

    jr nc, jr_009_6687

    rst $38
    jr nz, jr_009_669a

    jr nz, @+$41

    jr nz, jr_009_669e

    ld b, b

jr_009_6660:
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    sbc $30
    ccf

jr_009_666d:
    cpl
    ld l, $32
    inc e
    xor a
    nop
    ret nz

    cp b
    ld a, b
    call c, $ffe4
    cp $02

jr_009_667b:
    cp $02

jr_009_667d:
    ld l, [hl]
    jp c, $93fd

    rst $38
    rst $38
    reti


    daa
    reti


    rst $38

jr_009_6687:
    ld bc, $33fd
    cp $ce
    cp $04
    db $fc
    ld c, $fa
    cp $bf
    ret nz

    cp b
    ld a, b
    call c, $fee4
    ld [bc], a

jr_009_669a:
    rst $38
    cp $02
    or [hl]

jr_009_669e:
    ld l, [hl]
    db $fd
    ld c, e
    rst $38
    ld l, l
    rst $38
    sub e
    ld l, l
    rst $38
    ld bc, $bb5d
    and $fe
    cp $02
    cp $84
    db $fc
    db $ec
    db $f4
    inc a
    cp a
    ret nz

    cp b
    ld a, b
    call c, $fee4
    ld [bc], a
    rst $38

jr_009_66bd:
    cp $02
    sbc $b2
    db $fd
    inc hl
    rst $38
    or c
    rst $38
    ld c, a
    or c
    rst $38
    ld bc, $e27e
    sbc [hl]
    cp $f6
    ld b, $fe
    rrca
    ld sp, hl
    rst $30
    ld c, $bf
    ldh a, [$ec]
    inc e
    ld l, d

Call_009_66da:
    sbc $fe
    sub d
    rst $38
    db $fd
    db $db
    daa
    reti


    rst $38
    ld bc, $33fd
    rst $38
    adc $fe
    ld [bc], a
    cp $02
    cp $04
    db $fc
    and $08
    ld hl, sp-$10
    sub b
    ld h, b
    add d
    nop
    ldh a, [rIE]
    ld [$84f8], sp
    ld a, h
    inc b
    db $fc
    inc b
    db $fc
    rst $38
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $fe
    ld [bc], a
    cp $04
    db $fc
    ld c, $fa
    cp $8b
    nop
    ldh a, [$08]
    ld hl, sp-$01
    ld b, h
    cp h
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $fe
    ld [bc], a
    cp $84
    db $fc
    db $ec
    db $f4
    jr c, jr_009_66bd

    nop
    ldh a, [$08]
    ld hl, sp-$01
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $f6
    ld b, $fe
    rrca
    ld sp, hl
    rst $30
    ld c, $bf
    ret nz

    or b
    ld [hl], b
    ld [$08f8], sp
    ld hl, sp-$01
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $ff
    ld [bc], a
    cp $02
    cp $02
    cp $04
    db $fc
    and $08
    ld hl, sp-$10
    sub b
    ld h, b
    nop
    cp d
    jr nc, @+$7a

    ld e, b
    ld a, h
    inc a
    xor a
    ld a, $3f
    dec sp
    inc a
    cpl
    jr nc, @+$01

    ccf
    jr nz, jr_009_67e0

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp $7f
    ld b, b
    ld e, a
    ld h, b
    dec a
    ld a, $3f
    xor [hl]
    nop
    inc c
    ld e, $1a
    rra
    cp a
    rra
    ld e, $1f
    dec l
    ld a, $2f
    jr nc, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_009_67a4:
    ld b, b
    ld a, [$635d]
    dec hl
    scf
    rra
    rlca
    xor [hl]
    nop
    ld [hl], b
    ld hl, sp-$48
    db $fc
    cp a
    ccf
    dec sp
    inc a
    scf
    jr c, jr_009_67f8

    jr nz, @+$01

    ld e, a
    ld h, c
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, [$e0df]
    rst $28
    ldh a, [rIE]
    ld a, b
    xor a
    nop
    ld bc, $1f1e
    ld a, e
    ld a, h
    rst $38
    rst $30
    ld hl, sp-$01
    or b
    ld l, a
    ld [hl], b
    ccf
    jr nz, @+$01

    ccf
    jr nz, jr_009_681d

    jr nz, jr_009_681f

jr_009_67e0:
    jr nz, jr_009_6811

    jr nc, @-$14

    ld [hl], a
    ld a, b
    ld a, a
    ld a, b
    jr nc, jr_009_67a4

    jr @+$3e

    inc l
    inc a
    ld a, $9f
    rra
    ld e, $2f
    inc a
    ld e, a
    ld h, b
    rst $38
    ld a, a

jr_009_67f8:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    jp c, $2f36

    ccf
    rra
    ld c, $ae
    nop
    inc c
    ld e, $1a
    ccf
    rst $38
    dec sp
    dec a
    cpl
    jr nc, @+$81

jr_009_6811:
    ld h, b
    ld e, a
    ld h, b
    rst $38
    ld a, [hl]
    ld b, c
    ld a, l
    ld b, e
    ld a, a
    ld b, e
    ld a, a
    ld b, e

jr_009_681d:
    cp $3d

jr_009_681f:
    inc hl
    ld a, $31
    dec de
    inc e
    rlca
    xor b
    nop
    ld c, $1f
    rst $38
    cpl
    ccf
    ld e, d
    ld h, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    ld [hl], b
    ld a, [$fcfb]
    rst $38
    cp a
    ld [hl], e
    nop
    adc e
    nop
    rlca
    dec sp
    inc a
    rst $38
    ld l, a
    ld [hl], b
    rst $18
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    jp $c7ff


    ld a, a
    ld b, a
    ld e, e
    ld h, a
    cp $3f
    inc hl
    rla
    dec de
    rrca
    ld c, $03
    cp d
    jr jr_009_68a0

    inc [hl]
    ld a, h
    ld a, b
    adc a
    ld hl, sp-$14
    inc e
    db $fc
    inc b
    rst $38
    ld a, [$fe06]
    sub d
    cp $92
    cp $02
    cp $fe
    ld [bc], a
    db $fc
    inc b
    xor $1e
    cp $a8
    nop
    ld h, b
    ldh a, [$bf]

jr_009_6883:
    ldh a, [$e8]
    jr jr_009_6883

    inc b
    db $fc
    inc b
    rst $38
    cp $4a
    cp $4a
    cp $02
    cp $02
    cp $ba
    add $f4
    call z, $f898
    ldh [$ae], a
    nop
    inc e
    ld a, $3a

jr_009_68a0:
    ld a, [hl]
    cp a
    db $fc
    db $ec
    inc e
    db $fc
    inc b
    ld_long a, $ff06
    cp $22
    cp $22
    cp $02
    cp $02
    ld a, [$0ff7]
    rst $28
    rra
    rst $38
    ld e, $af
    nop
    ld hl, sp-$0c
    inc c
    cp $4a
    rst $38
    db $fd
    ld c, e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fdff
    inc bc
    cp $02
    ld a, [$f406]
    inc c
    ld [c], a
    ret c

jr_009_68d4:
    jr c, @-$0e

    ld h, b
    cp b
    jr nc, jr_009_6952

    ld l, b
    ld a, b
    cp a
    ld hl, sp-$28
    jr c, @-$0a

    inc c
    db $fc
    inc b
    rst $38
    ld a, [$fe06]
    ld [bc], a
    cp $92
    cp $92
    ld a, [$07ff]
    rst $38
    rrca
    rst $38
    ld c, $ae
    nop
    jr jr_009_6934

    inc [hl]
    db $fc
    rst $38
    ret c

    ld a, b
    db $f4
    xor h
    db $fc
    inc b
    ld_long a, $ff06
    ld a, d
    add [hl]
    or a
    rst $08
    rst $38
    rst $08
    rst $28
    rst $18
    cp $ae
    sbc $7c
    adc h
    ret c

    jr c, @-$1e

jr_009_6914:
    xor e
    nop
    jr c, jr_009_6914

    ld a, h
    cp h
    rst $38
    ld e, h
    cp h
    xor $1e
    cp $02
    cp $02
    rst $38
    cp $02
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    ld [$78b8], a
    ldh [$80], a
    nop
    adc e
    nop

jr_009_6934:
    ldh [$d8], a
    jr c, @+$01

    db $f4
    inc c
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    rst $38
    or $1a
    ld a, [$fabe]
    cp [hl]
    sbc $be
    cp $fc
    sbc h
    call c, $fcbc
    db $f4
    jr jr_009_68d4

jr_009_6952:
    nop
    adc $ef
    rst $38
    cp l
    rst $38
    cp $de
    ld_long a, $ff8e
    cp $02
    cp $02
    cp $02
    ld a, [$faa6]
    db $fc
    and h
    db $fc
    ld c, h
    ld hl, sp-$20
    add d
    nop
    rlca
    rst $38
    add hl, de
    rra
    cpl
    inc sp
    ccf
    inc hl
    ld e, a
    ld h, c
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, [$203f]
    scf
    add hl, sp
    ccf
    inc e
    cp a
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $ff
    ld a, $c2
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    dec a
    jp $fe02


    cp $02
    cp $04
    db $fc
    jr @-$06

    ldh [$bf], a
    rlca
    ld e, $19
    jr c, jr_009_69d7

    ld e, b
    ld h, a
    rst $38
    ld [hl], b
    ld c, a
    or c
    adc $97
    add sp, -$71
    ldh a, [rIE]
    sub a
    add sp, -$4f
    adc $b0
    rst $08
    ld [hl], b
    ld c, a
    cp $58
    ld h, a
    jr c, jr_009_69f0

    ld e, $19
    rlca
    cp a
    ldh [rNR23], a
    ld hl, sp+$7c
    add h
    cp $02
    rst $38
    cp $02

jr_009_69d7:
    rst $38
    ld bc, $01ff
    inc bc
    db $fd
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    cp $fe
    ld b, $fa
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$bf], a
    rlca

jr_009_69f0:
    jr jr_009_6a11

    jr nz, jr_009_6a33

    ld b, c
    ld a, [hl]
    rst $38
    ld b, e
    ld a, h
    rst $00
    cp b
    rst $28
    sub b
    db $ec
    sub e
    rst $38
    ret nc

    xor a
    sub b
    rst $28
    sbc b
    rst $20
    ld e, h
    ld h, e
    cp $4f
    ld [hl], b
    daa
    jr c, @+$1d

    inc e
    rlca
    cp a

jr_009_6a11:
    ldh [$f8], a
    jr jr_009_6a11

    inc b
    ld [bc], a
    cp $ff
    ld [bc], a
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    add c
    ld a, a
    rst $38
    ld bc, $01ff
    cp $02
    cp $fe

jr_009_6a2c:
    ld [bc], a
    db $fc
    inc b
    jr c, @-$26

    ldh [$bf], a

jr_009_6a33:
    rlca
    dec de
    inc e
    daa
    jr c, @+$51

    ld [hl], b
    rst $38
    ld c, h
    ld [hl], e
    sbc b
    rst $20
    ret nc

    xor a
    db $ec
    sub e
    rst $38
    rst $28
    sub b
    rst $00
    cp b
    add a
    ld hl, sp+$43
    ld a, h
    cp $43
    ld a, h
    ld hl, $183e
    rra
    rlca
    nop
    adc d
    nop
    inc e
    ld [hl-], a
    xor b
    ld h, b
    ldh a, [$f8]
    cp $f4
    ld l, h
    db $fc
    db $f4
    db $fc
    ld h, h
    db $fc
    cp $6c
    db $f4
    ld hl, sp+$08
    db $fc
    db $f4
    db $fc
    adc d
    nop
    jr c, @+$4e

    xor d
    ld b, $07
    rrca
    rra
    sbc $3e
    ccf
    ld a, $7f
    ld a, [hl]
    ld a, a
    and $7f
    ld a, [hl]
    ld a, a
    ld h, e
    ccf
    xor d
    nop
    ld c, $19
    jr nc, jr_009_6a2c

    ldh a, [$f8]
    db $ec
    call c, $fcfb
    db $ec
    db $fc
    call z, $dcfc
    db $ec
    or $fc
    inc e
    xor $f2
    xor $3c
    xor d
    nop
    ld [hl], b
    sbc b
    inc c
    adc e
    rrca
    rra
    dec a
    ld a, $fb
    ccf
    dec a
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, l
    cp $7f
    ld e, [hl]
    ld l, a
    ld e, a
    ld d, a
    ld l, a
    inc a
    xor d
    nop
    jr nc, jr_009_6b22

    ld h, b
    and e
    ldh a, [$f8]
    ld a, h
    or h
    ei
    db $fc
    ld a, h
    db $fc
    inc [hl]
    db $fc
    or h
    ld a, h
    db $ec
    db $fc
    add h
    ld hl, sp-$30
    ldh a, [$aa]
    nop
    inc c
    ld d, $03
    xor d
    inc bc
    rrca
    rra
    ccf
    and b
    ccf
    ld a, a
    cp [hl]
    ld a, a
    dec sp
    inc a
    inc e
    dec de
    rrca
    nop
    add b
    nop
    add b
    nop
    rst $18
    nop
    ld [hl+], a
    ld d, l
    ld [hl+], a
    ld d, l
    inc [hl]
    ld c, d
    cp $14
    ld a, [hl+]
    inc d
    ld a, [hl+]
    nop
    inc d
    nop
    add b
    nop
    add b
    nop
    sub a
    nop
    ld h, d
    sub l
    db $76
    adc c
    cp $34
    ld c, d
    inc [hl]
    ld c, d
    nop
    inc [hl]
    nop
    add b
    nop
    add b
    nop
    add l
    nop
    add $29
    cp $ee
    ld de, $32cc
    nop
    call z, $8000
    nop
    add b
    nop
    add l
    nop
    ld bc, $f802

jr_009_6b22:
    ld bc, $0002
    ld bc, $0000
    add b
    nop
    xor a
    nop
    inc e
    ld a, $2e
    xor $de
    rst $38
    sub a
    ld l, a
    rst $20
    rra
    sub a
    ld l, e
    ld h, [hl]
    sbc [hl]
    cp $98
    ld a, b
    ld h, b
    and b
    ret nz

    ld b, b
    add b
    cp a
    rrca
    rra
    db $10
    jr c, jr_009_6b6f

    jr nc, jr_009_6b79

    rst $38
    jr nc, jr_009_6b7c

    jr nc, jr_009_6b7e

    add hl, de
    rla
    dec de
    ld e, $ff
    scf
    ld l, $63
    ld e, [hl]
    ld h, e
    ld e, a
    ld h, c
    ld e, a
    cp $50
    ld l, a
    jr c, jr_009_6b88

    ld l, $31
    rra
    add d
    nop
    jr nc, @+$01

    ld c, b
    ld a, b
    ld b, h
    ld a, h
    db $e4
    cp h
    db $e4

jr_009_6b6f:
    cp h
    rst $38
    sub d
    ld a, [hl]
    ld l, c
    sbc a
    adc c
    ld a, a
    ld [hl], l
    adc a

jr_009_6b79:
    add sp, -$42
    ld a, [hl]

jr_009_6b7c:
    ret nz

    nop

jr_009_6b7e:
    rst $38
    ld c, $0f
    ld e, $13
    ld a, [hl-]
    daa
    ld [hl-], a
    cpl
    rst $38

jr_009_6b88:
    ld sp, $312f
    cpl
    add hl, de
    rla
    dec de
    rra
    rst $38
    scf
    cpl
    ld h, d
    ld e, a
    ld h, e
    ld e, a
    ld h, c
    ld e, a
    cp $50
    ld l, a
    jr c, jr_009_6bc5

    ld l, $31
    rra
    xor a
    nop
    inc bc
    dec c
    ld c, $17
    jr @+$01

    add hl, de
    rla
    ccf
    ld hl, $203f
    ld a, a
    ld b, b
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
    inc a
    ccf
    ld [hl+], a
    ccf
    cp a
    inc bc
    rrca

jr_009_6bc5:
    inc c
    dec e
    inc de
    dec a
    ld h, $ff
    scf
    inc l
    dec sp
    inc a
    ld a, a
    ld c, b
    rst $38
    adc b
    rst $38
    rst $30
    adc h
    rst $38
    add h
    ei
    add [hl]
    cp l
    jp $befe


    pop bc
    ld a, a
    ld [hl], b
    ld a, a
    ld c, b
    ld a, a
    cp a
    rrca
    rra
    db $10
    jr c, jr_009_6c11

    inc sp
    cpl
    rst $38
    db $76
    ld c, a
    ld a, l
    ld e, [hl]
    ld a, a
    ld l, h
    xor a
    call c, $efff
    sbc h
    push hl
    sbc [hl]
    rst $30
    adc [hl]
    di
    adc a
    cp $bb
    rst $00
    ld a, l
    ld h, e
    ld a, [hl]
    ld d, c
    ld a, a
    cp a
    ld e, $3f
    ld hl, $4e71
    ld h, c
    ld e, [hl]
    rst $38
    ld h, b
    ld e, a

jr_009_6c11:
    ld h, c
    ld e, a
    inc sp
    ld l, $37
    inc a
    rst $38
    ld l, a
    ld e, h
    rst $00
    cp h
    push bc
    cp [hl]
    jp $febe


    and c
    rst $18
    ld [hl], c
    ld c, a
    ld e, l

Jump_009_6c26:
    ld h, e
    ld a, $80
    nop
    add b
    nop
    adc e
    nop
    rlca
    add hl, bc
    ld c, $ff
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    rst $38
    ld de, $9d1e
    sub d
    db $d3
    ld e, h
    pop af
    ld a, [hl]
    rst $38
    ld a, c
    xor $f8
    rst $08
    ld a, h
    add a
    cp $03
    rst $38
    rst $30
    rrca
    jp c, $a13d

    ld a, [hl]
    pop bc
    cp $fe
    add c
    cp $a3
    call c, $f1cf
    ld a, $80
    nop
    add b
    nop
    adc e
    nop
    rra
    inc h
    dec sp
    rst $38
    ld b, d
    ld a, l
    ld b, d
    ld a, l
    add c
    cp $c1
    cp [hl]
    rst $38
    ld h, [hl]
    sbc c
    ld [hl], $c9
    ld e, $e1
    dec bc
    db $f4
    rst $38
    dec bc
    db $f4
    dec b
    ld a, [$f887]
    add [hl]
    ld sp, hl
    rst $38
    add $79
    db $e4
    dec sp
    ld [hl], h
    ei
    call z, $feff
    add e
    rst $38
    and e
    call c, $f1cf
    ld a, $af
    nop
    ldh a, [$f8]
    ld [$78b8], sp
    rst $38
    call nz, $c2fc
    cp [hl]
    ld h, d
    sbc $e2
    ld e, [hl]
    rst $38
    or a
    ld l, l
    ei
    dec l
    rst $30
    add hl, sp
    xor $32
    cp $fe
    ld [hl+], a
    call c, $a824
    ld e, b
    ldh a, [$bf]
    ret nz

    ld a, b
    ld hl, sp+$44
    cp h
    add d
    ld a, [hl]
    rst $38
    ld h, d
    sbc [hl]
    jp nz, $c23e

    ld a, $97
    ld l, e
    rst $38
    rst $20
    dec e
    rst $08
    dec [hl]
    ei
    dec c
    sbc $3a
    cp $ee
    ld a, [c]
    cp h
    call nz, $9878
    ldh [$bf], a
    inc bc
    sbc a
    sbc h
    rst $28
    ld [hl], b
    cp $81
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $38
    rst $38
    ld bc, $03ff
    rst $30
    dec c
    db $db
    dec a
    cp $f5
    ei
    xor $f2
    or h
    call z, $bf78
    ld bc, $0203
    adc a
    adc h
    or [hl]
    cp c
    rst $38
    rst $18
    ldh [$7b], a
    add h
    rst $38
    ld bc, $02fe
    rst $38
    db $fc
    inc b
    cp $0e
    ld sp, hl
    rra
    di
    dec a
    cp $e3
    db $fd
    ld b, a
    cp c
    sbc [hl]
    ld [c], a
    ld a, h
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld h, b
    ldh [rIE], a
    sub b
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add h
    ld a, h
    rst $38
    add [hl]
    ld a, d
    sbc d
    ld h, [hl]
    ld a, [c]

jr_009_6d31:
    ld c, $e1
    rra
    rst $38
    pop bc
    ccf
    pop hl
    rra
    sbc c
    ld h, a
    add l
    ld a, e
    ld a, [$fe02]
    jp nz, $bcfe

    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ret nz

    rst $38
    jr nz, jr_009_6d31

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    rst $38
    ld [$18f8], sp
    add sp, $64
    sbc h
    call nz, $ff3c
    add h
    ld a, h
    ld [bc], a
    cp $82
    ld a, [hl]
    jp nz, $ff3e

    ld [hl+], a
    sbc $12
    xor $04
    db $fc
    inc c
    db $f4
    add sp, $08
    ld hl, sp-$10
    nop
    cp a
    rlca
    dec bc
    inc c
    rla
    jr @+$21

    db $10
    rst $38
    cpl
    jr nc, @+$41

    jr nz, jr_009_6de4

    ld h, b
    ld e, a
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
    cp $3f
    jr nz, jr_009_6dc4

    scf
    rra
    jr jr_009_6da8

    cp a
    rrca
    rla
    jr @+$21

    db $10
    cpl
    jr nc, @+$01

    ccf
    jr nz, jr_009_6de4

    jr nz, @+$61

    ld h, b

jr_009_6da8:
    ld e, a
    ld h, b
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
    ld h, c
    ccf
    ld [hl+], a
    ld d, $1d
    rrca
    cp a
    ld bc, $0607
    rrca
    ld [$101f], sp
    rst $38

jr_009_6dc4:
    cpl
    jr nc, @+$41

    jr nz, jr_009_6e28

    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cp $3f
    jr nz, jr_009_6e08

    inc sp
    rla
    inc e
    rrca
    cp a
    rrca
    ld d, $19
    rra
    db $10
    cpl

jr_009_6de4:
    jr nc, @+$01

    ccf
    jr nz, jr_009_6e48

    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
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
    ld l, $3f
    ld sp, $bf1f
    ld bc, $0607
    rrca
    ld [$101f], sp
    rst $38

jr_009_6e08:
    cpl
    jr nc, jr_009_6e4a

    jr nz, @+$61

    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cp $7f
    ld h, b
    ld a, a
    ld e, b
    ld e, a
    ld h, h
    ccf
    cp a
    ld bc, $0302
    rlca
    inc b
    rrca

jr_009_6e28:
    ld [$17ff], sp
    jr jr_009_6e4c

    db $10
    cpl
    jr nc, jr_009_6e60

    jr nc, @+$01

    ccf
    jr nz, @+$41

    jr nz, jr_009_6e77

    jr nz, jr_009_6e69

jr_009_6e3a:
    jr nc, jr_009_6e3a

    rra
    db $10
    rla

jr_009_6e3f:
    rra
    rrca
    ld [$820f], sp
    nop
    inc bc
    rst $38
    dec b

jr_009_6e48:
    ld b, $0b

jr_009_6e4a:
    inc c
    rrca

jr_009_6e4c:
    ld [$1817], sp
    rst $38
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rla
    jr jr_009_6e3f

    rrca
    ld [$080f], sp
    rrca
    adc e
    nop

jr_009_6e60:
    ld bc, $0607
    rst $38
    ld c, $09
    rra
    db $10
    cpl

jr_009_6e69:
    jr nc, @+$41

    jr nz, @+$01

    ccf
    jr nz, jr_009_6eaf

    jr nz, jr_009_6eb1

    jr nz, @+$31

jr_009_6e74:
    jr nc, jr_009_6e74

    rra

jr_009_6e77:
    db $10
    rra
    ld e, $1f
    ld de, $bf1f
    add b
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    rst $38
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    inc b
    cp $f4
    inc c
    ld hl, sp+$08
    call c, $fcb4
    xor a
    nop
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc l

jr_009_6eaf:
    rst $38
    db $f4

jr_009_6eb1:
    inc l
    db $f4
    inc l
    db $fc
    inc b
    db $f4
    inc c
    or $f8
    adc b
    add sp, $58
    add sp, -$08
    cp a
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    add sp, $18
    rst $38
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    db $f4
    inc l
    db $f4
    inc l
    db $f4
    inc l
    cp $f4
    inc c
    ld hl, sp-$78
    ret nc

    ld [hl], b
    ldh a, [$af]
    nop
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @+$01

    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    xor h
    rst $38
    db $fc
    and h
    db $fc
    and h
    db $fc
    inc b
    db $f4
    inc c
    cp $fc
    inc c
    xor $12
    jp nc, $fc2e

    cp a
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    add sp, $18
    rst $38
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c

jr_009_6f11:
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    db $fc
    and h
    db $fc
    and h
    db $fc
    and h
    cp $f4
    inc c
    db $fc
    inc c
    sbc $32

jr_009_6f23:
    cp $bf
    ldh [$d0], a
    jr nc, jr_009_6f11

    jr jr_009_6f23

    ld [$f4ff], sp
    inc c
    db $fc
    inc b
    ld a, [$fa06]
    ld b, $ff
    cp $02
    cp $02
    cp $02
    ld a, [$fe06]
    db $fc
    ld d, h
    db $f4
    ld e, h
    call z, $fcbc
    adc e
    nop
    db $fc
    ld a, d
    add [hl]
    rst $38
    cp $02
    call $f733
    dec c
    ei
    dec b
    rst $38
    ei
    dec b
    rst $38
    ld bc, $03fd
    push af
    dec bc
    cp $fe
    ld [bc], a
    ld a, [$fc06]
    adc h
    db $fc
    adc e
    nop
    ld hl, sp-$0c
    inc c
    rst $38
    inc a
    call nz, Call_009_7ea6
    ld sp, hl
    ccf
    rst $18
    add hl, sp
    rst $38
    rst $38
    add hl, de
    rst $30
    add hl, de
    db $fd
    inc de
    xor $12
    cp $fa
    ld b, $d4
    inc l
    ld hl, sp+$18
    ld hl, sp+$00
    add b
    nop
    add b
    nop
    add a
    nop
    inc a
    ld l, $5e
    rst $38
    ld a, $4e
    ld l, $5e
    ld e, $7e
    ld e, l
    ld h, e
    cp a
    ld hl, sp-$0c
    inc c
    ld a, [$5e06]
    and d
    ei
    db $db
    rst $20
    rst $30
    inc l
    rst $38
    ld a, a
    sub c
    jp $ff11


    inc [hl]
    rst $28
    cp $db
    rst $20
    ld e, a
    and c
    ld e, l
    and e
    cp $80
    nop
    cp e
    inc c
    ld a, [de]
    ld d, $1f
    ccf
    jr nz, @+$01

    rst $38
    push hl
    rst $38
    and l
    cp a
    push hl
    ldh [rIE], a
    xor $20
    ccf
    rra
    ld a, [de]
    ld d, $7f
    db $fd
    cp a
    jp z, $8aff

    add b
    rst $38
    cp a
    rst $38
    rst $38
    cp l
    cp a
    ld sp, hl
    rst $38
    cp c
    add e
    db $fd
    cp $99
    rst $38
    reti


    and a
    add b
    rst $38
    ld a, a
    add b
    nop
    rst $38
    rrca
    ld [$1619], sp
    rlca
    jr jr_009_701f

    inc sp
    rst $38
    dec a
    ld l, $37
    jr c, jr_009_701e

    jr c, jr_009_703c

    ld a, h
    rst $38
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    ld e, b
    ld l, a
    jr nc, @+$41

    ld a, [$3f2e]
    rra
    ld de, $001f
    rst $38
    rrca
    ld [$131c], sp
    inc bc
    inc e
    dec l
    inc sp
    rst $38
    ld [hl], $2f
    dec sp
    inc a
    inc hl
    inc a
    ld c, a
    ld [hl], d
    rst $38
    ld c, [hl]

jr_009_701e:
    ld [hl], e

jr_009_701f:
    ld b, h
    ld a, a
    ld c, b
    ld a, a
    ld h, b
    ld a, a
    or $70
    ld e, a
    ld l, b
    ld e, a
    ld h, a
    inc a
    rst $38
    rrca
    ld [$151a], sp
    rlca
    jr jr_009_7063

    inc sp
    rst $38
    ccf
    inc l
    ccf
    ld sp, $714f

jr_009_703c:
    add a
    ld hl, sp-$01
    pop hl
    sbc [hl]
    ldh a, [$9f]
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    cp $2e
    ccf
    scf
    add hl, sp
    add hl, de
    rla
    ld c, $80
    nop
    add b
    nop
    add a
    nop
    inc a
    ld [hl], $7a
    rst $38
    ld a, $72
    ld [hl], $7a
    ld a, [hl-]
    ld a, [hl]

jr_009_705f:
    ld e, l
    ld h, e
    add b
    nop

jr_009_7063:
    add b
    nop
    add a
    nop
    inc a
    ld a, [de]
    ld a, [hl]
    rst $38
    ld a, $5a
    ld a, [de]
    ld a, [hl]
    ld a, $7e
    ld e, l
    ld h, e
    add b
    nop
    xor c
    nop
    add b
    rst $38
    ld de, $11c2
    rst $38
    add b
    add b
    nop
    add b
    nop
    cp e
    ld h, b
    ret nc

    or b
    ld hl, sp-$0c
    inc c
    rst $38
    rst $30
    ld c, a
    rst $30
    ld c, h
    db $f4
    ld c, a
    rlca
    rst $38
    xor $04
    db $fc
    ld hl, sp-$30
    or b
    ld hl, sp-$01
    db $f4
    inc c
    rst $30
    rrca
    rst $18
    db $fc
    cp $27
    rst $38
    or a
    ld l, l
    rst $38
    dec h
    or l
    ld l, a
    dec h
    rst $38
    cp $b5
    ld l, a
    ld h, $fe
    call c, $f8fc
    add b
    nop
    rst $38
    cp b
    ld c, b
    db $10
    add sp, -$44
    ld b, h
    db $fc
    db $f4
    rst $38
    db $fc
    inc c
    db $fc
    and h
    ld a, [$faa6]
    ld b, $ff
    pop af
    rrca
    inc bc
    db $fd
    inc bc
    db $fd
    ld b, $fe
    ld a, [$f808]
    inc e
    db $f4

jr_009_70d5:
    db $fc
    nop
    cp $d8
    jr z, jr_009_705f

    ld a, h
    call c, $fc24
    rst $38
    db $f4
    inc c
    db $fc
    ld d, h
    ld a, [$fa56]
    ld b, $ff
    ld [hl], d
    adc [hl]
    ld [bc], a
    cp $04
    db $fc
    inc b
    db $fc
    or $1c
    db $fc
    ld l, $f2
    xor $1c
    rst $38
    ld a, b
    adc b
    jr nz, jr_009_70d5

    ld [hl], h
    adc h
    db $fc
    db $f4
    rst $38
    db $ec
    inc e
    db $fc
    ld b, h
    ld a, [$f346]
    dec c
    rst $38
    jp $013d


    rst $38
    ld b, $fe
    inc b
    db $fc
    cp $08
    ld hl, sp+$10
    ldh a, [$b0]
    ret nc

    ld [hl], b
    add b
    nop
    add b
    nop
    rst $18
    nop
    inc a
    ld b, d
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    inc a
    ld b, d
    ld a, l
    ld b, e
    xor a
    nop
    ld e, $2f
    ld sp, $263a
    rst $38
    ld [hl], h
    ld c, h
    ld sp, hl
    jp hl


    sbc a
    rst $38
    ld l, [hl]
    sbc e
    rst $30
    ld a, d
    adc a
    ld l, [hl]
    sbc a
    rst $38
    ld sp, hl
    jp hl


    cp $74
    ld c, h
    ld a, [hl-]
    ld h, $2f
    ld sp, $801e
    nop
    adc c
    nop
    rst $38
    ld de, $11c2
    rst $38
    nop
    add b
    nop
    cp a
    ld hl, sp-$04
    ld c, h
    ld b, h
    db $fc
    db $f4
    db $ec
    db $eb
    inc [hl]
    inc l
    ld a, [hl]
    rst $38
    db $fd
    add e
    rst $38
    db $fd
    xor e
    db $fd
    xor e
    add c
    rst $38
    db $fd
    add e
    cp $81
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld a, [hl]
    cp a
    rrca
    ld de, $221e
    dec a
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    and h
    rst $38
    and h
    rst $38
    cp $a4
    db $db
    add b
    rst $38
    add b
    rst $38
    ld a, a
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0605
    inc b
    ld [$1000], sp
    rst $38
    inc bc
    inc hl
    ld b, $27
    inc c
    ld c, a
    inc c
    ld c, a
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0605
    inc b
    ld [$1000], sp
    rst $38
    inc bc
    ld hl, $2106
    ld c, $41
    inc c
    ld b, e
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0605
    inc b
    ld [$1000], sp
    rst $38
    inc bc
    jr nz, @+$09

    jr nz, jr_009_71e9

    ld c, b
    rrca
    ld c, h
    cp a
    ld hl, sp-$0c
    inc c
    ld a, [$5e06]
    cp [hl]
    rst $38
    db $ed
    di
    rst $38

jr_009_71e9:
    ld h, c
    sbc a
    rst $30
    rst $28
    sbc e
    rst $30
    ei
    adc a
    db $eb
    sbc a
    rst $30
    ld a, a
    pop hl
    cp $ed
    di
    ld e, a
    cp a
    ld e, a
    and c
    cp $bf
    rra
    dec hl
    inc [hl]
    ld d, a
    ld l, b
    ld b, b
    ld a, a
    rst $38
    sbc a
    rst $28
    cp a
    reti


    xor a
    ld sp, hl
    rst $38
    xor c
    rst $38
    cp a
    rst $28
    xor a
    ld sp, hl
    jp hl


    rst $38
    reti


    rst $38
    cp $af
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld a, a
    sbc a
    rst $38
    nop
    rst $38
    nop
    dec b
    ld a, [$05ff]
    ei
    add a
    ei
    ld b, l
    rst $38
    rst $00
    ld a, l
    rst $38
    rst $00
    ld a, l
    ld b, l
    rst $38
    ld b, l
    rst $38
    add a
    ei
    cp $05
    ei
    dec b
    ld a, [$fa05]
    rst $38
    rst $38
    add a
    ei
    dec b
    ld a, [$f40b]
    dec bc
    db $f4
    ld a, [$f00f]
    sub a
    db $eb
    rst $38
    add e
    cp a
    jp $67a7


    jp hl


    ld l, $eb
    inc l
    ld a, [$2ceb]
    set 1, h
    rlca
    nop
    cp l
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld c, $f1
    dec a
    jp $827f


    ld a, e
    add [hl]
    rst $38
    cp d
    rst $00
    add d
    rst $38
    ld h, d
    rst $38
    dec a
    rst $38
    db $fc
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    add b
    nop
    cp a
    ret nz

    ret nc

    jr nc, @+$3a

    ld [$041c], sp
    rst $38
    ld c, $c2
    inc c
    ld [c], a
    rlca
    pop af
    ld b, $f1
    add b
    nop
    add b
    nop
    cp a
    ret nz

    ret nc

    jr nc, jr_009_72d6

    ld [$041c], sp
    rst $38
    ld c, [hl]
    add d
    ld l, h
    add d
    ld [hl], a
    add c
    ld [hl], $c1
    add b
    nop
    add b
    nop
    cp a
    ret nz

    ret nc

    jr nc, jr_009_72eb

    ld [$041c], sp
    rst $38
    adc $02
    db $ec
    ld [bc], a
    rst $20
    ld de, $31c6

jr_009_72bf:
    cp a
    ld hl, sp-$02
    ld e, $ef
    ld sp, $a77b
    rst $38
    rst $30
    rst $08
    cp $6d
    sbc l
    ei
    rst $28
    sbc e
    rst $38
    ei
    adc a
    db $eb
    sbc a
    sbc c

jr_009_72d6:
    rst $38
    ld a, h
    rst $28
    cp $f7
    rst $08
    ld a, e
    and a
    ld l, a
    or c
    cp $ff
    ld b, e
    ld a, a
    jr nz, jr_009_7325

    jr nc, jr_009_7327

    jr c, jr_009_7329

    ei

jr_009_72eb:
    ld a, $3f
    dec sp
    dec a
    ccf
    dec de
    inc e
    cp a
    ccf
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b

jr_009_72f8:
    ld e, a
    ld h, b
    add sp, $5f
    ld h, b
    ccf
    nop
    cp a
    ldh a, [$e8]
    jr jr_009_72f8

    inc c
    db $e4
    inc e
    rst $38
    ld a, [c]
    xor $fa
    ld [hl], $ea
    ld a, $fe
    ld a, [hl+]
    rst $38
    ld a, [$eaee]
    ld a, $2e
    cp $36
    cp $fe
    ld [$e2fe], a
    ld e, $e2
    ld e, $fc
    rst $38
    call nz, $c8bc

jr_009_7325:
    jr c, jr_009_72bf

jr_009_7327:
    ld a, b
    cp b

jr_009_7329:
    ld l, b
    ei
    ld hl, sp-$38
    cp b
    ret z

    ld hl, sp+$70
    sub b
    rst $28
    ld [hl], b
    sub b
    ld hl, sp-$0c
    inc c
    db $fc
    inc b
    ld a, [$04fc]
    db $fc
    inc b
    ld hl, sp+$00
    cp a
    ld hl, sp-$0c
    inc c
    ld a, [$5e06]
    and d
    cp a
    rst $38
    cp $63
    sbc a
    pop af
    db $eb
    sbc l
    rst $38
    rst $38
    adc a
    db $eb
    sbc l
    sbc a
    pop af
    ld a, [hl]
    db $e3
    cp [hl]
    rst $38
    ld e, a
    and c
    ld e, l
    and e
    cp $fe
    ld e, h
    ld a, a
    jr nz, jr_009_73a5

    daa
    ccf
    rra
    add e
    rrca
    ld b, $07
    cp a
    rra
    jr nz, jr_009_73b0

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add sp, $40
    ld a, a
    ccf
    nop
    add d
    nop
    inc a
    rst $38
    jp c, $fee6

    jp nz, $ee3e

    ret nc

    jr nc, @+$01

    ldh a, [rNR10]
    ret nc

    jr nc, jr_009_73ca

    xor $fe
    jp nz, $dae8

    and $3c
    nop
    rst $38
    ld c, [hl]
    ld a, a
    jr nz, jr_009_73d8

    inc hl
    ccf
    rla
    rra

jr_009_739d:
    and d
    rrca
    rlca
    inc bc
    cp a
    rrca
    db $10
    rra

jr_009_73a5:
    jr nz, jr_009_73e6

    jr nz, @+$41

    ld [$3f20], a
    rra
    ld bc, $af00

jr_009_73b0:
    nop
    inc a
    ld e, [hl]
    ld h, d
    db $76
    ld c, [hl]
    rst $38
    add sp, -$68
    ldh a, [$d0]
    jr nz, jr_009_739d

    ret nc

    jr nc, @+$01

    ldh a, [rNR10]
    ret nc

    jr nc, jr_009_73e5

    ldh [$f0], a
    ret nc

    cp $e8

jr_009_73ca:
    sbc b
    or $ce
    ld e, [hl]
    ld h, d
    inc a
    rst $38
    ld b, a
    ld a, a
    jr nz, jr_009_7414

    ld hl, $133f

jr_009_73d8:
    rra
    ld [$0f0b], a
    rlca
    inc bc
    ld bc, $07bf
    ld [$100f], sp
    rra

jr_009_73e5:
    db $10

jr_009_73e6:
    rra
    add sp, $10
    rra
    rrca
    nop
    rst $38
    ld b, a
    ld a, a
    jr nz, jr_009_7430

    ld hl, $133f
    rra
    add sp, $0b
    rrca
    rlca
    inc bc
    xor a
    ld bc, $0807
    rrca
    db $10
    rra
    ld a, [$1f10]
    db $10
    rra
    rrca
    nop
    rst $38
    ld c, [hl]
    ld a, a
    jr nz, jr_009_744c

    inc hl
    ccf
    rla
    rra
    and b
    rrca
    rlca

jr_009_7414:
    adc e
    inc bc
    rrca
    db $10
    rra
    cp $20
    ccf
    jr nz, jr_009_745d

    jr nz, jr_009_745f

    rra
    add b
    nop
    cp a
    cp b
    db $fc
    call nz, $e23e
    sub $3a
    rst $38
    cp $1e
    sub $3a

jr_009_7430:
    ld a, $e2
    db $fc
    call nz, $b8a0
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld bc, $c1fe
    cp $fb
    ld h, d
    cp l
    ld [hl], a
    sbc b
    rst $38
    and $27
    cp a
    rst $38
    ld a, h
    add a

jr_009_744c:
    ld a, $c3
    ld a, $c3
    add sp, $3e
    jp $00ff


    rst $38
    jr c, @+$01

    nop
    rst $38
    ld bc, $c1fe

jr_009_745d:
    cp $fb

jr_009_745f:
    ld h, d
    cp l
    ld [hl], a
    sbc b
    rst $38
    rst $28
    cpl
    rst $38
    cp $ff
    ld a, a
    add a
    ld a, $c3
    ld a, $c3
    ld a, [$c33e]
    db $fc
    rst $38
    ccf
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    add c
    cp $e1
    cp $fb
    or d
    db $dd
    cp a
    ret z

    rst $38
    ld a, a
    sbc a
    rst $38
    db $fd
    cp $3f
    jp nz, $e11f

    rra
    pop hl
    db $fc
    rra
    pop hl
    cp $ff
    nop
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    pop bc
    cp $f1
    cp $fb
    jp c, $dfed

    db $e4
    rst $38
    cp a
    rst $08
    rst $38
    rst $38
    cp $1f
    pop hl
    rrca
    ldh a, [rIF]
    ldh a, [$e2]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    pop bc
    cp $f1
    cp $fb
    jp c, $dfed

    db $e4
    rst $38
    cp e
    call z, $ffbf
    rra
    pop hl
    rrca
    ldh a, [rIF]
    ldh a, [$e8]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    pop bc
    cp $f1
    cp $ff
    jp c, $dfed

    db $e4
    rst $18
    rst $20
    rst $38
    db $fc
    rst $38
    cp a
    rst $08
    rst $38
    cp $1f
    pop hl
    rrca
    ldh a, [$fa]
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    add c
    cp $e1
    cp $ff
    or d
    db $dd
    cp a

jr_009_7503:
    ret z

    cp a
    rst $08
    db $fd
    cp $ff
    ld a, a
    sbc a
    ld [hl], b
    sbc a
    db $fc
    rst $38
    ld a, $c3
    cp $1f
    pop hl
    rra
    pop hl
    rra
    pop hl
    cp $fe
    ld e, h
    ld a, a
    jr nz, jr_009_755d

    daa
    ccf
    rra
    add b
    rrca
    rst $28
    ld b, $07
    rra
    jr nz, @+$41

    ld b, b
    ld a, a
    ld a, [$7f40]
    ld b, b
    ld a, a
    ccf
    nop
    rst $38
    ld a, [$bc76]
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    ei
    ret nc

    jr nc, jr_009_75af

    ret nc

    ldh a, [$e0]
    jr nz, jr_009_7503

    ld hl, sp+$7c
    add h
    ld a, $c2
    ld a, $c2
    add sp, $3e
    jp nz, $00fc

    rst $38
    ld a, [$bc76]
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    cp $d0
    jr nc, jr_009_75cd

jr_009_755d:
    ldh a, [$b0]
    ret nc

    ldh a, [$ef]
    ldh [rNR41], a
    ld hl, sp+$7c
    add h
    ld a, $c2
    ld a, [$c23e]
    ld a, $c2
    db $fc
    nop
    rst $38
    cp d
    ld a, [hl]
    cp h
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    cp $d0
    jr nc, jr_009_75dd

    ldh [$60], a
    and b
    ldh [$fb], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh a, [$f8]
    ld [$7cfe], sp
    add h
    ld a, h
    add h
    ld a, h
    add h
    ld hl, sp-$01
    cp [hl]
    ld e, [hl]
    cp h
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    db $fc
    ret nc

    jr nc, @+$62

    ldh [rLCDC], a
    ret nz

    xor a
    add b
    ldh [$f0], a
    sub b
    ld hl, sp-$78
    ld a, [$88f8]
    ld hl, sp+$08
    ldh a, [rP1]

jr_009_75af:
    rst $38
    cp [hl]
    ld e, [hl]
    cp h
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    cp $d0
    jr nc, jr_009_761c

    ldh [rLCDC], a
    ret nz

    add b
    cp a
    ldh [$f0], a
    db $10
    ld hl, sp-$78
    ld hl, sp-$78
    add sp, -$08
    adc b
    ldh a, [rP1]

jr_009_75cd:
    rst $38
    cp [hl]
    ld e, [hl]
    cp h
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    ld a, [$30d0]
    ld h, b
    ldh [$c0], a
    add b

jr_009_75dd:
    cp a
    ldh [$f0], a
    db $10
    ld hl, sp+$08
    ld hl, sp-$78
    add sp, -$08
    adc b
    ldh a, [rP1]
    rst $38
    cp d
    ld a, [hl]
    cp h
    ld b, h
    ld [hl], h
    adc h
    ld l, b
    sbc b
    di
    ret nc

    jr nc, jr_009_7617

    ldh [$c0], a
    ld b, b
    cp a
    ldh a, [$f8]
    ld [$847c], sp
    ld a, h
    add h
    add sp, $7c
    add h
    ld hl, sp+$00
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld bc, $c1fe
    cp $ff
    ld h, d
    cp l
    ld [hl], a
    sbc b
    ld a, a
    sbc a

jr_009_7617:
    or $f7
    rst $38
    rst $38
    ccf

jr_009_761c:
    ld hl, sp-$01
    ld a, h
    add a
    ld a, $c3
    ld a, [$c33e]
    ccf
    jp $00fc


    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ld bc, $0302
    or $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $05ff
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$1817], sp
    rst $38
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rst $38
    rla
    jr jr_009_76c7

    ld a, b
    cp e
    call $86ff
    ld a, [$85fe]
    cp h
    rst $00
    ld a, a
    nop
    xor a
    nop
    add b
    ret nz

    ld b, b
    and b
    ld h, b

jr_009_7663:
    rst $38
    ret nc

    jr nc, @-$0e

    db $10

jr_009_7668:
    ret c

    jr c, jr_009_7663

    jr z, @+$01

    ret c

    jr c, jr_009_7668

    ld [$18e8], sp
    ldh a, [rNR10]
    add sp, -$60
    ld h, b
    ret nz

    nop
    cp a
    ld bc, $0706
    dec bc
    inc c
    rla
    jr @+$01

    rra
    db $10
    cpl
    jr nc, @+$31

    jr nc, jr_009_76c9

    jr nz, @+$01

    ccf
    jr nz, @+$01

    ldh [$6f], a
    or b
    rst $38
    db $10
    cp $f7
    add hl, de
    db $eb
    dec e
    push de
    scf
    db $e3
    adc e
    nop
    ld h, b
    ldh a, [$90]
    rst $38
    ld [hl], b
    sub b
    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08
    rst $38
    db $f4
    inc c
    db $f4
    inc c
    db $fc
    inc b
    db $fc
    call nz, $f4fe
    inc l
    add sp, $38
    or b
    ld [hl], b
    ret nz

    cp a
    rrca
    ld d, $19
    rra
    db $10
    rla
    jr @+$01

    rra
    db $10
    cpl

jr_009_76c7:
    jr nc, jr_009_7708

jr_009_76c9:
    jr nz, jr_009_770a

    jr nz, @+$01

    rst $38
    ldh [$7f], a

jr_009_76d0:
    and b
    rst $28
    jr nc, @-$1f

    jr nc, jr_009_76d0

    rst $30
    jr @-$23

    inc a
    rst $20
    ld bc, $7eff
    ld [hl], c
    or a
    ret z

    ei
    add h
    ei
    add [hl]
    rst $38
    rst $38
    add l
    or e
    rst $08
    cp [hl]
    pop bc
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld e, a
    ldh [rIE], a

jr_009_76f6:
    jr nz, jr_009_76f6

    rst $08
    ld [hl], b
    db $e3
    ld e, h
    db $db
    ld h, a
    db $fc
    add d
    nop
    jr @+$01

    dec a
    dec h
    ccf
    inc hl
    cpl

jr_009_7708:
    jr nc, @+$18

jr_009_770a:
    add hl, de
    rst $38
    rra
    ld de, $312f
    ld a, $21
    ccf
    jr nz, @+$01

    ccf
    jr nz, jr_009_7747

    jr nc, @+$21

    jr @+$21

    rla
    rst $38
    rra
    ld e, $2f
    scf
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
    or a
    ret z

    rst $38
    ld a, a
    ld [hl], b
    ld e, a
    ld h, b
    rst $18
    ldh [$bf], a
    ld h, b
    cp $ef
    jr nc, @+$01

    ld e, $ff
    ld hl, $ffff
    cp $ee
    ld a, [$fd1e]
    inc de

jr_009_7747:
    rst $38
    ld de, $ffff
    ld hl, $41ff
    cp a
    ld b, c
    rst $38
    ld bc, $fdff

jr_009_7754:
    inc bc
    cp $02
    ld a, [$f4c6]
    inc l
    ld a, [$fe2e]
    cpl
    pop af
    rst $38
    nop
    add b
    nop
    add b
    nop
    cp a
    inc c
    rra
    inc de
    rra
    ld [de], a
    dec h
    ld a, [hl-]
    rst $38
    ld a, $21
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    rst $28
    ldh a, [$7b]
    call c, $22fd
    rst $38
    ld [bc], a
    rst $38
    rst $38
    inc bc
    rst $38
    rlca
    db $fd
    dec bc
    rst $30
    add hl, bc
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    cp $02
    ld a, [$fee6]
    ld [hl], h
    sbc h
    ret c

    jr c, jr_009_7754

    ld h, h
    db $fc
    add b
    nop
    add b
    nop
    xor a
    nop
    inc c
    ld e, $12
    dec e
    inc de
    rst $38
    rla
    jr @+$31

    jr nc, jr_009_77ea

    jr nz, jr_009_782c

    ld [hl], b
    rst $38
    rst $38
    db $ec
    rst $18
    ld a, $f7
    dec c
    rst $38
    inc bc
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
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    cp $02
    cp $fa
    ld [hl], $fc
    call z, $38c8
    ld hl, sp-$01
    xor $92
    ld a, [hl]
    add d
    ld a, [$f506]
    rrca
    rst $38
    rst $38
    ld sp, hl
    rst $30
    cp c
    db $ed
    di
    ld_long a, $ff06
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c

jr_009_77ea:
    ld hl, sp+$08
    cp $e8
    jr @-$46

    ld a, b
    db $fc
    call nz, $82fc
    nop
    ret nz

    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    ldh a, [rNR10]
    ret c

    cp b
    rst $38
    ld hl, sp+$28
    db $fc
    or h
    ld c, h
    or h
    db $fc

jr_009_7808:
    inc b
    cp $f4
    inc c
    ld hl, sp+$08
    add sp, $18
    ldh a, [rIE]
    ld hl, sp-$28
    db $f4
    db $ec
    ld a, [$fe06]
    ld [bc], a
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    ei
    dec b
    rst $38
    cp $06
    db $fc
    inc b
    db $f4
    inc c
    ld hl, sp+$08

jr_009_782c:
    cp $e8

jr_009_782e:
    jr jr_009_7808

    jr c, jr_009_782e

    call nz, $fffc
    dec b
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$1817], sp
    rst $38
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rst $38
    rla
    jr @+$79

    ld a, b
    cp e
    call z, $86fd
    ld a, [$83ff]
    cp e
    add $7f
    nop
    cp a
    ld bc, $0706
    dec bc
    inc c
    rla
    jr @+$01

jr_009_785f:
    rra
    db $10
    cpl
    jr nc, jr_009_7893

    jr nc, jr_009_78a5

    jr nz, @+$01

    ccf
    jr nz, @+$01

    ldh [$6f], a
    or b
    rst $38
    db $10
    cp $f7
    jr jr_009_785f

    inc e
    push de
    scf
    db $e3
    add b
    nop
    add b
    nop
    adc e
    nop
    ld b, $0f
    add hl, bc
    rst $38
    ld c, $09
    dec bc
    inc c
    rlca
    inc b
    ld c, $09
    rst $38
    ld [hl], a
    ld a, c
    or d
    call $84fb
    ei
    add h

jr_009_7893:
    rst $38
    ei
    add h
    or a
    adc $5f
    ld h, l
    ccf
    inc hl
    rst $38
    ccf
    jr nz, jr_009_791f

    ld h, b
    xor a
    ldh a, [$ef]
    or b

jr_009_78a5:
    cp $f7
    sbc b
    cp a
    sbc $7f
    ld h, c
    ccf
    add b
    nop
    add b
    nop
    xor a
    nop
    ld c, $1d
    inc de
    ld e, $11
    rst $38
    rrca
    ld [$080f], sp
    ld d, $19
    rra
    ld de, $7eff
    ld [hl], c
    or a
    ret z

    ei
    add h
    ei
    add [hl]
    rst $38
    rst $38
    add l
    or e
    rst $08
    cp [hl]
    pop bc
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld e, a
    ldh [$df], a
    ld h, b
    cp $ef
    jr nc, @+$01

    ld e, $ff
    ld hl, $80ff
    nop
    add b
    nop
    adc e
    nop
    jr c, jr_009_7940

    ld l, h
    ld a, [$447c]
    ld d, h
    ld l, h
    jr c, jr_009_78f4

jr_009_78f4:
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ret nz

    ld b, b
    cp $e0
    jr nz, @-$1e

    jr nz, @-$5e

    ld h, b
    ret nz

    rst $38
    cp $ee
    ld a, [$fd1e]
    inc de
    rst $38
    ld de, $ffff
    ld hl, $41ff
    cp a
    ld b, c
    rst $38
    ld bc, $fdff
    inc bc
    cp $02
    ld a, [$f706]

jr_009_791f:
    dec c
    ld a, [$fbed]
    ld sp, hl
    rra
    cp $00
    rst $38
    rst $28
    ldh a, [$7b]
    call c, $22fd
    rst $38
    ld [bc], a
    rst $38
    rst $38
    inc bc
    rst $38
    rlca
    db $fd
    dec bc
    rst $30
    add hl, bc
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    cp $02

jr_009_7940:
    ld a, [$e606]
    db $f4
    inc c
    ld hl, sp+$08
    ld hl, sp-$80
    nop
    add b
    nop
    xor a
    nop
    jr @+$3e

    inc h
    call c, $ffe4
    call nc, $fa2c
    ld b, $de
    ld [hl-], a
    db $fd
    and e
    rst $38
    rst $18
    ld sp, $91ef
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $30
    inc c
    rst $38
    db $fc
    cp $d9
    rst $38
    rst $28
    pop af
    rst $38
    ld bc, $03fd
    cp $02
    cp $fe
    ld b, $ef
    add hl, de
    ld sp, hl
    rst $30
    ld a, $80
    nop
    add b
    nop
    cp a
    jr nc, @+$7a

    ld c, b
    ret c

    add sp, -$08
    ld [$f4ff], sp
    inc c
    call c, $fa34
    and [hl]
    sbc $32
    rst $38
    xor $92
    ld a, [hl]
    add d
    ld a, [$f506]
    rrca
    rst $38
    rst $38
    ld sp, hl
    rst $30
    cp c
    db $ed
    di
    ld_long a, $ff06
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c
    db $fc
    inc c
    cp $fe
    ld [de], a
    or d
    ld l, [hl]
    ld a, [c]
    xor $1c
    nop
    add b
    nop
    add l
    nop
    inc bc
    inc e
    cp $1f
    ldh [$fc], a
    inc bc
    nop
    db $fc
    nop
    add b
    nop
    rst $38
    rla
    jr jr_009_79eb

    rla
    dec de
    inc e
    rra
    db $10
    rst $38
    cpl
    ld sp, $213f
    ld b, a
    ld a, b
    ld b, c
    ld a, [hl]
    rst $38
    ld h, d
    ld e, l
    ld a, b
    ld c, a
    ld [hl], d
    ld a, l
    ld b, b
    ld a, a
    ld a, [$3f3c]
    ld a, $23
    ccf
    nop
    rst $38

jr_009_79eb:
    rla
    jr jr_009_7a0d

    rla
    dec de
    inc e
    rra
    db $10
    rst $38
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    ld c, a
    ld [hl], b
    add e
    db $fc
    rst $38
    call nz, $f0bb
    sbc a
    ld h, h
    ld a, e
    ld b, b
    ld a, a
    or $60
    ld a, a
    ld a, b
    ld e, a
    ld h, a
    inc a
    rst $38

jr_009_7a0d:
    rla
    jr jr_009_7a2f

    rla
    dec de
    inc e
    rra
    db $10
    rst $38
    cpl
    jr nc, @+$41

    jr nz, @+$45

    ld a, h
    ld b, b
    ld a, a
    rst $38
    ld c, l
    db $76

jr_009_7a21:
    ld a, h
    ld h, a
    ld e, c
    ld a, [hl]
    ld b, b
    ld a, a
    cp $27
    ccf
    dec de
    inc e
    inc c
    dec bc
    rlca

jr_009_7a2f:
    cp a
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    ld a, [hl-]
    dec h
    rst $38
    ld a, [hl-]
    dec h
    ld a, d
    ld b, l
    ld a, [hl]
    ld a, a
    ld [hl], a
    ld c, a
    rst $38
    ld [hl], a
    ld c, a
    ld [hl], a
    ld c, a
    ld [hl], a
    ld c, a
    ld a, [hl]
    ld a, a
    cp $7a
    ld b, l
    ld a, d
    ld b, l
    ld a, d
    ld b, l
    ld a, a
    add b
    nop
    sbc a
    nop
    ld h, b
    nop
    jr nc, jr_009_7a69

    jr z, @+$01

    jr @+$26

    ld [$0c14], sp
    ld [de], a
    inc e
    ld [de], a
    rst $38
    inc c
    ld a, [bc]
    jr jr_009_7a86

    daa

jr_009_7a69:
    ccf
    ld b, a
    ld a, c
    add b
    nop
    add b
    nop
    rst $38
    nop
    ldh [$60], a
    sub b
    jr nc, jr_009_7abf

    jr nc, @+$4a

    rst $38
    jr @+$26

    jr jr_009_7aa2

    jr jr_009_7aa4

    ld [$9f14], sp
    nop
    inc c
    inc b

jr_009_7a86:
    ld a, [bc]
    inc b
    ld a, [bc]
    rst $38
    inc b
    ld a, [bc]
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld [de], a
    rst $38

jr_009_7a93:
    jr jr_009_7ab9

    jr jr_009_7abb

    jr nc, jr_009_7ae1

    jr nc, jr_009_7ae3

    rst $38
    ld h, b
    sub b
    ret nz

    jr nz, jr_009_7a21

    ld b, b

jr_009_7aa2:
    nop
    add b

jr_009_7aa4:
    add a
    nop
    jr jr_009_7ab8

    jr z, @+$01

    jr nc, jr_009_7af4

    ld h, b
    sub b
    ldh [rNR10], a
    ret nz

    jr nz, jr_009_7a93

    nop
    ret nz

    nop
    add b

jr_009_7ab7:
    nop

jr_009_7ab8:
    rst $28

jr_009_7ab9:
    ret nz

    ld b, b

jr_009_7abb:
    ldh [$d0], a
    jr nc, jr_009_7ab7

jr_009_7abf:
    ld [$fcff], sp
    inc h
    db $fc
    dec h
    ei
    ld b, $f3
    dec c
    rst $38
    ld c, c
    or a
    ld [bc], a
    cp $0c
    db $f4
    inc b
    db $fc
    ld a, [$f808]
    inc a
    db $f4
    db $fc
    nop
    rst $38
    jp nz, $e245

    push hl
    jp nc, $fa35

jr_009_7ae1:
    dec c
    rst $38

jr_009_7ae3:
    cp $45
    cp $47
    di
    dec c
    pop hl
    rra
    rst $38
    sub d
    ld l, [hl]
    ld [bc], a
    cp $14
    db $ec
    inc b
    db $fc

jr_009_7af4:
    or $0c
    db $fc
    ld e, $f2
    xor $1c
    rst $28
    ret nz

    ld b, b
    ldh [$d0], a
    jr nc, @-$06

    ld [$f4ff], sp
    sbc h
    db $fc
    sub h
    ld a, [$7a06]
    add [hl]
    rst $38
    ld de, $03ef
    db $fd
    rlca
    db $fd
    ld b, $fe
    cp $08
    ld hl, sp-$78
    ld hl, sp-$28
    add sp, $38
    rst $38
    ld a, [hl]
    ld b, c
    ld e, b
    ld h, a
    jr c, jr_009_7b4b

    inc l
    inc sp
    ld a, [$1b14]
    ld c, $0d
    inc bc
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $02fe
    inc bc
    dec b
    ld b, $0b
    dec c
    ld a, $ff
    ld e, d
    ld h, [hl]
    rst $38
    jp Jump_009_42ff


    ld e, d
    rst $20
    and b
    cp a
    nop
    add b
    nop
    add b

jr_009_7b4b:
    nop
    adc e
    nop
    rrca
    rra
    db $10
    and b
    rra
    nop
    cp a
    ldh [$d8], a
    jr c, @+$16

    db $ec
    ld [bc], a
    cp $ff
    ld [bc], a
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    ld bc, $fcff
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    cp a
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    ld a, [hl-]
    dec h
    rst $38
    ld a, [hl-]
    dec h
    ld a, d
    ld b, l
    ld a, d
    ld b, l
    ld a, d
    ld b, l
    rst $38
    ld a, d
    ld b, l
    ld a, d
    ld b, l
    ld a, d
    ld [hl], l
    ld a, d
    ld b, l
    cp $7a
    ld [hl], l
    ld a, d
    ld b, l
    ld a, d
    ld b, l
    ld a, a
    cp a
    ldh [$d8], a
    jr c, @+$16

    db $ec
    ld [bc], a
    cp $fc
    ld [bc], a
    cp $01
    rst $38
    ld a, a
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    db $fc
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    nop
    cp [hl]
    ld bc, $1f1e
    ld hl, $3e3f
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0706
    add hl, sp
    ccf
    ld c, [hl]
    ld a, [hl]
    cp $84
    db $fc
    add h
    db $fc
    ret z

    ld hl, sp+$38
    cp $14
    inc e
    inc d
    inc e
    ld a, [bc]
    ld c, $07
    add sp, $0f
    ld [$000f], sp
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    cp $82
    cp a
    rst $08
    db $76
    ld a, e
    db $dd
    dec c
    dec bc
    dec c
    ld b, $05
    ld b, $d8
    inc bc
    ld [bc], a
    inc bc
    ld bc, $2aff
    scf
    ld e, [hl]
    ld a, a
    or d
    db $d3
    ld h, d
    and e
    db $fc
    jp nz, $8243

    add e
    ld [bc], a
    inc bc
    rst $38
    inc b
    rlca
    jr jr_009_7c2d

    ld hl, sp-$01
    db $fc
    rrca
    and b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    db $fd
    add e
    or [hl]
    rst $08
    ld [hl], a
    ld a, e
    rst $38
    ld c, $0a
    dec bc
    dec c
    rlca

jr_009_7c2d:
    dec b
    rlca
    dec b
    ei
    dec b
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ei
    rrca
    ld [$0d0a], sp
    rrca
    dec e
    dec d
    rst $38
    dec e
    dec d
    ld a, [hl-]
    dec hl
    inc a
    cpl
    ld [hl], h
    ld d, a

jr_009_7c49:
    rst $38
    db $76
    ld d, a
    rst $20
    and a
    db $e4
    rst $20
    jp nc, $fe33

    ld_long a, $ff1b
    rla
    rst $10
    jr c, jr_009_7c49

    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    cp $82
    or a
    rst $08
    db $76
    ld a, e
    cp $0b
    dec c
    dec b
    ld b, $02
    inc bc
    ld bc, $00af
    ld bc, $0706
    add hl, de
    rra
    rst $38
    and $fe
    jr c, @-$06

    db $10
    ldh a, [rNR10]
    ldh a, [$cf]
    ld hl, $d1e1
    pop af
    db $d3
    ld a, [c]
    rst $38
    dec hl
    ld a, [hl-]
    rla

jr_009_7c8f:
    rra
    dec bc
    inc c
    rra
    jr jr_009_7c8f

    rst $38
    add sp, -$15
    inc e
    rst $30
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    cp $82
    cp [hl]
    adc $75
    ld a, e
    ld a, [$0c0f]
    ld [bc], a
    inc bc
    ld bc, $8200
    nop
    inc bc
    rst $38
    sbc e
    ld a, [$e263]
    add a
    add l

Jump_009_7cbe:
    rlca
    dec b
    rst $38
    rlca
    dec b
    rlca
    dec b
    ld c, $0a
    ld c, $0a
    cp a
    ld e, $2d
    inc sp
    ld a, a
    ld h, c
    rst $38
    and c
    add sp, -$53
    ld [hl], e
    sbc $00
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    add d
    nop
    ret nz

    rst $38
    jr nc, @-$0e

    call c, $b6fc
    cp [hl]
    and d
    cp [hl]
    rst $28
    db $76
    cp $fc
    ld d, h
    cp h
    db $f4
    inc e
    add b
    add b
    add b
    add b
    cp a
    add b
    ld h, b
    ldh [$5e], a
    cp $c1
    rst $38
    and b
    cp a
    nop

Jump_009_7cff:
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    adc e
    nop
    ret nz

    jr nc, @-$0e

    rst $38

jr_009_7d0b:
    adc $fe
    dec sp
    ccf
    ld de, $0b1f
    rrca
    rst $38
    sub [hl]
    sbc [hl]
    sub h
    sbc h
    call nc, $a8dc
    ld a, b
    rst $38

jr_009_7d1d:
    and b
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    cp a
    add b
    ld b, b
    ret nz

    jr nz, jr_009_7d0b

    jr nc, jr_009_7d1d

    rst $38
    ld l, b
    ld hl, sp-$18
    ld hl, sp-$6c
    sbc h
    adc d
    adc [hl]
    xor $85
    add a

jr_009_7d39:
    add e
    ret nz

    ld b, b
    ret nz

    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    add d
    nop
    ret nz

    rst $38
    jr nc, jr_009_7d39

    call c, $f6fc
    ld a, [hl]
    ld h, d
    cp [hl]
    rst $38
    or $fe
    xor h
    call c, $88f8
    xor b
    ret c

    cp a
    ld [hl], b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    cp $c0
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    adc a
    add b
    ld b, b
    ret nz

    ldh [$60], a
    ld a, [$5efe]
    ld e, a
    pop hl
    cp a
    nop
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b

Jump_009_7d7b:
    add b
    nop
    cp [hl]
    add b
    ldh [$60], a
    ldh a, [$90]
    db $fc
    rst $38
    ld l, d
    db $76
    ld a, [hl]
    ld h, d
    ld [$3cf6], a
    db $fc
    adc b
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld hl, sp+$78
    add sp, $7c
    add h
    db $fc
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    rrca
    db $10
    rra
    and b
    rra
    nop
    add d
    nop
    ld bc, $02fe
    inc bc
    inc b

jr_009_7daf:
    rlca
    add hl, bc
    rrca
    ld e, $ff
    inc h
    inc a
    jp Jump_009_43ff


    rst $38
    ld h, a
    cp $a0
    cp a
    nop
    add b
    nop
    add b
    nop
    adc e

jr_009_7dc4:
    nop
    ld bc, $0302
    cp $07
    ld b, $7f
    ld a, d
    ld a, [$fd87]
    add b
    nop
    add b
    nop
    add d
    nop
    ld bc, $06fe
    rlca
    ld a, d
    ld a, a
    add e
    rst $38
    db $fd
    xor a
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    adc a
    ld bc, $0302
    ld [bc], a
    inc bc
    cp $05
    rlca
    ld a, [bc]
    ld c, $14
    inc e
    jr jr_009_7daf

    ld bc, $0203
    inc bc
    nop
    or a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    rst $28
    ld [bc], a
    inc bc
    ld bc, $0203
    inc bc
    ld [bc], a
    cp $07
    dec b
    ld c, $0a
    inc e
    inc d
    jr jr_009_7dc4

    ld bc, $0302
    nop
    add b
    nop
    cp [hl]
    ld bc, $1e1f
    ld a, $21
    ccf
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0607
    ld a, a
    ld a, c
    or [hl]
    adc $fe
    db $fc
    add h
    db $fc
    add h
    or h
    call z, $ff78
    inc e
    inc d
    inc e
    inc d
    ld c, $0a
    rlca
    dec b
    ret z

    dec bc
    rrca
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    ld a, [$bd86]
    bit 6, a
    ld a, h
    cp a
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add b
    ld bc, $37ff
    ld a, $5f
    ld a, [hl]
    sub e
    ld a, [c]
    inc hl
    ld [c], a
    cp $43
    jp nz, $8283

    inc bc
    ld [bc], a
    rlca
    rst $38
    dec bc
    inc c
    rra
    jr @+$01

    add sp, -$15
    inc e
    and b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    ld sp, hl
    add a
    or e
    call z, Call_009_7f76
    rst $38
    dec bc
    rrca
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld [c], a
    ld [bc], a
    inc bc
    ld bc, $ff03
    ld [$0d0f], sp
    rrca
    dec bc
    rrca
    dec d
    dec e
    rst $38
    rla
    rra
    dec l

Call_009_7ea6:
    ld a, $2f
    inc a
    ld d, a
    ld [hl], h
    rst $38
    ld d, l
    db $76
    and a
    rst $20
    and $e5
    inc hl
    ld [c], a
    cp $1b
    ld a, [$fe17]
    inc sp
    cp $ef
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    ld a, [$b586]
    bit 6, a
    ld a, h
    cp $0b
    rrca
    inc b
    rlca

jr_009_7ed3:
    ld [bc], a
    inc bc
    ld bc, $00af
    ld bc, $0607
    rra
    add hl, de
    rst $38
    cp $e6
    ret c

    jr c, jr_009_7ed3

    db $10
    ldh a, [rNR10]
    rst $28
    pop de
    ld sp, $f1e1
    pop de
    ld a, [c]
    db $d3
    rst $38
    ld a, [hl-]
    dec hl
    rra
    rla
    ld c, $0b
    ld e, $1f
    ld_long a, $ffe8
    inc c
    rst $38
    rst $30
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, $ff
    ccf
    pop af
    rst $38
    ld a, a
    pop bc
    ld a, [$be86]
    jp z, Jump_009_7d7b

    ld a, [$0605]
    ld [bc], a
    inc bc
    ld bc, $8200
    nop
    inc bc
    rst $38
    ld a, [$e29b]
    ld h, e
    add l
    add a
    dec b
    rlca
    rst $38
    dec b
    rlca
    dec b
    rlca
    ld a, [bc]
    ld c, $0a
    ld c, $bf
    ld c, $12
    ld e, $61
    ld a, a
    and c
    rst $38
    add sp, $33
    rst $38
    sbc $00
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    adc e
    nop
    add b
    ld h, b
    ldh [rIE], a
    ret c

    jr c, @-$02

    call c, $b6aa
    cp [hl]
    and d
    rst $28
    ld l, d
    or $fc
    cp h
    db $f4
    inc e
    db $f4
    add b
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ldh [$60], a
    cp $5e
    ld e, a
    pop hl
    and b
    cp a
    nop
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    adc e
    nop
    ret nz

    ldh a, [$30]
    rst $38
    cp [hl]
    adc $75
    ld a, e
    rra

Call_009_7f76:
    ld de, $9b95
    cp a
    sbc [hl]
    ld e, h
    call nc, $d4dc
    ld a, b
    add sp, -$01
    ldh [$a0], a
    ldh [$a0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    cp a
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh a, [$30]
    rst $38
    cp b
    ld l, b
    ld hl, sp-$18
    sbc h
    sub h
    adc [hl]
    adc d
    add sp, -$79
    add l
    add e
    ret nz

    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    adc e
    nop
    add b
    ld h, b
    ldh [rIE], a
    ret c

    jr c, @-$02

    call c, $f66a
    ld a, $e2
    rst $38
    ld [$fcf6], a
    sbc h
    add sp, $78
    ret c

    ld hl, sp-$41
    ld [hl], b
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$fe], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add e
    add b
    ld h, b
    ldh [$fa], a
    ld e, [hl]
    cp $c1
    rst $38
    cp a
    nop
    ld hl, sp+$40
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    cp a
    add b
    ldh [$60], a
    ld [hl], b
    or b
    cp h
    db $fc
    rst $38
    ld d, [hl]
    ld l, [hl]
    ld a, [hl]
    ld b, [hl]
    sub $ee
    db $fc
    inc a
    adc b
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld a, b
    ld hl, sp-$38
    inc b
    db $fc
    nop

Jump_009_7fff:
    nop
