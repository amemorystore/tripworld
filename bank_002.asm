; Disassembly of "tw.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    nop
    add b
    jr @+$42

    nop
    adc b
    rst $10
    ld b, [hl]
    nop
    sub b
    ld e, c
    ld c, l
    nop
    adc b
    cpl
    ld d, e
    nop
    add b
    or l
    ld e, c
    nop
    adc b
    ld h, l
    ld h, c
    add b
    nop
    cp l
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    adc b
    ld bc, $af00
    nop
    ld c, $1f
    ld de, $203f
    rst $38
    ccf
    jr nz, @+$41

    jr nz, @+$31

    jr nc, jr_002_4062

    jr nc, @+$01

    rra
    db $10
    rla
    jr jr_002_4049

    ld [$0c0b], sp
    ld a, [$0605]
    ld [bc], a
    inc bc
    ld bc, $8000
    nop
    add b

jr_002_4047:
    nop
    cp a

jr_002_4049:
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_002_4047

    ld [$fcff], sp
    inc b
    cp $02
    rst $38
    ld bc, $80ff
    rst $38
    ld e, a
    ld h, b
    scf
    jr c, jr_002_406c

    ld c, $87
    add h

jr_002_4062:
    rst $38
    ld c, a
    ret z

    rst $10
    ld e, b

jr_002_4067:
    cp a
    ld [hl], b
    rst $28
    jr nc, @+$01

jr_002_406c:
    rst $28

jr_002_406d:
    jr nc, jr_002_406d

    ld hl, $20ff
    rst $38
    jr nz, @+$01

    rst $38
    jr nz, jr_002_4067

    jr nc, @-$3f

    pop de
    db $76
    ld a, e
    cp $0b
    ld c, $07
    ld b, $03
    ld [bc], a
    ld bc, $0080
    cp a
    ld [hl], b
    add sp, -$68
    db $fc
    add h
    cp $82
    rst $38
    cp l
    jp Jump_002_417f


    ld e, [hl]
    ld h, c
    ccf
    jr nz, @+$01

    rra
    db $10
    dec bc
    inc c
    dec b
    ld b, $8f
    adc b
    rst $38
    ld e, a
    ret nc

    rst $38
    ld h, c
    rst $18
    ld h, c
    ld a, a
    pop bc
    rst $38
    cp a
    pop bc
    cp [hl]
    pop bc
    rst $38
    add b
    push af
    adc d
    rst $38
    ld a, [$bf85]
    ret nz

    ld a, a
    ret nz

    rst $38
    and b
    cp $f7
    sbc b
    db $fc
    adc a
    ld a, a
    ld b, e
    ccf
    add b
    nop
    ldh [rP1], a
    stop
    add c
    nop
    db $10
    ld hl, sp+$10
    jr z, jr_002_40d1

jr_002_40d1:
    stop
    sbc a
    nop
    add b
    ld b, b
    inc b
    jr z, jr_002_40ea

    rst $18
    db $10
    jr z, jr_002_40ee

    inc b
    ld b, b
    nop
    ld [bc], a
    add a
    nop
    db $10
    jr c, jr_002_40e7

jr_002_40e7:
    or $38
    ld b, h

jr_002_40ea:
    jr c, jr_002_40ec

jr_002_40ec:
    stop

jr_002_40ee:
    add b
    nop
    cp a
    ret nz

    or b
    ld [hl], b
    add sp, $18

jr_002_40f6:
    db $fc
    inc b
    rst $38
    cp $02
    ld a, a
    add c
    cp a
    ret nz

    ld e, a
    ld h, b
    rst $38
    ccf
    jr nc, jr_002_4114

    inc c
    ld [bc], a
    inc bc
    add a
    add h
    rst $38
    ld c, a
    ret z

    rst $18
    ld d, b
    xor a
    ld [hl], b
    rst $38
    jr nz, @+$01

jr_002_4114:
    rst $38
    jr nz, jr_002_40f6

    ld h, b
    db $fd
    ld b, d
    cp $41
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld e, a
    rst $20
    cp e
    db $ec
    ld a, [$7877]
    rla
    jr jr_002_413a

    nop
    add d
    nop
    jr nc, @+$01

    ld a, b
    ld c, b
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    ld e, [hl]
    ld h, d
    rst $38
    ccf

jr_002_413a:
    ld hl, $312f
    rra
    db $10
    adc a
    adc b
    rst $38
    ei
    ld a, h
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    ld e, $ff
    rst $38
    ld e, $ad
    ld e, [hl]
    ld d, e
    xor h
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [$7f]
    adc b
    rst $38
    inc b
    cp $ff
    inc b
    rst $00
    inc a
    rrca
    rst $38
    di
    add d
    nop
    jr @+$01

    inc a
    inc h
    ld a, $22
    ld a, $22
    ccf
    ld hl, $2fff
    ld sp, $312f
    sbc a

Jump_002_417f:
    sub c
    sub a
    sbc c
    rst $38
    ld a, e
    db $fd
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    rst $38
    db $e3
    db $dd
    db $e3
    ld a, $c1
    rst $30
    inc c
    rst $38
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
    inc bc
    di
    ld c, $ff
    cp $01
    sub a
    nop
    stop

jr_002_41b2:
    db $10
    jr z, jr_002_41b2

    ld a, h
    add d
    db $10
    jr z, jr_002_41ca

    nop
    db $10
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
    add d
    nop

jr_002_41ca:
    jr @+$01

    inc a
    inc h
    ld a, $22
    ld a, $22
    ccf
    ld hl, $3fff
    ld hl, $312f
    sbc a
    sub b
    rst $10
    ld e, b
    rst $38
    cp e
    ld a, h
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    rst $38
    ld a, b
    or a
    ld a, b
    ld c, a
    or b
    cp l
    ld b, e
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ld h, b
    ld a, [$20ff]
    rst $38
    jr nz, @+$01

    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    add b
    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    rst $38
    db $fc
    inc e
    db $fc
    inc [hl]
    ld a, [$fe36]
    ld a, $ff
    cp $3e
    jp c, $e63e

    ld a, [de]
    cp d
    ld h, [hl]
    rst $38
    sbc h
    ld h, h
    db $f4
    inc c
    ld hl, sp+$08
    ldh a, [rNR10]
    cp $f0
    jr nc, jr_002_428f

    add sp, -$48
    ret z

    ldh a, [$80]
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    rst $38
    ldh a, [$90]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$38
    rst $38
    ld hl, sp-$38
    cp b
    ret z

    ld a, b
    adc b
    add sp, $18
    rst $38
    ldh a, [rNR10]
    ld hl, sp+$78
    or h
    call z, $04fc
    cp $fc
    inc b
    call nz, $083c
    ld hl, sp-$10
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
    adc b
    nop
    add b
    rst $38
    ld b, b
    ret nz

    and b
    ld h, b
    ldh a, [rNR10]
    add sp, $18
    rst $38
    ld hl, sp+$68
    db $f4

jr_002_428f:
    call z, $ccf4
    db $fc
    db $f4
    rst $38
    db $fc
    db $f4
    ld l, h
    db $f4
    sbc h
    ld h, h
    db $fc
    inc b
    rst $38
    db $f4
    inc c
    ld hl, sp+$08
    add sp, $18
    ld hl, sp+$18
    ld a, [$24fc]
    ld a, h
    call nz, $00f8
    add b
    nop
    cp a
    nop
    dec l
    inc sp
    ccf
    ld b, b
    ld a, a
    nop
    ld hl, sp+$7f
    ld b, b
    ld [bc], a
    inc bc
    nop
    cp a
    nop
    pop af
    sub c
    ldh a, [$09]
    ld sp, hl
    inc b
    rst $38
    rst $38
    ld [bc], a
    ld a, [hl]
    add c
    ld a, a
    nop
    ld a, [hl]
    pop bc
    rst $38
    rla
    ld a, b
    ld c, h
    ld a, a
    and d
    cp a
    ld hl, $ffff
    ccf
    ld b, c
    ld a, a
    ret nz

    ld e, $61
    dec bc
    inc [hl]
    rst $38
    ld [hl+], a
    cp a
    ld h, [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $80ff
    nop
    cp a
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $da
    inc bc
    ld [bc], a
    inc bc
    ld bc, $af00
    nop
    ld c, $1f
    ld de, $203f
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld c, $1f
    ld de, $203f
    cp a
    ld [hl], b
    xor e
    db $db
    ld a, a
    adc h
    ld a, a
    adc h
    rst $38
    rst $28
    inc e
    rst $30
    inc d
    rst $30
    inc d
    rst $30
    inc d
    rst $38
    rst $30
    inc d
    rst $28
    inc e
    ld [hl], a
    adc h
    rst $38
    add b
    cp $bf
    ret nz

    ld e, a
    ld h, b
    scf
    jr c, jr_002_433e

    add b
    nop
    cp a
    ld h, b
    di
    sub e
    ld a, a
    adc h
    rst $28
    inc e
    rst $38
    rst $30
    inc d
    rst $30
    inc d

jr_002_433e:
    rst $28
    inc e
    ld a, a
    adc h
    cp $ff
    add b
    ld a, a
    ld b, b
    cpl
    jr nc, jr_002_4369

    or a
    nop
    jr jr_002_4372

    ld b, d
    ld h, [hl]
    nop
    rst $38
    ld h, b
    nop
    ld h, [hl]
    ld [$4026], sp
    ld e, $20
    cp a
    nop
    ld [$0c04], sp
    nop
    inc d
    nop
    rst $38
    inc d
    ld [bc], a
    ld e, $20
    ld [hl+], a
    nop

jr_002_4369:
    ld [hl], a
    nop
    cp a
    nop
    ld b, d
    and l
    ld [hl], d
    db $10
    ld h, d

jr_002_4372:
    inc d
    rst $38
    ld d, [hl]
    jr z, jr_002_43c5

    inc d
    ld b, d
    ld [$a542], sp
    cp a
    nop
    ld a, $40
    ld [hl-], a
    nop
    inc [hl]
    inc b
    rst $38
    inc a
    nop
    jr nc, jr_002_438d

    inc sp
    ld [bc], a
    ld a, $41

jr_002_438d:
    add b
    nop
    rst $38
    dec b
    dec bc
    rrca
    db $10
    ld e, a
    ret nz

    rst $28
    jr nc, @+$01

    ld sp, hl
    ld e, $7c
    add e
    cp a
    ret nz

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
    nop
    cp a
    ld b, b
    dec sp
    call nz, $649b
    rst $38
    ld c, l
    or $85
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    dec a
    jp nz, Jump_002_49b6

jr_002_43c5:
    rst $38
    ret


jr_002_43c7:
    scf
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc a
    nop
    ld b, b
    ret nz

    db $10
    ldh [rIE], a
    jr jr_002_43c7

    ld [$0cf0], sp
    ld hl, sp+$0c
    ld hl, sp-$01
    inc e
    ld hl, sp+$1c
    ld hl, sp+$38
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$e0]
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
    cp a
    inc e

jr_002_43f5:
    xor d
    or [hl]
    db $fd
    ld h, e
    db $fd
    ld h, e
    rst $38
    rst $28
    ld [hl], c
    rst $18
    ld d, c
    rst $18
    ld d, c
    rst $18
    ld d, c
    rst $38
    rst $18
    ld d, c
    rst $28
    ld [hl], c
    db $dd
    ld h, e
    cp $02
    cp $fa
    ld b, $f4
    inc c
    ret c

    jr c, jr_002_43f5

    add b
    nop
    cp a
    inc c
    sbc [hl]
    sub d
    db $fd
    ld h, e
    rst $28
    ld [hl], c
    rst $38
    rst $18
    ld d, c
    rst $18
    ld d, c
    rst $28
    ld [hl], c
    db $fd
    ld h, e
    cp $fe
    ld [bc], a
    db $fc
    inc b
    add sp, $18
    ldh a, [$bf]
    nop
    ld [$1f14], sp
    ld bc, $100f
    rst $38
    rra
    db $10
    rlca
    ld [$0403], sp
    inc bc
    ld [bc], a
    add e
    nop
    jr jr_002_4449

    rst $38
    inc a
    ld [bc], a
    ccf

jr_002_4449:
    ld bc, $013f
    rra
    jr nz, @+$01

    ccf
    and b
    rra
    ld b, b
    dec e
    ld [hl], d
    ld e, [hl]
    ld a, c
    rst $38
    adc [hl]
    cp l
    dec bc
    cp a
    ld h, $ff
    ld hl, $83ff
    nop
    ld a, [hl-]
    ld h, $ff
    ld a, $01
    rra
    jr nz, jr_002_4479

    db $10
    dec bc
    inc c
    and b
    ld bc, $ff00
    jr nc, jr_002_447b

    ld a, c
    dec b
    ld a, [hl]
    inc bc
    ld a, h
    inc bc

jr_002_4479:
    rst $38
    ccf

jr_002_447b:
    ld b, c

Call_002_447c:
    ld a, a
    ld b, b
    rra
    ld h, b
    dec c
    ld d, d
    rst $38
    ld [hl], $79
    sbc h
    rst $38
    ld c, d
    rst $38
    ld bc, $ffff
    db $fc
    nop
    db $fc
    nop
    db $fd
    ld bc, $8578
    rst $38
    sub h
    db $ec
    call z, $e6ff
    cp e
    ld hl, $ffff
    db $fc
    nop
    ld a, h
    add b
    sbc h
    ld h, c
    ret z

    inc [hl]
    rst $38
    ld h, [hl]
    cp a
    ld h, h
    db $fd
    ld [hl+], a
    rst $18
    ld bc, $80ff
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
    cp a
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_002_4525

    ld h, b
    rst $38
    ld a, l
    ld b, e
    cp [hl]
    add $f4
    adc h
    ld hl, sp-$78
    rst $38
    ld hl, sp-$78
    db $f4
    adc h
    cp [hl]
    add $7d
    ld b, e
    cp $5f
    ld h, b
    cpl
    jr nc, jr_002_44fa

    inc e
    rlca
    add b
    nop
    cp a
    rrca
    rla
    jr jr_002_4527

    jr nz, jr_002_4566

    ld b, e
    rst $38
    cp a
    rst $00
    db $f4
    adc h
    db $f4
    adc h
    cp a
    rst $00
    cp $7c
    ld b, e
    ccf
    jr nz, jr_002_4511

jr_002_44fa:
    jr jr_002_450b

    rst $38
    ld [bc], a
    dec b
    rlca
    nop
    rlca
    nop
    add e
    add h
    rst $38
    add a
    inc b
    jp $c300


jr_002_450b:
    ld [hl+], a
    pop hl
    nop
    rst $38
    ldh [rNR11], a

jr_002_4511:
    ccf
    ld b, b
    ld a, a
    ld b, b
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
    add b
    rst $38
    rst $38
    add b
    sbc a
    ld h, b

jr_002_4525:
    xor l
    ld d, d

jr_002_4527:
    sub $29
    rst $38
    ld b, d
    cp l
    inc bc
    cp $21
    rst $38
    nop
    rst $38
    adc a
    nop
    rrca
    add hl, bc
    rrca
    nop
    rst $38
    rrca
    nop
    add a
    ld [$00c7], sp
    pop hl
    ld [bc], a
    rst $38
    ldh [rNR11], a
    ccf
    ld b, b
    ld a, a
    ld b, b
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
    cp a
    ld b, b
    ld e, e
    and h
    dec l
    jp nc, $5bac

    rst $38
    add [hl]
    ld a, l
    inc b
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    add b

jr_002_4566:
    nop
    sbc a
    nop
    add b
    ret nz

    ld b, b
    add b
    ld b, b
    rst $38
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38
    ldh a, [$08]
    db $fc
    inc b
    ld hl, sp+$04
    db $fc
    nop
    add a
    nop
    inc bc
    ld c, $01
    rst $38
    rra
    nop
    rra
    nop
    rra
    jr nz, jr_002_459b

    ld sp, $00ff
    ccf
    jr nz, jr_002_45d2

    nop
    rra
    jr jr_002_45b6

    xor b
    rrca
    inc bc
    nop

jr_002_459b:
    add b
    nop
    cp a
    ldh [$f0], a
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    cp $fe
    ld e, $ff
    ld bc, $01ff
    rst $38

jr_002_45b6:
    cp a
    ldh [$d8], a
    jr c, @-$0a

    inc c
    ld_long a, $ff06
    cp [hl]
    jp nz, Jump_002_637d

    cpl
    ld sp, $111f
    rst $38
    rra
    ld de, $312f
    ld a, l
    ld h, e
    cp [hl]
    jp nz, $fafe

jr_002_45d2:
    ld b, $f4
    inc c
    ret c

    jr c, @-$1e

    add b
    nop
    cp a

jr_002_45db:
    ldh a, [$e8]
    jr jr_002_45db

    inc b
    ld a, $c2
    rst $38
    db $fd
    db $e3
    cpl
    ld sp, $312f
    db $fd
    db $e3
    cp $3e
    jp nz, $04fc

    add sp, $18
    ldh a, [$97]
    nop
    add b
    nop
    ret nz

    ld b, b
    rst $38
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    rst $38
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38
    ldh a, [$08]
    db $fc
    inc b
    ld hl, sp+$04
    db $fc
    nop
    rst $38
    ld a, h
    add b
    cp h
    ld b, b
    sbc b
    ld h, [hl]
    jp c, $ff37

    push bc
    cp l
    ld c, e
    rst $38
    dec h
    db $db
    ld hl, $82ff
    nop
    add b
    rst $38
    add b
    nop
    ret nz

    ld b, b
    add b
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38
    ldh a, [$08]
    db $fc
    inc b
    ld hl, sp+$04
    db $fc
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    cp c
    ld b, l
    xor b
    ld d, [hl]
    rst $38
    or [hl]
    ld l, a
    ld d, b
    db $fd
    ld c, b
    or a
    ld bc, $b7ff
    nop
    jr jr_002_467e

    ld b, d
    ld h, [hl]
    nop
    rst $38
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc h
    ld b, d
    jr jr_002_468a

    add b
    nop
    add b
    nop
    adc a

jr_002_466b:
    nop
    ld b, b
    ret nz

    db $10
    ldh a, [rIE]
    jr jr_002_466b

    ld [$0cf8], sp
    db $fc
    inc c

jr_002_4678:
    db $fc
    db $fc
    inc e
    db $fc
    inc e
    db $fc

jr_002_467e:
    jr c, jr_002_4678

    xor b
    ldh a, [$c0]
    nop
    add b
    nop
    add b
    nop
    sbc a
    nop

jr_002_468a:
    ldh [rP1], a
    ldh [rP1], a
    ldh [$fe], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    cp $00
    cp a
    ldh [$f0], a
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    cp $1e
    cp $ff
    ld bc, $01ff
    rst $38
    ld bc, $8fff
    nop
    ld [bc], a
    ld bc, $010e
    rst $38
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, $01
    rst $38
    jr c, jr_002_46d2

    jr c, jr_002_46d4

    jr @+$09

    inc e
    inc bc
    ret c

jr_002_46d2:
    rrca
    inc bc

jr_002_46d4:
    ld bc, $0000
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc a
    rst $38
    db $fd
    cp $fc
    ld hl, sp-$23
    ld sp, hl
    db $fc
    cp $ff
    cp $ff
    add b
    rst $38
    add b
    rst $38
    adc e
    rst $38
    add b
    cp a
    add b
    add b
    rst $38
    adc a
    rst $38
    db $fd
    di
    ld a, [c]
    pop hl
    db $fd
    ldh a, [$e1]
    jp hl


    ldh a, [$f2]
    db $fc
    rst $38
    add a
    rst $38
    adc a
    add a
    inc bc
    db $fd
    add e
    ld bc, $038d
    ld [hl], e
    adc a
    rst $38
    adc a
    rst $38
    db $fd
    cp $f8
    ldh a, [$fd]
    pop af
    ldh [$f3], a
    ldh [$ee], a
    pop af
    rst $38
    adc a
    rst $38
    rst $30
    rst $28
    push bc
    db $e3
    rst $38
    jp hl


    ret nz

    sbc $c0
    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    rst $18
    ret nz

    rst $28
    ret nz

    rst $08
    ldh [$cf], a
    ldh [rIE], a
    rst $28
    ldh [$f7], a
    ldh [$e7], a
    ldh a, [$f7]
    ldh a, [rIE]
    ei
    ldh a, [$fb]
    ld hl, sp-$03
    ld hl, sp-$03
    db $fc
    rst $18
    cp $fc
    cp $7e
    cp $ff
    ld a, [hl]
    rst $38
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    cp $1f
    cp $1f
    rst $28
    ld e, $fe
    ld c, $80
    rst $38
    sbc a
    rst $38
    cp $f8
    db $fc
    di
    ld hl, sp-$01
    rst $20
    ldh a, [$ef]
    ldh [$ef], a
    ret nz

    sbc a
    ret nz

    rst $38
    rst $18
    add b
    cp a
    add b
    ccf
    add b
    cp a
    nop
    rst $38
    ld a, [hl]
    ld bc, $017f
    ld a, a
    ld bc, $017f
    rst $38
    cp [hl]
    ld bc, $00bf
    ccf
    add b
    cp a
    add b
    rst $38
    cp a
    add b
    rst $18
    add b
    sbc a
    ret nz

    sbc a
    ret nz

    rst $38
    rst $18
    ret nz

    rst $18
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    add e
    rst $38
    cp $ff
    rst $38
    add sp, -$10
    ld b, a
    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    cp a
    nop
    ld a, $81
    rst $18
    add e
    sbc a
    rst $00
    ldh a, [rIE]
    rst $08
    rst $18
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc e
    rst $38
    cp $00
    rst $38
    nop
    add e
    rst $38
    ld a, [$f7f1]
    pop af
    ldh [$f1], a
    ldh [$f1], a
    ld_long a, $fff1
    ldh a, [$fb]
    ld a, l
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    rst $38
    add b
    rst $38
    adc e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    ei
    ldh a, [$f9]
    pop af
    ldh a, [$f1]
    ldh [$fc], a
    ei
    ldh [$ee], a
    pop af
    ldh a, [rIE]
    rst $28
    ld a, a
    rst $38
    ld a, a
    or $71
    ldh a, [rSVBK]
    rst $38
    rst $30
    ld [hl], b
    cp e
    ld [hl], b
    cp e
    ld [hl], b
    di

jr_002_4816:
    jr c, @+$01

jr_002_4818:
    di
    jr c, jr_002_4816

    jr c, @-$21

    jr c, jr_002_4818

    inc e
    rst $38
    db $fd
    inc e
    xor $1c
    db $ec
    ld e, $fe
    ld c, $ff
    cp $0e
    rst $30
    ld c, $f6
    rrca
    ld a, [hl]
    rlca
    rst $38

Call_002_4833:
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    rst $38
    ld a, a
    rlca
    ld a, a
    rlca
    db $76
    rrca
    db $76
    rrca
    rst $38
    ld a, a
    ld c, $7e
    ld c, $6c
    ld e, $fd
    inc e
    add e
    rst $38
    add sp, -$10
    rst $38
    ld b, a
    add b
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
    ei
    rlca
    rst $28
    rra
    db $f4
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    adc l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ccf
    rst $28
    rra
    db $eb
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    rst $38
    add sp, -$10
    add a
    nop
    rst $38
    ld a, a
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
    ei
    jr @+$01

    ei
    ld a, b
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$01
    ei
    ld hl, sp-$05
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$01
    ei
    ldh a, [$fb]
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [rIE]
    rst $28
    ldh [$cf], a
    ldh [$df], a
    ret nz

    sbc a
    ret nz

    rst $38
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    ld sp, hl
    ld hl, sp-$10
    rst $38
    pop af
    ldh a, [$e3]
    ldh a, [$f6]
    pop hl
    db $eb
    rst $20
    add e
    rst $38
    db $fc
    cp $f4
    db $fc
    ld hl, sp-$06
    db $fc
    rst $38
    adc a
    rst $38
    db $eb
    rst $20
    ld a, [c]
    pop hl
    rst $38
    pop hl
    ldh a, [$f9]
    ldh a, [$f6]
    ld sp, hl
    ld a, b
    rst $38
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    db $fc
    ld sp, $0fc0
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, a
    ld bc, $007f
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    rst $38
    rla
    rrca
    rst $38
    ld a, [c]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    ldh [$f7], a
    ld hl, sp-$0c
    rst $38
    db $fc
    rst $38
    cp $ff
    add b
    rst $38
    adc [hl]
    rst $38
    cp $ff
    cp $ff
    db $fd
    db $fc
    di
    ld hl, sp-$39
    ldh [$1f], a
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
    cp a
    rst $38
    ld b, e
    add e
    ccf
    inc bc
    db $fd
    inc bc
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $20
    rra
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    rst $38
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38

Jump_002_49b6:
    rlca
    rst $38
    rlca
    rst $30
    ld c, $f6
    ld c, $80
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ld e, a
    cp a
    cpl
    rra
    rst $38
    cpl
    rra
    cpl
    rra
    rst $08
    ccf
    rra
    rst $38
    add b
    rst $38
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, [$f1fc]
    ldh [$cf], a
    add b
    rst $38
    dec a
    inc bc
    rst $30
    rrca
    rst $38
    rra
    rst $38
    ccf
    db $f4
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $18
    ccf
    rst $08
    rra
    pop hl
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $08
    ldh a, [$df]
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    ldh [rP1], a
    rst $38
    nop
    add b
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    db $fd
    inc bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $017e
    cp $01
    rst $38
    ccf
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    ccf
    add b
    ld a, [hl]
    ld bc, $017e
    rst $38
    ld bc, $fdff
    inc bc
    db $fd
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rrca
    rst $28
    rra
    rst $30
    rrca
    rst $38
    inc bc
    add b
    rst $38
    adc e
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    adc a
    rst $38
    inc bc
    ld bc, $03fd
    add b
    rst $38
    cp a
    rst $38
    inc b
    inc bc
    db $fc
    nop
    cp h
    ld a, a
    add b
    rst $38
    adc a
    rst $38
    cp a
    ld a, a
    rst $38
    rra
    add b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    db $fc
    cp $c1
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    nop
    cp $01
    ei
    rlca
    rst $18
    ccf
    db $dd
    cp a
    rst $08
    rst $20
    db $e3
    rst $30
    di
    rst $30
    pop af
    ei
    pop af
    ei

Jump_002_4aa4:
    ld sp, hl
    ei
    ld sp, hl
    rst $38
    ei
    ld sp, hl
    ei
    ld sp, hl
    di
    ld sp, hl
    pop af
    ei
    rst $38
    push af
    di
    rst $20
    di
    set 4, a
    sbc a
    rst $00
    rst $38
    scf
    adc a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    ldh [rIE], a
    ld a, a
    rst $38
    rst $38
    rst $08
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [rIE], a
    rst $28
    ret nz

    rst $28
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    sbc a
    ret nz

    rst $18
    add b
    cp a
    add b
    ccf
    add b
    rst $38
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    rst $20
    jr c, @+$01

    rra
    rst $38
    rra
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fcf8
    ld [bc], a
    and $1f
    rst $38
    cp e
    rst $38
    cp $ff
    cp $fc
    cp $ff
    db $fd
    db $fc
    ld sp, hl
    db $fc
    ei
    ld hl, sp-$0d
    ld hl, sp-$01
    di
    ld hl, sp-$09
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [rIE]
    rst $38
    ld bc, $007f
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld h, b
    add e
    di
    db $10
    di
    cp $0c
    rst $38
    nop
    ld a, a
    jr nc, jr_002_4b90

    nop
    sbc a
    rst $38
    add b
    db $fd
    adc [hl]
    ld_long a, $ff8b
    ld a, [$fa8b]
    adc e
    db $fd
    adc [hl]
    rst $38
    add b
    rst $38
    db $fd
    adc [hl]
    ld a, [$f98b]
    adc c
    ld sp, hl
    adc c
    cp $f9
    adc c
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$80
    nop
    sbc a
    rst $38
    add b
    rst $38
    adc [hl]
    ld_long a, $ff8b
    rst $38
    adc [hl]
    rst $38
    add b
    db $fd
    adc [hl]
    ei
    adc e
    cp $f9
    adc c
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$80
    nop
    add b

jr_002_4b90:
    nop
    sbc a
    nop
    ld a, a
    ld bc, $0071
    ld a, a
    cp $02
    ld [hl], e
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    add b
    nop
    add b
    nop
    cp a
    nop
    jr @+$21

    inc bc
    ccf
    ld [$fe78], sp
    ld [$0378], sp
    ccf
    jr @+$21

    nop
    cp a
    ld a, a
    rst $38
    add b
    cp $8f
    ld sp, hl
    adc c
    rst $38
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    rst $38

jr_002_4bc6:
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    cp $f9
    adc c
    cp $8f
    rst $38
    add b
    ld a, a
    add b
    nop
    sbc a
    rst $38
    add b
    db $fc
    adc a
    ei
    adc e
    rst $38
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78

jr_002_4be6:
    ld hl, sp-$78
    cp $fb
    adc e
    db $fc
    adc a
    rst $38
    add b
    rst $38
    add b
    nop
    add b
    nop
    sbc a
    nop
    ld a, a
    nop
    ld [hl], b
    nop
    ld [hl], b
    cp $00
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, a
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    inc c
    add d
    sbc [hl]
    db $10

jr_002_4c0d:
    sbc [hl]
    cp $60
    cp $00
    db $fc
    jr jr_002_4c0d

    nop
    cp a
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_002_4c0d

    db $10
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_002_4bc6

    ld h, b
    rst $38
    ldh [rNR41], a
    ldh a, [rNR10]
    add sp, $18
    ld a, b
    adc b
    cp $78
    adc b
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$80
    nop
    cp a
    ret nz

    and b

jr_002_4c3d:
    ld h, b
    ret nc

    jr nc, @-$0e

    db $10
    rst $38
    ret nc

    jr nc, jr_002_4be6

    ld h, b
    ldh [rNR41], a
    ldh a, [rNR10]
    cp $68
    sbc b
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$80
    nop
    add b
    nop
    cp a
    nop
    ld b, b
    ret nz

    jr nz, jr_002_4c3d

    ld b, b
    ret nz

    cp $00
    ldh [$80], a
    ldh a, [rP1]
    ld [hl], b
    nop

jr_002_4c67:
    add b
    nop
    add b
    nop
    cp a
    nop
    jr jr_002_4c67

    ret nz

    db $fc
    db $10

jr_002_4c72:
    ld e, $fe
    db $10
    ld e, $c0
    db $fc
    jr jr_002_4c72

    nop
    cp a
    ret nz

    and b
    ld h, b
    ldh a, [rNR10]
    ld a, b
    adc b
    rst $38
    db $f4
    adc h
    cp h
    call nz, Call_002_447c
    ld a, h
    ld b, h
    rst $38
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    cp h
    call nz, $8cf4
    cp $78
    adc b
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    add b
    nop
    cp a
    ret nz

    or b
    ld [hl], b
    add sp, $18
    ld hl, sp-$78
    rst $38
    or h
    call z, Call_002_447c
    ld a, h
    ld b, h
    or h
    call z, $f8fe
    adc b
    ldh [rNR10], a
    or b
    ld [hl], b
    ret nz

    add b
    nop
    add b
    nop
    sbc a
    nop
    ldh [$88], a
    ld hl, sp+$40
    ld a, b
    cp $40
    ld a, b
    adc b
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    add b
    nop
    add b
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    xor h
    nop
    rst $38
    ld bc, $80ff
    nop
    add b
    nop
    add b
    nop
    xor h
    nop
    rst $38
    add b
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    xor h
    nop
    ld hl, sp+$08
    ld hl, sp-$80
    nop
    add b
    nop
    add b
    nop
    xor h
    nop
    db $fc
    inc b
    db $fc
    add a
    nop
    inc bc
    ld c, $01
    rst $38
    rra
    nop
    rra
    nop
    ccf
    nop
    ld l, $11
    rst $38
    jr nz, jr_002_4d32

    jr nz, jr_002_4d34

    db $10
    rrca
    jr jr_002_4d28

    add sp, $0f
    rlca
    inc bc
    nop
    adc a
    nop
    inc bc
    nop
    rrca
    nop
    rst $38
    rra
    nop
    rra

jr_002_4d28:
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    ccf
    nop
    ccf
    nop

jr_002_4d32:
    rra
    nop

jr_002_4d34:
    rra
    nop
    ldh a, [rIF]
    nop
    inc bc
    nop
    adc a
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$f0]
    nop
    ret nz

    nop
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, a
    ei
    cp a
    rst $38
    sbc l
    xor l
    sbc $ff
    db $76
    rst $08
    or $4b
    reti


    daa
    sbc $21
    sbc a
    rst $38
    rst $18
    rst $38
    xor l
    rst $28
    sub $ff
    rst $38
    ld b, d
    call c, $de23
    ld hl, $00ff
    add b
    rst $38
    xor b
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    rst $10
    adc a
    ldh [$c0], a
    ldh a, [$e0]
    db $f4
    ld hl, sp-$80
    rst $38
    and b
    rst $38
    cp $80
    rst $38
    jp nc, $f0f8

    ldh [$e3], a
    or h
    db $e3
    pop af
    db $e3
    pop af
    xor a
    pop af
    ld bc, $0103
    rlca
    inc bc
    adc l
    rst $38
    db $fc
    ld sp, hl
    ld hl, sp-$11
    ei
    db $fc
    rst $38
    ld [$f1f7], a
    ld [c], a
    add b
    rst $38
    add d
    rst $38
    rlca
    add b
    rst $38
    add d
    rst $38
    ldh [$97], a
    rst $38
    cp $fc
    db $fd
    db $fc
    push af
    db $fd
    db $fc
    cp $fc
    cp $ff
    cp [hl]
    rst $38
    ld c, e
    add a
    nop
    ld bc, $bd00
    nop
    or h
    ld a, b
    cp $fc
    cp $8d
    cp $fc
    cp $fc
    ldh [$b4], a
    ld a, b
    nop
    rst $38
    ld c, b
    add [hl]
    ld a, [hl]
    cp $7c
    ld a, [hl]
    inc a
    ld a, h
    ret nc

    ld a, b
    inc a
    jr c, @-$5f

    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $80
    rst $38
    add b
    rst $38
    rst $38
    ldh [$c0], a
    rst $38
    ldh a, [$f8]
    db $fc
    db $fd
    cp $e2
    rst $38
    cp $ff
    nop
    add b
    call z, $ff80
    rst $38
    rst $38
    sbc a
    rst $08
    rst $20
    rst $30
    di
    ei
    pop af
    ret nc

    ldh a, [$f9]
    ld hl, sp-$22
    ldh a, [$f8]
    ldh a, [$f1]
    ldh a, [$e1]
    rst $38
    ld b, e
    add c
    rlca
    inc bc
    rrca
    rlca
    ccf
    rra
    adc l
    rst $38
    ld a, a
    rst $38
    ld a, a
    or h
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    add d
    ld b, [hl]
    add $80
    add $af
    add $c0
    ldh [$c0], a
    ldh a, [$e0]
    db $dd
    xor a
    rst $18
    adc a
    adc c
    call c, $fff8
    xor [hl]
    reti


    sbc a
    rlca
    ld a, [bc]

jr_002_4e5c:
    rlca
    inc c
    ld [bc], a
    adc [hl]
    rst $38
    db $fd
    cp $f8
    rst $30
    db $fc
    ld hl, sp-$02
    db $fc
    cp $ff
    cp $c0
    cp $ff
    add d
    rst $38
    nop
    cp a
    rst $38
    ld e, a
    rst $28
    rrca
    and a
    or a
    and a
    rst $38
    or a
    and a
    rlca
    and a
    rlca
    rrca
    xor a
    rra
    rst $28
    ld_long $fff7, a
    ei
    db $fc

jr_002_4e89:
    ld sp, hl
    ld a, b
    rst $28
    inc a
    ld a, c
    ccf
    rra
    dec sp
    ld [hl-], a
    add hl, de
    rst $38
    jr @+$12

    jr jr_002_4ea8

    jr nc, jr_002_4eb2

    db $10
    jr c, jr_002_4e5c

    jr c, jr_002_4edb

    ld a, b
    ld hl, sp+$7c
    inc a
    ld a, h
    db $fd
    ld e, $3c
    inc e

jr_002_4ea8:
    ld e, $0e
    ld e, $0e
    db $fd
    ld e, $0e
    ld e, $0e
    inc c

jr_002_4eb2:
    ld c, $04
    xor a
    rst $38
    rra
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    db $fd
    rrca
    rra
    ld l, a
    ld c, a
    ld h, a
    ld l, a
    ld h, a
    add d
    rst $38
    ldh [$f8], a
    db $e4
    db $ec
    db $fc
    db $ec
    db $fc
    add b
    db $fc
    sbc b
    db $fc
    ld hl, sp-$01
    add e
    rst $38
    rst $20
    rst $08
    sbc a
    rst $20
    db $e3
    pop hl
    db $e3

jr_002_4edb:
    pop hl
    jp hl


    rst $20
    db $ed
    add sp, -$14
    xor $ef
    xor $98
    rst $28
    rst $00
    rst $38
    add e
    rst $38
    add c
    ld bc, $9de5
    sbc c
    sbc l
    sbc a
    sbc e
    cp c
    add e
    sbc a
    sbc e
    sbc a
    sbc [hl]
    ld hl, sp-$61
    sbc h
    add b
    ld bc, $80ff
    rst $38
    db $dd
    daa
    inc hl
    ld hl, $2120
    jr nz, jr_002_4e89

    jr nz, jr_002_4f2c

    rst $18
    inc hl
    ld [hl+], a
    inc hl
    ld h, e
    inc hl
    db $e3
    ld h, e
    add b
    rst $38
    adc l
    rst $38
    cp a
    ld a, a

jr_002_4f18:
    ccf
    ld hl, sp-$05
    db $fc
    or b
    ret nz

    nop
    sbc a
    nop
    ld bc, $0009
    inc l
    jr @-$02

    ld a, h
    jr c, @-$02

    ld a, b
    db $fc

jr_002_4f2c:
    ld hl, sp-$22
    ldh a, [$f8]
    ldh a, [$e0]
    ldh a, [rP1]
    cp l
    rst $38
    cp $ff
    db $fc
    cp $fc
    or l
    db $fc
    cp $fc
    cp $ff
    rst $38
    sbc d
    rlca
    rst $38
    rlca
    xor [hl]
    reti


    call c, $fef8
    adc c
    call c, $8fdf
    xor a
    rst $18
    rst $38
    rst $38
    ld a, [$c05c]
    ld b, b
    ldh [rLCDC], a
    ret nz

    ld h, b
    db $fd
    ld b, b
    ld h, b

jr_002_4f5e:
    jr nz, jr_002_4fc0

jr_002_4f60:
    jr nc, jr_002_4fc2

jr_002_4f62:
    jr nc, jr_002_4f60

    ld h, b
    jr nc, jr_002_4f98

    jr nc, jr_002_4f9a

    jr nc, jr_002_4f62

    ld h, b
    jr nc, jr_002_4fce

    jr nc, @+$62

    ldh [$60], a
    cp a
    rst $38
    cp $fc
    cp $fc
    cp $fc
    rst $38
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    add e
    rst $38
    inc e
    jr @-$06

    sbc h
    call c, $dcfc
    db $fc
    add b
    db $fc
    sbc b
    db $fc
    ld a, b
    rst $38
    add e
    rst $38
    sbc h
    jr jr_002_4f18

jr_002_4f98:
    cp h
    cp b

jr_002_4f9a:
    cp h
    inc a
    cp h
    inc a
    cp b
    inc a
    cp h
    cp b
    rst $38
    cp a
    rst $38
    db $f4
    ld a, b
    inc de
    daa
    adc l
    ld e, [hl]
    ei
    jr c, jr_002_4f5e

    jr nz, jr_002_5020

    rst $38
    jr jr_002_4fbb

    cp a
    ld c, [hl]
    ld a, [de]
    ld c, $7e
    ld a, d
    ld l, [hl]
    ld [hl], d

jr_002_4fbb:
    rst $38
    pop de
    rst $38
    adc h
    rst $18

jr_002_4fc0:
    set 4, a

jr_002_4fc2:
    db $f4
    ld hl, sp-$80
    rst $38
    add b
    adc a
    ldh [rIF], a
    adc a
    rrca
    xor a
    rrca

jr_002_4fce:
    ld [$0888], sp
    ret z

    adc b
    adc a
    rst $38
    db $fc
    cp $fc
    ld hl, sp-$13
    ldh a, [$f8]
    ldh a, [$e1]
    ldh a, [$e1]

jr_002_4fe0:
    db $fd
    ld h, c
    ld hl, $2161
    jr nc, jr_002_5008

    jr nc, jr_002_4fe0

    or b
    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$04
    ld [hl], c
    ld hl, sp-$10
    ld a, b
    ld hl, sp+$70
    db $d3
    ld h, b
    ld [hl], b
    ld h, b
    ldh [rLCDC], a
    cp a
    rst $38
    xor a
    rra
    rlca
    rrca
    ld c, a
    rst $20
    cp a
    rst $20
    ld b, a

jr_002_5008:
    rst $20
    rlca
    rrca
    xor a
    rra
    ldh [$bf], a
    ld a, a
    rst $38
    cp a
    rst $38
    pop hl
    rst $38
    and c
    ret nz

    sub l
    ld c, $dd
    rra
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_002_5020:
    or a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, $7f
    rst $38
    ld a, [hl+]
    inc e
    nop
    ld bc, $cfb3
    rst $38
    ld a, a
    jp nc, Jump_002_7f3f

    ccf
    nop
    add b
    rst $38
    adc b
    rst $38
    ccf
    add e
    rst $38
    rst $20
    ld b, e
    add b
    rst $20
    and b
    rlca
    rst $20
    sbc b
    rst $20
    ld b, e
    rst $38
    add e
    rst $38
    ld e, a
    ccf
    db $f4
    sbc a
    rst $08
    rst $00
    rst $28
    rst $20
    adc a
    rst $20
    rst $28
    rst $20
    rst $00
    rst $28
    ld hl, sp-$61
    rst $08
    ld e, a
    ccf
    rst $38
    cp a
    rst $38
    cpl
    ld e, $c8
    db $e4
    or c
    ld a, d
    ld a, [$1dec]
    ld [hl], h
    ld c, $ff
    nop
    xor d
    ld h, a
    ld h, b
    ld h, a
    ld h, b
    cp a
    rst $38
    ld sp, $d3fb
    rst $20
    cpl
    rra
    cp a
    nop
    cp $00
    ld bc, $7e00
    add b
    ei
    ld bc, $fc00
    db $fd
    rst $38
    ld [hl-], a
    ld [de], a
    cp b
    sub d
    ld [de], a
    ld [hl-], a
    sub d
    add b
    rst $38
    cp a
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    ei
    add b
    nop
    ccf
    cp a
    rst $38
    add d
    rst $00
    adc d
    sub d
    add d
    sub d
    add b
    rst $38
    rst $38
    rlca
    inc bc
    rst $38
    rrca
    rra
    ccf
    cp a
    ld a, a
    db $e3
    rst $38
    ld a, a
    rst $38
    ld bc, $8003
    ld c, c
    add b
    rst $38
    add b
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    rst $30
    rra
    cp a
    rst $38
    sbc a
    rst $18
    sbc a
    rst $18
    rst $38
    sbc a
    rst $18
    rst $38
    sbc a
    rra
    cp a
    ld a, a
    ccf
    ldh [rIE], a
    ld a, a
    rst $38
    add d
    rst $38
    nop
    cp a
    rst $38
    ldh a, [$e1]
    db $f4
    and $f6
    and $ff
    or $e6
    or $e6
    db $f4
    and $f0
    pop hl
    cp a
    rst $38
    rst $30
    di
    db $e3
    di
    jp hl


    db $eb
    cp $eb
    jp hl


    pop hl
    pop bc
    call c, $88dd
    cp b
    rst $38
    jp $c983


    or e
    jp $c9cb


    pop bc
    add e
    cp h
    rst $38
    rst $20
    jp $99db


    xor a
    sbc a
    sbc c
    db $db
    sbc c
    rst $20
    jp $ffbc


    rst $00
    add e
    set 1, c
    adc a
    ret


    set 1, c
    rst $00
    add e
    cp e
    rst $38

jr_002_5120:
    pop bc
    add c
    call $cfcb
    cp a
    jp $cbcf


    call z, $c1ce
    add b
    cp a
    rst $38
    pop bc
    add c
    rst $08
    call $cfcb
    cp c
    jp $cbcf


    rst $08
    add a
    cp h
    rst $38
    rst $20
    jp $99db


    cp a
    sbc a
    sbc c
    sub c
    reti


    sbc c
    pop hl
    pop bc
    cp b
    rst $38
    pop bc
    adc b
    ret


jr_002_514e:
    and e
    pop bc
    ret


    pop bc
    adc b
    cp b
    rst $38
    rst $20
    jp $81e7


    rst $20
    jp $ffb8


    di
    pop hl
    di
    xor a
    di
    sub e
    or a
    sub e
    adc a
    rst $00
    cp a
    rst $38
    ret


    add l
    db $eb
    set 4, e
    rst $00
    rst $38
    db $e3
    rst $00
    db $eb
    jp $c9ed


    ret z

    add h
    cp b
    rst $38
    rst $08
    add a
    rst $08
    and a
    rst $08
    call $c1c9
    add c
    cp a
    rst $38
    cp l
    jr jr_002_5120

    sbc l
    sbc h
    adc c
    rst $38
    add b
    adc c
    add b
    and l
    xor b
    and l
    cp l
    jr jr_002_514e

    rst $38
    call $cd98
    push bc
    ld sp, hl
    push de
    pop bc
    reti


    pop de
    reti


    adc h
    cp h
    rst $38
    rst $20
    jp $99db


    adc a
    sbc c
    db $db
    sbc c
    rst $20
    jp $ffbc


    rst $00
    add e
    set 1, c
    ld sp, hl
    set 1, c
    rst $00
    jp $87cf


    cp h
    rst $38
    rst $20
    jp $99db


    cp a
    sbc c
    and e
    add c
    pop de
    sbc c
    and $c4
    cp b
    rst $38
    jp $c983


    di
    pop bc
    jp $c9cb


    pop bc
    adc b
    xor e

jr_002_51d5:
    rst $38
    jp $df99


    sbc a
    ei
    rst $20
    jp $f9fb


    sbc c
    add c
    jp $ffae


    add c
    rst $20
    and l
    rst $20
    add c
    rst $20
    jp $ffb8


    push bc
    adc b
    call $cd8f
    push hl
    call $e3f3
    cp a
    rst $38
    adc h
    adc b
    call $fbdd
    call $c5f4
    db $eb
    di
    db $e3
    rst $30
    cp a
    rst $38
    cp l
    jr jr_002_521e

    and l
    ld bc, $ffa5
    ld bc, $3991
    sub c
    add hl, de
    cp c
    cp l
    jr jr_002_51d5

    rst $38
    add h
    adc b
    jp hl


    call $e3eb
    rst $38

jr_002_521e:
    db $e3
    rst $30
    db $eb
    db $e3
    set 3, c
    sub b
    adc b
    cp a
    rst $38
    sbc l
    ld [$9dcd], sp
    reti


    set 6, c
    rst $20
    set 0, e
    rst $20
    jp $ffbf


    jp $9981


    or e
    db $e3
    rst $30
    rst $38
    rst $00
    rst $28
    sbc a
    call $9dc9
    add e
    add c
    cp a
    rst $38
    rst $28
    rst $00
    rst $10
    sub e
    rst $10
    sub e
    rst $38
    add a
    rst $00
    ld d, c
    and l
    or c
    dec sp
    ld c, d
    add h
    add b
    rst $38
    adc b
    rst $38
    rst $08
    cp $fb
    di
    db $e3
    di
    rst $30
    db $e3
    rst $20
    xor b
    rst $28
    rst $38
    sbc a
    cp a
    rst $38
    rst $20
    jp $99db


    sub c
    sbc c
    xor a
    sub c
    adc c
    res 3, c
    rst $20
    jp $ffaa


    rst $20
    rst $00
    rst $20
    add d
    rst $20
    jp $ffbf


    db $e3
    jp $99d9


    sub e
    sbc c
    rst $38
    rst $20
    di
    rst $20
    rst $08
    ret


    adc l
    add e

jr_002_528e:
    add c
    xor b
    rst $38
    jp $b299


    di
    sbc e
    sbc c
    jp $ffae


    db $e3
    jp $d3e3


    xor d
    sub e
    add c
    di
    pop hl
    xor e
    rst $38
    add e
    sbc a
    add a
    add e
    rst $28
    sbc e
    sbc c
    ld sp, hl
    sbc e
    sbc c

jr_002_52af:
    add a
    jp $ffbe


    rst $20
    jp $99db


    sbc a
    xor a
    add e
    sbc c
    reti


    sbc c
    db $e3
    jp $ffaf


    add c
    cp e
    sbc c
    rst $30
    ei
    db $f4
    di
    rst $30
    rst $20
    rst $30
    rst $20
    xor b
    rst $38
    jp $a299


    jp $c399


    cp h
    rst $38
    rst $00
    jp $999b


    xor a
    pop bc
    ld sp, hl
    cp e
    sbc c
    add a
    jp $ffbf


    push de
    db $e3
    sbc h
    db $dd
    rst $20
    or d
    cp a
    xor [hl]
    rst $20
    or d
    sbc h
    db $dd
    push de
    db $e3
    add b
    rst $38
    jp nc, $c1e1

    add c
    adc a
    or h
    adc a
    rst $00
    adc a
    rst $00
    xor a
    rst $00
    rlca
    rrca
    rlca
    rra
    rrca
    add b
    rst $38
    sbc $c3
    add c
    nop
    jr jr_002_530c

jr_002_530c:
    jr jr_002_528e

    jr jr_002_52af

    jr jr_002_5312

jr_002_5312:
    add c
    nop
    jp $8081


    rst $38
    rst $30
    ret nc

    ldh [$80], a
    ret nz

    add b
    add a
    adc a
    and b
    adc a
    add b
    add b
    adc a
    add b
    rst $38
    add d
    add b
    db $e3
    add b
    db $e3
    add b
    db $e3
    nop
    add b
    rst $38
    add b
    rst $38
    adc [hl]
    nop
    ldh a, [$f8]
    db $fc
    jp nz, $fefc

    rst $38
    ldh [$fe], a
    pop bc
    nop
    cp $fc
    add d
    ld a, [hl]
    add d
    ld hl, sp+$06
    nop
    adc a
    nop
    ldh a, [$08]
    db $fc
    inc c
    rst $38
    db $ec
    ld e, $ee
    ld e, $fe
    ld e, $ff
    rra
    adc a
    ret nz

    rst $00
    add $c5
    add $ff
    rst $00
    call nz, $c4c7
    jp $ffc4


    ld hl, sp-$71
    pop af
    pop hl
    pop af
    jp $ffe1


    nop
    inc bc
    dec b
    ld [bc], a
    rla
    inc c
    rst $38
    ld hl, sp-$20
    ei
    db $fc
    nop
    cp $fe
    add b
    cp $00
    ld hl, sp+$06
    nop
    add b
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$01
    rst $38
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    di
    inc c
    db $db
    inc a
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$df], a
    ldh [$83], a
    rst $38
    db $fd
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $ff
    add e
    rst $38
    db $fd
    cp $fe
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

    rst $38
    ldh [$f7], a
    rrca
    rst $38
    add b
    rst $38
    rst $18
    cp $ff
    cp $fd
    cp $fd
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fd
    rst $38
    rst $38
    or $f9
    rst $38
    pop af
    db $ed
    di
    rst $38
    db $e3
    rst $38
    db $db
    rst $20
    ei
    rst $00
    rst $38
    rst $00
    cp a
    rst $00
    rst $38
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    cp $80
    cp $83
    cp $ff
    cp $c0
    cp $ff
    cp e
    rst $38
    ld a, h
    db $fc
    inc a
    inc e
    inc a
    add h
    inc e
    inc a
    cp e
    ld a, h
    inc a
    ld a, h
    inc a
    ld e, $3c
    ld a, [$1e1c]
    rra
    ld e, $1f
    rst $38
    and b
    rst $38
    ret nz

    or [hl]
    rst $00
    add $c7
    call nz, $8fc0
    ret nz

    rst $00
    add e
    rst $00
    rlca
    cp $c7
    rlca
    rst $00
    rlca
    rst $00
    ld b, a
    rst $38
    ei
    rst $28
    rra
    db $fc
    inc e
    inc a
    inc e
    inc a
    add h
    inc e
    inc a
    cp a
    rst $38
    cp e
    rst $00
    ld a, a
    add e
    rst $38
    inc bc
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
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    rst $18
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ret nc

    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    rst $28
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    cp a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    cp $ff
    ei
    db $fc
    rst $28
    ldh a, [rIE]
    rst $18
    ldh [$bf], a
    ret nz

    ld a, h
    add e
    rst $30
    rrca
    rst $38
    rst $38
    rra
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    add b
    rst $38
    or a
    rst $38
    cp $ff
    cp $fd
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld a, $80
    ld a, $8f
    ld a, $1e
    ld a, $0e
    ld e, $be
    nop
    add b
    nop
    and b
    ret nz

    rst $38
    and b
    rst $38
    ld a, a
    add b
    ld a, a
    adc a
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    adc [hl]
    nop
    ld b, b
    add b
    rst $38
    and b
    rst $38
    ret nz

    ld [c], a
    push bc
    add $c7
    ret nz

    adc a
    nop
    ldh a, [$f8]
    db $f4
    ld hl, sp-$01
    cp $f8
    cp $f8
    cp $f8
    rst $38
    ld hl, sp-$41
    rst $38
    ld a, c
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $08
    ldh a, [$fb]
    db $fc
    rst $30
    db $fd
    cp $ff
    cp $ff
    cp $ff
    add e
    rst $38
    cp $ff
    rst $18
    cp $ff
    cp $fd
    cp $ff
    db $fc
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$df]
    ldh [rIE], a
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, a
    add c
    cp $81
    cp $ff
    ret nz

    rst $28
    ldh a, [$f9]
    cp $ff
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    cp $fe
    ld bc, $00ff
    cp $01
    rst $38
    cp a
    rst $38
    ld a, c
    add a
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
    ld hl, sp-$03
    cp $c0
    cp $ff
    add b
    rst $38
    rst $38
    rst $38
    add c
    ld a, a
    add c
    ld a, l
    add e
    db $fd
    inc bc
    rst $38
    rst $38
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $30
    rrca
    add b
    rst $38
    call nc, $ff7f
    ld a, a
    rst $38
    add b
    cp $82
    ld c, $ff
    adc a
    ld a, $3c
    ld a, $38
    inc a
    adc [hl]
    nop
    ld [bc], a
    ld bc, $a0ff
    rst $38
    nop
    add b
    ccf
    add b
    ccf
    add d
    nop
    rst $38
    ldh [$fd], a
    add e
    nop
    cp $fe
    nop
    ld a, [hl]
    add b
    cp $c0
    nop
    rst $38
    ld a, h
    inc a
    ld e, h
    inc a
    inc e
    inc a
    ld a, $1c
    ei
    inc e
    ld e, $1f
    ld e, $1f
    rst $38
    rra
    adc l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    ei
    rlca
    ei
    rlca
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
    ei
    rlca
    rst $38
    ei
    rlca
    rst $38
    rlca
    rst $30

jr_002_55f8:
    rrca
    rst $38
    rrca
    cp $ff
    rra
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    add e
    rst $38
    db $fd
    cp $fe
    ld h, a
    ld hl, sp-$01
    nop
    ld sp, hl
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    cp a
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rrca
    ldh a, [$df]
    ccf
    ld a, a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    rst $38
    rst $28
    rra
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    rst $38
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, l
    add e
    ld a, a
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    add b
    rst $38
    adc a
    rst $38
    rst $18
    rst $28
    ld a, a
    adc a
    rst $38
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    cp $df
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, $3f
    ld a, $3c
    jr c, jr_002_56ad

    ret nz

    inc a
    jr c, jr_002_55f8

jr_002_5675:
    jr c, jr_002_56f3

    jr c, jr_002_5675

    jr c, jr_002_56f7

    cp $7c
    cp $ff
    cp h
    rst $38
    dec b
    inc bc
    ld bc, $d000
    ldh a, [$f8]
    db $fc
    adc a
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    cp [hl]
    nop
    ld bc, $0500
    inc bc
    rst $38
    cp a
    rst $38
    rla
    ld c, $05
    ld [bc], a
    inc bc
    nop
    ld sp, hl
    jp $e1e0


    ldh a, [$f1]
    pop hl
    rst $38
    pop de
    pop hl
    or c
    pop bc
    pop af
    add c
    ld h, e

jr_002_56ad:
    add b
    rst $38
    inc bc
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    db $f4
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $30
    adc a
    ei
    rlca
    rst $38
    inc bc
    add b
    rst $38
    sbc a
    rst $38
    cp $fd
    cp $ff
    db $fc
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    pop af
    db $fd
    db $e3
    rst $38
    rst $18
    db $e3
    rst $38
    rst $00
    rst $30
    adc a
    ld a, a
    adc a
    ldh [$7f], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_002_56f3:
    cp $f7
    ld hl, sp-$01

jr_002_56f7:
    ldh a, [$f7]
    ld hl, sp-$01
    rst $30
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$80]
    rst $38
    cp a
    rst $38
    rst $30
    adc a
    ei
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, a
    add c
    cp $81
    cp $ff
    ret nz

    rst $28
    ldh a, [$f9]
    cp $ff
    or b
    rst $38
    add b
    nop
    ret nc

    ccf
    ld a, a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    adc [hl]
    nop
    add b
    nop
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    ld a, a
    add e
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    jp nz, $c747

    ret nz

    adc c
    ret nz

    rst $00
    nop
    rst $38
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $38
    nop
    ei
    rst $38
    ld a, a
    ld a, h
    db $fc
    inc a
    inc e
    inc a
    add h
    inc e
    inc a
    add a
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    rst $18
    ldh [rIE], a
    call nz, $8cf7
    ld a, e

jr_002_5795:
    adc h
    rst $38
    ei
    inc e
    rst $18
    jr c, @+$01

    jr c, jr_002_5795

    ld a, b
    rst $38
    ld [hl], a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [rIE]
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    ei
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    rst $38
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$bf], a
    ret nz

    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$de], a
    pop hl
    add e
    rst $38
    db $fd
    cp $fe
    ld h, a
    ld hl, sp-$01
    nop
    ld sp, hl
    rlca
    rst $38
    cp a
    rst $38
    rla
    rrca
    rlca
    inc bc
    ld bc, $d003
    jp $f1e1


    adc a
    pop af
    pop hl
    pop af
    jp $fee1


    ld bc, $0703
    inc bc
    rla
    rrca
    rst $38
    ldh [rIE], a
    ld bc, $fe00
    cp $e0
    xor $f0
    cp $f0
    nop
    adc a
    nop
    ldh a, [$f8]
    db $fc
    ld hl, sp-$01
    cp $f8
    cp $f8
    cp $f8
    rst $38
    ld hl, sp-$20
    rst $18
    ldh [rP1], a
    cp $be
    ret nz

    cp $80
    cp $80
    nop
    adc a
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp a
    ld a, h
    inc [hl]
    ld a, b
    inc e
    jr nz, jr_002_58a7

    inc b
    rst $38
    jr jr_002_5877

    dec de
    ld b, $1f
    rlca
    rst $38
    rlca

jr_002_5877:
    cp a
    rst $38
    ld a, e
    add a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $38
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    cp a

jr_002_58a7:
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $38
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ccf
    rst $38
    rst $28
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    db $f4
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $28
    rra
    ldh a, [$df]
    ccf
    ld a, a
    rst $38
    and b
    rst $38
    ret nz

    add d
    rst $00
    ret nz

    adc b
    ret nz

    rst $00
    add d
    rst $00
    rst $38
    cp e
    rst $38
    ld a, h
    db $fc
    inc a
    inc e
    inc a
    add a
    inc e
    inc a
    inc e
    inc a
    rst $38
    ld a, h
    inc e
    ld a, h
    inc e
    inc a
    inc e
    ld a, $1c
    ei
    inc e
    ld e, $1f
    ld e, $1f
    rst $18
    ccf
    db $fd
    rst $28
    ldh a, [$1f]
    nop
    ld b, $01
    inc bc
    ret nc

    jp $f1e1


    ld hl, sp-$01
    nop
    add b
    ld b, b
    ret nz

    add d
    rst $00
    ret nz

    add e
    rst $38
    cp a
    ret nz

    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
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
    cp a
    rst $38
    rst $30
    ei
    sbc a
    db $e3
    ei
    rlca
    rst $38
    ei
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    ldh [$ef], a
    rra
    rst $38
    add b
    rst $38
    and b
    rst $38
    nop
    adc $fc
    cp $fc
    cp $00
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
    add b
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    adc h
    rst $38
    rst $30
    rst $38
    add b
    rst $38
    cp a
    nop
    ld [hl], e
    inc b
    ld [hl-], a
    db $10
    inc b
    ld [hl], $ff
    ld a, [hl-]
    ld l, $0c
    db $10
    inc e
    inc d
    ld [$bf00], sp
    nop
    inc a
    ld b, b
    ld [hl], $00
    ld [hl], $00
    rst $38
    ld a, $02
    inc [hl]
    ld [bc], a
    ld [hl], $00
    ld a, $49
    nop
    sbc d
    ld bc, $0403
    nop
    add b
    nop
    add c
    nop
    ld bc, $0392
    rlca
    rrca
    add e
    nop
    and b
    ret nz

    rst $38
    ldh a, [$e0]
    ld hl, sp-$10
    db $f4
    ld hl, sp-$06
    db $fc
    add b
    nop
    rst $38
    ld bc, $0500
    inc bc
    rra
    rrca
    rra
    ccf
    db $f4
    ccf

jr_002_59dd:
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp a
    nop
    ld [hl], b
    nop
    ld l, b
    ldh a, [$f4]
    ld hl, sp-$0c
    db $f4
    ld hl, sp+$67
    ld hl, sp-$01
    add b
    nop
    adc a
    nop
    ret nz

    nop
    db $10
    ldh [rIE], a
    ret z

    ldh a, [$c8]
    ldh a, [$e4]
    ld hl, sp-$1c
    ld hl, sp-$01
    db $e4
    ld hl, sp-$3c
    ld hl, sp-$1c
    ld hl, sp-$0c
    ld sp, hl
    add e
    nop
    ld a, [bc]
    rlca
    db $ec
    rrca
    rra
    ccf
    ld a, a
    rst $38
    add c
    nop
    add b
    rst $38
    nop
    ret nz

    jr nz, jr_002_59dd

    sub b
    ldh [$90], a
    ldh [rIE], a
    nop
    add b
    ld b, b
    add b

jr_002_5a26:
    nop
    ret nz

jr_002_5a28:
    ld h, b
    ret nz

    rst $38
    db $10
    ldh [rDIV], a
    ld hl, sp-$7f
    cp $c8
    pop af
    rst $38
    jr z, jr_002_5a26

    add b
    ld hl, sp-$7c
    ld hl, sp-$40
    db $fc
    rst $38
    ldh a, [$fc]
    jp nz, $e0fc

    cp $f1
    cp $ff
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ld a, [$feff]
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    cp $ff
    cp $ff
    ei
    rst $38

jr_002_5a5e:
    ldh a, [$fd]
    rst $38
    cp $ff
    push af
    and b
    nop
    jr nz, jr_002_5a28

    nop
    add b
    rst $38
    ld b, b
    add b
    ld b, b
    add b
    nop
    ret nz

    add b
    ret nz

    rst $38
    add b
    ld b, b
    nop
    ret nz

    jr nz, @-$3e

    sub b
    ldh [rIE], a
    nop
    ld hl, sp-$7c
    ld hl, sp+$40
    db $fc
    adc b
    db $f4
    rst $38
    adc b
    db $f4
    call nz, $c4f8
    ld hl, sp-$1e
    db $fc
    rst $38
    pop hl
    cp $a0
    ld sp, hl
    ldh a, [$f8]
    ret nz

    ld hl, sp-$01
    nop
    add b
    nop
    ret nz

    jr nz, jr_002_5a5e

    nop
    ldh [rIE], a
    ld d, b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$a1]
    ret c

    rst $38
    pop bc
    cp $c8
    ldh a, [$a4]
    ld hl, sp-$40
    db $fc

jr_002_5ab2:
    rst $38
    ld [c], a
    db $fc
    ld [c], a
    db $fc
    ldh a, [$fe]
    ldh [$fe], a
    rst $38
    pop af
    cp $f8
    rst $38
    jp hl


    cp $f4
    rst $38
    rst $38
    cp $ff
    ld a, [$fdff]
    rst $38
    cp $ff
    db $fc
    db $fc
    rst $38
    cp $ff
    cp $ff
    adc h
    rst $38
    db $fd
    rst $38
    ret nz

    cp $ff
    add b
    rst $38
    adc [hl]
    nop
    ld b, b
    add b
    nop
    rst $38
    ld b, b
    add b
    jr nz, @-$3e

    nop
    ldh [$c0], a
    and b
    rst $38
    ld h, b
    add b
    nop
    ret nz

    jr nz, jr_002_5ab2

    nop
    ldh [rIE], a
    adc b
    ldh a, [$c0]
    db $fc
    ld [de], a
    ldh [$b0], a
    ret nz

    rst $38
    sub b
    ldh [rOBP0], a
    ldh a, [$88]
    ldh a, [$c0]
    ld hl, sp-$01
    push bc
    ld hl, sp-$20
    cp $e0
    ld hl, sp-$20
    db $fc
    rst $38
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    nop
    ldh [rIE], a
    db $10
    ldh [rLCDC], a
    ldh a, [$08]
    ldh a, [rNR10]
    add sp, -$01
    add h
    ld hl, sp-$40
    db $fc
    ld a, [c]
    db $fc
    ret nz

    cp $ff
    pop hl
    cp $e1

jr_002_5b2e:
    cp $d0
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, [c]
    db $fd
    ld hl, sp-$01

jr_002_5b38:
    ld sp, hl
    cp $fd
    cp $ff
    db $ec
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ld a, [$dfff]
    db $fd
    cp $ff
    cp $ff
    db $fd
    rst $38
    di
    cp $ff
    cp $ff
    cp $ff
    adc h
    rst $38

jr_002_5b56:
    cp $ff
    add b
    rst $38
    add b
    nop
    rst $38
    add b
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ldh [rIE], a
    jr nz, jr_002_5b38

    ld b, b
    and b
    nop
    ret nz

    jr nz, jr_002_5b2e

    rst $38
    nop
    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [$0a]
    ldh a, [rIE]
    jr nz, jr_002_5b56

    adc b
    ldh a, [$80]
    ld hl, sp-$7c
    ld hl, sp-$01
    ld b, b
    db $fc
    add sp, -$0c
    sub b
    db $fc
    call nc, $fff8
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    rst $38
    ld b, b
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp-$68
    db $e4
    rst $38
    add h
    ldh a, [$c8]
    ldh a, [$c0]
    ld hl, sp-$20
    db $fc
    rst $38
    pop hl
    cp $d1
    cp $e0
    rst $38
    ld hl, sp-$01
    rst $38
    and $fc
    ldh a, [$fe]
    ld sp, hl
    cp $f0
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    db $f4
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    or b
    rst $38
    cp $ff
    add b
    nop
    cp a
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ldh [rP1], a
    ld b, b
    nop
    rst $18
    add b
    nop
    add b
    ld b, b
    add b
    jr nc, @-$3e

    rst $38
    nop
    ldh [rNR41], a
    ret nz

    db $10
    ldh [rP1], a
    ldh a, [rIE]
    ld [$80f0], sp
    ld hl, sp+$10
    add sp, -$70

jr_002_5bf3:
    add sp, -$01
    ret z

    ldh a, [$cc]
    ldh a, [$e0]
    db $fc
    ld h, d
    db $fc
    rst $38
    ldh [$fe], a
    and h

jr_002_5c01:
    ld a, [$fad4]
    ldh [$fc], a
    rst $38
    inc b
    dec de
    ld b, $39
    nop
    ccf
    nop
    ccf
    rst $38
    nop
    ccf
    jr nz, jr_002_5c73

    add b
    ld a, a
    add b
    ld a, a
    rst $38
    jr nz, jr_002_5bf3

    ld h, b
    sbc h
    nop
    db $fc
    nop
    db $fc
    rst $38
    inc b
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $00fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    nop
    add b
    nop
    ldh [rP1], a
    db $fd
    ld hl, sp+$00
    jr nc, jr_002_5c99

    ret nz

    nop
    add b
    rst $38
    ld [$2404], sp
    jp nz, $e011

    inc b
    di
    rst $38
    inc b
    ld a, e
    jr nz, jr_002_5c89

    nop
    rrca
    db $10
    rrca
    rst $38
    jr z, jr_002_5c01

    and h
    ld b, e

jr_002_5c73:
    ld [$2087], sp
    rst $08
    rst $38
    jr nz, @-$20

    inc b
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_002_5c89:
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf

jr_002_5c99:
    ld b, b
    ccf
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    adc l
    nop
    add b
    nop
    add b
    rst $38
    ld b, b
    add b
    nop
    ret nz

    nop
    ldh [$08], a
    ldh a, [rIE]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    ld [$00f0], sp
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [$83], a
    nop
    jr nz, jr_002_5cc8

jr_002_5cc8:
    rst $38
    ld [hl], b
    nop
    ld a, b
    nop

jr_002_5ccd:
    jr nc, jr_002_5d0f

    ld [$ff80], sp
    ld bc, $2002
    pop bc
    ld de, $04e0
    di
    rst $38
    inc b
    ld a, e
    jr nz, jr_002_5cfe

    nop
    rrca
    db $10
    rrca
    rst $38
    and b
    db $10
    and h
    ld b, e
    ld c, b
    add a
    jr nz, @-$2f

    rst $38
    jr nz, jr_002_5ccd

    inc b
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_002_5cfe:
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b

jr_002_5d0f:
    ccf
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    cp l
    nop
    add b
    nop
    add b
    nop
    add b
    rst $38
    ld b, b
    add b
    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh [rIE], a
    nop
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$08
    ldh a, [rIE]
    ld [$00f0], sp
    ldh a, [rP1]
    ldh [rNR41], a
    ret nz

    add e
    nop
    jr nz, jr_002_5d3f

jr_002_5d3f:
    rst $38
    ld l, b
    nop
    ld a, h
    nop

jr_002_5d44:
    jr jr_002_5d66

    nop
    ld b, b
    rst $38
    nop
    ld bc, $c120
    ld de, $04e0
    di
    rst $38
    inc b
    ld a, e
    jr nz, jr_002_5d75

    nop
    rrca
    db $10
    rrca
    rst $38
    ret nz

    nop

jr_002_5d5d:
    call z, Call_002_4833
    add a
    jr nz, @-$2f

    rst $38
    jr nz, jr_002_5d44

jr_002_5d66:
    inc b
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_002_5d75:
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    nop

jr_002_5d8d:
    ld a, a
    nop
    ld a, a
    add e
    nop
    add b
    nop
    rst $38
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_002_5d5d

    rst $38
    nop
    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    ldh a, [rNR10]
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    add e

jr_002_5db0:
    nop
    ld bc, $f100
    ld bc, $0100
    nop
    inc b
    add e
    nop
    add b
    nop
    rst $38
    ld h, b
    nop
    ldh [rP1], a

jr_002_5dc2:
    ret nz

    nop
    ld b, b
    nop
    rst $38
    ld [bc], a
    inc b
    jr nz, jr_002_5d8d

    ld de, $04e0
    di
    rst $38
    inc b
    ld a, e
    jr nz, jr_002_5df3

    nop
    rrca
    db $10
    rrca

jr_002_5dd8:
    rst $38
    add b
    nop
    inc b
    or e
    ld c, b
    add a
    jr nz, jr_002_5db0

    rst $38
    jr nz, jr_002_5dc2

    inc b
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b

jr_002_5dee:
    ccf
    nop
    ld a, a
    nop
    ld a, a

jr_002_5df3:
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    adc l
    nop
    add b
    nop
    add b
    rst $38
    ld b, b
    add b
    jr nz, jr_002_5dd8

    nop
    ldh a, [rP1]
    ld hl, sp-$01
    nop
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    jr nz, jr_002_5dee

    add b
    nop
    rst $18
    ld [bc], a
    ld bc, $0b06
    inc b
    ld b, $08
    rst $38
    ld bc, $040c
    ld [$080e], sp
    ld [bc], a
    dec c
    rst $38
    add hl, bc
    ld b, $02
    rlca
    dec b
    inc bc
    ld bc, $8300
    nop
    ld [$fff0], sp
    and b
    ld e, h
    ld [$5d16], a
    ld [bc], a
    xor c
    rlca
    rst $38
    adc a
    ld h, c
    ld c, h
    inc sp
    jp nc, $9c35

    ld [hl], e
    rst $38
    ld b, h
    or e
    add hl, sp
    rst $20
    push bc
    db $eb
    ld a, b
    rst $00
    rst $38
    ld d, d
    adc a
    ld e, e
    add [hl]
    ld b, e
    adc [hl]
    ld a, [de]
    ld b, a
    rst $38
    ld a, [hl-]
    ld b, a
    ld c, e
    ld h, $0e
    inc hl
    add hl, de
    daa
    add c
    nop
    ld bc, $00ff
    ld bc, $3140
    inc h
    ld c, c
    or b
    ld b, l
    rst $38
    inc b
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    nop
    dec de
    rst $38
    ld bc, $0018
    jr nc, @+$1a

    jr nz, jr_002_5ed8

    jr nz, @+$01

    and b
    ld b, b
    ld bc, $82c0
    ret nz

    add h
    ret nz

    rst $38
    ld b, h
    add b
    adc c
    nop
    ld b, e
    nop
    adc e
    nop
    rst $38
    adc d
    ld bc, $009b
    dec d
    nop
    sub h
    nop
    rst $38
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    inc bc
    nop
    rst $38
    inc d
    ld [$1c26], sp
    adc h
    ld a, a
    ld h, e
    add b
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
    ld b, b
    ccf
    add b
    ccf
    or b
    rrca
    sub a
    nop

jr_002_5ed8:
    cp a
    nop
    dec c
    nop
    jr nc, jr_002_5ede

jr_002_5ede:
    jr nz, jr_002_5ee0

jr_002_5ee0:
    rst $38
    ret nz

    nop
    add d
    nop
    dec d
    ld [bc], a
    jr jr_002_5ef0

    rst $38
    xor c
    ld d, $c4
    add hl, sp
    ld d, e

jr_002_5eef:
    and h

jr_002_5ef0:
    ret z

    db $10
    rst $38
    db $10
    jr nz, jr_002_5f36

    nop
    ld b, c
    nop
    add c
    nop
    rst $38
    add c
    nop
    add e
    nop
    inc bc
    nop
    ld a, [bc]
    ld bc, $008d
    add b
    nop
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld c, b
    add $41
    jp c, $06ff

    db $fd
    ld bc, $06fe
    ld hl, sp-$04
    nop
    cp a
    nop
    adc [hl]
    nop
    ld d, c

jr_002_5f20:
    nop
    ld [hl], b
    nop
    rst $38
    ld [hl], b
    nop
    xor b
    ld d, b
    ld h, $d8
    ld [hl], c
    adc [hl]
    rst $38
    ret


    ld [hl], $06
    reti


    add l
    ld a, d
    ld c, c
    jr nc, @+$01

jr_002_5f36:
    jr nc, jr_002_5f38

jr_002_5f38:
    ret c

    jr nz, jr_002_5eef

    ld c, b
    and h
    ld c, b
    rst $38
    ld l, b
    add h
    ld b, b
    add h
    ld b, h
    add b
    ld b, d
    add h
    rst $38
    ld [hl], b
    nop
    jr nz, jr_002_5f9c

    and b
    ld d, b
    jr nz, jr_002_5f20

    rst $38
    ld h, b
    db $10
    jr nc, jr_002_5f5d

    or b
    ld [$08d4], sp
    rst $38
    sub b
    ld l, h
    ld e, b

jr_002_5f5d:
    inc h
    jr z, @+$16

    ld [$ff14], sp
    ld a, [de]
    add h
    inc c
    jp nz, Jump_002_4aa4

    ld b, h
    xor d
    rst $38
    sub h
    ld b, d
    ld b, l
    ld [hl+], a
    ld [hl], h
    inc bc
    ld h, [hl]
    ld de, $2eff
    ld de, $013e
    scf
    ld [$0936], sp
    rst $38
    inc e
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    ld b, $01
    rst $38
    ld b, $01
    inc bc
    nop
    ld bc, $0100
    nop
    jp $fffe


    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a

jr_002_5f9c:
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    rla
    rrca
    rst $10
    rrca
    rlca
    inc bc
    ld bc, $0102
    rst $38
    nop
    inc bc
    ld [bc], a
    dec b
    rrca
    ld bc, $0b05
    rst $38
    dec e
    inc bc
    add hl, bc
    rla
    dec sp
    rlca
    dec de
    daa
    rst $38
    ld h, c
    add d
    ld hl, $b1c2
    jp nz, $e291

    rst $38
    pop de
    ld [c], a
    ret


    ld a, [c]
    jp hl


    ld a, [c]
    jp hl


    ld a, [c]
    rst $38
    jp hl


    ld a, [c]
    pop af
    ld a, [$fbf4]
    ld hl, sp-$01
    jp $fffb


    ld a, a
    rst $38
    rst $38
    rlca
    pop bc
    xor a

jr_002_5fe3:
    ld b, e
    rst $18
    daa
    rst $18
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rst $18
    ccf
    sbc a
    ld a, a
    ret nz

    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    add e
    ldh [$d6], a
    pop hl
    db $ec
    di
    ret c

    rst $38
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    cp $ff
    add b
    rst $38
    add e
    nop
    jr z, jr_002_5fe3

    ld hl, sp+$54
    xor d
    add d
    stop
    cp a
    nop
    ld b, h
    add d
    jr z, jr_002_606d

    nop
    ld l, h
    db $f4
    nop
    jr c, jr_002_602f

jr_002_602f:
    stop
    add l

jr_002_6032:
    nop
    add d
    ld l, h
    ld hl, sp+$28
    stop
    stop
    add b
    nop
    ld hl, sp+$44
    jr c, jr_002_6041

jr_002_6041:
    sub $00
    add c
    nop
    ld l, h
    ldh [rLY], a
    stop
    or a
    nop
    jr z, jr_002_604e

jr_002_604e:
    jr z, jr_002_6060

    jr z, jr_002_6032

    nop
    stop
    adc a
    nop
    ld b, h
    nop
    jr z, jr_002_609f

    ldh a, [rP1]
    jr c, jr_002_606f

    nop

jr_002_6060:
    add b
    nop
    db $f4

jr_002_6063:
    nop
    jr c, jr_002_6076

    ld b, h
    nop
    cp a
    nop
    ld a, [bc]
    ld c, $01

jr_002_606d:
    ld [bc], a
    nop

jr_002_606f:
    ld bc, $01a0
    nop
    rst $38
    ld d, b
    or b

jr_002_6076:
    call c, $0ce4
    ld [de], a
    ld b, $09
    cp $0b
    ld c, $03
    dec b
    ld bc, $0103
    sbc a
    nop
    ld bc, $0203
    dec hl
    ld a, [hl-]
    rst $38
    add hl, sp
    inc b
    dec a
    ld b, e
    rst $38
    add c
    ld a, b
    add a
    rst $38
    ld sp, hl
    add a
    ld e, d
    ld h, a
    jr @+$1b

    ld e, b
    ld h, l
    rst $38
    ei

jr_002_609f:
    add a
    ld a, c
    add a
    ld a, h
    add d
    db $fc
    add e
    rst $38
    add hl, sp
    ld b, h
    dec hl
    ld a, [hl-]
    rrca
    ld c, $04
    dec c
    rst $30
    inc c
    inc b
    ld [$0804], sp
    inc c
    ld [$02df], sp
    ld b, $04
    add c
    add e
    add d
    ld b, e
    rst $38
    pop hl
    jr nz, jr_002_6063

    ld b, c
    ld h, c
    sub c
    pop de
    and c
    rst $38
    ret c

    xor b
    nop
    ld a, b
    ld [hl], b
    ld e, b
    inc b
    inc a
    rst $38
    xor b
    inc a
    ld [bc], a
    jp c, $ed85

    ld h, a
    rst $30
    rst $28
    dec de
    ld a, a
    dec de
    inc de
    rra
    ld d, $2f
    cp $69
    add hl, de
    ret nc

    or b
    ld b, b
    ret nz

    add d
    rst $38
    inc bc
    rlca
    inc c
    dec c
    ld [bc], a
    dec bc
    ld [de], a
    inc de
    rst $38
    inc bc
    inc de
    db $10
    ld [de], a
    ld [$000a], sp
    ld a, [bc]
    cp a
    inc de
    nop
    ld bc, $0100
    nop
    ld bc, $01b0
    nop

jr_002_6107:
    ld bc, $00bf
    ld b, b
    ret nz

    ret nc

    jr nc, jr_002_6107

    ld [$f0ff], sp
    ld [$6898], sp
    inc b
    db $f4
    inc b
    ld a, [hl+]
    rst $38
    xor $30
    db $76
    sbc b
    di
    dec e
    db $76
    sbc c
    rst $38
    ld h, $e9
    sub b
    sub [hl]
    nop
    ldh a, [$90]
    ld l, b
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [rNR10]
    and b
    ret nz

    nop
    adc c
    nop
    ld bc, $ff02
    rlca
    inc b
    add l
    add d
    ld b, $89
    adc e
    dec b
    rst $38
    sbc e
    dec d
    nop
    sbc [hl]
    adc [hl]
    ld a, [de]
    jr nz, @-$42

    rst $38
    dec d
    cp h
    ret nc

    db $db
    or c
    or a
    ld h, [hl]
    ld l, a
    xor $00
    ld b, b
    and b
    ret nz

    ldh [$d0], a
    ld a, [$4808]
    ld [$4048], sp
    jr nz, jr_002_6165

jr_002_6165:
    add b
    nop
    add b
    nop
    add b
    rst $38
    add b
    rst $38
    rst $38
    pop hl
    ld e, $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    adc a
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    adc a
    rst $38
    cp $ff
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    ld a, c
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    add b
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    daa
    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    dec c
    ld a, [c]
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    cp a
    nop
    db $fc
    db $e4
    nop
    ei
    nop
    add c
    nop
    add b
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    ld h, a
    rst $38
    rst $08
    ld hl, sp-$01
    db $fc
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    db $10
    rst $28
    cp $01
    cp e
    nop
    rst $38
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    nop
    add b
    rst $38
    add e
    rst $38
    rst $20
    rst $38
    rst $08
    sbc a
    rst $38
    rra
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    rst $38
    db $10
    rst $28
    ld b, $f9
    rra
    ldh [rIE], a
    nop
    ldh a, [$7f]
    nop
    adc a
    nop
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    rst $38
    ld hl, sp-$01
    ld [hl], h
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    adc h
    ld [hl], e
    rst $38
    or d
    dec c
    ld b, c
    ld a, $c0
    ccf
    or b
    ld c, a
    rst $38
    rst $38
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    rst $38
    ld sp, $0400
    nop
    jr nc, jr_002_6265

jr_002_6265:
    ret nz

    nop
    add e
    rst $38
    ld a, l
    rst $38
    rst $38
    inc bc
    rst $38
    jr @+$01

    and b
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
    pop bc
    ld a, $06
    ld hl, sp+$70
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    rlca
    nop

jr_002_628f:
    ldh a, [$c7]
    nop
    ld bc, $f000
    ei
    rst $38
    db $fc
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $82fe
    ld a, h
    rst $08
    inc e
    nop
    jr nc, jr_002_62b0

jr_002_62b0:
    rra
    nop
    rst $38
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    db $fd
    nop
    ld a, [c]
    nop
    ld bc, $bf00
    rst $38
    rst $30
    rst $38
    ld c, $ff
    or c
    rst $38
    rst $38
    ccf
    rst $38
    ld c, $ff
    db $10
    rst $38
    ld h, b
    rst $38
    rst $38
    ld [$10f7], sp
    rst $28
    ret nz

    rra
    jr jr_002_62e3

    rst $38
    rlca
    nop
    jr nz, jr_002_62e1

jr_002_62e1:
    ldh a, [rP1]

jr_002_62e3:
    rst $28
    db $10
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    sbc $00
    pop hl
    nop
    rst $08
    cp b
    nop
    add e
    nop
    ld a, [hl]
    nop
    cp a
    nop
    inc [hl]
    nop
    ld l, e
    nop
    add c
    nop
    cp a
    nop
    inc d
    nop
    ld e, $00
    ld l, l
    nop
    rst $38
    rst $38
    nop
    rst $20
    jr jr_002_628f

    ld a, e
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    inc bc
    nop
    ld c, [hl]
    nop
    cp b
    nop
    rst $38
    stop
    ldh [rP1], a
    sub $00
    cp $00
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    ret z

    scf
    add b
    ld a, a
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    inc b
    nop
    cp e
    nop
    ld h, b
    nop
    rst $38
    ld b, $00
    ld bc, $1c00
    nop
    sbc a
    nop
    rst $38
    rst $38
    nop
    cp $01
    inc e
    db $e3
    daa
    ret c

    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    ret nz

    nop
    ld b, b
    nop
    inc sp
    nop
    rst $38
    ld l, $00
    add hl, bc
    nop
    rrca
    nop
    cp a
    nop
    rst $38
    sub $29
    ld hl, $00de
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_002_637d:
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    ld [bc], a
    ld bc, $0005
    inc b
    ld bc, $05ff
    nop
    dec b
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    rst $38
    add hl, bc
    nop
    dec bc
    nop
    dec bc
    nop
    ld [de], a
    ld bc, $13ff
    nop
    ld [de], a

jr_002_639f:
    ld bc, $0116
    ld d, $01
    rst $38
    ld d, $01
    cpl
    nop
    inc h
    ld [bc], a
    ld h, $00
    rst $38
    inc l
    ld [bc], a
    inc l
    ld [bc], a
    ld l, [hl]
    nop
    ld c, d
    inc b
    rst $38
    ld e, b
    ld [bc], a
    ld e, b
    inc bc
    ld d, b
    inc bc
    ld d, b
    inc bc
    rst $38
    ret nc

    inc bc
    db $f4
    ld [bc], a
    ld h, d
    inc b
    ld h, b
    inc b
    rst $38
    ld c, l
    jr nz, jr_002_6436

    dec b
    ld l, b
    rlca
    ld a, [hl+]
    ld b, l
    rst $38
    push bc
    ld a, [bc]
    add e
    ld c, h
    sub e
    ld c, b
    db $d3
    ld [$53ff], sp
    ld [$01d6], sp
    ld d, [hl]
    add c

jr_002_63e1:
    ld h, [hl]
    sub c
    rst $38
    ld d, h
    adc e
    ld b, h
    and c
    ld [$2f03], sp
    nop
    or a
    nop
    add b
    nop
    add b
    nop
    add b
    rst $38
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    ret nz

    rst $38
    add b
    ld b, b
    nop
    ret nz

    and b
    ld b, b
    add b
    ld h, b
    rst $38
    add b
    ld h, b
    add b
    ld h, b
    nop
    ldh [$50], a
    and b
    rst $38
    ld h, b
    db $10
    ld c, b
    jr nc, jr_002_6414

jr_002_6414:
    ld a, b
    nop
    ld a, b
    rst $38
    ret nz

    jr c, @-$3e

    jr c, jr_002_63e1

jr_002_641d:
    jr c, jr_002_639f

jr_002_641f:
    ld a, h
    rst $38
    add b
    ld a, [hl]
    ret nz

    ld a, $80

jr_002_6426:
    ld a, [hl]
    ld b, b

jr_002_6428:
    cp [hl]
    rst $38
    ld d, c
    ld l, $80
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    rst $38
    ld b, b
    cp a
    nop

jr_002_6436:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rst $38
    jr nz, jr_002_641d

    jr nz, jr_002_641f

    nop
    rst $38
    nop
    rst $38
    rst $38
    jr nz, jr_002_6426

    jr nz, jr_002_6428

    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    ld b, b
    cp a
    inc bc
    db $fc
    ld bc, $30f0
    ret nz

    add b

jr_002_6457:
    nop
    cp a
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    nop
    dec b
    nop
    rst $38
    ld [hl], l
    nop
    adc l
    nop
    add hl, bc
    nop
    ld c, d
    ld bc, $deff
    ld hl, $0c03
    dec b
    ld [bc], a
    or b
    ld b, $b7
    nop
    add b
    nop
    add b
    ld b, b
    add b
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    rst $38
    jr nz, jr_002_6457

    dec bc
    ldh [rNR21], a
    ldh [rNR23], a
    ldh [rIE], a
    ld de, $0ee0
    ldh a, [$59]
    ld h, $81
    ld e, b
    add b
    nop
    xor d
    nop
    ld bc, $0703
    and b
    rlca
    rrca
    add d
    rrca
    rlca
    adc b
    rlca
    inc bc
    and d
    inc bc
    ld bc, $f900
    rlca
    rrca
    rra
    ccf
    ld a, a
    rst $38
    add b
    rst $38
    cp $3f
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    cp [hl]
    rra
    rrca
    rra
    rrca
    rra
    rrca
    add c
    rrca
    rra
    db $fc
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rst $38
    adc b
    ldh a, [$f1]
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$fe]
    rst $38
    db $fc
    rst $38
    ldh a, [$3f]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    ld hl, sp-$20
    db $fc
    sub b
    db $fc
    rst $38
    ret nc

    db $fc
    ret nz

    db $fc
    ldh [$f8], a
    ldh [$f8], a
    rst $38
    ret nz

    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [rIE]
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [$81], a
    nop
    add b
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [$90], a
    ldh [rIE], a
    ret nz

    ldh a, [$08]
    ldh a, [$c0]
    ld hl, sp-$1c
    ld hl, sp-$01
    db $e4
    ld hl, sp-$1c
    ld hl, sp+$24
    ld hl, sp-$7c
    ld hl, sp-$01
    add h
    ld hl, sp-$3c
    ld hl, sp-$40
    ld hl, sp-$38
    ldh a, [rIE]
    sub b
    ldh [$90], a
    ldh [rP1], a
    ldh [rLCDC], a
    add b
    sbc a
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rst $30
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rst $38
    rra
    ccf
    rra
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    rst $38
    dec de
    ld a, a
    cpl
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ret nz

    ld a, a
    rst $38
    db $fc
    rst $38
    db $fc
    cp $ff
    db $fc
    rst $38
    add b
    rst $38
    ldh a, [$e3]
    db $fd
    set 7, a
    add b
    rst $38
    rst $38
    sbc b
    ldh [$88], a
    ldh a, [$c8]
    ldh a, [$c8]
    ldh a, [rIE]
    ret z

    ldh a, [$c8]
    ldh a, [$c8]
    ldh a, [$c4]
    ld hl, sp-$01
    add h
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp-$1c
    ld hl, sp-$01
    ret nz

    db $fc
    ldh a, [$fe]
    db $fd
    cp $f0
    rst $38
    di
    ld hl, sp-$01
    cp $ff
    cp $ff
    or b
    rst $38
    cp $ff
    add b
    nop
    cp a
    nop
    ld bc, $0300
    nop
    ld bc, $ff02
    rlca
    nop
    inc bc
    inc b
    inc bc
    inc b
    ld [bc], a
    dec b
    rst $38
    ld c, $01
    inc b
    dec bc
    inc d
    dec bc
    ld [$ff17], sp
    ld [$0017], sp
    rra
    ld [$0117], sp
    ld e, $ff
    inc de
    inc c
    rlca
    ld [$001f], sp
    rrca
    db $10
    add b
    nop
    or a
    nop
    ld bc, $0100
    inc bc
    nop
    db $fd
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld b, $00
    inc b
    rst $38
    inc c
    nop
    ld bc, $0908
    nop
    ld a, [bc]
    ld de, $32ff
    ld bc, $2116
    inc d
    inc hl
    inc l
    inc bc
    rst $38
    inc l

jr_002_660a:
    ld b, e
    jr c, jr_002_6654

    jr c, jr_002_6656

    ld e, b
    rlca
    rst $38
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    rst $38

jr_002_661b:
    ld a, h
    add e
    inc a
    jp $c33c


    jr jr_002_660a

    rst $38
    add b
    ld a, a
    add a
    ld a, b
    ld e, $61
    ld a, c
    rlca
    rst $38
    pop hl
    rra
    pop bc
    ccf
    ret nz

    ccf
    db $e3
    rra
    rst $38
    rst $00
    ccf
    adc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add hl, de
    cp $ff
    inc c
    di
    jr nc, jr_002_661b

    ld h, b
    sbc a
    ret nz

    ccf
    rst $38
    add b
    ld a, a
    add b

jr_002_6654:
    ld a, a
    nop

jr_002_6656:
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rrca
    inc bc
    ld c, a
    sub e
    rrca
    rla
    adc a
    rst $38
    add a
    rra
    daa
    rra
    daa
    rra
    rrca
    ccf
    rst $38
    ld c, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    sbc a
    ld a, a
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc b
    ei
    ld hl, sp-$19
    rra
    cp a
    ld a, a
    rst $38
    or b
    rst $38
    cp a
    rst $38
    add b
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc h
    rst $38
    rst $08
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    adc h
    rst $38
    di
    rst $38
    add b
    rst $38
    ldh a, [$f0]
    rst $38
    cp $ff
    rst $38
    jp nz, $c0f0

    ld a, [c]
    ret


    ldh a, [$c8]
    pop af
    rst $38
    pop bc
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$20
    db $fc
    rst $38
    ld [c], a
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    pop af
    cp $ff
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $ff
    cp $ff
    cp $ff
    add b
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jr nz, @-$1f

    ld hl, sp-$19
    ld hl, sp-$03
    cp $ff
    or b
    rst $38
    db $fd
    rst $38
    add b
    rst $38

jr_002_671d:
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ret z

    rst $30
    di

jr_002_6725:
    db $fc
    rst $38

jr_002_6727:
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    add b
    rst $38
    add b
    nop
    or a
    nop

jr_002_6735:
    add b
    nop
    add b
    ret nz

    nop
    db $fd
    nop
    ld b, b
    nop
    ld b, b
    ld h, b
    nop
    jr nz, @+$01

    jr nc, jr_002_6745

jr_002_6745:
    add b
    db $10
    sub b
    nop
    ld b, b
    adc b
    rst $38
    ld c, h
    add b
    ld c, b
    add h
    ld h, b
    add h
    inc h
    ret nz

    rst $38
    inc h
    jp nz, $c220

    jr nc, jr_002_671d

    ld [hl-], a
    ret nz

    rst $38
    ld sp, $30c0
    pop bc
    jr nc, jr_002_6725

    jr nc, jr_002_6727

    rst $38
    ld h, d
    add c
    ld h, d
    add c
    ld [c], a
    ld bc, $8166
    rst $38
    rra
    ldh [$a5], a
    ld a, [de]
    ld l, b
    add [hl]
    sbc d
    ldh [rIE], a
    add h
    ld hl, sp-$7e
    db $fc
    inc bc
    db $fc
    rst $00
    ld hl, sp-$01
    db $e3
    db $fc
    pop af
    cp $f9
    cp $f8
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc b
    ld a, a
    rst $38
    or b
    rrca
    inc a
    jp $e11a


    ld c, $f0
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $80fe
    nop
    cp l
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    rst $18
    jr nz, jr_002_67b1

jr_002_67b1:
    jr nz, jr_002_67b3

jr_002_67b3:
    jr nz, jr_002_6735

    jr nz, @+$01

    or b
    nop
    ld b, b
    sub b
    ld c, b
    sub b
    ld d, b
    adc b
    rst $38
    ld b, b
    adc b
    ret nz

    ld [$8840], sp
    or b
    ld c, b
    rst $38
    ld [$8030], sp
    db $10
    sbc b
    nop
    ret nz

    ld [$ffff], sp
    nop
    cp $01
    db $fd
    nop
    db $fc
    ld bc, $fdff
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop

jr_002_67e3:
    rst $38
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    ld a, [c]
    ld bc, $f3ff
    nop
    ld a, [c]
    ld bc, $01f6
    or $01
    rst $38
    or $01
    rst $28
    nop
    db $e4
    ld [bc], a
    and $00
    rst $38
    db $ec
    ld [bc], a
    db $ec
    ld [bc], a
    xor $00
    jp z, $ff04

    ret c

    ld [bc], a
    ret c

    inc bc
    ret nc

    inc bc
    sub b
    inc bc
    rst $38
    sub b
    inc bc
    sub h
    ld [bc], a
    ld [hl+], a
    inc b
    nop
    inc b
    rst $38
    cp $00
    cp $00
    cp $00
    sbc l
    nop
    rst $38

jr_002_6823:
    inc b
    ld bc, $000b
    dec b
    ld [bc], a
    or b
    ld b, $ff
    rst $38
    nop
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
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    cp a

jr_002_683f:
    ld b, b
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    rst $38
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    rst $38
    ld l, a
    db $10
    ld c, a
    jr nc, jr_002_685c

    ld a, b
    rlca
    ld a, b
    rst $38
    rst $00
    jr c, jr_002_6823

jr_002_685c:
    jr c, @-$37

    jr c, jr_002_67e3

    ld a, h
    rst $38
    add c
    ld a, [hl]
    pop bc
    ld a, $81
    ld a, [hl]
    ld b, c
    cp [hl]
    rst $38
    ld d, c
    ld l, $80
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld sp, $ffc0
    jr z, jr_002_683f

    ld e, $e0
    ld e, c
    ld h, $81
    ld e, b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $38
    ld b, d
    nop
    inc b
    nop
    ld l, $00
    ld e, l
    nop
    nop
    ld a, $90
    ld [$c0eb], a
    ld a, $e0
    ld [$c0ec], a
    ld a, $80
    ld [$c0f1], a

jr_002_68a7:
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6a22

    ld a, $01
    ldh [$97], a

jr_002_68b2:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_68b2

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_68a7

    xor a
    ldh [$99], a
    ld hl, $6a8e
    ld a, h
    ldh [$c2], a
    ld a, l
    ldh [$c3], a
    ld e, $0b
    call $29fb
    ld a, $09
    ldh [$c0], a

jr_002_68da:
    ld a, $01
    ldh [$97], a

jr_002_68de:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_68de

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6a22

    ldh a, [$c0]
    cp $58
    jr c, jr_002_68fa

    ldh a, [$99]
    and $01
    jr nz, jr_002_6911

jr_002_68fa:
    ldh a, [$c2]
    ld h, a
    ldh a, [$c3]
    ld l, a
    inc hl
    ld a, h
    ldh [$c2], a
    ld a, l
    ldh [$c3], a
    ldh a, [$c0]
    add $02
    ldh [$c0], a
    cp $6f
    jr z, jr_002_693b

jr_002_6911:
    ld e, $18
    ldh a, [$c0]
    cp $3f
    jr c, jr_002_6928

    cp $6e
    jr nc, jr_002_6928

    sub $3f
    srl a
    srl a
    srl a
    add $18
    ld e, a

jr_002_6928:
    ldh a, [$c2]
    ld h, a
    ldh a, [$c3]
    ld l, a
    ld b, [hl]
    ldh a, [$c0]
    ld c, a
    xor a
    call Call_002_7e84
    call $3be8
    jr jr_002_68da

jr_002_693b:
    ld a, $08
    call Call_002_7f1b
    xor a
    ld [$c2c2], a
    ld a, $40
    ld [$c0f1], a

jr_002_6949:
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6a22

    ld a, $01
    ldh [$97], a

jr_002_6954:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6954

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6949

    ld a, $01
    ldh [$99], a
    ld a, $04
    ld [$c2c2], a
    ld a, $00
    ldh [$a7], a
    ldh [$a1], a
    ld a, $4e
    ldh [$a3], a
    ld e, $0c
    call $29fb

Jump_002_697f:
    ld a, $01
    ldh [$97], a

jr_002_6983:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6983

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6a22

    ldh a, [$99]
    and $03
    jr nz, jr_002_69aa

    ldh a, [$a7]
    inc a
    and $03
    ldh [$a7], a
    ldh a, [$a1]
    add $04
    cp $c0
    jr nc, jr_002_69aa

    ldh [$a1], a

jr_002_69aa:
    ldh a, [$a1]
    cp $20
    jr c, jr_002_69cd

    ldh a, [$99]
    and $07
    jr nz, jr_002_69c1

    ld a, [$c2c2]
    inc a
    cp $18
    jr z, jr_002_69ea

    ld [$c2c2], a

jr_002_69c1:
    ld a, [$c2c2]
    ld e, a
    ld b, $60
    ld c, $18
    xor a
    call Call_002_7e84

jr_002_69cd:
    ldh a, [$a7]
    ld e, a
    ldh a, [$a3]
    ld b, a
    ldh a, [$a1]
    ld c, a
    xor a
    call Call_002_7e84
    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    jp Jump_002_697f


jr_002_69ea:
    xor a
    ldh [$99], a

Jump_002_69ed:
    ld a, $01
    ldh [$97], a

jr_002_69f1:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_69f1

    xor a
    ldh [$98], a
    ld e, $18
    ldh a, [$99]
    cp $19
    jr nc, jr_002_6a22

    dec a
    srl a
    srl a
    add $18
    ld e, a
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    ld e, $17
    ld b, $60
    ld c, $18
    xor a
    call Call_002_7e84
    call $3be8
    jp Jump_002_69ed


Jump_002_6a22:
jr_002_6a22:
    ld a, $e4
    ld [$c0ea], a
    ld e, $02
    call $2a4a
    ld a, $01
    ldh [$97], a

jr_002_6a30:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6a30

    xor a
    ldh [$98], a
    ld e, $0a
    call $2a30
    ld e, $17
    ld b, $60
    ld c, $18
    xor a
    call Call_002_7e84
    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $06
    ld [$c2e7], a

jr_002_6a5a:
    ld a, $ff
    ld [$c0f1], a

jr_002_6a5f:
    ldh a, [$8c]
    bit 3, a
    jp nz, $03fd

    bit 2, a
    jp nz, $0363

    ld a, $01
    ldh [$97], a

jr_002_6a6f:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6a6f

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6a5f

    ld a, [$c2e7]
    dec a
    ld [$c2e7], a
    jr nz, jr_002_6a5a

    jp $0150


    dec l
    jr nc, @+$34

    inc [hl]
    ld [hl], $38
    add hl, sp
    dec sp
    inc a
    ld a, $3f
    ld b, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, e
    ld d, c
    ld d, b
    ld c, [hl]
    ld b, [hl]
    ld a, $39
    ld a, $40
    ld [$c0f1], a

jr_002_6ac7:
    ld a, $01
    ldh [$97], a

jr_002_6acb:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6acb

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6ac7

    ld a, $08
    call $3d99
    ld a, $50
    ld [$c0f1], a

jr_002_6ae8:
    ld a, $01
    ldh [$97], a

jr_002_6aec:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6aec

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6ae8

    ld a, $08
    call $3e24
    ld a, $10
    ld [$c0f1], a

jr_002_6b09:
    ld a, $01
    ldh [$97], a

jr_002_6b0d:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6b0d

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6b09

    ldh a, [rLCDC]
    set 3, a
    ldh [rLCDC], a
    ld e, $09
    call $2a30
    ld a, $02
    ld [$c0f3], a
    ld a, $a0
    ld [$c119], a
    ld a, $c0
    ld [$c118], a
    ld a, $a8
    ld [$c11d], a
    ld a, $a0
    ld [$c11c], a
    ld a, $c8
    ld [$c200], a
    ld a, $23
    ld [$c202], a
    ld a, $24
    ld [$c203], a
    ld a, $27
    ld [$c204], a
    ld a, $28
    ld [$c205], a
    ld a, $29
    ld [$c206], a
    ld a, $08
    call $3d99
    ld a, $e0
    ld [$c0ec], a

Jump_002_6b6c:
    ld a, $01
    ldh [$97], a

jr_002_6b70:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6b70

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6e2d

    ldh a, [$9e]
    add $01
    ldh [$9e], a
    ldh a, [$9d]
    adc $00
    ldh [$9d], a
    cp $01
    jr nz, jr_002_6b97

    ldh a, [$9e]
    cp $20
    jp nc, Jump_002_6c66

jr_002_6b97:
    ld a, [$c2e6]
    cp $0a
    jr nc, jr_002_6baa

    ld e, $01
    call Call_002_7efa
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_002_6baa:
    ldh a, [$99]
    and $07
    jr nz, jr_002_6bf1

    ld a, [$c202]
    inc a
    cp $27
    jr c, jr_002_6bba

    ld a, $23

jr_002_6bba:
    ld [$c202], a
    ld a, [$c203]
    inc a
    cp $27
    jr c, jr_002_6bc7

    ld a, $23

jr_002_6bc7:
    ld [$c203], a
    ld a, [$c204]
    inc a
    cp $2b
    jr c, jr_002_6bd4

    ld a, $27

jr_002_6bd4:
    ld [$c204], a
    ld a, [$c205]
    inc a
    cp $2b
    jr c, jr_002_6be1

    ld a, $27

jr_002_6be1:
    ld [$c205], a
    ld a, [$c206]
    inc a
    cp $2b
    jr c, jr_002_6bee

    ld a, $27

jr_002_6bee:
    ld [$c206], a

jr_002_6bf1:
    ld a, [$c110]
    and $f0
    swap a
    ld b, a
    ld a, [$c111]
    and $0f
    swap a
    or b
    ld [$c201], a
    ld b, a
    ld a, [$c119]
    sub b
    ld c, a
    ld a, [$c202]
    ld e, a
    ld b, $50
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c118]
    sub b
    ld c, a
    ld a, [$c203]
    ld e, a
    ld b, $50
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c11d]
    sub b
    ld c, a
    ld a, [$c204]
    ld e, a
    ld b, $58
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c11c]
    sub b
    ld c, a
    ld a, [$c205]
    ld e, a
    ld b, $60
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c200]
    sub b
    ld c, a
    ld a, [$c206]
    ld e, a
    ld b, $60
    xor a
    call Call_002_7e84
    call $3be8
    jp Jump_002_6b6c


Jump_002_6c66:
    call $368e
    ldh a, [rLCDC]
    res 3, a
    ldh [rLCDC], a
    ld a, $03
    ld [$c0f3], a
    ld a, $17
    ldh [rLYC], a
    ld a, $08
    ld [$c119], a
    ld a, $01
    ld [$c118], a
    ld a, $48
    ld [$c11d], a
    ld a, $88
    ld [$c11c], a
    ld a, $2b
    ld [$c202], a
    ld a, $2c
    ld [$c203], a
    ld a, $31
    ld [$c204], a
    ld a, $34
    ld [$c205], a
    ld a, $0a
    ld [$c2e6], a
    xor a
    ldh [$9d], a
    ldh [$9e], a
    ld [$c2e6], a
    ld [$c104], a
    ld [$c105], a

Jump_002_6cb3:
    ld a, $01
    ldh [$97], a

jr_002_6cb7:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6cb7

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6e2d

    ld a, [$c11c]
    cp $66
    jp z, Jump_002_6d7a

    ld a, [$c2e6]
    cp $0a
    jr nc, jr_002_6ce2

    ld e, $02
    call Call_002_7efa
    ld a, [$c2e6]
    inc a
    ld [$c2e6], a

jr_002_6ce2:
    ldh a, [$99]
    and $07
    jr nz, jr_002_6d0f

    ld a, [$c203]
    inc a
    cp $30
    jr c, jr_002_6cf2

    ld a, $2c

jr_002_6cf2:
    ld [$c203], a
    ld a, [$c204]
    inc a
    cp $34
    jr c, jr_002_6cff

    ld a, $30

jr_002_6cff:
    ld [$c204], a
    ld a, [$c205]
    inc a
    cp $38
    jr c, jr_002_6d0c

    ld a, $34

jr_002_6d0c:
    ld [$c205], a

jr_002_6d0f:
    ld a, [$c104]
    and $f0
    swap a
    ld b, a
    ld a, [$c105]
    and $0f
    swap a
    or b
    ld [$c201], a
    ld b, a
    ld a, [$c119]
    sub b
    ld c, a
    ld a, [$c202]
    ld e, a
    ld b, $30
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c118]
    sub b
    ld c, a
    ld a, [$c203]
    ld e, a
    ld b, $50
    xor a
    call Call_002_7e84
    ld a, [$c201]
    ld b, a
    ld a, [$c11d]
    sub b
    ld c, a
    ld a, [$c204]
    ld e, a
    ld b, $50
    xor a
    call Call_002_7e84
    ldh a, [$99]
    and $03
    jr nz, jr_002_6d65

    ld a, [$c11c]
    dec a
    ld [$c11c], a

jr_002_6d65:
    ld a, [$c11c]
    ld c, a
    ld a, [$c205]
    ld e, a
    ld b, $50
    ld a, $80
    call Call_002_7e84
    call $3be8
    jp Jump_002_6cb3


Jump_002_6d7a:
    call $368e
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    ldh a, [rLCDC]
    set 3, a
    ldh [rLCDC], a
    ld a, $03
    ld [$c0f3], a
    ld a, $17
    ldh [rLYC], a
    ld a, $58
    ld [$c119], a
    ld a, $30
    ld [$c118], a
    ld a, $38
    ld [$c202], a
    ld a, $39
    ld [$c203], a
    xor a
    ldh [$9d], a
    ldh [$9e], a
    ld [$c2e6], a
    ld [$c104], a
    ld [$c105], a
    ld a, $e4
    ld [$c0ea], a
    ld [$c0eb], a
    ld a, $e0
    ld [$c0ec], a

Jump_002_6dcc:
    ld a, $01
    ldh [$97], a

jr_002_6dd0:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6dd0

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_6e2d

    ld a, [$c119]
    cp $1c
    jp z, $0220

    ld a, [$c104]
    and $f0
    swap a
    ld b, a
    ld a, [$c105]
    and $0f
    swap a
    or b
    ld [$c201], a
    ld b, a
    ld a, [$c118]
    sub b
    ld c, a
    ld a, [$c203]
    ld e, a
    ld b, $28
    xor a
    call Call_002_7e84
    ldh a, [$99]
    and $03
    jr nz, jr_002_6e18

    ld a, [$c119]
    dec a
    ld [$c119], a

jr_002_6e18:
    ld a, [$c119]
    ld c, a
    ld a, [$c202]
    ld e, a
    ld b, $58
    ld a, $80
    call Call_002_7e84
    call $3be8
    jp Jump_002_6dcc


Jump_002_6e2d:
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c0ea], a
    ld [$c0eb], a
    ld [$c0ec], a
    ld e, $02
    call $2a4a
    jp $02ab


    ld e, $02
    call $2a4a
    jp $02ab


    ld a, $40
    ld [$c0f1], a

jr_002_6e53:
    ld a, $01
    ldh [$97], a

jr_002_6e57:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6e57

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6e53

    ld a, $08
    call $3d99
    ld a, $50
    ld [$c0f1], a

jr_002_6e74:
    ld a, $01
    ldh [$97], a

jr_002_6e78:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6e78

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6e74

    ld a, $08
    call $3e24
    ld a, $10
    ld [$c0f1], a

jr_002_6e95:
    ld a, $01
    ldh [$97], a

jr_002_6e99:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6e99

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6e95

    jp $047a


    di
    call $2961
    call $2997
    call $32e5
    call $368e
    ld e, $8e
    call $3476
    ld e, $91
    call $3476
    ld e, $90
    call $3476
    ld a, $07
    call $3572
    ld a, $01
    ld [$c0f3], a
    ld a, $0c
    ld [$c0f5], a
    ld a, $1e
    ldh [$a7], a
    ld a, $02
    ld [$2000], a
    ldh [$9b], a
    ld a, $ff
    ldh [rBGP], a
    ld [$c0ea], a
    ld a, $ff
    ldh [rOBP0], a
    ld [$c0eb], a
    ld a, $e0
    ldh [rOBP1], a
    ld [$c0ec], a
    xor a
    ld [$c2e6], a
    ld [$c2e7], a
    ldh [$9d], a
    ldh [$9e], a
    ldh [$9f], a
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
    ld a, $e3
    ldh [rLCDC], a
    ei
    ld e, $06
    call $2a30
    ld e, $1e
    ld b, $58
    ld c, $28
    xor a
    call Call_002_7e84
    ld e, $22
    ld b, $48
    ld c, $34
    xor a
    call Call_002_7e84
    call $3be8
    ld hl, $7035
    ld a, h
    ld [$c2e8], a
    ld a, l
    ld [$c2e9], a
    ld a, $01
    ld [$c2db], a

Jump_002_6f55:
    ld a, $08
    ld [$c0f1], a

jr_002_6f5a:
    ld a, [$c2e8]
    ld h, a
    ld a, [$c2e9]
    ld l, a
    ld a, [hl+]
    ld [$c0ea], a
    ld [$c0ec], a
    ld a, [hl-]
    ld [$c0eb], a
    ldh a, [$8c]
    bit 3, a
    jp nz, $0150

    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    and $07
    jr nz, jr_002_6f98

    ldh a, [$a7]
    inc a
    cp $22
    jr c, jr_002_6f88

    ld a, $1e

jr_002_6f88:
    ldh [$a7], a
    ld a, [$c2e6]
    inc a
    and $03
    ld [$c2e6], a
    ld e, $00
    call Call_002_7efa

jr_002_6f98:
    ldh a, [$a7]
    ld e, a
    ld b, $58
    ld c, $28
    xor a
    call Call_002_7e84
    ld e, $22
    ld b, $48
    ld c, $34
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $01
    ldh [$97], a

jr_002_6fb4:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6fb4

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_6f5a

    ld a, [$c2e8]
    ld h, a
    ld a, [$c2e9]
    ld l, a
    inc hl
    inc hl
    ld a, h
    ld [$c2e8], a
    ld a, l
    ld [$c2e9], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_002_6f55

    xor a
    ld [$c2db], a

jr_002_6fe3:
    ld a, $01
    ldh [$97], a

jr_002_6fe7:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_6fe7

    xor a
    ldh [$98], a
    ldh a, [$8c]
    bit 3, a
    jp nz, $0150

    ld a, [$c2e7]
    inc a
    ld [$c2e7], a
    and $07
    jr nz, jr_002_701b

    ldh a, [$a7]
    inc a
    cp $22
    jr c, jr_002_700b

    ld a, $1e

jr_002_700b:
    ldh [$a7], a
    ld a, [$c2e6]
    inc a
    and $03
    ld [$c2e6], a
    ld e, $00
    call Call_002_7efa

jr_002_701b:
    ldh a, [$a7]
    ld e, a
    ld b, $58
    ld c, $28
    xor a
    call Call_002_7e84
    ld e, $22
    ld b, $48
    ld c, $34
    xor a
    call Call_002_7e84
    call $3be8
    jr jr_002_6fe3

    nop
    nop
    ld d, h
    ld d, h
    and h
    sub b
    db $e4
    sub b
    rst $38
    ld h, d
    ld [hl], b
    ldh [$98], a
    ld a, [de]
    ld [hl], c
    and b
    sbc b
    add e
    ld [hl], c
    and b
    sbc b
    db $ed
    ld [hl], c
    and b
    sbc b
    ld e, b
    ld [hl], d
    and b
    sbc b
    call nz, $a072
    sbc b
    adc c
    ld [hl], b
    ld b, b
    sbc b
    cpl
    ld [hl], e
    ld h, b
    sbc b
    cp b
    ld [hl], e
    ld h, b
    sbc h
    add b
    db $10
    rst $38
    db $10
    ld b, $16
    ld h, $36
    ld a, b
    ld a, d
    ld a, h
    ret z

    ld a, [hl]
    stop
    add b
    nop
    sbc l
    db $10
    ld [hl], a
    ld l, [hl]
    db $76
    ld l, a
    rst $38
    dec b
    rlca
    rla
    daa
    scf
    ld a, c
    ld a, e
    ld a, l
    ret z

    ld a, a
    stop
    add b
    nop
    nop
    add b
    add b
    sbc a
    add b
    add h
    sub h
    and h
    or h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    sbc a
    add b
    add l
    sub l
    and l
    or l
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    adc h
    rst $38
    sbc h
    xor h
    cp h
    add [hl]
    sub [hl]
    and [hl]
    or [hl]
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    adc l
    rst $38
    sbc l
    xor l
    cp l
    add a
    sub a
    and a
    or a
    jp nz, $c3c0

    add b
    add b
    add b
    sbc a
    add b
    add c
    sub b
    and b
    or b
    adc [hl]
    rst $38
    sbc [hl]
    xor [hl]
    cp [hl]
    adc b
    sbc b
    xor b
    cp b
    add b
    ret nz

    add $80
    add b
    add b
    sbc a
    add b
    add d
    sub c
    and c
    or c
    adc a
    rst $38
    sbc a
    xor a
    cp a
    adc c
    sbc c
    xor c
    cp c
    call nz, $c7c0
    add b
    add b
    add b
    adc a
    add b
    sub d
    and d
    or d
    ret


    rst $38
    set 1, l
    rst $08
    adc d
    sbc d
    xor d
    cp d
    push bc
    ret nz

    ret z

    add b
    add b
    add b
    rst $28
    add b
    add e
    ret nz

    sub e
    and e
    or e
    jp z, $ccff

    adc $a9
    adc e
    sbc e
    xor e
    cp e
    ret nz

    or b
    ret nz

    pop bc
    add b
    add b
    add b
    nop
    add b
    add b
    cp b
    add b
    add a
    sub a
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$80
    adc d
    adc b
    sbc b
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    cp b
    add b
    adc c
    sbc c
    add b
    adc b
    add b
    nop
    add b
    nop
    sbc e
    add b
    sub b
    and b
    ret nz

    ret nc

    rst $38
    ldh [$f0], a
    add d
    sub d
    and d
    sub b
    or d
    jp nz, $d2c8

    add b
    nop
    add b
    nop
    sbc a
    add b
    sub c
    and c
    or c
    pop bc
    pop de
    rst $38
    pop hl
    add h
    add e
    sub e
    and e
    or b
    or e
    jp $d3c8


    add b
    nop
    add b
    nop
    add b
    add b
    ldh a, [$80]
    sbc d
    xor d
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ldh a, [$8b]
    sbc e
    xor e
    add b
    adc b
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    ld hl, sp-$80
    sbc h
    xor h
    cp h
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$73
    sbc l
    xor l
    cp l
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    cp b
    add b
    sbc [hl]
    xor [hl]
    add b
    adc b
    add b
    nop
    add b
    nop
    sbc e
    add b
    sub b
    and b
    ret nz

    ret nc

    rst $38
    ldh [$94], a
    add [hl]
    sub [hl]
    and d
    sub b
    or d
    jp nz, $d2c8

    add b
    nop
    add b
    nop
    sbc a
    add b
    sub c
    and c
    or c
    pop bc
    pop de
    rst $38
    add l
    sub l
    add c
    sub e
    and e
    or b
    or e
    jp $d3c8


    add b
    nop
    add b
    nop
    add b
    add b
    ret c

    adc [hl]
    add b
    cp [hl]
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ret c

    adc a
    sbc a
    cp a
    add b
    adc b
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    ld hl, sp-$80
    sbc h
    and [hl]
    or [hl]
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$73
    sbc l
    and a
    or a
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    cp b
    add b
    xor b
    cp b
    add b
    adc b
    add b
    nop
    add b
    nop
    sbc e
    add b
    sub b
    and b
    ret nz

    ret nc

    rst $38
    ldh [$a4], a
    or h
    sub d
    and d
    sub b
    or d
    jp nz, $d2c8

    add b
    nop
    add b
    nop
    sbc a
    add b
    sub c
    and c
    or c
    pop bc
    pop de
    rst $38
    pop hl
    pop af
    and l
    or l
    and e
    or b
    or e
    jp $d3c8


    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$39
    add b
    cp d
    add $80
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ldh a, [$a9]
    cp c
    cp e
    add b
    adc b
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    cp b
    add b
    rst $10
    rst $20
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$80
    ret z

    ret c

    add sp, -$80
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$80
    ret


    reti


    jp hl


    add b
    adc b
    add b
    nop
    add b
    nop
    sbc e
    add b
    sub b
    and b
    ret nz

    ret nc

    rst $38
    call nz, $e4d4
    sub $a2
    sub b
    or d
    jp nz, $d2c8

    add b
    nop
    add b
    nop
    sbc a
    add b
    sub c
    and c
    or c
    pop bc
    pop de
    rst $38
    push bc
    push de
    push hl
    and $a3
    or b
    or e
    jp $d3c8


    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$36
    jp c, $8cea

    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$35
    db $db
    db $eb
    xor a
    add b
    adc b
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    ld hl, sp-$80
    or $f7
    ld hl, sp-$80
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$34
    call c, $f9ec
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ldh a, [$cd]
    db $dd
    db $ed
    add b
    adc b
    add b
    nop
    add b
    nop
    sbc e
    add b
    sub b
    and b
    ret nz

    ret nc

    rst $38
    db $f4
    push af
    ld [c], a
    ld a, [c]
    and d
    sub b
    or d
    jp nz, $d2c8

    add b
    nop
    add b
    nop
    sbc a
    add b
    sub c
    and c
    or c
    pop bc
    pop de
    rst $38
    pop hl
    pop af
    db $e3
    di
    and e
    or b
    or e
    jp $d3c8


    add b
    nop
    add b
    nop
    add b
    add b
    ld hl, sp-$32
    add b
    sbc $ee
    add b
    adc b
    add b
    nop
    add b
    nop
    add b
    add b
    ldh a, [$cf]
    rst $18
    rst $28
    add b
    adc b
    add b
    nop
    add b
    nop
    nop
    sbc b
    db $10
    inc bc
    db $10
    sbc c
    db $10
    db $fc
    db $10
    inc de
    adc b
    stop
    add b
    nop
    add e
    db $10
    db $fd
    db $10
    rst $08
    db $fc
    db $10
    db $fd
    db $10
    inc b
    inc d
    cp b
    db $10
    inc bc
    stop
    add b
    nop
    ret nz

    db $fc
    db $10
    ldh [rNR10], a
    inc bc
    db $10
    add sp, $10
    db $fc
    stop
    add b
    nop
    adc h
    db $10
    db $fc
    db $10
    add b
    db $10
    adc b
    stop
    add b
    nop
    add [hl]
    db $10
    db $fd
    db $10
    add [hl]
    db $10
    db $fd
    db $10
    adc b
    stop
    add b
    nop
    ldh [rNR10], a
    db $fd
    db $10
    add b
    db $10
    sbc b
    db $10
    db $fc
    nop
    add b
    nop
    add b
    db $10
    add b
    db $10
    ret z

    db $fc
    stop
    add b
    nop
    add b
    db $10
    sbc b
    db $10
    db $fd
    db $10
    adc b
    stop
    add b
    nop
    ld sp, hl
    ld bc, $0102
    ld [bc], a
    db $10
    ld [bc], a
    rst $38
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld hl, sp+$01
    ld [bc], a
    ld bc, $0002
    add b
    nop
    add b
    ei
    add b
    ei
    adc b
    ei
    nop
    add b
    nop
    nop
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    rst $38
    add h
    add a
    adc d
    adc l
    add h
    add a
    adc d
    adc l
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    rst $38
    add l
    adc b
    adc e
    adc [hl]
    add l
    adc b
    adc e
    adc [hl]
    rst $38
    add [hl]
    adc c
    adc h
    adc a
    add [hl]
    adc c
    adc h
    adc a
    rst $38
    add [hl]
    adc c
    adc h
    adc a
    add [hl]
    adc c
    adc h
    adc a
    rst $38
    add [hl]
    adc c
    adc h
    adc a
    add [hl]
    adc c
    adc h
    adc a
    rst $38
    add [hl]
    adc c
    adc h
    adc a
    add [hl]
    adc c
    adc h
    adc a
    add b
    add b
    add b
    add b
    add a
    add b
    and h
    xor d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add a
    add b
    and l
    xor e
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add a
    add b
    and [hl]
    xor h
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc a
    add b
    or b
    and a
    xor l
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc a
    add b
    or c
    xor b
    xor [hl]
    or e
    add b
    add b
    rst $38
    sbc h
    sbc [hl]
    and b
    and d
    sbc h
    sbc [hl]
    and b
    and d
    rst $38
    sbc h
    sbc [hl]
    and b
    and d
    sbc h
    sbc [hl]
    and b
    and d
    rst $38
    sbc h
    sbc [hl]
    and b
    and d
    or d
    xor c
    xor a
    or h
    rst $38
    sbc h
    sbc [hl]
    and b
    and d
    sbc h
    sbc [hl]
    and b
    and d
    rst $38
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    rst $38
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    rst $38
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    rst $38
    sbc l
    sbc a
    and c
    and e
    sbc l
    sbc a
    and c
    and e
    nop
    xor h
    ld [hl], h
    or h
    ld [hl], h
    ret z

    ld [hl], h
    call c, $0074
    ld [hl], l
    inc h
    ld [hl], l
    ld c, b
    ld [hl], l
    ld l, h
    ld [hl], l
    sub b
    ld [hl], l
    or h
    ld [hl], l
    ret c

    ld [hl], l
    db $fc
    ld [hl], l
    jr nz, @+$78

    ld b, h
    db $76
    ld l, b
    db $76
    adc h
    db $76
    or b
    db $76
    call nc, $f876
    db $76
    inc e
    ld [hl], a
    ld b, b
    ld [hl], a
    ld h, h
    ld [hl], a
    adc b
    ld [hl], a
    xor h
    ld [hl], a
    ret nc

    ld [hl], a
    db $f4
    ld [hl], a
    jr jr_002_7554

    sub b
    db $10
    jr nz, @+$01

    ld a, a
    ei
    cp a
    rst $38
    sbc l
    xor l
    sbc $76
    rst $08
    or $4b
    reti


    daa
    sbc $21
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor l
    rst $28
    sub $ff
    ld b, d
    call c, $de23
    ld hl, $00ff
    nop

jr_002_7500:
    sub b
    db $10
    jr nz, @+$01

    rst $38
    cp a
    rst $38
    ld a, [$efbf]
    cp l
    ret


    cp [hl]
    ld h, e
    sbc [hl]
    or l
    ld c, d
    cp $01
    rst $38
    cp a
    rst $38
    db $db
    rst $18
    ld l, l
    ld d, [hl]
    xor l
    db $fd
    add [hl]
    ld a, c
    add [hl]
    cp l
    ld b, d
    db $fd
    ld [bc], a
    nop
    sub b

jr_002_7525:
    db $10
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $08
    ld a, [hl]
    rst $28
    sub e
    or e
    call z, $e25f
    sbc $21
    cp a
    rst $38
    db $fd
    cp a
    rst $18
    cp e
    ld a, $db
    cp e
    ld c, l
    ld a, d
    add l
    cp l
    ld b, d
    rst $38
    nop
    nop
    sub b
    db $10

jr_002_754a:
    jr nz, @+$01

    rst $38
    rst $38
    ld a, a
    rst $38
    sbc [hl]
    rst $30
    set 3, l

jr_002_7554:
    ld h, [hl]
    sbc e
    ld h, [hl]
    db $dd
    ld [hl+], a
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    db $fd
    ld l, e
    or [hl]
    ld a, $c9
    cp e
    ld b, h
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    sbc b
    ld h, b
    jr nz, jr_002_7500

    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc b
    add b
    jr nz, jr_002_7525

    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a

jr_002_759e:
    sbc d
    sub c
    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a
    sbc d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc b
    and b
    jr nz, jr_002_754a

    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc b
    ret nz

    jr nz, jr_002_759e

    push bc
    add c
    add c
    add $81
    rst $00
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_75e8:
    add b
    add b
    add b
    add b
    add b

jr_002_75ed:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc b
    ldh [rNR41], a
    jp $8181


    add c
    add c
    add c
    ret z

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_7611:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc c
    nop
    jr nz, jr_002_75e8

    add c
    add c
    add c
    add c
    add c
    ret


    add b
    or l
    cp b
    cp e
    cp a
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_7635:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc c
    jr nz, jr_002_7667

    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    or [hl]
    add c
    add c
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_7667:
    nop

jr_002_7668:
    sbc c
    ld b, b
    jr nz, jr_002_75ed

    add c
    add c
    add c
    add c
    add c
    add c
    add b
    or a
    add c
    cp h
    pop bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc c

jr_002_768d:
    ld h, b
    jr nz, jr_002_7611

    add c
    add c
    add c
    add c
    add c
    add c
    add b
    add b
    cp c
    cp l
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc c
    add b

jr_002_76b2:
    jr nz, jr_002_7635

    add c
    add c
    add c
    add c
    add c
    add c
    add b
    add b
    cp d
    cp [hl]
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_76c4:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc h
    ld h, b
    jr nz, jr_002_7668

    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    sub b
    sub e
    sub [hl]
    sbc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc h
    add b
    jr nz, jr_002_768d

    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a
    sbc d
    sub c
    sub h
    sub a
    sbc d
    sub c

jr_002_770c:
    sub h
    sub a
    sbc d
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc h
    and b
    jr nz, jr_002_76b2

    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    sub d
    sub l
    sbc b
    sbc e
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc h
    ret nz

    jr nz, jr_002_76c4

    add b
    add b
    add b
    add b
    call $81d4
    add c
    add c
    add c
    rst $18
    and $80
    add b
    add b
    add b

jr_002_7754:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc h
    ldh [rNR41], a
    add b
    add b
    add b
    add b
    add b
    adc $d5
    add c
    add c
    add c
    add c
    ldh [$e7], a
    add b
    add b
    add b
    add b

jr_002_7778:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc l
    nop
    jr nz, jr_002_770c

    add b
    add b
    add b
    add b
    rst $08
    sub $81
    add c
    add c
    add c
    pop hl
    add sp, -$80
    add b
    add b
    add b

jr_002_779c:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc l
    jr nz, jr_002_77cf

    add b
    add b
    add b
    add b
    add b
    ret nc

    rst $10
    db $db
    add c
    add c
    db $dd
    ld [c], a
    jp hl


    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_002_77cf:
    nop
    sbc l
    ld b, b
    jr nz, jr_002_7754

    add b
    add b
    add b
    jp z, $d8d1

    add c
    add c
    add c
    add c
    db $e3
    ld [$80ed], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc l
    ld h, b
    jr nz, jr_002_7778

    add b
    add b
    add b
    set 2, d
    reti


    call c, $8181
    sbc $e4
    db $eb
    xor $80
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    sbc l
    add b
    jr nz, jr_002_779c

    add b
    add b
    add b
    call z, $dad3
    add c
    add c
    add c
    add c
    push hl
    db $ec
    rst $28
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    or b
    ld a, b
    pop de
    ld a, b
    or b
    ld a, b
    ld a, [c]
    ld a, b
    ld b, b
    ld a, c
    ld c, c
    ld a, c
    ld d, d
    ld a, c
    ld e, e
    ld a, c
    ld h, h
    ld a, c
    ld [hl], l
    ld a, c
    add [hl]
    ld a, c
    sub a
    ld a, c
    xor b
    ld a, c
    pop bc
    ld a, c
    jp c, $f379

    ld a, c
    inc c
    ld a, d
    add hl, hl
    ld a, d
    ld b, [hl]
    ld a, d
    ld h, e
    ld a, d
    add b
    ld a, d
    and l
    ld a, d
    jp z, $ef7a

    ld a, d
    inc de
    ld a, c
    inc e
    ld a, c
    dec h
    ld a, c
    dec h
    ld a, c
    ld l, $79
    scf
    ld a, c
    inc d
    ld a, e
    add hl, sp
    ld a, e
    ld e, [hl]
    ld a, e
    add e
    ld a, e
    xor b
    ld a, e
    ret


    ld a, e
    adc $7b
    db $d3
    ld a, e
    ret c

    ld a, e
    db $dd
    ld a, e
    ld [c], a
    ld a, e
    rst $20
    ld a, e
    db $ec
    ld a, e
    pop af
    ld a, e
    ld a, [de]
    ld a, h
    dec sp
    ld a, h
    ld e, h
    ld a, h
    ld a, l
    ld a, h
    and d
    ld a, h
    jp $e47c


    ld a, h
    dec b
    ld a, l
    ld a, [hl+]
    ld a, l
    ld d, a
    ld a, l
    add h
    ld a, l
    or c
    ld a, l
    ld [c], a
    ld a, l
    inc sp
    ld a, [hl]
    pop af
    ldh a, [rP1]
    db $10
    pop af
    ld hl, sp+$10
    db $10
    pop af
    nop
    jr nz, jr_002_78cc

    pop af
    ld [$1030], sp
    ld bc, $02f0
    db $10
    ld bc, $12f8
    db $10
    ld bc, $2200
    db $10

jr_002_78cc:
    ld bc, $3208
    db $10
    rst $38
    ldh a, [$ef]
    jr c, @+$12

    ldh a, [$f7]
    inc b
    db $10
    ldh a, [rIE]
    inc d
    db $10
    ldh a, [rTAC]
    inc h
    stop
    rst $28
    ld [bc], a
    stop
    rst $30
    ld b, $10
    nop
    rst $38
    ld d, $10
    nop
    rlca
    ld h, $10
    rst $38
    pop af
    ldh a, [$3a]
    db $10
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    jr jr_002_790e

    pop af
    ld [$1028], sp
    ld bc, $02f0
    db $10
    ld bc, $0af8
    db $10
    ld bc, $1a00
    db $10

jr_002_790e:
    ld bc, $2a08
    db $10
    rst $38
    ldh a, [$f7]
    ld l, b
    nop
    ldh a, [rIE]
    ld a, b
    nop
    rst $38
    ldh a, [$f7]
    ld l, b
    nop
    ldh a, [rIE]
    ld c, b
    nop
    rst $38
    ldh a, [$f7]
    db $fc
    nop
    ldh a, [rIE]
    cp $00
    rst $38
    ldh a, [$f7]
    ld a, [hl]
    nop
    ldh a, [rIE]
    ld a, b
    nop
    rst $38
    ldh a, [$f7]
    ld a, [$f000]
    rst $38
    ld a, b
    nop
    rst $38
    nop
    nop
    ldh a, [rNR10]
    nop
    ld [$10f2], sp
    rst $38
    nop
    nop
    ret nc

    nop
    nop
    ld [$00e0], sp
    rst $38
    nop
    nop
    ld a, $10
    nop
    ld [$104e], sp
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    db $f4
    stop
    daa
    ld a, [c]
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ret c

    nop
    nop
    daa
    add sp, $00
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, [hl]
    stop
    daa
    ld l, [hl]
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $f4
    stop
    ld b, [hl]
    or $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d6
    nop
    nop
    ld b, [hl]
    and $00
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d4
    stop
    ld b, [hl]
    db $e4
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, [c]
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, d
    nop
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld l, d
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, h
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, h
    stop
    ld [hl], d
    db $f4
    stop
    ld a, d
    ld hl, sp+$10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, h
    stop
    ld [hl], d
    sbc $00
    nop
    ld a, d
    xor $00
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, h
    stop
    ld [hl], d
    call c, RST_10
    ld a, d
    db $ec
    db $10
    rst $38
    nop
    nop
    inc a
    stop
    ld [$104c], sp
    nop
    rra
    ld e, h
    stop
    daa
    ld l, h
    stop
    ld a, $d2
    stop
    ld b, [hl]
    ld [c], a
    stop
    ld e, h
    ld a, h
    stop
    ld [hl], d
    jp c, RST_10

    ld a, d
    ld_long $ff10, a
    nop
    nop
    ld d, b
    nop
    nop
    ld [$0060], sp
    nop
    db $10
    ld [hl], b
    nop
    ld [$5100], sp
    nop
    ld [$6108], sp
    nop
    ld [$7110], sp
    nop
    stop
    ld d, d
    nop
    db $10
    ld [$0062], sp
    db $10
    db $10
    ld [hl], d
    nop
    rst $38
    nop
    nop
    ld d, e
    nop
    nop
    ld [$0063], sp
    nop
    db $10
    ld [hl], e
    nop
    ld [$5400], sp
    nop
    ld [$6408], sp
    nop
    ld [$7410], sp
    nop
    stop
    ld d, l
    nop
    db $10
    ld [$0065], sp
    db $10
    db $10
    ld [hl], l
    nop
    rst $38
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0044], sp
    nop
    db $10
    ld h, [hl]
    nop
    ld [$3500], sp
    nop
    ld [$4508], sp
    nop
    ld [$6710], sp
    nop
    stop
    ld [hl], $00
    db $10
    ld [$0046], sp
    db $10
    db $10
    ld d, [hl]
    nop
    rst $38
    nop
    nop
    ld d, e
    nop
    nop
    ld [$0063], sp
    nop
    db $10
    ld [hl], e
    nop
    ld [$5400], sp
    nop
    ld [$6408], sp
    nop
    ld [$7410], sp
    nop
    stop
    scf
    nop
    db $10
    ld [$0047], sp
    db $10
    db $10
    ld d, a
    nop
    rst $38
    nop
    nop
    ld b, b
    nop
    nop
    ld [$0041], sp
    nop
    db $10
    ld b, d
    nop
    nop
    jr jr_002_7bfa

    nop
    nop
    jr z, jr_002_7c31

    nop
    nop

jr_002_7bbd:
    jr nc, jr_002_7bbd

    nop
    nop
    jr c, @+$45

    nop
    nop
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    ld l, b
    nop
    rst $38
    nop
    nop
    ld l, c
    nop
    rst $38
    nop
    nop
    ld l, d
    nop
    rst $38
    nop
    nop
    ld l, e
    nop
    rst $38
    nop
    nop
    ld l, h
    nop
    rst $38
    nop
    nop
    ld l, l
    nop
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    nop
    ld l, a
    nop
    rst $38
    nop
    db $10
    inc bc
    nop
    nop
    jr jr_002_7bfd

    nop
    nop

jr_002_7bfa:
    jr nz, @+$08

    nop

jr_002_7bfd:
    ld [$0100], sp
    nop
    ld [$0208], sp
    nop
    ld [$0410], sp
    nop
    ld [$8118], sp
    nop
    ld [$0720], sp
    nop
    ld [$0828], sp
    nop
    ld [$0930], sp
    nop
    rst $38
    db $10
    ld hl, sp+$0e
    jr nz, jr_002_7c37

    ld hl, sp+$0f
    jr nz, @+$22

    ld hl, sp+$10
    jr nz, jr_002_7c27

jr_002_7c27:
    nop
    ld a, [bc]
    jr nz, jr_002_7c33

    nop
    dec bc
    jr nz, @+$12

    nop
    inc c

jr_002_7c31:
    jr nz, @+$1a

jr_002_7c33:
    nop
    dec c
    jr nz, @+$22

jr_002_7c37:
    nop
    add c
    nop
    rst $38
    db $10
    ld hl, sp+$16
    jr nz, jr_002_7c58

    ld hl, sp+$17
    jr nz, @+$22

    ld hl, sp+$18
    jr nz, jr_002_7c48

jr_002_7c48:
    nop
    ld de, $0820
    nop
    ld [de], a
    jr nz, @+$12

    nop
    inc de
    jr nz, @+$1a

    nop
    inc d
    jr nz, @+$22

jr_002_7c58:
    nop
    dec d
    jr nz, @+$01

    db $10
    ld hl, sp+$1e
    jr nz, jr_002_7c79

    ld hl, sp+$1f
    jr nz, @+$22

    ld hl, sp+$20
    jr nz, jr_002_7c69

jr_002_7c69:
    nop
    add hl, de
    jr nz, jr_002_7c75

    nop
    ld a, [de]
    jr nz, @+$12

    nop
    dec de
    jr nz, @+$1a

jr_002_7c75:
    nop
    inc e
    jr nz, @+$22

jr_002_7c79:
    nop
    dec e
    jr nz, @+$01

    ld [$25f8], sp
    jr nz, jr_002_7c92

    ld hl, sp+$26
    jr nz, jr_002_7c9e

    ld hl, sp+$27
    jr nz, jr_002_7caa

    ld hl, sp+$28
    jr nz, jr_002_7c8e

jr_002_7c8e:
    nop
    ld hl, $0820

jr_002_7c92:
    nop
    ld [hl+], a
    jr nz, jr_002_7ca6

    nop
    inc hl
    jr nz, jr_002_7cb2

    nop
    inc h
    jr nz, jr_002_7cbe

jr_002_7c9e:
    nop
    add c
    nop
    rst $38
    nop
    ld hl, sp+$0a
    nop

jr_002_7ca6:
    ld [$0bf8], sp
    nop

jr_002_7caa:
    db $10
    ld hl, sp+$0c
    nop
    jr @-$06

    dec c
    nop

jr_002_7cb2:
    jr nz, @-$06

    add c
    nop
    stop
    ld c, $00
    jr jr_002_7cbc

jr_002_7cbc:
    rrca
    nop

jr_002_7cbe:
    jr nz, jr_002_7cc0

jr_002_7cc0:
    stop
    rst $38
    nop
    ld hl, sp+$11
    nop
    ld [$12f8], sp
    nop
    db $10
    ld hl, sp+$13
    nop
    jr @-$06

    inc d
    nop
    jr nz, @-$06

    dec d
    nop
    stop
    ld d, $00
    jr jr_002_7cdd

jr_002_7cdd:
    rla
    nop
    jr nz, jr_002_7ce1

jr_002_7ce1:
    jr jr_002_7ce3

jr_002_7ce3:
    rst $38
    nop
    ld hl, sp+$19
    nop
    ld [$1af8], sp
    nop
    db $10
    ld hl, sp+$1b
    nop
    jr @-$06

    inc e
    nop
    jr nz, @-$06

    dec e
    nop
    stop
    ld e, $00
    jr jr_002_7cfe

jr_002_7cfe:
    rra
    nop
    jr nz, jr_002_7d02

jr_002_7d02:
    jr nz, jr_002_7d04

jr_002_7d04:
    rst $38
    nop
    ld hl, sp+$21
    nop
    ld [$22f8], sp
    nop
    db $10
    ld hl, sp+$23
    nop
    jr @-$06

    inc h
    nop
    jr nz, @-$06

    add c
    nop
    ld [$2500], sp
    nop
    stop
    ld h, $00
    jr jr_002_7d23

jr_002_7d23:
    daa
    nop
    jr nz, jr_002_7d27

jr_002_7d27:
    jr z, jr_002_7d29

jr_002_7d29:
    rst $38
    ld [$2e00], sp
    nop
    stop
    add hl, hl
    nop
    jr jr_002_7d34

jr_002_7d34:
    jr nc, jr_002_7d36

jr_002_7d36:
    jr nz, jr_002_7d38

jr_002_7d38:
    ld sp, $0000
    ld [$002d], sp
    ld [$2f08], sp
    nop
    db $10
    ld [$002a], sp
    jr jr_002_7d50

    dec hl
    nop
    jr nz, jr_002_7d54

    inc l
    nop
    jr @+$12

jr_002_7d50:
    ld [hl-], a
    nop
    jr nz, @+$12

jr_002_7d54:
    inc sp
    nop
    rst $38
    ld [$3500], sp
    nop
    stop
    add hl, hl
    nop
    jr jr_002_7d61

jr_002_7d61:
    scf
    nop
    jr nz, jr_002_7d65

jr_002_7d65:
    jr c, jr_002_7d67

jr_002_7d67:
    nop
    ld [$0034], sp
    ld [$3608], sp
    nop
    db $10
    ld [$002a], sp
    jr jr_002_7d7d

    dec hl
    nop
    jr nz, jr_002_7d81

    inc l
    nop
    jr @+$12

jr_002_7d7d:
    add hl, sp
    nop
    jr nz, @+$12

jr_002_7d81:
    ld a, [hl-]
    nop
    rst $38
    ld [$3c00], sp
    nop
    stop
    add hl, hl
    nop
    jr jr_002_7d8e

jr_002_7d8e:
    ld a, $00
    jr nz, jr_002_7d92

jr_002_7d92:
    ccf
    nop
    nop
    ld [$003b], sp
    ld [$3d08], sp
    nop
    db $10
    ld [$002a], sp
    jr jr_002_7daa

    dec hl
    nop
    jr nz, jr_002_7dae

    inc l
    nop
    jr @+$12

jr_002_7daa:
    ld b, b
    nop
    jr nz, @+$12

jr_002_7dae:
    ld b, c
    nop
    rst $38
    nop
    nop
    ld b, d
    nop
    ld [$4400], sp
    nop
    stop
    add hl, hl
    nop
    jr jr_002_7dbf

jr_002_7dbf:
    ld b, [hl]
    nop
    jr nz, jr_002_7dc3

jr_002_7dc3:
    ld b, a
    nop
    nop
    ld [$0043], sp
    ld [$4508], sp
    nop
    db $10
    ld [$002a], sp
    jr jr_002_7ddb

    dec hl
    nop
    jr nz, jr_002_7ddf

    inc l
    nop
    jr jr_002_7deb

jr_002_7ddb:
    ld c, b
    nop
    jr nz, @+$12

jr_002_7ddf:
    ld c, c
    nop
    rst $38
    nop
    db $fc
    ld c, a
    nop
    nop
    inc b
    ld d, e
    nop
    nop

jr_002_7deb:
    inc c
    ld d, a
    nop
    ld [$4ae8], sp
    nop
    ld [$4cf0], sp
    nop
    ld [$50f8], sp
    nop
    ld [$5400], sp
    nop
    ld [$5808], sp
    nop
    ld [$5b10], sp
    nop
    db $10
    add sp, $4b
    nop
    db $10
    ldh a, [rKEY1]
    nop
    db $10
    ld hl, sp+$51
    nop
    stop
    ld d, l
    nop
    db $10
    ld [$0059], sp
    db $10
    db $10

jr_002_7e1c:
    ld e, h
    nop
    jr @-$0e

    ld c, [hl]
    nop
    jr jr_002_7e1c

    ld d, d
    nop
    jr jr_002_7e28

jr_002_7e28:
    ld d, [hl]
    nop
    jr jr_002_7e34

    ld e, d
    nop
    jr jr_002_7e40

    ld e, l
    nop
    rst $38
    nop

jr_002_7e34:
    nop
    ld e, [hl]
    stop
    ld [$105f], sp
    nop
    db $10
    ld h, d
    stop

jr_002_7e40:
    jr @+$66

    stop
    jr nz, jr_002_7eac

    stop
    jr z, jr_002_7eac

    jr nc, jr_002_7e4c

jr_002_7e4c:
    jr nc, jr_002_7ead

    jr nc, jr_002_7e50

jr_002_7e50:
    jr c, jr_002_7eb0

    jr nc, @+$0a

    ld [$1060], sp
    ld [$6310], sp
    db $10
    ld [$6518], sp
    db $10
    ld [$6720], sp
    db $10
    ld [$6328], sp
    jr nc, jr_002_7e70

    jr nc, jr_002_7eca

    jr nc, jr_002_7e7c

    ld [$1061], sp
    db $10

jr_002_7e70:
    db $10
    add c
    db $10
    db $10
    jr @-$7d

    db $10
    db $10
    jr nz, @-$7d

    jr nc, @+$12

jr_002_7e7c:
    jr z, @-$7d

    jr nc, @+$12

    jr nc, jr_002_7ee3

    jr nc, @+$01

Call_002_7e84:
    ldh [$dc], a
    ld a, $02
    ldh [$9b], a
    ld [$2000], a
    sla e
    ld d, $00
    rl d
    ld hl, $783c
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ldh a, [$92]
    ld l, a
    ld h, $c0
    ldh a, [$91]
    and a
    jr nz, jr_002_7ecd

jr_002_7ea4:
    ld a, l
    cp $a0
    jr c, jr_002_7eb0

    xor a
    ldh [$92], a

jr_002_7eac:
    ld l, a

jr_002_7ead:
    inc a
    ldh [$93], a

jr_002_7eb0:
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
    jr nz, jr_002_7ea4

    ld a, l

jr_002_7eca:
    ldh [$92], a
    ret


jr_002_7ecd:
    ld a, l
    cp $a0
    jr c, jr_002_7ed9

    ld a, $9c
    ldh [$92], a
    ld l, a
    ldh [$93], a

jr_002_7ed9:
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

jr_002_7ee3:
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
    jr nz, jr_002_7ecd

    ld a, l
    ldh [$92], a
    ret


Call_002_7efa:
    ld a, $02
    ldh [$9b], a
    ld [$2000], a
    ld hl, $74a6
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$c2e6]
    rlca
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    call $32b0
    ret


Call_002_7f1b:
    ld [$c0f2], a
    ld a, a
    ld [$c0f1], a

jr_002_7f22:
    ld a, $ff
    ld [$c0ea], a
    ldh a, [$8c]
    bit 3, a
    jp nz, Jump_002_7fbe

    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $01
    ldh [$97], a

Jump_002_7f3f:
jr_002_7f3f:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_7f3f

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_7f22

    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_002_7f59:
    ld a, $fe
    ld [$c0ea], a
    ldh a, [$8c]
    bit 3, a
    jr nz, jr_002_7fbe

    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $01
    ldh [$97], a

jr_002_7f75:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_7f75

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_7f59

    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_002_7f8f:
    ld a, $f9
    ld [$c0ea], a
    ldh a, [$8c]
    bit 3, a
    jr nz, jr_002_7fbe

    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $01
    ldh [$97], a

jr_002_7fab:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_7fab

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_7f8f

Jump_002_7fbe:
jr_002_7fbe:
    ld a, [$c0f2]
    ld a, a
    ld [$c0f1], a

jr_002_7fc5:
    ld a, $e4
    ld [$c0ea], a
    ld e, $18
    ld b, $39
    ld c, $6f
    xor a
    call Call_002_7e84
    call $3be8
    ld a, $01
    ldh [$97], a

jr_002_7fdb:
    db $76
    ldh a, [$98]
    and a
    jr z, jr_002_7fdb

    xor a
    ldh [$98], a
    ld a, [$c0f1]
    dec a
    ld [$c0f1], a
    or a
    jr nz, jr_002_7fc5

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
