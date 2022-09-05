SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    inc b
    ld b, b
    rst $28
    ld c, d
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    pop bc
    ld d, a
    nop
    ld c, h
    jp $004d


    ld c, h
    ld c, l
    sbc h
    nop
    ld c, h
    ld c, l
    nop
    pop hl
    ld c, h
    ld c, l
    nop
    ld c, h
    pop bc
    ld c, l
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    db $fd
    ld d, a
    ld [hl-], a
    dec d
    ld d, $17
    nop
    ld c, h
    rst $38
    ld c, l
    nop
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld c, h
    ld c, l
    sbc h
    nop
    ld c, h
    ld c, l
    nop
    rst $38
    ld c, h
    ld c, l
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    ld c, h
    rst $08
    ld c, l
    nop
    jr nc, jr_00f_408b

    scf
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    rst $38
    ld d, a
    inc sp
    inc [hl]
    nop
    inc sp
    inc [hl]
    nop
    ld c, h
    db $db
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, h
    ld c, l
    rst $38
    nop
    ld c, [hl]
    nop
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    nop
    db $ed
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, h
    pop bc
    ld c, l
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b

jr_00f_408b:
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    pop bc
    ld d, a
    nop
    ld c, h
    db $db
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    ld c, l
    rst $38
    nop
    ld c, a
    nop
    ld c, h
    ld c, l
    nop
    ld c, a
    nop
    db $ed
    ld c, h
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    pop bc
    ld c, l
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    pop bc
    ld d, a
    nop
    ld c, h
    db $db
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    ld c, l
    rst $38
    nop
    ld c, a
    nop
    ld c, h
    ld c, l
    nop
    ld c, a
    nop
    db $ed
    ld c, h
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    rst $38
    ld c, l
    nop
    jr nc, jr_00f_4111

    scf
    ld d, $17
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    db $fd
    ld d, a
    scf
    ld d, $17
    ld e, b
    ld d, a
    ld e, d
    db $db
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    ld e, b
    add b
    ld d, a
    db $ed
    ld e, d
    ld c, l
    nop
    ld c, a
    nop
    ld c, h
    rst $18
    ld e, b
    ld d, a
    ld e, d
    nop
    jr c, jr_00f_4142

    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b

jr_00f_4111:
    nop
    add c
    nop
    ld [bc], a
    db $fc
    ld d, a
    nop
    jr c, jr_00f_4153

    ld e, c
    ld d, a
    add b
    ld d, a
    rst $38
    ld d, d
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    add b
    ld d, a
    sbc l
    ld d, a
    ld e, e
    inc [hl]
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    push hl
    ld l, c
    ld l, d
    nop
    ld d, a
    ld d, d
    rst $38
    ld d, h

jr_00f_4142:
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    rst $38
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, e
    rst $38

jr_00f_4153:
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e
    rst $30
    ld d, h
    ld d, a
    ld e, d
    nop
    dec d
    ld d, $57
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    rst $20
    ld l, h
    ld l, l
    nop
    ld e, c
    ld d, a
    ld d, [hl]
    ldh [rHDMA1], a
    ld d, b
    nop
    add b
    nop
    add e
    nop
    ld d, c
    ld d, b
    pop af
    ld d, c
    ld d, a
    ld e, e
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    di
    ld d, a
    ld l, c
    ld l, d
    nop
    ld d, a
    ld d, l
    ldh [$50], a
    ld d, c
    nop
    add b
    nop
    add e
    nop
    ld d, b
    ld d, c
    pop hl
    ld d, b
    ld d, a
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    di
    ld d, a
    ld l, h
    ld l, l
    nop
    ld e, c
    ld d, a
    ldh [$57], a
    ld d, [hl]
    nop
    add b
    nop
    add e
    nop
    ld d, c
    ld d, a
    pop hl
    ld d, a
    ld e, e
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    cp $52
    ld d, a
    ld l, c
    ld l, d
    inc sp
    inc [hl]
    nop
    ldh [$59], a
    ld d, a
    nop
    add b
    nop
    add e
    nop
    ld d, a
    ld e, e
    add c
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    ld hl, sp+$50
    ld d, a
    ld l, h
    ld l, l
    nop
    ldh [$33], a
    ld d, a
    nop
    add b
    nop
    add e
    nop
    ld d, a
    nop
    pop hl
    jr c, jr_00f_423e

    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    rst $30
    ld d, c
    ld d, h
    ld d, a
    ld l, c
    ld l, d
    scf
    ld d, $e0
    rla
    ld d, a
    nop

jr_00f_421e:
    add b
    nop
    add e
    nop
    ld d, a
    nop
    cp c
    nop
    inc sp
    inc [hl]
    nop
    ld d, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    rst $30
    ld d, b
    ld d, c
    ld d, a
    ld l, h
    ld l, l
    nop
    jr c, jr_00f_421e

jr_00f_423e:
    add hl, sp
    ld d, a
    nop
    add b
    nop
    add e
    nop
    ld d, a
    scf
    rst $20
    ld d, $17
    nop
    ld [hl-], a
    jr nc, jr_00f_42a5

    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    sbc e
    ld d, a
    ld e, e
    nop
    ld [hl-], a
    dec d
    ldh [rSB], a

jr_00f_4260:
    ld [bc], a
    nop
    add b
    nop
    add d
    nop
    ld d, a
    pop bc
    ld e, d
    nop
    ld d, a
    rst $38
    nop
    dec [hl]
    dec d
    ld d, $17
    nop
    jr nc, jr_00f_42a5

    adc l
    nop
    rlca
    nop
    jr nc, @-$05

    ld [hl], $37
    ld d, $17
    nop

Call_00f_427f:
    jr nc, jr_00f_4260

    ld sp, $3300
    inc [hl]
    dec d
    ld d, $17
    rst $38
    ld [hl-], a
    nop
    jr nc, jr_00f_42be

    nop
    ld [$3000], sp
    ld hl, sp+$36
    scf
    ld d, $17
    nop
    ldh [rDIV], a
    dec b
    nop
    adc [hl]
    nop
    ld d, [hl]
    ld d, c
    ld d, a
    add a
    ld d, a
    ld d, l
    ld d, h
    ld d, e

jr_00f_42a5:
    rst $38
    ld d, a
    nop
    ld [hl-], a
    jr nc, jr_00f_42c1

    rla
    nop
    ld d, a
    cp a
    dec a
    ccf
    dec [hl]
    nop
    ld [hl-], a
    ld l, $44
    cp $2e
    dec [hl]
    nop
    ld [$0709], sp
    nop

jr_00f_42be:
    rst $28
    nop
    ld a, [hl-]

jr_00f_42c1:
    nop
    inc sp
    inc [hl]
    dec [hl]
    nop
    cp $00
    ld [hl-], a
    ld c, d
    ld b, h
    jr c, jr_00f_4306

    nop
    rst $18
    nop
    ccf
    nop
    ld [$070a], sp
    nop
    sbc l
    nop
    inc sp
    inc [hl]
    nop
    ld bc, $02a0
    nop
    adc a
    nop
    ld d, c
    ld d, a
    ld e, e
    ld e, l
    rst $38
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld d, a
    ld d, [hl]
    ld d, c
    ld d, b
    rst $38
    ld d, a
    inc sp
    inc [hl]
    nop
    jr c, jr_00f_432e

    inc sp
    ld d, a
    cp a
    ld c, e
    ld b, l
    ld b, d
    nop
    ld b, c
    cpl
    ld b, l
    rst $38
    cpl
    ld b, d
    nop
    ld a, [bc]
    dec bc
    add hl, bc

jr_00f_4306:
    nop
    ld b, d
    rst $38
    dec a
    dec sp
    ccf
    ld a, [hl-]
    dec a
    ld b, d
    inc hl
    ld a, [hl+]
    cp $22
    ld b, c
    ld c, e
    ld b, l
    dec a
    ld b, d
    nop
    rst $38
    ld b, c
    ld b, l
    ld b, e
    nop
    ld a, [bc]
    inc c
    add hl, bc
    nop
    cp a
    nop
    ccf
    ld a, [hl-]
    ld c, d
    ccf
    dec a
    inc b
    and b
    dec b
    nop
    adc a

jr_00f_432e:
    nop
    ld d, [hl]
    ld d, a
    ld e, l
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld d, a
    ld d, l
    ld d, b
    ld d, c
    rst $28
    ld d, a
    nop
    ccf
    ld a, [hl-]
    dec a
    ld b, h
    ld d, a
    cp a
    ld c, c
    inc hl
    ld a, [hl+]
    ld [hl+], a
    nop
    ld c, c
    ld b, b
    di
    ld c, c
    add hl, hl
    ld bc, $0302
    jr z, @+$01

    ld a, $43
    ld b, l
    dec sp
    ld c, e
    dec c
    add hl, de
    rrca
    rst $38
    add hl, de
    ld a, [de]
    ld c, c
    ld b, b
    ld c, e
    nop
    ld [$f907], sp
    nop
    ld b, b
    add hl, hl
    ld bc, $0302
    rst $38
    jr z, @+$43

    ld b, l
    dec sp
    ld c, e
    ld b, l
    ld bc, $a002
    ld [bc], a
    nop
    adc a
    nop
    ld d, a
    ld e, e
    ld h, b
    ld h, d
    db $fc
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld e, c
    ld d, a
    rst $28
    ld e, e
    ld b, c
    ld b, l
    dec sp
    ld c, e
    ld bc, $ee02
    nop
    jr jr_00f_43a0

    add hl, de
    ld a, [de]
    nop
    di
    ld h, $27
    inc b
    dec b
    ld b, $24
    rst $38
    dec h
    nop
    ld b, b
    inc a

jr_00f_43a0:
    ld c, c
    dec de
    inc d
    ld [de], a
    rst $38
    inc e
    dec e
    ld a, [hl+]
    add hl, hl
    ld c, c
    nop
    ld a, [bc]
    add hl, bc
    ld sp, hl
    nop
    ld h, $27
    inc b
    dec b
    ld b, $ff
    inc h
    dec h
    ld b, b
    inc a
    ld c, c
    ld b, b
    inc b
    dec b
    and b
    dec b
    nop
    adc a
    nop
    ld d, a
    ld e, h
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    nop
    xor a
    nop
    ld b, b
    inc a
    ld c, c
    inc b
    dec b
    rst $30
    jr nz, jr_00f_4406

    ld [de], a
    inc de
    dec e
    nop
    add hl, hl
    ret nz

    ld bc, $ef02
    inc bc
    jr z, jr_00f_43e5

jr_00f_43e5:
    jr nz, jr_00f_4414

    inc de
    dec hl
    rst $38
    inc l
    dec e
    add hl, de
    ld a, [de]
    nop
    ld [$010c], sp
    add b
    ld [bc], a
    or $02
    inc bc
    jr z, jr_00f_43f9

jr_00f_43f9:
    ld bc, $a002
    ld [bc], a
    nop
    adc a
    nop
    ld d, a
    ld h, c
    ld h, e
    ld h, d
    cp $63

jr_00f_4406:
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    nop
    adc h
    nop
    ld bc, $ef02
    ld e, $1f
    ld [de], a

jr_00f_4414:
    inc e
    dec e
    ld h, $27
    ret nz

    inc b
    dec b
    rst $38
    ld b, $24
    dec h
    nop
    ld e, $1f
    inc e
    ld e, $ff
    rra
    dec e
    ld [de], a
    dec e
    nop
    ld a, [bc]
    inc c
    inc b
    add b
    dec b
    cp $05
    ld b, $24
    dec h
    nop
    inc b
    dec b
    and b
    dec b
    nop
    adc a
    nop
    ld d, a
    ld h, b
    ld h, d
    ld h, e
    db $fc
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, a
    nop
    adc h
    nop
    inc b
    dec b
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    and b
    ld [bc], a
    nop
    adc a
    nop
    ld d, a
    ld h, c
    ld l, b
    ld l, c
    add b
    ld l, c
    add b
    ld l, c
    add b
    nop
    add b
    nop
    adc h
    nop
    ld d, a
    ld l, h
    adc a
    ld l, h
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ldh [rSVBK], a
    ld [hl], c
    ld l, h
    add b
    ld l, h
    add b
    ld l, h
    rst $38
    ld l, h
    ld d, a
    add c
    ld a, h
    ld d, a
    ld h, b
    ld l, e
    ld l, h
    add d
    ld l, h
    sbc h
    add b
    sbc h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld [hl], d
    ld [hl], e
    ld [hl], b
    cp $71
    ld e, l
    ld e, [hl]
    ld h, d
    nop
    add d
    add e
    rst $38
    add h
    nop
    ld h, e
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    rst $38
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld e, h
    ld e, a
    rst $38
    ld e, [hl]
    ld e, a
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld e, h
    ld e, a
    rst $38
    ld e, [hl]
    ld d, a
    add c
    ld a, h
    ld d, a
    ld h, c
    ld e, [hl]
    ld e, a
    rst $38
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld d, a
    add b
    ld d, a
    and b
    rst $38
    and c
    and b
    and c
    and b
    and c
    and b
    and c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld [hl], b
    ld [hl], c
    ld e, h
    cp $5f
    ld h, e
    ld h, d
    ld h, a
    nop
    add l
    add [hl]
    rst $38
    add a
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld h, d
    nop
    ld h, [hl]
    ld e, [hl]
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, c
    ld h, e
    rst $38
    ld h, d
    ld e, c
    ld d, a
    add c
    ld d, a
    ld h, b
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld d, a
    add c
    ld d, a
    and d
    rst $38
    and e
    and d
    and e
    and d
    and e
    and d
    and e
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld e, l
    ld e, [hl]
    ld h, d
    cp $63
    ld h, d
    ld h, e
    ld h, d
    nop
    add l
    add [hl]
    rst $18
    add a
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    pop af
    ld h, e
    ld h, d
    ld h, a
    nop
    ld h, [hl]
    rst $38
    ld h, e
    ld h, d
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], c
    ld h, b
    ld h, d
    ldh a, [$63]
    ld e, a
    ld l, b
    ld l, c
    rst $38
    ld l, c
    ld l, d
    ld h, b
    ld h, d
    ld d, a
    add c
    ld d, a
    xor c
    add c
    xor c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld h, e
    ld h, d
    ld h, e
    ldh a, [$62]
    ld h, e
    ld l, b
    ld l, c
    cp a
    ld l, c
    ld l, d
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, e
    pop af
    ld h, d
    ld h, a
    adc e
    adc b
    adc e
    rst $38
    nop
    ld h, e
    ld h, d
    ld h, e
    ld e, a
    ld e, [hl]
    ld h, d
    ld h, e
    ldh a, [$62]
    ld h, e
    ld l, e
    ld l, h
    rst $38
    ld l, h
    ld l, l
    ld h, c
    ld h, e
    ld d, a
    add c
    ld d, a
    xor c
    add c
    xor c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld h, [hl]
    ld h, e
    ld h, d
    ldh a, [$63]
    ld h, d
    ld l, e
    ld l, h
    rst $28
    ld l, h
    ld l, b
    ld l, c
    ld l, d
    ld h, [hl]
    ld h, e
    ld h, d
    pop af
    ld h, a
    nop
    adc e
    adc c
    adc e
    rst $38
    adc e
    ld a, a
    ld h, [hl]
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    rst $38
    ld h, e
    ld h, d
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    rst $38
    ld e, [hl]
    ld e, a
    ld h, e
    ld h, d
    ld d, a
    add c
    ld d, a
    xor c
    add c
    xor c
    ld d, a
    add b
    nop
    add b
    nop
    adc h
    nop
    ld d, a
    nop
    ld hl, sp+$66
    ld h, e
    adc e
    add b
    ld a, d
    db $ec
    ld a, d
    ld l, e
    ld l, h
    ld l, l
    adc a
    or c
    adc a
    ld l, b
    adc [hl]
    ld l, [hl]
    rst $38
    add b
    ld a, [hl]
    ld a, a
    ld h, [hl]
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rst $38
    ld h, d
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld d, a
    add c
    ld d, a
    xor c
    add c
    xor c
    ld d, a
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    ld l, c
    ld l, d
    ldh [rP1], a
    ld h, [hl]
    adc e
    add b
    adc e
    or c
    adc e
    ld l, e
    ld l, h
    ld l, a
    rst $38
    add c
    ld a, l
    ld a, [hl]
    adc e
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    or b
    nop
    ld l, b
    ld l, c
    adc [hl]
    ld l, c
    ld d, a
    add c
    sbc h
    call nz, $aa9c
    sbc h
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    ld l, h
    ld l, l
    add a
    nop
    ld h, [hl]
    ld h, d
    ld h, [hl]
    rst $38
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rst $38
    ld h, d
    ld h, a
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    adc e
    adc a
    adc e
    ld h, [hl]
    ld h, e
    ld h, a
    nop
    cp h
    nop
    ld l, e
    ld l, h
    ld l, d
    nop
    add [hl]
    nop
    ld e, c
    ld d, a
    add $57
    xor b
    ld e, c
    ld d, a
    add b
    nop
    add b
    nop
    adc h
    nop
    ld d, a
    nop
    add b
    nop
    rst $38
    ld h, [hl]
    ld h, d
    ld h, e
    ld h, d
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    rst $28
    ld h, e
    ld h, d
    nop
    ld h, [hl]
    ld [hl], d
    ld [hl], e
    ld e, l
    db $fd
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld h, a
    nop
    ld [hl], h
    cp a
    ld [hl], l
    ld l, b
    ld l, c
    ld l, l
    ld d, $17
    nop
    add [hl]
    nop
    sbc e
    sbc h
    rst $38
    sbc h
    sbc l
    ld h, c
    ld h, e
    ld h, d
    ld e, [hl]
    ld e, a
    ld d, a
    add b
    nop
    add b
    nop
    adc h
    nop
    ld d, a
    nop
    add b
    nop
    pop af
    nop
    ld h, [hl]
    ld h, d
    nop
    ld h, e
    rst $28
    ld h, d
    ld h, a
    nop
    ld h, d
    ld [hl], b
    ld [hl], c
    ld h, b
    db $e3
    ld h, d
    ld h, a
    nop
    ld [hl], a
    adc e
    xor h
    adc e
    ld l, h
    ld l, d
    nop
    sbc d
    nop
    sbc e
    sbc h
    ld d, a
    rst $38
    ld d, a
    ld e, e
    ld h, b
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    ld [hl], h
    ld [hl], l
    add [hl]
    ld [hl], l
    halt
    add b
    nop
    sbc a
    nop
    ld h, [hl]
    ld h, e
    ld e, a
    ld e, [hl]
    ld h, d
    add a
    nop
    ld [hl], a
    ld a, b
    ld a, c
    adc a
    ld a, d
    ld l, l
    nop
    jr nc, jr_00f_471b

    ld sp, hl
    scf
    ld d, $17
    ld e, c
    ld d, a
    ld e, h
    db $fc
    ld e, a
    ld e, [hl]
    ld h, d
    ld h, e
    sbc e
    sbc h
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld d, a
    nop
    adc e
    add e
    adc e
    ld l, b
    ld l, c
    adc l
    ld l, c
    ld l, d
    ld [hl], l
    db $76
    adc a
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    nop
    rst $18
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, e
    ld a, h
    adc h
    ld a, h
    ld l, d
    nop
    cp l
    nop
    jr nc, jr_00f_474c

jr_00f_471b:
    nop
    ld d, a
    ld h, c
    ld hl, sp+$63
    ld h, d
    ld h, e
    ld h, d
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    adc e
    add b
    rst $38
    ld a, d
    adc e
    ld e, h
    ld e, a
    ld e, [hl]
    ld e, a
    ld l, e
    ld l, h
    adc h
    ld l, h
    ld l, l
    adc e
    add b
    nop
    adc [hl]
    adc e
    ld a, b
    ld a, e
    ld a, h
    adc h
    ld a, h
    ld l, l
    nop
    add l
    nop
    ld d, a
    ld h, b
    ldh a, [$62]

jr_00f_474c:
    ld h, e
    sbc e
    sbc h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    adc e
    add c
    rst $38
    ld a, h
    adc e
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    nop
    add d
    add e
    add e
    add h
    nop
    or b
    nop
    adc e
    adc b
    db $ec
    adc e
    add b
    ld a, d
    ld a, e
    ld a, h
    adc b
    ld a, h
    sbc h
    push hl
    sbc h
    sbc l
    nop
    ld d, a
    ld h, c
    ldh a, [$63]
    ld h, d
    ld e, c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    adc e
    add c
    ret nc

    ld a, h
    adc e
    adc h
    add b
    adc h
    or b
    adc h
    adc e
    ld l, c
    ldh [$8b], a
    add c
    ld a, h
    adc b
    ld a, h
    ld d, a
    db $ed
    ld d, a
    ld e, e
    nop
    sbc e
    sbc h
    sbc l
    db $fc
    ld h, c
    ld h, e
    ld e, a
    ld e, [hl]
    ld e, c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    adc e
    add c
    add d
    ld a, h
    ld d, a
    add b
    ld d, a
    cp c
    ld d, a
    jr nc, jr_00f_47eb

    nop
    dec d
    rst $20
    ld d, $17
    nop
    jr nc, jr_00f_47f8

    scf
    rst $20
    ld d, $17
    nop
    inc sp
    inc [hl]
    nop
    db $fc
    jr nc, jr_00f_4803

    scf
    ld d, $59
    ld d, a
    cp $60
    ld h, d
    ld h, e
    ld h, d
    ld e, [hl]
    ld e, c
    ld d, a
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    nop
    adc e
    add c
    add e
    ld a, h
    ld l, c
    ld l, d
    rst $38
    ld e, h
    ld e, a
    ld e, [hl]

jr_00f_47eb:
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, c
    ld d, a
    cp a
    ld d, a
    ld l, $44
    ld l, $44
    dec [hl]
    nop

jr_00f_47f8:
    rst $38
    nop
    ccf
    inc sp

Jump_00f_47fc:
    inc [hl]
    sbc a
    xor e
    nop
    sub h
    ei
    sub l

jr_00f_4803:
    inc sp
    inc [hl]
    nop
    ccf
    nop
    ccf
    cp h
    nop
    ld a, [hl-]
    nop
    sbc e
    sbc h
    rst $38
    sbc l
    ld h, b
    ld h, d
    ld h, e
    ld h, d
    ld e, [hl]
    ld e, a
    ld d, a
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld d, a
    nop
    adc e
    sbc e
    adc e
    add c
    ld a, h
    ld l, h
    ld l, l
    rst $38
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, a
    nop
    ld e, c
    rst $38
    ld d, a
    ld e, e
    cpl
    ld b, l
    cpl
    ld b, l
    ccf
    ld b, d
    rst $38
    ld b, c
    ld b, l
    ccf
    nop
    sub b
    sub c
    nop
    sub [hl]
    rst $38
    sub a
    ld b, c
    ccf
    ld b, c
    ld b, l
    ld b, e
    ld b, c
    ld b, l
    ld hl, sp+$42
    dec a
    dec sp
    ccf
    ld d, a
    rst $38
    ld e, e
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld d, a
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    nop
    add d
    cp e
    add e
    adc e
    add c
    ld a, h
    ld l, c
    ld l, d
    db $fc
    ld h, b
    ld h, d
    ld h, e
    ld h, d
    ld h, a
    nop
    cp a
    nop
    ld c, c
    ld b, b
    sub h
    sub l
    ld b, e
    sbc a
    rst $38
    xor e
    ld b, b
    ld b, e
    nop
    sub d
    sub e
    sbc [hl]
    sbc b
    rst $38
    sbc c
    sbc d
    ld b, e
    nop
    ld b, b
    sbc a
    xor e
    sub h
    db $fd
    sub l
    ld a, $43
    ld b, l
    ld e, c
    ld d, a
    ld e, e
    ld hl, sp+$61
    ld h, e
    ld h, d
    sbc e
    sbc h
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld d, a
    nop
    adc e
    rst $20
    adc e
    adc d
    adc e
    add c
    ld l, h
    ld l, l
    db $fc
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    nop
    adc a
    nop
    sub [hl]
    sub a
    nop
    sub b
    ret c

    sub c
    nop
    sbc e
    sbc h
    or a
    sbc h
    sbc l
    nop
    sub b
    sub c
    sub [hl]
    jp $0097


    ld h, e
    ld e, a
    ld hl, sp+$63
    ld h, d
    ld h, e
    inc b
    dec b
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    nop
    add d
    rst $28
    add e
    adc l
    add e
    adc e
    add c
    ld l, c
    ld l, d
    rst $38
    ld h, b
    ld h, d
    ld h, e
    ld h, d
    ld h, a
    nop
    ld l, b
    ld l, c
    rst $38
    ld l, d
    nop
    sbc d
    sbc [hl]
    sbc b
    sbc c
    sbc d
    sub d
    ld hl, sp-$6d
    sbc [hl]
    nop
    inc b
    dec b
    cp a
    dec b
    ld b, $9a
    sbc [hl]
    sub d
    sub e
    sbc b
    rst $30
    sbc c
    sbc [hl]
    sbc d
    nop
    sbc d
    ld h, [hl]
    ld h, e
    ldh a, [$62]
    ld h, e
    sbc e
    sbc h
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    nop
    add l
    adc a
    add [hl]
    adc e
    add c
    ld l, h
    ld l, l
    di
    ld h, c
    ld h, e
    ld h, d
    nop
    ld l, e
    ld l, h
    ret nz

    ld l, l
    sbc h
    add b
    sbc h
    add b
    sbc h
    add b
    sbc h
    add b
    sbc h
    add b
    nop
    add b
    nop
    adc l
    nop
    ld d, a
    nop
    ld l, b
    add c
    ld l, c
    ld l, d
    db $fc
    ld h, b
    ld h, d
    ld h, a
    nop
    ld l, b
    ld l, c
    ldh [rBCPD], a
    ld l, d
    dec b
    add b
    dec b
    add b
    dec b
    add b
    dec b
    add b
    dec b
    add b
    nop
    add b
    nop
    adc a
    nop
    ld d, a
    ld h, b
    ld h, d
    ld l, e
    add c
    ld l, h
    ld l, l
    call c, $0061
    ld h, e
    ld l, e
    ld l, h
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
    adc a
    nop
    ld d, a
    ld h, c
    ld h, e
    ld e, a
    cp $5e
    ld e, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    adc e
    ld d, a
    rst $38
    ld d, a
    ld e, d
    nop
    ld h, [hl]
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld d, a
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
    adc a
    nop
    ld d, a
    ld h, b
    ld h, d
    ld h, e
    cp $62
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    adc e
    ld a, d
    rst $28
    ld a, d
    ld d, a
    nop
    ld h, [hl]
    ld h, e
    ld h, d
    ld d, a
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
    adc a
    nop
    ld d, a
    ld h, c
    ld h, e
    ld h, h
    cp $65
    ld h, h
    ld h, l
    ld h, d
    ld h, e
    ld l, b
    ld l, c
    sbc a
    ld l, c
    ld l, d
    nop
    ld h, [hl]
    ld h, e
    ld d, a
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
    adc a
    nop
    ld d, a
    ld h, b
    ld h, h
    ld h, l
    cp $62
    ld h, e
    ld h, h
    ld h, l
    ld h, d
    ld l, e
    ld l, h
    sbc c
    ld l, h
    ld l, l
    nop
    ld d, a
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
    adc a
    nop
    ld d, a
    ld h, c
    ld h, e
    ld h, d
    db $fd
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, a
    nop
    add d
    or e
    add e
    add h
    nop
    ld e, b
    ld d, a
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
    adc a
    nop
    ld d, a
    ld h, b
    ld h, d
    ld h, e
    db $fd
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    nop
    add l
    or e
    add [hl]
    add a
    nop
    ld d, a
    add b
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
    ld d, a
    add b
    ld d, a
    add c
    ld d, a
    add c
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
    ldh [rP1], a
    ld e, b
    nop
    add b
    nop
    add a
    nop
    ld e, h
    ld e, l
    ld c, e
    add c
    ld c, e
    ld l, d
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
    ldh [rP1], a
    ld e, b
    nop
    sub b
    nop
    adc c
    add a
    adc c
    ld e, h
    ld e, l
    ld bc, $01ed
    ld [hl], e
    ld bc, $0173
    ld e, h
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
    ldh [rP1], a
    ld e, b
    nop
    sbc a
    nop
    ld d, a
    ld bc, $5756
    ld bc, $56ff
    ld d, a
    ld bc, $5756
    ld e, h
    ld e, l
    add b
    rst $38
    ld [hl], a
    add e
    db $76
    ld [hl], a
    add e
    db $76
    add c
    ld e, h
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
    ldh [rP1], a
    ld e, b
    nop
    sbc a
    nop
    ld h, a
    add l
    ld h, [hl]
    ld h, a
    add l
    rst $38
    ld h, [hl]
    ld h, a
    add l
    ld h, [hl]
    ld h, a
    ld e, h
    ld e, l
    ld bc, $88fd
    nop
    ld bc, $0088
    ld bc, $805c
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
    ldh [rP1], a
    ld e, b
    nop
    adc l
    nop
    ld d, e
    nop
    ld d, e
    or a
    nop
    ld d, e
    nop
    ld a, h
    ld a, l
    ld bc, $0181
    ld e, h
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
    ld hl, sp+$00
    ld e, b
    sub e
    and $00
    rst $28
    adc [hl]
    adc a
    nop
    ld h, e
    nop
    sub b
    ld h, e
    push af
    and $00
    ld h, e
    nop
    call $8101
    ld bc, $805c
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
    rst $20
    nop
    ld e, b
    nop
    adc [hl]
    adc e
    adc h
    call $008d
    ld d, e
    nop
    ld d, e
    cp l
    nop
    ld d, e
    nop
    adc h
    ld [bc], a
    ld bc, $0181
    ld e, h
    add b
    nop
    add b
    nop
    adc b
    nop
    ld e, b
    add b
    ld e, b
    add b
    ld e, b
    add b
    ld e, b
    and b
    ld e, b
    nop
    ld hl, sp+$00
    ld l, e
    ld a, e
    ld c, l
    ld e, c
    add a
    ld e, c
    ld c, h
    ld c, [hl]
    ld c, l
    add a
    ld e, c
    ld l, e
    ld a, e
    ld e, a
    add b
    nop
    add b
    nop
    adc h
    nop
    ld e, l
    nop
    sbc h
    nop
    ld a, b
    ld a, c
    nop
    add b
    nop
    add b
    nop
    ldh [$78], a
    ld a, c
    nop
    cp h
    nop
    ld a, d
    ld l, [hl]
    ld e, l
    nop
    add e
    nop
    ld l, a
    ld a, l
    add e
    inc bc
    ld a, d
    ld l, [hl]
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, l
    adc b
    nop
    ld bc, $88fc
    nop
    ld bc, $7978
    nop
    add b
    nop
    add b
    nop
    rst $30
    ld a, b
    ld a, c
    adc b
    nop
    ld bc, $7f7e
    db $fc
    nop
    ld bc, $6a4b
    ld e, l
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld l, d
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, l
    ld bc, $0173
    rst $38
    ld bc, $0173
    ld a, b
    ld a, c
    adc [hl]
    db $ed
    adc l
    add a
    nop
    adc [hl]
    adc e
    adc h
    pop bc
    adc l
    nop
    adc h
    ld [c], a
    ld a, b
    ld a, c
    ld bc, $9c4b
    ld bc, $5d5c
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, l
    add d
    add e
    add h
    cp $82
    add e
    add h
    ld a, b
    ld a, c
    adc l
    nop
    ldh [$8e], a
    adc a
    nop
    sbc a
    nop
    adc [hl]
    db $ed
    adc l
    sub d
    sub c
    rst $38
    ld a, b
    ld a, c
    add c
    add b
    ld a, [hl]
    ld a, a
    add c
    add b
    db $fc
    add c
    add b
    add c
    ld e, h
    ld e, l
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, l
    adc b
    adc l
    ld bc, $88fc
    sub b
    ld bc, $7978
    nop
    add b
    nop
    add b
    nop
    ld [$7978], a
    ld bc, HeaderOldLicenseeCode
    sbc h
    ld bc, $5d5c
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc h
    nop
    ld e, l
    ld bc, $019f
    ld a, b
    ld a, c
    ld c, h
    ld c, l
    ld e, c
    add b
    ld e, c
    add c
    ld e, c
    ld c, h
    ldh a, [rKEY1]
    ld c, h
    ld c, l
    ld bc, $01bc
    ld c, h
    ld c, a
    ld e, l
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc h
    nop
    ld e, l
    ld bc, $4ce7
    ld c, l
    ld e, c
    ld e, h
    ld e, l
    ld h, l
    rst $38
    ld d, l
    ld d, h
    ld h, h
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    ld h, l
    rst $38
    ld d, l
    ld d, h
    ld h, h
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    ld e, h
    ldh a, [$5d]
    ld e, h
    ld e, l
    ld e, c
    or h
    ld e, c
    ld e, h
    ld e, l
    nop
    add e
    nop
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    and b
    nop
    ld e, b
    adc l
    ld e, b
    ld e, l
    ld bc, $f76b
    ld l, h
    ld e, l
    ld l, b
    ld l, c
    ld e, h
    ld e, l
    ld [hl], l
    cp e
    inc b
    ld [hl], h
    ld [hl], l
    inc b
    ld [hl], h
    ld [hl], l
    cp e
    inc b
    ld [hl], h
    ld [hl], l
    inc b
    ld [hl], h
    ld e, h
    ld hl, sp+$5d
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    or h
    ld l, c
    ld e, h
    ld e, l
    ld e, b
    add e
    ld e, b
    ld e, d
    ld c, [hl]
    pop bc
    ld e, c
    ld c, [hl]
    ld c, a
    add b
    nop
    or b
    nop
    ld e, l
    ld c, e
    sbc l
    ld c, e
    ld l, d
    ld e, l
    ld bc, $874b
    ld c, e
    ld l, d
    ld e, l
    ld c, e
    add c
    ld c, e
    ld l, d
    ret nz

    ld e, l
    nop
    add b
    nop
    adc [hl]
    nop
    ld a, b
    ld a, c
    nop
    adc [hl]
    nop
    ld e, h
    ld e, l
    inc bc
    add b
    inc bc
    add b
    nop
    cp a
    nop
    ld e, l
    ld bc, $0173
    ld [hl], e
    ld bc, $73de
    ld bc, $8a5c
    ld c, l
    ld bc, $01f7
    ld d, [hl]
    ld d, a
    ld bc, $5d5c
    ld bc, $0181
    ld a, h
    ret nz

    ld a, l
    nop
    add b
    nop
    adc a
    nop
    ld a, b
    ld a, c
    adc b
    nop
    cp $01
    adc b
    nop
    ld bc, $5d5c
    inc bc
    add b
    inc bc
    add b
    nop
    cp a
    nop
    ld e, l
    add d
    add e
    add l
    add e
    add l
    cp $83
    add h
    adc c
    ld e, h
    ld l, a
    ld a, l
    adc c
    rst $38
    add d
    ld h, [hl]
    ld h, a
    add h
    adc c
    ld e, h
    ld e, l
    ld bc, $01ff
    ld d, [hl]
    ld d, a
    ld bc, $5756
    ld bc, $f14b
    ld c, e
    sub b
    sub c
    nop
    adc [hl]
    cp $ed
    adc l
    sub d
    sub c
    adc [hl]
    adc e
    nop
    sbc a
    nop
    sub d
    ld a, b
    ld a, c
    ld bc, $be73
    ld bc, $0173
    ld e, h
    ld e, l
    inc bc
    add b
    inc bc
    add b
    nop
    cp a
    nop
    ld e, l
    adc b
    adc a
    adc b
    sub c
    adc b
    rst $18
    adc [hl]
    ld bc, $7d7c
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $30
    ld a, a
    adc l
    adc [hl]
    ld bc, $5d5c
    adc c
    rst $38
    add d
    ld h, [hl]
    ld h, a
    add l
    ld h, [hl]
    ld h, a
    add h
    adc c
    rst $38
    adc c
    adc l
    adc [hl]
    adc a
    nop
    adc [hl]
    adc e
    nop
    add b
    nop
    rst $38
    adc [hl]
    db $ed
    adc l
    sub b
    ld a, b
    ld a, c
    add d
    add e
    cp $84
    add d
    add e
    add h
    ld e, h
    ld e, l
    inc bc
    add b
    inc bc
    add b
    nop
    or b
    nop
    ld e, l
    ld bc, $0190
    ld c, e
    rst $18
    ld c, e
    ld bc, $7b6b
    ld e, a
    ld e, l
    ld bc, $88fe
    adc l
    nop
    adc b
    adc a
    sub b
    ld bc, $01c0
    nop
    add b
    nop
    adc a
    nop
    ld a, b
    ld a, c
    adc b
    adc a
    cp $01
    adc b
    sub b
    ld bc, $5d5c
    inc bc
    add b
    inc bc
    add b
    nop
    or b
    nop
    ld e, l
    ld bc, $0180
    sbc a
    ld bc, $6a4b
    ld e, [hl]
    ld e, l
    ld bc, $0187
    ld l, e
    ld a, e
    ld c, [hl]
    ret nz

    ld c, l
    ld e, c
    add b
    ld e, c
    sbc [hl]
    ld e, c
    ld c, h
    ld c, l
    ld a, c
    ld bc, $018e
    ld e, h
    ld e, l
    inc bc
    add b
    inc bc
    add b
    nop
    or e
    nop
    ld e, l
    ld bc, $7b6b
    ret nz

    ld c, l
    ld e, b
    adc a
    ld e, b
    ld e, h
    ld e, [hl]
    ld e, l
    ld bc, $0187
    ld c, e
    ld a, d
    ld l, [hl]
    rst $38
    ld e, l
    ld d, l
    ld d, h
    ld h, h
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    rst $38
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    db $fd
    ld h, l
    ld d, l
    ld d, h
    ld e, h
    ld e, l
    ld e, c
    ld c, h
    adc $4d
    ld bc, $5d5c
    inc bc
    add b
    inc bc
    add b
    ld e, b
    cp c
    ld e, b
    ld l, l
    ld e, e
    ld bc, $e06a
    ld e, l
    ld l, b
    ld l, c
    adc a
    ld l, c
    ld e, h
    ld e, [hl]
    ld e, l
    ld bc, $0183
    ld c, e
    ld l, d
    db $dd
    ld e, l
    inc b
    ld [hl], h
    ld [hl], l
    inc b
    ld [hl], h
    db $dd
    ld [hl], l
    inc b
    ld [hl], h
    ld [hl], l
    inc b
    ld [hl], h
    rst $18
    ld [hl], l
    inc b
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    ld e, h
    xor $6d
    ld e, e
    ld bc, $5d5c
    ld e, c
    add b
    ld e, c
    rst $38
    xor e
    cp h
    xor e
    ret nz

    pop bc
    call nz, $029c
    ld sp, hl
    ld [bc], a
    xor c
    xor e
    xor h
    inc bc
    sbc b
    rst $38
    sbc d
    sbc e
    cp d
    sbc d
    sbc e
    sbc l
    sbc d
    sbc e
    rst $38
    sbc l
    sbc d
    sbc e
    cp d
    sbc d
    sbc e
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld l, d
    ld e, l
    ld c, e
    xor l
    ld c, e
    ld bc, $5d5c
    ld c, e
    add c
    ld c, e
    ld l, d
    rst $38
    cp e
    cp d
    cp e
    sbc l
    sbc d
    sbc e
    xor h
    ld [bc], a
    db $fc
    ld [bc], a
    sbc b
    cp h
    sbc l
    and d
    inc bc
    add b
    inc bc
    add a
    inc bc
    sbc c
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc [hl]
    nop
    ld e, h
    ld e, l
    ld bc, $56fd
    ld d, a
    ld bc, $5f4c
    ld e, l
    ld bc, $56ef
    ld d, a
    ld bc, $5756
    ld bc, $df5c
    sbc h
    adc $cd
    sub h
    adc $cd
    ld [bc], a
    ret z

    ld [bc], a
    cp [hl]
    inc bc
    add b
    inc bc
    add a
    inc bc
    xor c
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, h
    ld e, l
    adc c
    add d
    db $fd
    ld h, [hl]
    ld h, a
    add h
    ld e, h
    ld e, [hl]
    ld e, l
    add d
    rst $38
    ld h, [hl]
    ld h, a
    add h
    add d
    ld h, [hl]
    ld h, a
    add h
    ld e, h
    cp $ac
    ret


    jp z, $a8c6

    call z, $c802
    ld [bc], a
    cp a
    inc bc
    add b
    inc bc
    add a
    inc bc
    sbc b
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc a
    nop
    ld e, h
    ld e, d
    ld c, l
    adc b
    db $fd
    adc l
    sub d
    ld a, [hl]
    ld a, a
    ld a, d
    ld a, l
    adc b
    rst $38
    adc a
    nop
    ld bc, $8b88
    sub d
    ld bc, $ff5c
    cp d
    push bc
    rst $00
    cp b
    and a
    and l
    and [hl]
    or l
    add a
    or [hl]
    or a
    sbc a
    inc bc
    add b
    inc bc
    add a
    inc bc
    sbc c
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc e
    nop
    ld e, h
    ld l, l
    ld e, e
    and c
    ld bc, HeaderOldLicenseeCode
    add c
    ld bc, $ff5c
    xor e
    and d
    rlc d
    call $98ce
    xor e
    rst $38
    sbc d
    sbc e
    cp d
    sbc d
    sbc e
    sbc l
    sbc [hl]
    sbc a
    cp e
    inc bc
    and a
    or l
    or [hl]
    or a
    sbc a
    adc a
    inc bc
    and a
    cp h
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc e
    nop
    ld e, h
    ld e, l
    ld c, e
    add b
    ld bc, $0181
    ld e, h
    rst $30
    cp e
    sbc h
    rlc d
    call z, $a9ce
    rst $38
    or b
    or c
    or d
    or e
    or c
    or h
    cp d
    xor a
    cp a
    inc bc
    sbc d
    sbc e
    cp d
    sbc d
    sbc e
    xor a
    sbc a
    inc bc
    xor l
    xor e
    cp d
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    add b
    nop
    adc e
    nop
    ld e, h
    ld e, l
    ld e, b
    add b
    ld e, b
    cp c
    ld e, b
    ld c, h
    ld c, l
    ld bc, $ff5c
    sbc l
    cp e
    and l
    and c
    ret z

    ret


    jp z, $ff98

    ret nz

    pop bc
    jp nz, $c1c3

    call nz, $9c9d
    add b
    inc bc
    cp a
    inc bc
    xor l
    xor [hl]
    cp e
    sbc l
    adc d
    ld c, l
    add a
    ld e, c
    ld l, e
    ld a, e
    ld e, a
    add b
    nop
    and b
    nop
    ld e, b
    adc e
    ld e, b
    ld e, h
    ld e, l
    ld l, b
    add b
    ld l, c
    cp l
    ld l, c
    ld e, h
    ld l, l
    ld e, e
    ld bc, $f95c
    jp nc, $d4d3

    jp nc, $d203

    rst $38
    db $d3
    call nc, $9b9a
    cp d
    sbc d
    sbc e
    xor h
    add b
    inc bc
    rst $38
    inc bc
    xor l
    xor [hl]
    xor e
    cp h
    ld e, h
    ld l, a
    ld a, l
    add e
    inc bc
    ld a, d
    ld l, [hl]
    add b
    nop
    cp b
    nop
    ld e, h
    ld e, l
    ld c, e
    pop af
    ld d, b
    ld d, c
    ld d, d
    ld c, e
    ld d, b
    db $e3
    ld d, c
    ld d, d
    ld c, e
    ld d, b
    ld d, c
    push bc
    ld d, d
    ld c, e
    ld bc, $fc5c
    db $d3
    call nc, $d4d3
    jp nc, $f703

    inc bc
    jp nc, $ceaa

    call $0394
    add b
    inc bc
    rst $38
    xor l
    xor [hl]
    sbc l
    cp e
    cp d
    ld e, h
    ld e, l
    inc bc
    add c
    inc bc
    ld l, d
    add b
    nop
    cp b
    nop
    ld e, h
    ld e, l
    ld bc, $60ff
    ld h, c
    ld h, d
    ld bc, $5756
    ld bc, $ff60
    ld h, c
    ld h, d
    ld bc, $5756
    ld bc, $6160
    ei
    ld h, d
    ld bc, $5756
    ld bc, $5f4c
    ret nz

    jp nc, $ff03

    inc bc
    jp nc, $c99c

    jp z, $a8c6

    inc bc
    add c
    inc bc
    xor l
    rst $38
    xor [hl]
    or b
    or c
    or h
    xor e
    ld e, h
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    cp c
    nop
    ld e, h
    ld e, l
    adc c
    add b
    rst $38
    add c
    ld h, e
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    add c
    rst $38
    ld h, e
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    add c
    ld h, e
    rst $38
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    add h
    ld l, e
    ld l, h
    ld e, [hl]
    ret nz

    jp nc, $ff03

    inc bc
    jp nc, $c6ac

    rst $00
    cp b
    and a
    and l
    rst $28
    and [hl]
    and d
    inc bc
    and a
    and l
    and [hl]
    cp l
    rst $38
    sbc l
    ret nz

    pop bc
    call nz, Call_00f_5cbb
    ld e, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    cp b
    nop
    ld e, h
    ld e, l
    ld bc, $01fe
    ld h, e
    add a
    adc b
    adc [hl]
    adc a
    ld bc, $63fd
    add a
    adc b
    adc e
    nop
    ld bc, $ef63
    add a
    adc b
    nop
    ld bc, $6a4b
    ld e, [hl]
    ldh [$d3], a
    call nc, $ff03
    inc bc
    jp nc, $02aa

    rlc d
    adc $03
    add b
    inc bc
    cp a
    adc $94
    call Call_00f_7c98
    ld a, l
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    cp b
    nop
    ld e, h
    ld e, l
    ld bc, $01fe
    ld d, e
    add a
    adc b
    adc l
    nop
    ld bc, $53fd
    add a
    adc b
    nop
    sub d
    ld bc, $ff53
    add a
    adc b
    db $ed
    adc l
    ld l, e
    ld a, e
    ld e, a
    ld e, [hl]
    ret nz

    jp nc, $ff03

    jp nc, $abd3

    and l
    and c
    ld [bc], a
    call z, $8003
    inc bc
    ld sp, hl
    cp c
    jp z, $02a8

    cp [hl]
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    cp b
    nop
    ld e, h
    ld e, l
    ld bc, $70fb
    ld [hl], c
    ld [hl], d
    adc b
    nop
    ld bc, $f770
    ld [hl], c
    ld [hl], d
    adc b
    nop
    ld bc, $7170
    xor $72
    adc b
    nop
    ld c, e
    ld l, d
    ld e, [hl]
    ret nz

    jp nc, $ff03

    db $d3
    call nc, $9dbc
    sbc h
    push bc
    jp z, $8003

    inc bc
    jp hl


    add $c7
    ret z

    cp a
    inc bc
    add c
    inc bc
    ld e, h
    add b
    nop
    cp c
    nop
    ld e, h
    ld e, l
    ld bc, $c04c
    ld c, l
    ld e, b
    cp b
    ld e, b
    ld c, h
    ld c, l
    ld e, b
    add [hl]
    ld e, b
    ld e, h
    ld e, [hl]
    rst $38
    jp nc, $d203

    db $d3
    call nc, $d3d2
    call nc, $d2ff
    db $d3
    cp d
    sbc h
    cp e
    sub [hl]
    sub a
    sub l
    rst $38
    sub [hl]
    sub a
    sub l
    sub [hl]
    sub a
    sub l
    sub [hl]
    sub a
    rst $38
    sub l
    sub [hl]
    sub a
    sub l
    sub [hl]
    sub a
    sub l
    sub [hl]
    rst $38
    sub a
    sub l
    sub [hl]
    sub a
    sub l
    sub [hl]
    sub a
    ld e, h
    add b
    ld e, b
    cp e
    ld e, b
    ld e, h
    ld e, l
    ld bc, $6c6b
    ldh [$5d], a
    ld l, b
    ld l, c
    cp h
    ld l, c
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    add [hl]
    ld l, c
    ld e, h
    ld e, [hl]
    ldh [$5d], a
    ret c

    rst $10
    pop af
    rst $10
    ld l, d
    ld e, l
    rst $10
    inc bc
    ret nz

    inc bc
    rst $10
    and b
    inc bc
    rst $10
    ret nc

    rst $10
    inc bc
    rst $10
    add b
    rst $10
    ld a, [$5d6a]
    ld e, h
    ld e, l
    ld bc, $9c4b
    ld c, e
    ld l, d
    ld e, l
    nop
    add e
    nop
    ld a, b
    ld a, c
    add c
    nop
    ld e, h
    ldh [$8a], a
    ld c, l
    reti


    pop af
    reti


    ld e, h
    ld e, l
    reti


    sbc $c0
    rst $18
    reti


    ldh [$de], a
    rst $18
    reti


    ldh a, [$d9]
    sbc $df
    reti


    add b
    reti


    db $fc
    ld e, h
    ld e, l
    ld e, h
    adc d
    ld c, l
    ld bc, $019f
    ld a, h
    ld a, l
    adc b
    nop
    ld bc, $88ff
    nop
    ld bc, $0088
    ld bc, $7978
    add c
    nop
    ld e, h
    ldh [$5e], a
    ld e, l
    jp c, $daf1

    ld e, h
    ld e, l
    jp c, $c0e0

    pop hl
    jp c, $e0e0

    pop hl
    jp c, $daf0

    ldh [$e1], a
    jp c, $da80

    rst $38
    ld e, h
    ld e, l
    ld e, h
    ld e, [hl]
    ld e, l
    add b
    add c
    add b
    rst $30
    add c
    add b
    add c
    call $7301
    ld bc, $01ef
    ld [hl], e
    ld bc, $0173
    ld a, b
    ld a, c
    add c
    nop
    ld e, h
    ldh a, [$5e]
    ld l, l
    ld e, e
    db $db
    pop af
    db $db
    push de
    sub $db
    ldh [$de], a
    pop hl
    db $db
    jp hl


    ld [$dbeb], a
    rst $28
    ldh [$e1], a
    db $db
    jp hl


    ld [$dbeb], a
    ldh a, [$db]
    ldh [$e1], a
    db $db
    add b
    db $db
    cp $5c
    ld e, l
    ld a, h
    ld l, [hl]
    adc d
    ld c, l
    ld bc, $0197
    ld [bc], a
    add d
    add e
    add h
    rst $38
    add d
    add e
    add h
    add d
    add e
    add h
    ld a, b
    ld a, c
    rst $30
    adc [hl]
    db $ed
    adc l
    nop
    sub d
    sub c
    ld e, h
    rst $38
    ld e, [hl]
    ld e, l
    db $dd
    call c, $dcdd
    db $dd
    call c, $ddff
    call c, $dcdd
    db $dd
    call c, $e0dd
    rst $38
    pop hl
    call c, $ecdd
    inc bc
    rst $08
    call c, $ffdd
    ldh [$e1], a
    call c, $ecdd
    inc bc
    rst $08
    call c, $ddff
    ldh [$e1], a
    call c, $dcdd
    db $dd
    call c, $ddff
    call c, $dcdd
    db $dd
    call c, $dcdd
    cp $5c
    ld e, l
    ld l, c
    ld l, d
    ld e, [hl]
    ld e, l
    ld bc, $0197
    ld [bc], a
    adc b
    adc l
    ld bc, $88ff
    sub b
    ld bc, $8e88
    ld bc, $7978
    rst $18
    adc l
    nop
    adc [hl]
    adc e
    nop
    adc [hl]
    ld e, h
    ldh [$5e], a
    ld e, l
    nop
    add c
    nop
    ld [c], a
    sbc $e3
    nop
    ret nc

    inc bc
    pop de
    nop
    rst $28
    ld [c], a
    db $e3
    nop
    ret nc

    inc bc
    pop de
    nop
    ldh a, [rP1]
    ld [c], a
    db $e3
    nop
    add b
    nop
    rst $38
    ld e, h
    ld e, l
    dec b
    ld a, h
    ld l, [hl]
    ld l, l
    ld e, e
    ld bc, $019f
    ld c, h
    ld c, [hl]
    ld c, l
    ld e, e
    ld bc, $019f
    ld l, e
    ld c, h
    ld c, [hl]
    ld c, l
    ld a, c
    add c
    nop
    ld e, h
    ldh [$5e], a
    ld e, l
    ld e, c
    ldh a, [$59]
    ld c, h
    ld c, l
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add c
    ld e, c
    ld c, h
    pop hl
    ld c, [hl]
    ld c, l
    db $e4
    ld c, h
    cp $5f
    ld e, l
    dec b
    ld l, c
    ld l, d
    ld e, l
    ld e, c

jr_00f_53cf:
    sbc a
    ld e, c
    ld e, h
    ld e, [hl]
    ld e, l
    ld c, e
    ld bc, $019f
    ld c, e
    ld e, h
    ld e, [hl]
    ld e, l
    ld e, c
    cp e
    ld e, c
    ld c, h
    ld c, l
    nop
    ld c, h
    ld e, a
    ldh a, [$5e]
    ld e, l
    ld l, b
    ld l, c
    ld hl, sp+$69
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    add b
    ld l, c
    add b
    ld l, c
    add c
    ld l, c
    ld e, h
    pop af
    ld e, [hl]
    ld l, l
    ld e, e
    push hl
    ld e, h
    rst $28
    ld e, [hl]
    ld e, l
    dec b
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    sbc [hl]
    ld l, c
    ld e, h
    ld e, [hl]
    ld e, l
    ld bc, $018f
    ld e, h
    ld e, [hl]
    ld e, l
    ld l, b
    cp a
    ld l, c
    ld e, h
    ld e, l
    nop
    ld l, e
    ld l, h
    ld e, [hl]
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
    pop af
    ld e, [hl]
    ld e, l
    rst $20
    push hl
    ld a, h
    rst $38
    ld l, [hl]
    ld e, l
    db $d3
    call nc, $d4d3
    db $d3
    call nc, $d3fe
    call nc, $d4d3
    ld e, h
    ld e, l
    nop
    adc a
    nop
    ld e, h
    ld e, l
    dec c
    jr c, jr_00f_53cf

    nop
    dec [hl]
    ld a, [bc]
    dec bc
    inc c
    add b
    nop
    cp b
    nop
    db $10
    ld de, $f000
    nop
    db $10
    ld de, $8000
    nop
    add b
    nop
    pop hl
    ld e, [hl]
    ld e, l
    push hl
    rst $20
    db $fd
    ld l, d
    ld e, l
    jp nc, $d4d3

    jp nc, $ded3

    call nc, $d3d2
    ld e, h
    ld e, l
    db $e4
    sbc a
    db $e4
    ld l, e
    ld l, h
    ld e, l
    dec c
    ld bc, $3aff
    dec sp
    ld c, d
    ld a, [hl-]
    rlca
    dec bc
    inc c
    dec bc
    add b
    nop
    cp a
    nop
    jr nz, @+$23

    nop
    cpl
    nop
    scf
    cp $36
    jr nz, jr_00f_54a8

    nop
    db $10
    ld de, $8000
    nop
    add b
    nop
    ldh [$5e], a
    ld e, l
    push hl
    rst $38
    ld e, h
    ld e, l
    db $d3
    call nc, $d4d3
    db $d3
    call nc, $d3fe
    call nc, $d4d3
    ld e, h
    ld e, l
    push hl
    sbc a
    push hl
    rst $20
    ld l, d

jr_00f_54a8:
    ld e, l
    dec c
    ld bc, $01ef
    ld c, c
    ld bc, $0c0a
    dec bc
    inc c
    add c
    nop
    cpl
    cp a
    nop
    jr nc, @+$33

    scf
    ld l, $39
    ld b, c
    cp $45
    ld [hl-], a
    inc sp
    ld [hl], $20
    ld hl, $e000
    nop
    cpl
    nop
    add e
    nop
    db $10
    ld de, $5ee0
    ld e, l
    push hl
    db $fd
    ld e, h
    ld e, l
    jp nc, $d4d3

    jp nc, $ded3

    call nc, $d3d2
    ld e, h
    ld e, l
    push hl
    adc a
    push hl
    ld e, h
    ld e, l
    dec c
    ld bc, $47fd
    ld c, b
    ld bc, $0e06
    rrca
    dec bc
    ei
    inc a
    ld a, [hl-]
    dec sp
    ld [hl], $00
    dec [hl]
    ld l, $fd
    jr c, jr_00f_5531

    inc [hl]
    ld b, l
    ld b, c
    ld b, h
    ld b, e
    rst $38
    ld b, d
    ld b, b
    ld bc, $3245
    inc sp
    ld [hl], $2f
    db $ec
    scf
    ld l, $3b
    jr c, jr_00f_550e

jr_00f_550e:
    sbc e
    nop
    cpl
    nop
    jr nz, jr_00f_5535

    ldh [$5e], a
    ld e, l
    push hl
    ldh [$7c], a
    ld a, l
    ld e, c
    adc [hl]
    ld e, c
    ld a, h
    ld a, l
    push hl
    adc a
    push hl
    ld e, h
    ld e, l
    dec bc
    ld [$09d1], sp
    ld bc, $0a4b
    ei
    ld b, c
    ld bc, $4541

jr_00f_5531:
    inc a
    dec a
    ld b, c
    xor h

jr_00f_5535:
    ld b, c
    ld b, h
    add hl, hl
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    dec hl
    ld b, d
    ld b, c
    ld b, b
    ld bc, $3d45
    rst $08
    ld b, c
    ld b, h
    ld b, c
    inc a
    ld a, [hl-]
    ld [hl], $9f
    nop
    ccf
    scf
    dec sp
    inc [hl]
    ld b, l
    ldh [$5e], a
    ld e, l
    push hl
    add b
    add sp, -$7e
    add sp, -$1b
    adc a
    push hl
    ld e, h
    ld e, l
    inc c
    dec bc
    pop bc
    dec c
    ld bc, $f30a
    ld b, e
    ld b, h
    ld b, e
    ld b, d
    ld b, h
    ld b, e
    cp a
    ld b, e
    add hl, hl
    ld a, [hl+]
    inc d
    dec d
    ld d, $02
    cp $16
    rla
    ld a, [hl+]
    dec hl
    ld b, e
    ld b, d
    ld b, h
    rst $38
    ld b, e
    add hl, hl
    inc de
    ld a, [hl+]
    inc de
    ld a, [hl+]
    inc de
    dec hl
    ei
    ld a, [hl-]
    add hl, sp
    inc a
    dec a
    ld bc, $4440
    ldh [$5e], a
    ld e, l
    xor $80
    rst $28
    add d
    rst $28
    xor $8f
    xor $5c
    ld e, l
    dec bc
    inc c
    pop hl
    dec bc
    add hl, bc
    ld bc, $800a
    ld a, [hl+]
    cp a
    ld a, [hl+]
    inc l
    ld [hl+], a
    inc h
    dec h
    ld h, $22
    ld hl, sp+$26
    daa
    jr z, jr_00f_55db

    ld a, [hl+]
    rst $38
    ld a, [hl+]
    inc d
    inc hl
    jr jr_00f_55d8

    ld [hl+], a
    inc hl
    rla
    ld a, [$2b2a]
    ld b, d
    ld b, c
    ld b, h
    ld b, e
    rst $38
    ld e, [hl]
    ld e, l
    db $d3
    call nc, $d3d2
    call nc, $ffd2
    ld l, d
    ld e, l
    jp nc, $d4d3

    jp nc, $d4d3

    rst $38
    jp nc, $d4d3

    jp nc, Jump_00f_5d6a

jr_00f_55d8:
    jp nc, $ffd3

jr_00f_55db:
    call nc, $d3d2
    call nc, Call_00f_5d5c
    inc c
    dec bc
    rst $20
    inc c
    dec bc
    ld [$0109], sp
    ld a, [bc]
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    dec bc
    inc c
    ldh [$0b], a
    dec c
    nop
    add b
    nop
    adc [hl]
    nop
    db $10
    ld de, $8000
    nop
    add b
    nop
    add c
    nop
    ld a, [bc]
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    inc c
    dec bc
    db $fc
    inc c
    dec c
    nop
    db $10
    ld de, $8300
    nop
    db $10
    ld de, $00be
    cpl
    nop
    jr nz, @+$23

    nop
    db $e3
    db $10
    ld de, $1000
    ld de, $0080
    di
    nop
    db $10
    ld de, $0700
    dec bc
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    dec bc
    inc c
    db $fd
    dec bc
    dec c
    ld [hl], $20
    ld hl, $2f00
    di
    nop
    db $10
    ld de, $2000
    ld hl, $2ffe
    scf
    ld l, $36
    jr nc, jr_00f_5682

    nop
    ei
    jr nz, jr_00f_5676

    nop
    cpl
    nop
    jr nz, @+$23

    sbc h
    nop
    db $10
    ld de, $ff00
    nop
    jr nz, jr_00f_5684

    nop
    dec [hl]
    add hl, sp
    ld a, [bc]
    inc c
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    inc c
    dec bc
    rst $38
    inc c
    dec bc
    add hl, bc

jr_00f_5676:
    ld [hl-], a
    inc sp
    ld [hl], $35
    ld l, $ff
    jr c, jr_00f_569e

    ld hl, $002f
    scf

jr_00f_5682:
    inc [hl]
    ld b, l

jr_00f_5684:
    rst $38
    dec a
    ld b, c
    ld bc, $3245
    inc sp
    ld [hl], $2f
    rst $38
    jr nc, jr_00f_56c1

    nop
    ccf
    nop
    dec [hl]
    inc [hl]
    inc sp
    cp $36
    cpl
    nop
    jr nz, jr_00f_56bd

    cpl
    nop

jr_00f_569e:
    rst $38
    nop
    jr nc, jr_00f_56d5

    add hl, sp
    rlca
    ld [$0b0c], sp
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    dec bc
    inc c
    cp $0b
    inc c
    dec c
    ld b, b
    ld b, c
    ld b, l
    dec a
    rst $38
    ld b, l
    ld [hl-], a
    inc sp

jr_00f_56bd:
    ld l, $39
    dec a
    ld b, b

jr_00f_56c1:
    ld b, h
    rst $28
    ld b, h
    ld b, e
    ld b, d
    ld b, b
    ld bc, $3d45
    rst $38
    ld [hl-], a
    ld b, l
    ld a, [hl-]
    ld l, $39
    dec a
    ld b, b
    ld b, c
    rst $38
    ld b, l

jr_00f_56d5:
    dec a
    inc a
    ld [hl-], a
    inc sp
    ld l, $3b
    add hl, sp
    rst $38
    ld a, [hl-]
    inc [hl]
    ld b, c
    ld b, h
    ld a, [bc]
    inc c
    dec bc
    inc c
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    inc c
    dec bc
    push af
    inc c
    dec bc
    dec c
    ld b, e
    ld b, d
    ld b, c
    rst $28
    ld bc, $0140
    ld b, c
    ld b, h
    ld b, e
    add hl, hl
    sbc a
    ld a, [hl+]
    dec hl
    ld b, e
    ld b, h
    ld b, c
    ld b, h
    jp c, $0140

    ld b, c
    ld b, h
    ld b, e
    cp l
    ld b, d
    ld b, c
    ld b, b
    ld bc, $4441
    rst $38
    ld b, h
    ld b, e
    rlca
    ld [$0b0c], sp
    inc c
    dec bc
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    ld a, [de]
    add hl, de
    rst $38
    ld a, [de]
    add hl, de
    inc e
    dec e
    inc de
    ld a, [hl+]
    dec hl
    ld b, e
    rst $38
    ld b, h
    ld b, e
    ld b, d
    ld b, h
    ld b, e
    add hl, hl
    ld a, [hl+]
    inc d
    sbc $15
    ld d, $17
    ld a, [hl+]
    dec hl
    ld b, e
    rst $18

jr_00f_573f:
    ld b, e
    ld b, h
    ld b, e
    add hl, hl
    ld a, [hl+]
    inc de
    ld a, [hl+]
    rst $08
    dec hl
    ld b, e
    ld b, h
    ld b, e
    add hl, hl
    ld a, [hl+]
    rst $38
    inc de
    ld e, $1f
    add hl, de
    ld a, [de]
    add hl, de
    ld a, [de]
    add hl, de
    add b
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    ld [bc], a
    dec de
    rst $38
    ld [bc], a
    dec de
    ld [bc], a
    ld [hl+], a
    inc hl
    jr jr_00f_5795

    ld a, [hl+]
    add a
    ld a, [hl+]
    inc l
    ld [hl+], a
    inc h
    sbc $25
    ld h, $27
    jr z, jr_00f_57a1

    ld a, [hl+]
    adc a
    ld a, [hl+]
    inc l
    ld [hl+], a
    inc hl
    jr jr_00f_573f

    dec l
    ld a, [hl+]
    inc l
    ld [hl+], a
    rst $28
    inc hl
    jr jr_00f_579f

    ld [bc], a
    dec de
    ld [bc], a
    dec de
    adc h
    ld d, a
    add h
    ld e, e
    nop
    nop
    nop
    nop
    ld b, b
    ld b, h
    ld b, c
    ld b, l
    ld c, b

jr_00f_5795:
    ld b, h
    ld c, c
    ld b, l
    ld e, h
    ld c, h
    ld e, l
    ld c, l
    ld b, d
    ld b, [hl]
    ld b, e

jr_00f_579f:
    ld b, a
    ld c, d

jr_00f_57a1:
    ld b, [hl]
    ld c, e
    ld b, a
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld c, a
    nop
    ld bc, $0200
    ld bc, $0200
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    nop
    inc b
    nop
    nop
    inc b
    nop
    inc b
    inc b
    nop
    inc b
    nop
    db $10
    inc d
    ld de, $141e
    inc d
    dec d
    ld e, $14
    inc d
    ld e, $15
    inc d
    inc d
    ld e, $1e
    ld [de], a
    ld d, $13
    ld e, $16
    ld d, $17
    ld e, $16
    ld d, $1e
    rla
    ld d, $16
    ld e, $1e
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, c
    db $10
    inc d
    ld de, $1415
    inc d
    dec d
    dec d
    jr @+$09

    add hl, de
    ld [$1612], sp
    inc de
    rla
    ld d, $16
    rla
    rla
    dec b
    add hl, bc
    ld b, $0a
    jr nz, @+$25

    ld hl, $2624
    jr z, jr_00f_5832

    add hl, hl
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    dec h
    nop
    ld a, [de]
    inc e
    dec de
    dec e
    dec bc
    dec c
    inc c
    ld c, $32
    inc [hl]
    inc sp
    dec [hl]
    ld [hl], $38
    scf
    add hl, sp
    ld a, [hl+]
    inc l
    dec hl
    dec l
    ld l, $30
    cpl
    ld sp, $0000
    nop
    rrca
    nop
    nop

jr_00f_5832:
    rrca
    nop
    nop
    nop
    rrca
    rrca
    ld d, $16
    rla
    ld [hl+], a
    ld d, $16
    dec h
    rla
    ld [de], a
    ld d, $25
    rla
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld a, d
    ld a, e
    nop
    nop
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    nop
    nop
    ld l, [hl]
    ld l, a
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    ld l, [hl]
    ld l, h
    ld l, l
    ld l, a
    nop
    ld h, b
    ld h, c
    nop
    ld l, [hl]
    nop
    nop
    ld l, a
    nop
    nop
    nop
    ld [hl], c
    ld [hl], l
    ld [hl], d
    db $76
    ld [hl], e
    ld [hl], a
    ld a, c
    ld a, c
    ld a, d
    ld a, d
    ld a, e
    ld a, e
    nop
    ld a, h
    ld [hl], b
    ld a, l
    ld a, b
    ld a, d
    nop
    ld a, e
    ld a, h
    nop
    ld a, l
    ld [hl], b
    nop
    ld a, e
    nop
    nop
    nop
    ld [hl], b
    nop
    ld a, b
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, d
    ld a, b
    ld a, e
    nop
    ld a, [hl]
    nop
    ld a, a
    ld a, h
    ld a, d
    ld a, l
    ld a, e
    ld a, d
    nop
    nop
    nop
    ld a, h
    nop
    ld a, l
    ld a, h
    ld a, d
    ld a, l
    ld a, e
    ld a, d
    nop
    ld a, e
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, l
    ld a, d
    ld a, d
    ld a, e
    add hl, de
    inc bc
    ld a, [de]
    inc b
    dec b
    rlca
    ld b, $08
    add hl, bc
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    dec c
    rrca
    ld c, $10
    ld de, $1213
    inc d
    dec d
    jr jr_00f_58ed

    db $10
    jr jr_00f_58f2

    ld [de], a
    inc d
    jr jr_00f_58f6

    ld c, $10
    rla
    inc de
    rla
    inc d
    ld d, $0f
    ld d, $10
    jr nz, jr_00f_590c

    ld hl, $2423

jr_00f_58ed:
    ld [hl+], a
    ld hl, $2023
    ld [hl+], a

jr_00f_58f2:
    dec h
    inc hl
    jr nz, @+$28

jr_00f_58f6:
    ld hl, $2023
    ld [hl+], a
    ld hl, $3c27
    dec sp
    dec a
    ld [hl], $3c
    dec sp
    dec a
    inc [hl]
    dec sp
    dec sp
    inc [hl]
    ld [hl], $3b
    dec sp
    ld [hl-], a
    inc [hl]

jr_00f_590c:
    dec a
    dec [hl]
    dec a
    ld [hl], $3d
    inc sp
    dec a
    inc [hl]
    ld sp, $3233
    inc [hl]
    inc sp
    dec [hl]
    inc [hl]
    ld [hl], $37
    add hl, sp
    jr c, @+$3c

    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    nop
    inc sp
    nop
    inc [hl]
    inc sp
    nop
    inc [hl]
    nop
    jr z, jr_00f_5959

    add hl, hl
    inc l
    dec hl
    dec hl
    inc l
    inc l
    dec hl
    ld l, $2c
    cpl
    ld a, [hl+]
    dec l
    jr z, jr_00f_5967

    dec l
    dec l
    dec hl
    dec hl
    dec l
    jr nc, @+$2d

    ld l, $2b
    ld l, $2c
    ld a, $2d
    ccf
    dec hl
    ld l, $08
    ld a, [bc]
    add hl, bc
    dec bc
    inc c
    ld c, $0d
    rrca
    ld [$080a], sp
    ld a, [bc]
    inc c

jr_00f_5959:
    ld c, $0c
    ld c, $10
    ld [de], a
    ld de, $1213
    ld [de], a
    inc de
    inc de
    ld [de], a
    inc d
    inc de

jr_00f_5967:
    dec d
    nop
    ld d, $16
    rla
    rla
    jr jr_00f_5987

    ld h, l
    inc e
    dec e
    ld h, e
    ld h, d
    dec e
    dec e
    ld h, e
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    ld h, d
    ld h, d
    ld h, h
    ld h, e
    ld h, d
    dec de
    ld a, [de]
    ld h, h

jr_00f_5987:
    dec de
    add hl, de
    nop
    ld a, [de]
    add hl, de
    inc e
    dec e
    ld h, b
    ld h, d
    ld h, c
    ld h, e
    ld h, b
    ld h, d
    ld h, [hl]
    ld l, c
    ld h, a
    ld l, d
    ld l, e
    ld l, c
    ld l, h
    ld l, d
    ld l, e
    ld l, l
    ld l, h
    ld l, [hl]
    ld l, b
    ld l, h
    ld h, a
    ld l, d
    ld l, d
    ld l, h
    ld l, h
    ld l, d
    ld l, d
    ld l, a
    ld l, h
    ld l, [hl]
    nop
    nop
    ld e, $1e
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], b
    ld l, h
    ld [hl], c
    ld l, d
    inc b
    ld b, $05
    rlca
    ld bc, $0301
    inc bc
    ld [hl], d
    ld l, h
    ld l, h
    ld l, d
    dec hl
    dec hl
    inc l
    inc l
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $04
    rlca
    ld a, [bc]
    ld c, $07
    rrca
    nop
    stop
    ld de, $0012
    inc de
    nop
    nop
    nop
    add hl, bc
    dec b
    nop
    nop
    ld [$0b0c], sp
    nop
    inc bc
    ld b, $00
    dec c
    ld a, [bc]
    ld c, $04
    rlca
    nop
    db $10
    rlca
    rrca
    ld [de], a
    nop
    nop
    nop
    inc d
    dec d
    jr jr_00f_5a14

    add hl, de
    dec de
    inc e
    ld a, [de]
    dec e
    dec de
    inc e
    ld e, $1d
    rra
    nop
    nop
    ld d, $17
    add hl, bc
    dec b
    dec bc
    nop
    ld h, b
    ld h, e
    ld h, c
    ld h, h
    ld h, e
    ld l, b
    ld h, [hl]
    ld l, c

jr_00f_5a14:
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, a
    ld l, d
    ld h, e
    ld h, e
    ld l, e
    ld l, l
    ld l, h
    ld l, [hl]
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], b
    inc e
    ld [hl], c
    dec e
    ld [hl], d
    ld [hl], e
    ld a, [de]
    ld [hl], h
    dec de
    ld [hl], l
    ld [hl], l
    db $76
    db $76
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    inc e
    ld a, [de]
    dec e
    dec de
    ld [$000c], sp
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    inc c
    inc d
    db $10
    rst $38
    rst $38
    rst $38
    jr nz, jr_00f_5b58

    rla
    nop

jr_00f_5b58:
    ld [hl], $42
    rra
    jr nz, jr_00f_5ba4

    ld c, l
    inc hl
    jr nz, jr_00f_5ba8

    ld c, l
    inc hl
    jr nz, jr_00f_5b65

jr_00f_5b65:
    db $10
    dec c
    ld bc, $183c
    dec c
    ld bc, $2046
    dec c
    ld bc, $1846
    inc c
    inc b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld b, c
    ld b, b
    ld b, b
    ld b, c
    ld a, [bc]
    ld a, [hl-]
    inc b
    inc d
    ld a, [bc]
    ld a, [de]
    dec bc
    dec de

jr_00f_5ba4:
    ld a, [de]
    ld a, [de]
    dec hl
    dec de

jr_00f_5ba8:
    ld a, [de]
    ld a, [hl-]
    dec hl
    dec sp
    inc c
    inc e
    dec c
    dec e
    ld c, $1e
    rrca
    rra
    ld l, $3e
    cpl
    ccf
    inc l
    inc a
    dec l
    dec a
    inc c
    inc [hl]
    dec d
    dec [hl]
    inc h
    inc [hl]
    dec h
    dec [hl]
    ld b, b
    ld b, l
    ld b, c
    ld b, [hl]
    ld c, d
    nop
    ld c, e
    ld e, [hl]
    ld [hl], a
    ld [hl-], a
    ld a, b
    inc sp
    ld [de], a
    ld [de], a
    ld h, [hl]
    db $76
    ld [hl+], a
    ld l, c
    inc hl
    ld l, d
    ld a, c
    ld e, l
    ld a, d
    ld [hl], a
    ld e, l
    ld [hl], a
    ld l, b
    ld a, b
    ld e, l
    ld [hl-], a
    ld [hl], a
    inc sp
    ld [hl], a
    ld e, l
    ld a, b
    ld [hl], l
    jr z, jr_00f_5c22

    add hl, hl
    add hl, sp
    ld [$0918], sp
    add hl, de
    ld a, [hl+]
    ld e, l
    ld e, l
    ld e, l
    ld b, $16
    add hl, bc
    rlca
    ld [de], a
    ld [de], a
    rla
    inc de
    ld [de], a
    ld [de], a
    inc de
    daa
    ld h, $36
    scf
    add hl, de
    ld b, d
    ld b, a
    ld b, e
    ld c, b
    ld c, h
    ld e, a
    ld c, l
    ld c, a
    ld l, c
    ld a, c
    ld l, d
    ld a, d
    ld l, d
    ld a, d
    ld l, e
    ld a, e
    ld [hl], a
    ld l, e
    ld a, b
    ld l, h
    ld a, e
    ld a, b
    ld a, h
    ld [hl], l
    ld l, e
    ld h, a
    ld l, h
    ld a, h
    ld a, b
    ld e, l

jr_00f_5c22:
    ld [hl], l
    ld h, a
    ld [hl], a
    ld e, l
    ld a, b
    ld e, l
    jr nz, jr_00f_5c3c

    ld hl, $1213
    ld [de], a
    inc de
    inc de
    ld [de], a
    jr nc, jr_00f_5c46

    ld sp, $5d22
    inc hl
    ld e, l
    ld e, l
    ld [hl-], a
    ld e, l
    inc sp

jr_00f_5c3c:
    ld l, a
    ld a, a
    ld [hl], b
    ld e, h
    ld l, l
    ld a, l
    ld l, [hl]
    ld a, [hl]
    ld b, h
    ld c, c

jr_00f_5c46:
    ld b, e
    ld c, b
    ld c, [hl]
    ld e, a
    ld c, l
    ld c, a
    ld h, d
    ld c, c
    inc bc
    ld c, b
    ld c, [hl]
    ld e, a
    ld de, $0070
    ld c, c
    ld [hl], b
    ld c, b
    nop
    nop
    nop
    ld h, c
    nop
    nop
    ld h, d
    nop
    nop
    nop
    ld h, c
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld h, d
    nop
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, d
    nop
    ld e, h
    ld [hl], b
    nop
    nop
    ld h, d
    ld h, c
    ld h, d
    ld h, c
    ld e, h
    ld e, h
    ld [hl], b
    ld e, h
    ld e, h
    ld e, h
    ld [hl], b
    ld [hl], b
    ld e, h
    ld e, h
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld e, h
    db $10
    ld h, l
    ld e, h
    ld e, h
    ld e, h
    ld h, l
    ld e, h
    ld h, l
    ld e, h
    ld h, h
    ld h, l
    ld [hl], e
    ld h, e
    ld [hl], h
    ld h, h
    ld e, h
    ld h, l
    ld h, l
    ld [hl], e
    ld e, h
    ld [hl], b
    ld e, h
    ld e, h
    ld h, c
    ld h, d
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld e, h
    ld e, h
    ld h, b
    ld e, h
    ld [hl], c
    ld h, c
    ld [hl], b
    ld [hl], b
    ld e, h
    ld e, l
    ld e, l
    ld e, h
    ld e, h
    ld l, b
    ld a, b
    ld b, e
    ld b, [hl]
    ld l, c
    ld a, c
    ld c, c

Call_00f_5cbb:
    ld c, h
    ld l, c
    ld a, b
    ld c, c
    ld b, [hl]
    ld l, e
    ld a, e
    ld c, c
    ld c, h
    inc bc
    inc de
    ld e, h
    ccf
    ld e, h
    ld e, h
    ld b, $16
    inc hl
    inc sp
    inc h
    inc [hl]
    ld h, $36
    daa
    scf
    dec hl
    dec sp
    nop
    nop
    dec bc
    dec de
    nop
    nop
    ld e, h
    ld e, h
    inc c
    inc e
    ld e, h
    ld e, h
    inc l
    inc a
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld e, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld l, d
    ld a, d
    ld b, e
    ld b, [hl]
    ld h, l
    ld [hl], l
    ld h, [hl]
    db $76
    ld b, d
    ld b, l
    ld b, e
    ld b, [hl]
    ld c, b
    ld c, e
    ld c, c
    ld c, h
    ld c, b
    ld b, l
    ld c, c
    ld b, [hl]
    ld l, e
    ld b, l
    ld c, c
    ld b, [hl]
    ld e, h
    dec d
    ld e, h
    ld e, h
    ld [$0708], sp
    rla
    dec h
    dec [hl]
    dec b
    ld e, h
    nop
    jr jr_00f_5d13

jr_00f_5d13:
    jr jr_00f_5d73

    ld e, [hl]
    cpl
    dec a
    ld e, [hl]
    ld e, [hl]
    dec c
    rra
    dec e
    nop
    ld e, $00
    nop
    dec l
    nop
    ld l, $5e
    ld e, [hl]
    ld e, [hl]
    ld b, c
    ld e, [hl]
    ld e, [hl]
    ld b, b
    ld b, c
    ld [hl], a
    ld b, l
    ld b, e
    ld b, [hl]
    ld h, c
    ld [hl], c
    ld h, d
    ld [hl], d
    ld h, a
    ld b, l
    ld [hl], h
    ld b, [hl]
    ld c, b
    ld h, e
    ld c, c
    ld h, h
    ld c, b
    ld b, l
    ld c, d
    ld b, [hl]
    ld c, b
    ld b, l
    ld c, c
    ld b, a
    ld e, h
    add hl, bc
    ld e, h
    ld a, [bc]
    jr z, jr_00f_5d82

    ld a, [de]
    ld a, [de]
    add hl, hl
    add hl, sp
    ld a, [hl+]
    ld a, [hl-]
    ld e, h
    ld e, h
    inc c
    inc a
    ld l, $3e
    nop
    jr z, jr_00f_5d67

    ld e, $38
    nop

Call_00f_5d5c:
    dec a
    ld e, h
    ld a, $04
    ld e, h
    dec c
    inc d
    ld c, $6c
    ld a, h
    ld l, l

jr_00f_5d67:
    ld a, l
    ld l, [hl]
    ld a, [hl]

Jump_00f_5d6a:
    ld l, a
    ld a, a
    ld [hl], a
    ld b, l
    ld b, h
    ld b, a
    ld [hl], e
    ld a, b
    ld [hl], h

jr_00f_5d73:
    ld b, [hl]
    ld b, d
    ld b, l
    ld b, h
    ld b, a
    ld c, b
    ld c, e
    ld c, d
    ld c, l
    ld l, b
    ld a, b
    ld b, h
    ld b, a
    ld l, c
    ld a, c

jr_00f_5d82:
    ld c, d
    ld c, l
    ld e, h
    ld e, h
    ld [$5c04], sp
    ld e, h
    inc d
    ld [$0d5c], sp
    ld [$1d0e], sp
    dec l
    ld e, $2e
    dec a
    ld e, h
    ld a, $08
    dec a
    dec c
    ld a, $0e
    dec b
    ld e, h
    add hl, de
    inc b
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, h
    rrca
    ld e, h
    rrca
    ld e, h
    ld e, h
    ld [$4808], sp
    ld a, b
    ld c, c
    ld b, [hl]
    jr nc, jr_00f_5db2

jr_00f_5db2:
    nop
    nop
    ld bc, $0211
    ld [de], a
    ld hl, $2231
    ld [hl-], a
    nop
    stop
    nop
    jr nz, @+$32

    nop
    nop
    nop
    nop
    nop
    stop
    nop
    jr nc, jr_00f_5dcc

jr_00f_5dcc:
    nop
    nop
    db $10
    jr nz, @+$23

    ld sp, $2022
    ld e, [hl]
    ld e, [hl]
    ld e, $5d
    jr nz, jr_00f_5e0a

    ld hl, $2024
    jr nc, jr_00f_5e03

    ld sp, $3020
    ld hl, $2931
    ld sp, $322a
    add hl, hl
    ld sp, $332b
    ld hl, $2224
    dec h
    inc h
    ld sp, $3225
    ld hl, $2339
    dec sp
    ld hl, $2231
    ld [hl-], a
    inc hl
    jr z, jr_00f_5e21

    ld [hl-], a
    jr c, @+$60

    daa

jr_00f_5e03:
    jr c, @+$2e

    dec l
    ld a, [hl+]
    dec h
    dec l
    inc a

jr_00f_5e0a:
    dec h
    ld a, [hl-]
    dec l
    inc a
    ld [hl+], a
    ld a, [hl-]
    dec l
    dec l
    ld [hl+], a
    dec h
    dec l
    dec l
    ld [hl+], a
    ld [hl-], a
    dec l
    dec l
    ld [hl+], a
    dec h
    dec l
    dec l
    dec h
    ld [hl-], a
    inc l

jr_00f_5e21:
    dec l
    ld a, [hl+]
    ld [hl-], a
    rra
    ld e, l
    ld e, l
    ld e, l
    dec hl
    inc sp
    ld a, [hl+]
    ld [hl-], a
    ld hl, $2239
    ld a, [hl-]
    ld hl, $2331
    inc sp
    inc hl
    dec sp
    ld [hl+], a
    ld a, [hl-]
    ld e, [hl]
    ld h, $26
    scf
    ld [hl], $33
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc [hl]
    ld [hl+], a
    dec [hl]
    rla
    db $10
    jr jr_00f_5e4d

    db $10
    db $10
    rlca
    rlca
    db $10

jr_00f_5e4d:
    db $10
    rlca
    dec d
    db $10
    db $10
    dec b
    rlca
    db $10
    rla
    dec d
    jr @+$05

    ld [bc], a
    inc b
    ld de, $0201
    ld [de], a
    ld de, $1301
    ld [de], a
    inc d
    inc c
    ld l, $5d
    cpl
    ld a, [bc]
    dec e
    ld l, $5d
    ld l, $3e
    cpl
    ccf
    inc hl
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc sp
    ld [hl+], a
    ld a, [bc]
    inc [hl]
    inc sp
    dec [hl]
    ld [hl-], a
    dec a
    ld e, [hl]
    dec sp
    ld e, l
    dec sp
    ld e, l
    dec sp
    ld e, l
    add hl, de
    ld b, $1a
    db $10
    ld [$1008], sp
    db $10
    ld [$1016], sp
    db $10
    ld b, $08
    db $10
    db $10
    ld d, $19
    db $10
    ld a, [de]
    ld c, $0f
    ld e, $5d
    rrca
    rrca
    ld e, l
    ld e, l
    dec de
    dec c
    inc e
    ld e, l
    inc c
    inc c
    ld e, l
    ld e, l
    inc c
    dec e
    ld e, l
    ld e, l
    rrca
    add hl, bc
    ld e, l
    inc e
    dec bc
    ld e, l
    dec bc
    ld e, l
    ld e, l
    dec bc
    ld e, l
    dec bc
    ld e, [hl]
    ld e, [hl]
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, l
    dec bc
    ld e, [hl]
    dec de
    ld e, [hl]
    dec bc
    rla
    ld e, [hl]
    rla
    ld e, [hl]
    ld e, [hl]
    dec bc
    ld e, [hl]
    dec bc
    inc bc
    inc de
    inc b
    inc d
    inc bc
    ld de, $1004
    ld de, $1213
    inc d
    ld b, d
    ld b, l
    jr nz, jr_00f_5f0c

    ld c, b
    ld c, e
    ld hl, $5e31
    ld e, [hl]
    inc hl
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc sp
    inc h
    inc [hl]
    dec h
    dec [hl]
    ld h, $36
    daa
    scf
    jr z, jr_00f_5f2a

    add hl, hl
    add hl, sp
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    nop
    ld a, [hl+]
    ld a, [hl-]
    dec sp
    nop
    ld e, [hl]
    inc e
    inc c
    ld e, $2c
    ld e, [hl]
    ld l, $3c
    dec c
    dec e
    ld c, $1e
    dec l
    dec a
    ld l, $3e

jr_00f_5f0c:
    dec c
    dec e
    rrca
    rra
    dec l
    dec a
    cpl
    ccf
    nop
    nop
    ld bc, $5c02
    ld e, h
    ld e, h
    ld e, h
    db $10
    jr nc, jr_00f_5f4f

    nop
    ld e, l
    ld e, l
    ld e, h
    ld e, h
    ld e, l
    ld e, l
    ld e, h
    ld e, h
    dec b
    dec d

jr_00f_5f2a:
    ld b, $16
    ld [$5e18], sp
    ld e, [hl]
    add hl, bc
    add hl, de
    ld a, [bc]
    ld a, [de]
    rlca
    ld e, [hl]
    rla
    ld e, [hl]
    jr nc, jr_00f_5f4a

    db $10
    jr nz, jr_00f_5f9c

    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    nop

jr_00f_5f4a:
    nop
    rst $38
    ld h, b
    ld [bc], a
    scf

jr_00f_5f4f:
    nop
    ld d, a
    ld c, [hl]
    ld l, $20
    ld hl, $160e
    nop
    dec d
    dec [hl]
    dec bc
    nop
    nop
    jr nc, jr_00f_5f6c

    ld [bc], a
    ld b, [hl]
    jr nc, jr_00f_5f70

    ld [bc], a
    ld b, [hl]
    jr z, jr_00f_5f74

    inc bc
    ld a, [bc]
    db $10
    dec c
    inc bc

jr_00f_5f6c:
    ld [hl-], a
    ld [$030d], sp

jr_00f_5f70:
    rst $38
    nop
    nop
    nop

jr_00f_5f74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    ld e, a
    jp c, $c15f

    nop
    ld bc, $8000
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

jr_00f_5f9c:
    add b
    nop
    add b
    ld bc, $0188
    nop
    add b
    nop
    add b
    ld bc, $0189
    nop
    db $10
    jp $0116


    rla
    ld de, $01a0
    nop
    sub [hl]
    nop
    ld bc, $0100
    add b
    nop
    sub d
    nop
    ld bc, $8200
    nop
    ld bc, $00b0
    ld [bc], a
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
    adc b
    nop
    ld bc, $0180
    and b
    nop
    ld bc, $0180
    and b
    nop
    ld bc, $0182
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    ld bc, $0080
    add b
    ld bc, $0080
    add b
    ld bc, $008a
    ld bc, $a000
    nop
    ld bc, $0080
    or b
    nop
    ld bc, $8400
    nop
    ld bc, $0183
    rla
    ld de, $0180
    rst $00
    nop
    ld bc, $1610
    rla
    add b
    ld bc, $00a6
    ld bc, $0016
    add h
    ld bc, $8000
    nop
    and c
    nop
    ld bc, $8000
    nop
    add b
    nop
    add d
    nop
    ld bc, $0080
    add b
    nop
    nop
    scf
    ld h, b
    adc a
    ld h, b
    pop bc
    nop
    db $10
    ld bc, $0184
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
    adc d
    nop
    ld bc, $8000
    db $10
    adc b
    stop
    add b
    nop
    add b
    db $10
    adc c
    db $10
    ld bc, $c218
    jr jr_00f_6070

    add hl, de
    and b
    db $10
    ld bc, $07ff
    inc b
    ld bc, $0c10
    ld bc, $0d0f
    add b
    nop
    sub d

jr_00f_6070:
    nop
    ld [de], a
    nop
    add d
    nop
    ld [de], a
    or b
    nop
    ld c, $00
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
    adc b
    nop
    db $10
    add b
    db $10
    and b
    nop
    db $10
    add b
    db $10
    and b
    nop
    db $10
    add d
    stop
    add b
    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    db $10
    add b
    nop
    add b
    db $10
    add b
    nop
    add b
    db $10
    adc d
    nop
    stop
    and b
    nop
    db $10
    add b
    nop
    or b
    nop
    stop
    add h
    nop
    db $10
    add d
    db $10
    add hl, de
    add b
    db $10
    push bc
    nop
    db $10
    jr jr_00f_60e3

    add h
    db $10
    inc c
    and [hl]
    nop
    db $10
    jr jr_00f_60d2

jr_00f_60d2:
    add h
    stop
    add b
    nop
    and c
    nop
    stop
    add b
    nop
    adc a
    nop
    rlca
    inc b
    nop
    inc b

jr_00f_60e3:
    jp $0006


    rrca
    ld d, $80
    nop
    add b
    nop
    nop
    pop af
    ld h, b
    dec de
    ld h, c
    adc l
    nop
    ld [bc], a
    nop
    ld bc, $008d
    inc bc
    nop
    inc bc
    adc $02
    nop
    ld bc, $0300
    or [hl]
    nop
    ld [bc], a
    nop
    ld bc, $b603
    nop
    ld [bc], a
    nop
    ld bc, $af03
    nop
    inc bc
    ld [bc], a
    nop
    ld bc, $a803
    nop
    inc bc
    nop
    add b
    nop
    nop
    add h
    nop
    inc bc
    cp a
    nop
    inc bc
    ld [bc], a
    ld bc, $0003
    inc bc
    adc $00
    inc bc
    ld [bc], a
    ld bc, $fa03
    inc bc
    ld [bc], a
    ld bc, $0003
    inc bc
    rst $38
    inc bc
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    nop
    ld bc, $03f8
    ld [bc], a
    nop
    ld bc, $f003
    ld [bc], a
    nop
    ld bc, $9d03
    nop
    inc bc
    ld [bc], a
    nop
    ld bc, $5800
    ld h, c
    ret c

    ld h, c
    ld e, b
    ld h, d
    ret c

    ld h, d
    ld e, b
    ld h, e
    nop
    dec b
    ld b, $07
    ld a, c
    ld a, c
    ld a, c
    ld l, l
    inc bc
    dec b
    ld b, $07
    ld a, c
    ld a, c
    ld a, c
    ld l, l
    inc de
    ld [$0a09], sp
    ld [hl], e
    ld e, d
    ld e, e
    ld l, h
    dec h
    ld [$0a09], sp
    ld [hl], e
    ld e, d
    ld e, e
    ld l, h
    dec [hl]
    dec bc
    add hl, bc
    inc c
    ld [hl], b
    add h
    ld [hl], c
    ld l, h
    ld sp, $090b
    inc c
    ld [hl], b
    add h
    ld [hl], c
    ld l, h
    ld b, c
    ld [$0a09], sp
    ld a, c
    ld a, c
    ld l, h
    ld l, [hl]
    ld b, h
    ld [$0a09], sp
    ld a, c
    ld a, c
    ld l, h
    ld l, [hl]
    ld d, h
    ld [$0a09], sp
    ld a, c
    ld a, c
    add l
    ld l, e
    ld h, h
    ld [$0a09], sp
    ld [hl], e
    ld [hl], d
    add [hl]
    ld l, h
    ld h, a
    ld [$0a09], sp
    ld [hl], e
    ld [hl], d
    add [hl]
    ld l, h
    ld [hl], a
    ld [$0a09], sp
    ld a, c
    ld a, c
    ld a, c
    ld e, h
    jr nz, jr_00f_61c2

    add hl, bc
    ld a, [bc]
    ld [hl], e
    ld e, d
    ld e, e
    ld l, h
    rst $38
    nop

jr_00f_61c2:
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    rst $38
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    rst $38
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld de, $0e0d
    rrca
    add d
    ld [hl], h
    ld e, a
    ld l, h
    dec d
    dec c
    ld c, $0f
    add d
    ld [hl], h
    ld e, a
    ld l, h
    dec h
    dec c
    ld c, $10
    ld a, c
    ld a, c
    ld a, c
    ld h, b
    ld hl, $0e0d
    db $10
    ld a, c
    ld a, c
    ld a, c
    ld h, b
    ld sp, $0e0d
    rrca
    ld a, c
    ld a, c
    ld [hl], l
    ld l, h
    ld b, b
    dec c
    ld c, $0f
    ld a, c
    ld a, c
    ld [hl], l
    ld l, h
    ld d, b
    ld de, $1312
    ld a, c
    ld a, c
    ld a, c
    adc e
    ld d, e
    ld de, $1312
    ld a, c
    ld a, c
    ld a, c
    adc e
    ld b, e
    inc d
    ld [de], a
    dec d
    ld a, c
    ld h, c
    db $76
    ld l, a
    ld d, h
    inc d
    ld [de], a
    dec d
    ld a, c
    ld a, c
    add l
    ld l, e
    ld h, h
    ld d, $12
    rla
    ld a, c
    ld [hl], b
    ld [hl], c
    ld l, h
    ld [hl-], a
    inc d
    ld [de], a
    dec d
    ld a, c
    ld h, c
    db $76
    ld l, a
    ld h, d
    ld d, $12
    rla
    ld a, c
    ld [hl], b
    ld [hl], c
    ld l, h
    ld [hl], d
    ld d, $12
    rla
    ld a, c
    ld a, c
    ld a, c
    adc c
    ld b, l
    inc d
    ld [de], a
    dec d
    ld a, c
    ld a, c
    add l
    ld l, e
    dec [hl]
    inc d
    ld [de], a
    dec d
    ld a, c
    ld h, c
    db $76
    ld l, a
    ld d, d
    jr jr_00f_6274

    ld a, [de]
    ld a, c
    ld a, c
    ld a, c
    adc d
    ld h, a
    jr jr_00f_627c

    ld a, [de]
    ld a, c
    ld a, c
    ld a, c
    adc d
    ld d, a
    jr jr_00f_6286

    ld c, a
    ld a, c
    ld a, c
    ld h, d
    ld [hl], a
    ld b, [hl]
    jr jr_00f_628e

    ld c, a

jr_00f_6274:
    ld a, c
    ld a, c
    ld h, d
    ld [hl], a
    ld b, h
    jr jr_00f_6296

    ld c, a

jr_00f_627c:
    ld a, c
    ld a, c
    ld h, d
    ld [hl], a
    ld [hl], $49
    ld c, d
    ld c, a
    ld [hl], b
    ld a, b

jr_00f_6286:
    db $76
    ld l, h
    inc [hl]
    ld c, c
    ld c, d
    ld c, a
    ld [hl], b
    ld a, b

jr_00f_628e:
    db $76
    ld l, h
    inc de
    ld c, c
    ld c, d
    ld c, a
    ld a, c
    ld a, c

jr_00f_6296:
    ld a, c
    adc h
    inc hl
    jr jr_00f_62e5

    ld c, e
    ld a, c
    add h
    ld [hl], a
    ld l, h
    ld b, c
    jr jr_00f_62ed

    ld c, e
    ld a, c
    add h
    ld [hl], a
    ld l, h
    ld sp, $4d4c
    ld c, [hl]
    ld a, c
    ld a, c
    adc b
    ld l, e
    daa
    ld c, c
    ld c, d
    ld c, a
    ld [hl], b
    ld a, b
    db $76
    ld l, h
    scf
    ld c, c
    ld c, d
    ld c, a
    ld a, c
    ld a, c
    add l
    ld l, e
    dec h
    ld c, c
    ld c, d
    ld c, a
    ld [hl], b
    ld a, b
    db $76
    ld l, h
    dec d
    ld c, c
    ld c, d
    ld c, a
    ld a, c
    ld a, c
    ld a, c
    adc h
    ld d, $4c
    ld c, l
    ld c, [hl]
    ld a, c
    ld a, c
    ld a, c
    adc l
    jr nz, jr_00f_630e

    dec [hl]
    ld [hl], $79
    ld a, d
    add c
    ld l, h
    inc h
    inc [hl]
    dec [hl]
    ld [hl], $79

jr_00f_62e5:
    ld a, d
    add c
    ld l, h
    inc d
    scf
    jr c, jr_00f_6322

    ld a, c

jr_00f_62ed:
    ld a, c
    ld a, a
    ld h, h
    ld h, $37
    jr c, jr_00f_632a

    ld a, c
    ld a, c
    ld h, e
    ld l, h
    ld [hl], $39
    jr c, jr_00f_6336

    ld a, c
    ld h, l
    ld a, e
    ld l, h
    ld h, e
    add hl, sp
    jr c, jr_00f_633e

    ld a, c
    ld a, c
    ld a, c
    ld e, l
    ld d, e
    dec sp
    jr c, jr_00f_6342

    ld a, c
    ld a, d

jr_00f_630e:
    ld e, a
    ld l, h
    ld d, a
    dec sp
    jr c, jr_00f_634a

    ld a, c
    ld a, d
    ld e, a
    ld l, h
    ld b, a
    dec sp
    jr c, jr_00f_6358

    ld a, c
    ld a, c
    ld a, c
    ld e, [hl]
    rla
    scf

jr_00f_6322:
    jr c, jr_00f_635a

    ld a, c
    ld a, c
    ld a, a
    ld h, h
    daa
    scf

jr_00f_632a:
    jr c, jr_00f_6362

    ld a, c
    ld a, c
    ld h, e
    ld l, h
    ld d, d
    add hl, sp
    jr c, jr_00f_636e

    ld a, c
    ld h, l

jr_00f_6336:
    ld a, e
    ld l, h
    ld h, d
    add hl, sp
    jr c, jr_00f_6376

    ld a, c
    ld a, c

jr_00f_633e:
    ld a, c
    ld e, l
    ld d, [hl]
    dec sp

jr_00f_6342:
    jr c, jr_00f_637a

    ld a, c
    ld a, d
    ld e, a
    ld l, h
    ld b, [hl]
    dec sp

jr_00f_634a:
    jr c, jr_00f_6382

    ld a, c
    ld a, c
    add l
    ld l, e
    rst $38
    inc b
    dec b
    add hl, bc
    nop
    nop
    nop
    nop

jr_00f_6358:
    ld h, b
    dec a

jr_00f_635a:
    ld a, $3f
    ld b, d
    ld h, [hl]
    add b
    ld h, a
    ld h, a
    dec a

jr_00f_6362:
    ld a, $3f
    ld b, d
    ld h, [hl]
    ld a, h
    add e
    ld d, a
    ld b, b
    ld b, c
    ld b, e
    ld a, l
    ld a, [hl]

jr_00f_636e:
    add a
    ld l, h
    inc sp
    ld b, b
    ld b, c
    ld b, e
    ld a, c
    ld a, c

jr_00f_6376:
    ld a, c
    ld d, b
    ld b, b
    ld b, [hl]

jr_00f_637a:
    ld b, a
    ld b, e
    ld a, c
    ld a, c
    add l
    ld l, e
    jr nc, jr_00f_63c6

jr_00f_6382:
    ld b, l
    ld b, e
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld d, [hl]
    ld b, b
    ld b, c
    ld b, e
    ld a, l
    ld a, [hl]
    add a
    ld l, h
    ld h, [hl]
    ld b, [hl]
    ld b, a
    ld b, e
    add h
    ld [hl], h
    ld l, c
    ld l, h
    ld sp, $4544
    ld b, e
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld hl, $4840
    ld b, e
    ld a, c
    ld a, c
    ld a, c
    ld l, d
    ld h, e
    dec a
    ld a, $3f
    ld b, d
    ld h, [hl]
    ld h, a
    add b
    ld [hl], e
    dec a
    ld a, $3f
    ld b, d
    ld h, [hl]
    ld a, h
    add e
    ld d, b
    ld b, [hl]
    ld b, a
    ld b, e
    add h
    ld [hl], h

jr_00f_63c6:
    ld l, c
    ld l, h
    inc hl
    ld b, b
    ld b, c
    ld b, e
    ld a, l
    ld a, [hl]
    add a
    ld l, h
    dec d
    ld b, b
    ld c, b
    ld b, e
    ld a, c
    ld a, c
    ld a, c
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d

jr_00f_6407:
    ld h, h
    add b
    adc b
    sub $6a
    add b
    adc b
    bit 6, c
    add b
    adc b
    ld [hl], b
    ld a, b
    add b
    nop
    cp a
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    rlca
    rst $38
    jr jr_00f_6440

    inc h
    ccf
    ld e, b
    ld a, a
    ld [hl], b
    ld a, a
    sbc $1c
    inc de
    inc e
    ld c, $0f
    inc bc
    add d
    nop
    ld bc, $02ff
    inc bc
    inc b
    rlca
    inc b
    rlca
    add hl, bc
    ld c, $ff
    add hl, bc
    ld c, $09
    ld c, $11

jr_00f_6440:
    ld e, $20
    ccf
    cp $31
    ld l, $2f
    jr nc, @+$19

    jr jr_00f_645a

    add d
    nop
    ld bc, $02ff
    inc bc
    dec b
    ld b, $05
    ld b, $0b
    inc c
    rst $38
    dec bc
    inc c

jr_00f_645a:
    rrca
    ld [$1817], sp
    daa

jr_00f_645f:
    jr c, jr_00f_645f

    ccf
    jr nz, @+$3f

    inc hl
    dec hl
    scf
    ld e, $82
    nop
    inc bc
    rst $38
    dec b
    ld b, $0b
    inc c
    dec bc
    inc c
    rla
    jr @+$01

    ld d, $1b

jr_00f_6477:
    rla
    add hl, de
    scf
    dec sp
    ld e, a
    ld h, b
    or $71
    ld c, [hl]
    ld a, a
    ld e, a
    ld a, a
    jr c, jr_00f_6407

    nop
    ret nz

    rst $38
    and b
    ld h, b
    ret nc

    jr nc, @-$2e

    jr nc, jr_00f_6477

    jr @+$01

    ld l, b
    ret c

    add sp, -$68
    db $ec
    call c, $0af6
    cp $fe
    ld [bc], a
    ld a, [$ec06]

Call_00f_649f:
    inc e
    ldh a, [$82]
    nop
    add b
    rst $38
    ld b, b

jr_00f_64a6:
    ret nz

    and b

jr_00f_64a8:
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, @+$01

    ret nc

    jr nc, @-$0e

    db $10
    add sp, $18
    db $e4
    inc e
    cp $fc
    inc b
    db $fc
    inc b
    inc [hl]
    call z, $82f8
    nop
    add b
    rst $38
    ld b, b
    ret nz

    jr nz, jr_00f_64a6

    jr nz, jr_00f_64a8

    sub b
    ld [hl], b
    rst $38
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    adc b
    ld a, b
    inc b
    db $fc
    cp $8c
    ld [hl], h
    db $f4
    inc c
    ld l, b

jr_00f_64d9:
    sbc b
    ldh a, [$80]
    nop
    cp a
    add b
    ld b, b

jr_00f_64e0:
    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    rst $38
    jr jr_00f_64e0

    inc h
    db $fc
    ld a, [de]
    cp $0e
    cp $f6
    jr jr_00f_64d9

    sbc b
    ld l, b
    sbc b
    ldh a, [$8b]
    nop
    ccf
    sbc $e1
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $30
    inc c
    rst $38
    ld [$0cff], sp
    rst $38
    nop
    cp $7f
    add b
    rst $38
    nop
    ccf
    ret nz

    rst $38
    adc e
    nop
    ld a, [hl]
    cp l
    jp Jump_00f_7fff


    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp l
    ld h, e
    rst $38
    ld b, d
    rst $38
    ld h, e
    rst $38
    nop
    db $fc
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    adc e
    nop
    ld a, [hl]
    cp l
    jp $feff


    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp l
    add $ff
    ld b, d
    rst $38
    add $ff
    nop
    ld a, [c]
    inc bc
    db $fc
    cp $ff
    nop
    adc e
    nop
    db $fc
    ld a, e
    add a
    rst $38
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    rst $28
    jr nc, @+$01

    db $10
    rst $38

jr_00f_6563:
    jr nc, jr_00f_6563

    ld bc, $e3f2
    inc e
    cp $ff
    ccf
    add b
    nop
    and e
    nop
    ld bc, $0302
    rst $38
    ld [bc], a
    inc bc
    inc b
    rlca
    ld a, b
    ld a, a
    add h
    rst $38
    cp $78
    ld a, a
    ld [$070f], sp
    inc b
    inc bc
    add b
    nop
    and e
    nop
    ld bc, $0302
    rst $38
    ld [bc], a
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    sbc h
    rst $38
    ld a, [$e6e5]
    ld a, [bc]
    dec c
    rlca
    nop
    add b
    nop
    and e
    nop
    ld bc, $0302
    rst $38
    ld e, $1f
    ld h, b
    ld a, a
    sbc h
    rst $38
    rst $20
    db $e4
    add sp, $0f
    dec bc
    inc c
    nop
    add b
    nop
    and e
    nop
    ld bc, $1f1e
    rst $38
    ld h, b
    ld a, a
    sbc h
    rst $38
    db $e4
    rst $20
    dec bc
    inc c
    add sp, $0e
    rrca
    ld bc, $8000
    nop
    and e
    nop
    ld bc, $7f7e
    rst $38
    add b
    rst $38
    ld a, [hl]
    ld a, a
    ld [bc], a
    inc bc
    inc b
    rlca
    jp c, $0c0b

    rrca
    inc bc
    nop
    add b
    nop
    and e
    nop
    ld bc, $e3e2
    rst $38
    sbc [hl]
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    inc b
    rlca
    cp $08
    rrca
    inc c
    dec bc
    rlca
    inc b
    inc bc
    add b
    nop
    and e
    nop
    ld bc, $0302
    rst $38
    ld [c], a
    db $e3
    sbc [hl]
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    cp $08
    rrca
    ld a, [bc]
    dec c
    dec b
    ld b, $03
    add b
    nop
    and e
    nop
    ld bc, $0302
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    db $e3
    sbc h
    rst $38
    ld h, b
    ld a, a
    or $18
    rra
    inc c
    rrca
    ld [$8b07], sp
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ccf
    pop bc
    inc bc
    db $fd
    rrca
    ldh a, [$fe]
    scf
    rst $08
    ld e, a
    cp a
    ld hl, sp+$78
    ldh [$8b], a
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, $c1
    rlca
    ld sp, hl
    ld a, e
    add l
    add a
    ld a, b
    ld [$fe7d], a
    rst $38
    ld bc, $8b00
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ccf
    pop bc
    rrca
    pop af
    di
    inc c
    cp $bf
    ret nz

    rst $30
    ld hl, sp+$3c
    ccf
    rlca
    adc e
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ld a, a
    add c
    ccf
    pop bc
    rrca
    ldh a, [$fe]
    db $e3
    inc e
    cp a
    ret nz

    ld [hl], e
    ld a, h
    rrca
    adc e
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ld a, a
    add c
    ccf
    pop bc
    rra
    ldh [$fa], a
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    ld a, a
    adc e
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ld a, a
    add c
    ld a, a
    add c
    ccf
    ret nz

    cp $03
    db $fc
    inc e
    db $e3
    rst $28
    rra
    rst $38
    adc e
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]
    add c
    ld a, a
    add c
    ld a, a
    add c
    dec sp
    call nz, $06fe
    ld sp, hl
    add hl, de
    rst $20
    rst $28
    rra
    rst $38
    adc e
    nop
    rra
    ld l, a
    ld [hl], b
    rst $38
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, [hl]

jr_00f_6708:
    add c
    ld a, a
    add c
    ccf
    pop bc
    inc bc
    db $fc
    cp $1c
    db $e3
    rst $20
    rra
    ld a, a
    rst $38
    ld hl, sp-$75
    nop
    add b

jr_00f_671a:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_6708

    jr jr_00f_671a

    ld [$0cf4], sp
    rst $38

jr_00f_6726:
    call nc, $fcbc
    inc h
    cp $b6
    ei
    dec b
    ld a, [$837d]
    sbc d
    and $7c
    nop
    adc e
    nop
    add b

jr_00f_6738:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_6726

    jr jr_00f_6738

    ld [$0cf4], sp
    rst $38
    call nc, $fcbc
    inc h
    cp $b6
    rst $38
    dec b
    cp $fb
    dec b
    ld a, a
    add c
    sbc $e2
    inc a
    adc e
    nop
    add b

jr_00f_6757:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, @-$16

    jr jr_00f_6757

    ld [$0cf4], sp
    rst $38
    call nc, $fcbc
    inc h
    db $fc
    or h
    cp $06
    cp $fb
    dec b
    rst $38
    ld bc, $06fa
    db $fc
    adc e
    nop
    add b

jr_00f_6776:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, @-$16

    jr jr_00f_6776

    ld [$0cf4], sp
    rst $38
    call nc, $fcbc
    inc h
    db $fc
    or h
    db $fc
    inc b
    cp $fa
    ld b, $ff
    ld bc, $3bc5
    cp $8b
    nop
    add b

jr_00f_6795:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, @-$16

    jr jr_00f_6795

    ld [$0cf4], sp
    rst $38

jr_00f_67a1:
    call nc, $fcbc
    inc h
    db $fc
    or h
    db $fc
    inc b
    ld a, [$02fe]
    dec sp
    db $fd
    rst $38
    ld hl, sp-$75
    nop
    add b

jr_00f_67b3:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_67a1

    jr jr_00f_67b3

    ld [$0cf4], sp
    rst $38

jr_00f_67bf:
    call nc, $fcbc
    inc h
    db $fc
    or h
    ld a, [$fa06]
    sbc e
    ld a, l
    db $fd
    rst $38
    cp $e0
    adc e
    nop
    add b

jr_00f_67d1:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_67bf

    jr jr_00f_67d1

    ld [$0cf4], sp

jr_00f_67dc:
    rst $38
    call nc, $fcbc
    inc h
    ld_long a, $ffb6
    ld bc, $39ea
    rst $00
    cp $f8
    add b
    adc e
    nop
    add b

jr_00f_67ee:
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_67dc

    jr jr_00f_67ee

    ld [$0cf4], sp
    rst $38
    call nc, $fcbc
    inc h
    ld_long a, $ffb6
    ld bc, $7dfa
    add e
    and $fe
    ld hl, sp+$00
    adc e
    nop
    ld bc, $0f0e
    rst $38
    ccf
    ld [hl-], a
    ld e, l
    ld h, [hl]
    ld a, a
    ld b, h
    ld e, a
    ld h, h
    rst $38
    rst $38
    add h
    db $fd
    add [hl]
    ld a, a
    ld b, e
    ccf
    ld [hl-], a
    cp $0f
    inc c
    rlca
    inc b
    dec b
    ld b, $03
    adc e
    nop
    ld c, $1f
    ld de, $3fff
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    inc h
    rra
    inc d
    rst $38
    rra
    inc d
    ccf
    inc h
    ccf
    ld [hl+], a
    ld l, $33
    and d
    dec e
    ld bc, $af00
    nop
    rrca
    rla
    jr jr_00f_6868

    ld de, $1fff
    ld de, $0a0f
    rrca
    ld a, [bc]
    rra
    ld [de], a
    rst $38
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, $23
    ccf
    ld hl, $1de8
    inc de
    ld c, $00
    cp a
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc

jr_00f_6868:
    inc c
    rst $38
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rst $38
    rrca
    ld a, [bc]
    rla
    ld a, [de]
    ld e, $13
    rra
    ld de, $1ffe
    ld de, $101f
    ld c, $09
    rlca
    rst $38
    dec b
    ld b, $07
    inc b
    rlca
    dec b
    dec bc
    dec c
    rst $38
    ld c, $0b
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rst $38
    rra
    ld [de], a
    ld e, $13
    rra
    ld de, $111f
    cp $0f
    ld [$080f], sp
    rlca
    inc b
    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    ld [hl], b
    cp b
    ret z

    adc e
    nop
    rrca
    ccf
    ld [hl-], a
    rst $38
    ld e, a
    ld h, d
    ld a, a
    ld b, h
    ld e, a
    ld h, h
    rst $38
    add h
    rst $38
    db $fd
    add [hl]
    ld e, a
    ld h, a
    ld a, $39
    rra
    db $10
    ld a, [$101f]
    rla
    add hl, de
    ld c, $00
    xor a
    nop
    jr jr_00f_6910

    dec h
    dec sp
    ld h, $ff
    ld a, a
    ld b, d
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ccf
    inc h
    rst $38
    dec a
    ld h, $7f
    ld b, a
    ld a, [hl]
    ld c, c
    ld a, a
    ld d, b
    ld a, [$303f]
    rla
    add hl, de
    ld c, $00
    cp a
    ld a, $df
    pop hl
    ld a, a
    add b
    db $fd

jr_00f_68f6:
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $08
    jr nc, jr_00f_68f6

    ld [$ffff], sp
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ld h, b
    cp $fd
    inc hl
    cp $3e
    db $fc
    ld h, h

jr_00f_6910:
    sbc b
    cp a
    ld e, $7f
    ld h, c
    rst $38
    add b
    db $fd

jr_00f_6918:
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $08
    jr nc, jr_00f_6918

    ld [$ffff], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fe], a
    ld e, [hl]
    or c
    rst $38
    rra
    ld a, a
    sbc c
    and $bf
    ld e, $7f
    ld h, c
    rst $38
    add b
    db $fd
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a

jr_00f_693e:
    rst $38
    nop
    rst $20
    jr jr_00f_693e

    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp b
    cp $ff
    call nz, Call_00f_427f
    ccf
    inc hl
    inc e
    cp a
    add b
    sbc $5e
    rst $38
    ld h, c
    rst $38
    add b
    rst $38
    db $fd
    ld [bc], a

jr_00f_6960:
    rst $38
    ld [bc], a
    rst $20
    jr jr_00f_6960

    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    cp $7f
    adc b
    cp [hl]
    pop de
    db $fd
    di
    ld c, $ff
    cp $3e
    rst $18
    pop hl
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    rst $20
    ld a, [de]
    ei
    inc b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rst $38
    ld [de], a
    di
    ld l, $f3
    ld l, $73
    xor [hl]
    ld a, [$fde6]
    rst $38
    ld a, a
    add b
    nop
    cp a
    ld c, $17
    add hl, de
    rra
    db $10
    rra
    ld de, $1eff
    inc de
    rla
    ld a, [de]
    dec c
    ld c, $0f
    inc c
    rst $38
    rra
    inc d
    rra
    inc d
    dec a
    daa
    ccf
    inc hl

jr_00f_69b3:
    cp $3f
    ld hl, $131d
    ld e, $12
    inc c
    cp a
    ld a, $ff
    pop bc
    rst $38
    nop
    db $fd

jr_00f_69c2:
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $08
    jr nc, jr_00f_69c2

    ld [$ffff], sp
    nop
    rst $38
    nop

jr_00f_69d1:
    rst $38
    add b
    cp $81
    ld a, [$c7bb]
    call c, $e03c
    nop
    cp a
    jr jr_00f_6a1b

    inc h
    ld a, l
    ld b, l
    ld a, a
    ld b, d
    rst $38
    ld a, a
    ld b, d
    ccf
    inc h
    ccf
    inc h
    rra
    inc d
    rst $38
    dec e
    ld d, $3f

jr_00f_69f1:
    daa
    ld a, [hl]
    ld c, c
    ld a, a
    ld d, b
    ld a, [$507f]
    scf
    add hl, sp
    ld e, $00
    xor a
    nop
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    rst $38
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rNR10]
    rst $38
    ret nc

jr_00f_6a0f:
    jr nc, jr_00f_69f1

    jr nz, jr_00f_69b3

    ld h, b
    ld b, b
    ret nz

    and b
    add b
    nop
    xor a
    nop

jr_00f_6a1b:
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    rst $38
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ret nc

jr_00f_6a2d:
    jr nc, jr_00f_6a0f

    jr nz, jr_00f_69d1

    ld h, b
    and b
    ret nz

    nop

jr_00f_6a35:
    xor a
    nop
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    rst $38
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00f_6a2d

jr_00f_6a4d:
    jr nz, jr_00f_6a4d

    and b
    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ret nz

    adc e
    nop
    add b
    ret nz

    ld b, b
    rst $38
    ld h, b
    and b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    cp $fc
    and h
    db $f4
    call z, $98e8
    ld [hl], b
    xor a
    nop
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    rst $38
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]

jr_00f_6a83:
    ldh a, [rNR10]
    rst $38
    ld hl, sp+$18
    ret c

jr_00f_6a89:
    jr z, jr_00f_6a83

    jr z, jr_00f_6a35

    ld e, b
    add sp, -$70
    ldh a, [$60]
    nop
    xor a
    nop
    ld a, $df
    pop hl
    ld a, a

jr_00f_6a99:
    add b
    rst $38
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $08
    jr nc, jr_00f_6a99

    ld [$ffff], sp
    nop
    rst $38

jr_00f_6aa7:
    ldh [$df], a
    jr nc, @+$01

    db $10
    ld a, [$907f]
    db $fd
    db $e3
    ld a, [hl]
    nop
    xor a
    nop
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    rst $38
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rNR10]
    cp $e0
    jr nz, jr_00f_6aa7

    jr nz, jr_00f_6a89

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
    add b
    nop
    nop
    rst $38
    ei
    rst $30
    db $fd
    ld c, $ff
    inc b
    cp $05
    rst $38
    db $fc
    rlca
    db $f4
    rrca
    add sp, $1f
    ld [$faff], sp
    jr @+$01

    cp a
    ld a, a
    ldh [rP1], a
    add b
    nop
    cp a
    inc e
    ld l, $32
    ld e, c
    ld h, a
    ld [hl], c
    ld c, a
    rst $38
    ld h, c
    ld e, a
    ld h, e
    ld e, l
    daa
    add hl, sp
    daa
    add hl, sp
    cp $1c
    inc de
    inc c
    dec bc
    inc b
    rlca
    inc bc
    add b
    nop
    rst $38
    adc b
    rst $30
    sub b
    rst $28
    add c
    rst $38
    and c
    rst $18
    rst $38
    add d
    rst $38
    ld b, e
    ld a, [hl]
    ld b, a
    ld a, d
    daa
    ld a, [hl-]
    ld a, [$1f11]
    inc c
    rrca
    inc bc
    nop
    add b
    nop
    add d
    nop
    inc bc
    rst $38
    ld c, $0d
    ld [de], a
    dec e
    inc hl
    inc a
    inc sp
    inc l
    rst $38
    ld sp, $392e
    ld h, $28
    scf
    inc d
    dec de
    and b
    rrca
    nop
    add b
    nop
    add b
    nop
    add b
    ld bc, $0188
    nop
    add b
    ld bc, $01a3
    inc bc
    inc b
    rlca
    cp $04
    rlca
    inc b
    rlca
    inc bc
    ld [bc], a
    ld bc, $0080
    adc e
    nop
    inc a
    ld e, a
    ld h, e
    rst $38
    or b
    rst $08
    ldh [$9f], a
    jp $c6bc


    cp c
    rst $38
    adc a
    di
    ld c, l
    db $76
    ld a, [hl-]
    dec a
    inc d
    dec de
    rst $38
    jr jr_00f_6b8a

    jr nc, jr_00f_6ba4

    ld sp, $622e
    ld e, l
    rst $38
    ld h, d
    ld e, l
    ld h, h
    ld e, e
    ld b, h
    ld a, e
    ld b, h
    ld a, e
    rst $38
    ld c, b
    ld [hl], a
    ld c, b
    ld [hl], a
    ret z

    rst $30
    xor b

jr_00f_6b8a:
    rst $30
    rst $38
    ld l, b
    or a
    ld h, b
    cp a
    db $f4
    dec de

jr_00f_6b92:
    db $fc
    rrca
    cp $fe
    inc bc
    rst $38
    ld bc, $81ff
    ld a, a
    add b
    nop
    adc e
    nop

jr_00f_6ba0:
    inc bc
    ld b, $07
    rst $38

jr_00f_6ba4:
    ld c, $0b
    inc e
    rla
    inc a
    daa
    ld e, h
    ld h, a
    rst $38
    ld a, h
    ld b, a
    cp d
    rst $00
    cp h
    jp $e09f


    rst $38
    rra
    ldh [rIF], a
    ldh a, [rSCX]
    cp h
    nop
    rst $38
    rst $38
    jr nz, jr_00f_6ba0

    jr nc, jr_00f_6b92

    sbc h
    db $e3
    adc a
    ldh a, [rIE]
    add e
    db $fc
    ld b, b
    rst $38
    pop hl
    rst $18
    ld [hl-], a
    cpl
    cp $1f
    ld a, [de]
    rlca
    ld b, $02
    inc bc
    ld bc, $1ebf
    dec a
    inc hl
    ld b, a
    ld a, b
    ld b, e
    ld a, h
    rst $38
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld hl, $3b3e
    inc a
    rst $38
    ccf
    jr nz, @+$61

    ld h, b
    ld a, h
    ld b, e
    ld [hl], b
    ld c, a
    rst $38
    and b
    rst $18
    add b
    rst $38
    pop bc
    cp [hl]
    add [hl]
    ld sp, hl
    rst $38
    adc b
    rst $30
    sub b
    rst $28
    add b
    rst $38
    and b
    rst $18
    rst $38
    jp Jump_00f_47fc


    ld hl, sp+$27
    ld hl, sp+$17
    ld hl, sp-$01
    xor e
    ld a, h
    or $2f
    db $dd
    ld h, e
    rst $38
    ret nz

    cp $7f
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    add b
    nop
    add d
    nop
    inc a
    rst $38
    ld b, e
    ld a, a
    pop bc
    cp a
    ret nz

    cp a
    ldh [$9f], a
    rst $38
    or b
    rst $08
    ld a, a
    ld b, b
    cp a
    ldh [$b7], a
    ret c

    rst $38
    cpl
    rst $18
    daa
    ret c

    inc hl
    call c, $ec13
    rst $38
    ld de, $89ee
    db $76
    ld [$c4f7], sp
    cp e
    rst $38
    add d
    db $fd
    ld h, c

jr_00f_6c4b:
    sbc $d0
    cpl
    add sp, -$69
    ld a, [$7b74]
    dec c
    ld c, $03
    nop
    add b
    nop
    cp [hl]
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    rst $38
    rst $38
    ld [hl], b
    adc a
    add b
    ld a, a
    rrca
    ldh a, [$30]
    rst $08
    rst $38
    ld b, b
    cp a
    add e
    ld a, h
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    rst $00
    jr c, @+$01

    rst $00
    jr c, jr_00f_6c4b

    inc a
    db $e3
    inc a
    ld a, a
    cp h
    cp $5e
    cp l
    rst $28
    rra
    ccf
    ret nz

    rst $38
    add b
    nop
    xor a
    nop
    ld a, a
    cp $c1
    rst $08
    jr nc, @+$01

    ld [hl], a
    adc b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $03
    rst $38
    inc bc
    adc a
    ld [hl], e
    rst $38
    ld h, a
    sbc e
    ld a, [hl]
    add e
    ld a, a
    add b
    db $fd
    ld b, $ff
    ei
    rlca
    db $fd
    ei
    ld [hl], a
    adc h
    rst $38
    inc b
    cp $8f
    ld [hl], h
    ld b, $fd
    rrca
    rst $38
    ldh a, [$bf]
    inc bc
    add l
    add [hl]
    ld a, e
    db $fc
    rst $38
    nop
    rst $38
    db $dd
    inc sp
    db $dd
    dec sp
    ld [$1b1d], a
    db $ec
    rst $38
    rst $08
    jr nc, @+$01

    nop
    dec a
    add $1b
    rst $20
    rst $38
    dec e
    db $e3
    ccf
    ret nz

    rst $38
    nop
    ccf
    ret nz

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    rst $08
    cp $cb
    ld c, h
    rst $00
    ld b, h
    add d
    add e
    ld bc, $0080
    cp a
    inc a
    ld a, d
    ld b, [hl]
    rst $38
    add c
    ldh a, [$8f]
    rst $38
    ldh [$9f], a
    and b
    rst $18
    jp $67fc


    ld hl, sp-$01
    rst $30
    ld e, b
    db $fc
    ld c, e
    db $f4
    ld c, a
    db $fc
    add a
    rst $38
    db $fd
    ld b, $fb
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_00f_6d3f:
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    rrca
    ldh a, [$80]
    ld a, a
    ld h, b
    sbc a
    rra
    ldh [$fe], a
    nop
    rst $38
    nop
    rst $38
    ld l, b
    sub a
    rst $38
    add b
    nop
    add b
    nop
    cp a
    ret nz

    jr nz, jr_00f_6d3f

    ret nc

    jr nc, jr_00f_6d7a

    add sp, -$01
    inc b
    db $fc
    ld [c], a
    ld e, $fa
    ld b, $fd
    inc bc
    rst $38
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_00f_6d7a:
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
    cp l
    ld b, d
    cp $f8
    add a
    rst $28
    rra
    ld a, b
    add sp, -$08
    add b
    nop
    adc e
    nop
    db $fc
    cp d
    ld b, [hl]
    rst $38
    cp $02
    cp $02
    or $0a
    ld_long a, $ff06
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    rst $38
    ld bc, $61df
    rst $38
    ld h, c
    ld sp, hl
    ld h, a
    rst $38
    push af
    ld l, e
    reti


    ld h, a
    ld sp, hl
    rlca
    cp l
    ld h, e
    rst $38
    jp c, $bee6

    sbc $ed
    inc sp
    rst $38
    ld b, c
    cp $b3
    call $bfc1
    add d
    cp $fc
    cp a
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38
    or b
    ld [hl], b
    ret nc

    or b
    xor b
    ret c

    cp b
    ret z

    rst $38
    db $f4
    inc c
    db $fc
    inc b
    sbc d
    ld h, [hl]
    jp c, $ffe6

    cp d
    add $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    cp $02
    ld a, [$fc06]
    inc b
    ld hl, sp+$08
    rst $38
    ret nc

    jr nc, jr_00f_6e64

    ldh [$b0], a
    ret nc

    ld hl, sp+$08
    cp $f8
    ld [$08f8], sp
    add sp, $18
    ldh a, [$80]
    nop
    add d
    nop

jr_00f_6e15:
    ldh a, [rIE]
    ld c, b
    ld hl, sp+$44
    db $fc
    and h
    ld a, h
    and d
    ld a, [hl]
    rst $38
    and $3a
    ld a, $e2
    ld a, $e2
    dec sp
    rst $20
    rst $38
    rst $38
    dec a
    rst $38
    ld hl, $21df
    cp a
    ld b, c
    rst $38
    rst $38
    ld bc, $03fd
    db $fd

jr_00f_6e37:
    inc bc
    ld a, [$fd06]
    ld [c], a
    ld e, $06
    ld a, [$e41c]
    inc e
    ld a, [$f808]
    jr nc, jr_00f_6e37

    ret nz

    nop
    add d
    nop
    ld bc, $0182
    ccf
    rst $38
    ld h, l
    ld e, e
    call $ccb3
    or e
    call z, $feb3
    call z, $a6b3
    reti


    ld e, c
    ld a, a
    ccf
    and b
    nop
    add b
    rst $18

jr_00f_6e64:
    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    rst $38
    ld d, b
    or b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00f_6e15

    ldh [rP1], a
    adc b
    nop
    ld bc, $0182
    ccf
    rst $38
    ld h, l
    ld e, e
    db $e4
    sbc e
    db $e4
    sbc e
    and $99
    cp $e6
    sbc c
    or e
    call z, Call_00f_7f4d
    ccf
    adc b
    nop
    ld bc, $0182
    rra
    rst $38
    inc hl
    dec a
    ld [hl], e
    ld c, h
    ld a, c
    ld b, [hl]
    ld a, c
    ld b, [hl]
    cp $79
    ld b, [hl]
    ld e, c
    ld h, [hl]
    inc h
    ccf
    rra
    rst $38
    ccf
    ld hl, sp-$01
    push bc
    ld a, [hl]
    add e
    rst $00
    ld a, [hl-]
    rst $38
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    inc b
    rst $38
    inc b
    rst $38
    ld a, [$f90e]
    di
    db $fc
    rst $38
    nop
    add b
    nop
    and b
    nop

jr_00f_6ec2:
    ld bc, $0182
    rra
    rst $38
    dec hl
    dec [hl]
    ld d, d
    ld l, l
    ld d, d
    ld l, l
    ld d, e
    ld l, l
    cp $51
    ld l, a
    ld c, c
    ld [hl], a
    ld hl, $1f3f
    cp a
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ld h, b

jr_00f_6ede:
    and b
    rst $38
    jr nz, jr_00f_6ec2

    jr nz, @-$1e

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    rlca
    ld c, $09
    dec bc
    inc c
    ld de, $ff1e
    ld de, $101e
    rra
    db $10
    rra
    db $10
    rra
    rst $38
    jr nc, jr_00f_6f42

    dec a
    ld l, $7f
    ld b, b
    ld a, a
    ld b, b
    rst $38
    sbc a
    ldh [$87], a
    ld hl, sp-$80
    rst $38
    nop
    rst $38
    rst $38
    ld b, b
    cp a
    jr c, jr_00f_6ede

    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $28
    adc a
    ldh a, [$fe]
    ld c, a
    rst $38
    ld [hl], e
    db $fc
    rst $20
    ld hl, sp+$3f
    add d
    nop
    inc bc
    rst $18
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    rst $38
    ld [$080f], sp
    rrca
    jr jr_00f_6f5d

    inc l
    scf
    rst $38
    ccf

jr_00f_6f42:
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    sbc a
    ldh [rIE], a
    add e
    db $fc
    add b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    rst $38
    inc a
    jp $f807


    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_00f_6f5d:
    rst $38
    sub b
    rst $28
    adc a
    ldh a, [rSCX]
    db $fd
    ld_long a, $ff22
    ld a, [c]
    rst $38
    rst $28
    add e
    rst $38
    add e
    db $fc
    add b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    rst $38
    inc a
    jp $f807


    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    sub b
    rst $28
    adc a
    ldh a, [rSCX]
    db $fd
    cp $22
    rst $38
    ld [de], a
    rst $38
    ld a, a
    rst $38
    jp $0082


    ld c, $ff
    dec e
    inc de
    daa
    jr c, jr_00f_6fbe

    jr c, jr_00f_6fc0

    jr c, @+$01

    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc sp
    inc a
    rst $38
    ld d, a
    ld a, b
    ld a, a
    ld b, b
    cp [hl]
    pop bc
    sbc a
    ldh [rIE], a
    add a
    ld hl, sp+$01
    cp $00
    rst $38
    ld b, b
    cp a
    rst $38
    ld sp, $0fce
    ldh a, [rSB]
    cp $00
    rst $38

jr_00f_6fbe:
    rst $38
    nop

jr_00f_6fc0:
    rst $38
    sub c
    xor $8f
    ldh a, [$c3]
    ld a, h
    cp $e0
    ccf
    ld a, b
    sbc a
    cp a
    rst $00
    rst $38
    rst $38
    rst $20
    add hl, de
    rst $38
    nop
    ld a, a
    add b
    ld a, $c1
    rst $38
    ccf
    pop bc
    ld a, a
    add c
    rst $38
    ld bc, $817e
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp $ff
    ret nz

    cp a
    ld h, b
    ldh [$3f], a
    rst $38
    add b
    nop
    cp a
    ld bc, $8283
    rst $20
    ld h, h
    db $dd
    ld a, $ff
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
    ld [bc], a
    cp $03
    rst $38
    inc bc
    adc l
    ld [hl], e
    rst $38
    rst $20
    add hl, de
    rst $38
    nop
    ld a, a
    add b
    ld a, $c3
    rst $38
    dec a
    jp $817e


    rst $38
    nop
    ld a, a
    add b
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp $ff
    ret nz

    cp a
    ld h, b
    ldh [$3f], a
    rst $38
    add d
    nop
    add a
    rst $38
    rst $08
    ld c, b
    rst $38
    jr nc, jr_00f_70b5

    sbc h
    ld a, a
    add b
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    rst $38
    ld a, a
    add c
    rst $38
    ld bc, $39c6
    di
    inc c
    rst $38
    rst $38
    nop
    rra
    ldh [rIF], a
    pop af
    ld c, $f1
    rst $38
    rra
    ldh [rIE], a
    nop
    rra
    ldh [rIF], a
    ldh a, [rIE]
    rrca
    ldh a, [$7f]
    ld hl, sp-$41
    call nz, $02ff
    cp $ff
    ld [bc], a
    ld [c], a
    rra
    add a
    ld a, a
    rst $38
    and b
    nop
    ld bc, $0182
    rrca
    rst $38
    dec d
    dec de
    ld a, [hl-]
    dec h
    ld [hl-], a
    dec l
    inc sp
    dec l
    cp $33
    dec l
    add hl, hl
    scf
    inc de
    rra
    rrca
    add b
    nop
    cp a
    ld bc, $c2c3
    cp l
    ld a, [hl]
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
    ld [$fbff], sp
    inc c
    rst $38
    inc c
    scf
    call z, Call_00f_649f
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    inc c
    rst $30
    rrca
    rst $38
    ei
    rlca
    rst $38
    nop
    rst $38
    nop

jr_00f_70b5:
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
    ld a, [c]
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    or $2a
    db $fd
    inc bc
    dec a
    jp $e7d9


    rst $38
    ld sp, hl
    rst $20
    db $fd
    db $e3
    rst $38
    pop hl
    db $dd
    db $e3
    rst $38
    add hl, sp
    rst $00
    ld a, [$fa06]
    ld b, $f4
    inc c

jr_00f_70e1:
    cp $ec

jr_00f_70e3:
    inc e
    cp d
    db $76
    cp $e2
    cp $80
    nop
    cp a
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    ldh a, [rNR10]
    ret z

    jr c, jr_00f_70e1

    jr jr_00f_70e3

    jr @+$01

    db $f4
    ld c, h
    call c, $fa64
    ld h, [hl]
    cp d
    ld h, [hl]
    rst $38
    or $2a
    db $fd
    inc bc
    db $fd
    inc bc
    reti


    scf
    rst $38
    jp hl


    rst $30
    db $dd
    db $e3
    rst $38
    ld bc, $03fd
    rst $38
    ld sp, hl
    rlca
    ld a, [$fa06]
    ld b, $f4
    inc c

jr_00f_7120:
    cp $ec
    inc e
    cp d
    db $76
    cp $e2
    cp $80
    nop
    cp a
    add b
    ret nz

    ld b, b

jr_00f_712e:
    and b
    ld h, b
    ldh [rNR41], a
    rst $38
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_00f_7120

    jr jr_00f_712e

    inc l
    rst $38
    ld l, h
    or h
    ld a, [$deb6]
    or d
    ld_long a, $ff96
    db $fd
    inc bc
    db $fd
    inc bc
    ld l, a
    sbc c
    rst $30
    ld sp, hl
    rst $38
    ld l, a
    pop af
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    rst $38
    cp $02
    ld a, [$f406]
    inc c
    add sp, $18
    xor $b0
    ld [hl], b
    ldh [$f0], a
    sub b
    ldh a, [rIE]
    add a
    ld hl, sp+$01
    cp $00
    rst $38
    ld b, b
    cp a
    rst $38
    ld sp, $0fce
    ldh a, [rSB]
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    sub c
    xor $8f
    ldh a, [$c3]

jr_00f_7180:
    ld a, h
    cp $e0
    ccf
    ld a, b
    sbc a
    cp a
    rst $00
    rst $38
    add d
    nop
    ldh [rIE], a
    ret nc

    jr nc, jr_00f_7180

    db $10
    ldh a, [rNR10]
    add sp, $18
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    add h
    rst $38
    cp h
    call nz, $c6fa
    ld [hl], d
    adc $e6
    ld e, d
    rst $38
    db $fd
    inc bc
    ld sp, hl
    rlca
    or c
    ld l, a
    pop de
    rst $28
    rst $38
    cp c
    rst $00
    rst $38
    ld bc, $07f9
    pop af
    rrca
    rst $38
    ld a, [c]
    ld c, $fa
    ld b, $fe
    ld e, $bd
    ld h, e
    cp $7f
    pop bc
    rst $38
    add c
    pop hl
    sbc a
    cp $00

jr_00f_71cb:
    rst $38
    ld bc, $0300
    ld bc, $031f
    jr c, jr_00f_71f3

    rst $38
    ccf
    inc e
    cpl
    jr jr_00f_7249

    jr nc, jr_00f_71cb

    ld [hl], b
    rst $38
    rst $20
    ld a, b
    ld h, b
    ccf
    jr z, jr_00f_7203

    inc a
    rra
    push de
    inc a
    rra
    inc bc
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    add d

jr_00f_71f3:
    nop
    ld hl, sp-$80
    nop
    adc e
    nop
    ld bc, $0302
    rst $38
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    inc b

jr_00f_7203:
    dec bc
    inc c
    rst $38
    rrca
    ld [$080f], sp
    ld d, $19
    ld d, $19
    rst $38
    rra
    ld de, $111f
    rra
    ld de, $111e
    rst $38
    ld d, $19
    rla
    jr @+$11

    ld [$080f], sp
    rst $38
    dec bc
    inc c
    rlca
    inc b
    dec b
    ld b, $02
    inc bc
    and b
    ld bc, $8b00
    nop
    ld bc, $0302
    rst $38
    inc b
    rlca
    ld [$090f], sp
    ld c, $11
    ld e, $ff
    inc de
    inc e
    inc de
    inc e
    ld [hl+], a
    dec a
    ld hl, $ff3e
    inc hl
    inc a
    daa
    jr c, jr_00f_7270

jr_00f_7249:
    jr c, jr_00f_727a

    jr nc, @+$01

    cpl
    jr nc, @+$2f

    ld [hl-], a
    dec e
    rra
    ld [de], a
    rra
    cp $0f
    inc c
    rrca
    ld [$080f], sp
    rlca
    add b
    nop
    add b
    nop
    rst $38
    cpl
    jr nc, @+$1f

    ld [de], a
    dec e
    ld e, $11
    ld e, $ff
    ld [$080f], sp
    rrca
    inc e

jr_00f_7270:
    rla
    ccf
    inc hl
    rst $38
    ld a, $21
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_00f_727a:
    ld a, [hl]
    ld b, c
    ld a, [$417e]
    dec a
    inc hl
    ld e, $00
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0706
    dec bc
    inc c
    rra
    db $10
    rst $38
    ccf
    jr nz, @+$81

    ld b, c
    rst $38
    add e
    ld a, e
    add a
    rst $38
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $38
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0607
    ld e, $19
    dec sp
    daa
    rst $38
    ld a, a
    ld c, a
    rst $38
    sbc a
    rst $18
    ccf
    rst $38
    ccf
    rst $30
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    di
    ccf
    db $ed
    ld e, $ff
    rst $38
    adc b
    ld a, h
    ld [hl], e
    add hl, hl
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, jr_00f_7319

    dec sp
    ld de, $111e
    ld e, $fa
    ld [$060f], sp
    rlca
    ld bc, $af00
    nop
    ld a, h
    sbc l
    db $e3
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld b, $ff
    ld b, $ff
    ei
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    rst $38

jr_00f_7319:
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
    ldh [rIE], a
    db $10
    cp $ff
    ld [$09fe], sp
    jp hl


    rra
    rst $38
    add b
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    dec e
    db $e3
    rst $38
    rst $38
    cp $57
    ret c

    ld d, a
    ret c

    adc e
    adc h
    ld a, [$8c8b]
    dec b
    ld b, $03
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    rrca
    ld [hl], e
    ld a, h
    rst $38
    cp h
    jp $0ff7


    rst $18
    ccf
    cp a
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add e
    rst $38
    add b
    nop
    add b
    nop
    cp a
    db $fc
    ei
    rlca
    or $f9
    db $fd
    cp $c0
    cp $ff
    adc a
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    cp $81
    cp $ff
    ld bc, $03ff
    db $fd
    ld [bc], a
    cp $06
    cp $ff
    rra
    rst $38
    ld [hl], a
    ld hl, sp-$41
    ret nz

    di
    inc c
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [c]
    ld a, a
    add b
    nop
    rst $38
    nop
    adc e
    nop
    add b
    ld b, b
    ret nz

    db $fd
    and b
    ld h, b
    ldh [rNR41], a
    sub b
    ldh a, [$d0]
    rst $38
    ld l, b
    ret c

    xor b
    ld e, b
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $18
    rst $38
    add sp, $18
    ldh a, [rNR10]
    ret c

    jr c, @-$12

    inc [hl]
    cp $be
    ld h, d
    ld a, [hl]
    jp nz, $86fa

    db $fc
    add b
    nop
    add b
    nop
    rst $38
    add sp, $18
    add sp, $18
    ldh a, [rNR10]
    ret nc

jr_00f_7407:
    jr nc, jr_00f_7407

    ldh [rNR41], a
    and b
    ld h, b
    ld b, b
    ret nz

    add b
    rst $18
    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ld a, [$20e0]
    and b
    ld h, b
    ret nz

    nop
    add b

jr_00f_7420:
    nop
    add b
    nop
    adc e
    nop
    ldh [$f8], a
    jr jr_00f_7420

    call c, $f6e4
    ld a, [$fbfe]
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    cp $fa
    cp $fa
    ld a, [c]
    cp $ff
    db $fc
    db $f4
    db $e4
    db $fc
    ret c

    add sp, -$78
    ld hl, sp-$02
    db $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    rst $38
    add b
    nop
    add b
    nop
    adc e
    nop
    add b
    ld b, b
    ret nz

    rst $30
    ret nz

    ld b, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    rst $38
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    db $fd
    ld h, b
    and b
    ld h, b
    and b
    ld b, b
    ret nz

    ld b, b
    ldh [$c0], a
    ld b, b
    add b
    add d
    nop
    rst $38
    rst $38
    ccf
    ret nz

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
    cp $01
    rst $38
    nop
    cp $01
    pop af
    rrca
    ld a, [$7e8e]
    ld [hl], b
    ldh a, [$80]
    nop
    add d
    nop
    ld bc, $02ff
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rst $38
    cpl
    jr nc, jr_00f_74ed

    jr nz, jr_00f_750f

    ld h, b
    ld a, a
    ld b, c
    rst $38
    cp l
    jp $c7bb


    cp $87
    or $8f
    rst $38
    cp $8f
    xor $9f
    xor a
    rst $18
    ld a, l
    ld e, [hl]
    rst $38
    ccf
    jr c, jr_00f_74e5

    inc de
    add hl, hl
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, @+$26

    dec sp
    ld de, $121f
    rra
    ld a, [$0e0d]
    dec b
    ld b, $03
    nop
    rst $38
    cp $8f
    xor $9f
    xor a
    rst $18

jr_00f_74e5:
    ld a, l
    ld e, [hl]
    rst $38
    ccf
    jr c, jr_00f_7507

    inc de
    add hl, hl

jr_00f_74ed:
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, jr_00f_7518

    dec sp
    ld de, $111e
    ld e, $fa
    ld [$060f], sp
    rlca
    ld bc, $ff00
    cp $8f
    xor $9f
    xor a
    rst $18

jr_00f_7507:
    ld a, l
    ld e, [hl]
    rst $38
    ccf
    jr c, @+$1e

    inc de
    add hl, hl

jr_00f_750f:
    ld [hl], $23
    inc a
    rst $38
    ccf
    inc a
    ld e, e
    ld h, a
    ld a, [hl]

jr_00f_7518:
    ld b, c
    ld a, a
    ld b, b
    cp $5f
    ld h, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_00f_7542

    add b
    nop
    adc e
    nop
    ld bc, $0203
    rst $38
    rlca
    inc b
    rrca
    ld [$101f], sp
    cpl
    jr nc, @+$01

    ccf
    jr nz, jr_00f_7596

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    rst $38
    ld a, [hl]
    ld b, e
    ld a, d
    ld b, a
    ld d, a

jr_00f_7542:
    ld l, a
    dec a
    ld l, $ff
    rra
    jr @+$1e

    inc de
    add hl, hl
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, jr_00f_7576

    dec sp
    ld de, $121f
    rra
    ld a, [$0e0d]
    dec b
    ld b, $03
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ld bc, $0706
    dec bc
    inc c
    rst $38
    rla
    jr jr_00f_759c

    jr nc, @+$41

    jr nz, jr_00f_75d0

    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a

jr_00f_7576:
    ld b, b
    ld a, a
    ld b, e
    ld d, l
    ld l, [hl]
    rst $38
    ccf
    jr c, jr_00f_759b

    inc de
    add hl, hl
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, @+$26

    dec sp
    ld de, $121f
    rra
    ld a, [$0e0d]
    dec b
    ld b, $03
    nop
    cp a
    inc bc

jr_00f_7596:
    inc e
    rra
    ld l, a
    ld [hl], b
    cp a

jr_00f_759b:
    ret nz

jr_00f_759c:
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    rst $30
    rrca
    rst $28
    rra
    rst $38
    ld sp, hl
    ld a, $e7
    ld a, b
    rst $08
    ldh a, [$8f]
    ldh a, [rIE]
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    rst $38
    rrca
    rst $38
    ld [hl], a
    ld hl, sp-$41
    ret nz

    di
    inc c
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    ld a, a
    add b
    rst $38
    ld a, [hl]
    cp a
    pop bc

jr_00f_75d0:
    rst $38
    nop
    ld a, [$00ff]
    cp $01
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld [hl], a
    ld hl, sp-$41
    ret nz

    di
    inc c
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $18
    daa
    rst $38
    ld a, a
    sbc b
    rst $38
    jr nz, @+$01

    ld b, b
    cp b
    rst $00
    cp $e0
    sbc a
    ret nz

    cp a
    add c
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    ld [hl], a
    ld hl, sp-$41
    ret nz

    di
    inc c
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    ld a, a
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38

jr_00f_7616:
    jr nz, jr_00f_7616

    rst $38
    db $10
    ldh a, [$1f]
    rst $18
    ccf
    ldh [$82], a
    nop
    rlca
    rst $38
    dec sp
    inc a
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    rst $38
    pop de
    ld a, $a3
    ld a, h
    rst $00
    ld hl, sp+$06
    ld sp, hl
    cp a
    cp $fd
    inc bc
    rst $38
    nop
    rst $20
    rra
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    ei
    rlca
    cp $03
    cp $ed
    scf
    rst $38
    scf
    db $db
    scf
    rst $38
    add b
    nop
    add d
    nop
    rrca
    rst $38
    ld [hl], a
    ld a, b
    cp a
    ret nz

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
    rst $28
    rra
    ld [hl], a
    ld hl, sp-$41
    ret nz

    di
    inc c
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    ld a, a
    add b
    rst $38
    ld a, [hl]
    cp a
    pop bc
    rst $38
    nop
    ld a, [$00ff]
    cp $01
    rst $38
    nop
    cp a
    cp $fd
    inc bc
    rst $38
    nop
    rst $20
    rra
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    ei
    rlca
    cp $03
    cp $d9
    ld l, a
    rst $38
    ld l, l
    or a
    ld l, l
    rst $38
    rst $38
    ccf
    ret nz

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
    cp $01
    rst $38
    nop
    cp $01
    pop af
    adc a
    ld a, [$fe8f]
    rst $30
    ld hl, sp-$01
    nop
    rst $38
    ccf
    ret nz

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
    add b
    rst $38
    cp $41
    rst $38

jr_00f_76e6:
    jr nz, jr_00f_76e6

    ld hl, $af71
    cp $2f
    rst $38
    ld [hl], a
    ld sp, hl
    rst $18
    pop hl
    cp $ff
    ccf
    ret nz

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
    cp $01
    rst $38
    nop
    cp $01
    pop af
    rrca
    cp $8f
    ld a, [hl]
    rst $30
    db $f4
    dec b
    ld b, $03
    add d
    nop
    db $fc
    rst $38
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    rra
    ld a, a
    rst $38
    add a
    rst $38
    ld a, e
    add a
    cp $d9
    ld l, a
    rst $38
    ld l, l
    or a
    ld l, l
    rst $38
    cp a
    cp $fd
    inc bc
    rst $38
    nop
    rst $20
    rra
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    ei
    rlca
    cp $03
    cp $b5
    db $db
    rst $38
    reti


    ld l, a
    reti


    rst $38
    add b
    nop
    add d
    nop
    ldh a, [rIE]
    rst $28
    rra
    cp $01
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
    ld a, a
    rst $38
    adc l
    ld bc, $0302
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $07
    inc b
    rst $38
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $f6
    dec b
    ld b, $03
    ld [bc], a
    inc bc
    ld bc, $00af
    add b
    ldh [$60], a
    ld d, b
    or b
    rst $18
    add sp, -$28
    add sp, -$28
    add sp, -$30
    ldh a, [$fe]
    ldh a, [$d0]
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    add d
    nop
    ld hl, sp-$01

jr_00f_779f:
    and $1e
    db $fd
    inc bc
    sbc a
    ld h, c
    di
    dec c
    rst $38
    ld sp, hl
    rlca
    ld a, [hl-]
    add $ca
    ld [hl], $e4
    inc e
    rst $38
    ld l, b
    sbc b
    sub b
    ld [hl], b
    ld h, b
    ldh [$f0], a
    sub b
    ld a, [$10f0]
    ret nc

    jr nc, jr_00f_779f

    nop
    rst $38
    and $1e
    db $fd
    inc bc
    sbc a
    ld h, c
    di
    dec c
    rst $38
    ld sp, hl
    rlca
    ld a, [hl-]
    add $ca
    ld [hl], $e4
    inc e
    cp $68
    sbc b
    sub b
    ld [hl], b
    ld h, b
    ldh [$80], a
    add b
    nop
    rst $38
    and $1e
    db $fd
    inc bc
    sbc a
    ld h, c
    di
    dec c
    rst $38
    ld sp, hl
    rlca
    ld a, [hl-]
    add $ca
    ld [hl], $e4
    inc e
    rst $38
    ld l, b
    sbc b
    cp h
    ld a, h
    ld a, [$fec6]
    ld [bc], a

jr_00f_77f7:
    cp $fe
    ld [bc], a
    ld a, [c]
    ld c, $8c
    ld a, h
    ldh a, [$80]
    nop
    cp a
    add b
    ld h, b
    ldh [$d8], a
    jr c, @-$0a

    inc c
    db $dd
    ld [$faf6], a
    or $fa
    or $fe
    db $f4
    db $ec
    ld hl, sp-$28
    jr nz, jr_00f_77f7

    ld hl, sp-$01
    add b
    nop
    ret nz

    add b
    ld hl, sp-$40
    inc e
    ld hl, sp-$01
    inc a
    ld hl, sp-$64
    ld a, b
    add [hl]
    ld a, h
    add a
    ld a, [hl]
    rst $38
    rlca
    cp $06
    db $fc
    inc e
    ld hl, sp+$3c
    ld hl, sp-$2b
    inc a
    ld hl, sp-$40

jr_00f_7837:
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    ldh [$d8], a
    jr c, jr_00f_7837

    inc c
    rst $38
    ld a, [$fd06]
    inc bc
    rst $38
    ld bc, $f9f7
    rst $38
    and b
    ld a, a
    ldh [$3f], a
    rst $10
    ccf
    cp l
    sbc $ff
    ld a, a
    ld a, b
    inc e
    inc de
    add hl, hl
    ld [hl], $23
    inc a
    rst $38
    daa
    jr c, jr_00f_7887

    dec sp
    ld de, $111e
    ld e, $fa
    ld [$060f], sp
    rlca
    ld bc, $0000
    rst $38
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    rst $38
    jr nz, jr_00f_78bb

    jr nz, jr_00f_78bd

    jr nz, jr_00f_78bf

    jr nz, jr_00f_78c1

    rst $38
    jr nz, jr_00f_78c4

    jr nz, jr_00f_78c6

jr_00f_7887:
    jr nz, jr_00f_78c8

    ld de, $fe1f
    ld d, $1f
    dec bc
    inc c
    rrca
    ld [$8007], sp
    nop
    cp a
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    db $fc
    rlca
    ei
    rlca
    ei
    ld b, $f9
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    ld d, b
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    add b
    rst $38

jr_00f_78bb:
    add b
    rst $38

jr_00f_78bd:
    add b
    rst $38

jr_00f_78bf:
    add b
    rst $38

jr_00f_78c1:
    rst $38
    add b
    rst $38

jr_00f_78c4:
    add b
    rst $38

jr_00f_78c6:
    ld b, c
    ld a, a

jr_00f_78c8:
    ld b, c
    ld a, a
    cp $23
    ld a, $1b
    ld e, $06
    rlca
    ld bc, $fcff
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    rrca
    cp $e1
    rra
    add d
    ld a, a
    cp $ff
    ld bc, $17ff
    jr @+$21

    jr jr_00f_791a

    jr @+$31

    jr c, @+$01

    daa
    inc a
    inc hl
    ccf
    jr nz, jr_00f_7944

    jr nz, jr_00f_7946

    rst $38
    jr nz, jr_00f_7949

    jr nz, jr_00f_794b

    jr nz, jr_00f_794d

    ld de, $fe1f
    ld d, $1f
    dec bc
    inc c
    rrca
    ld [$8007], sp
    nop

jr_00f_791a:
    adc e
    nop
    ld bc, $0302
    rst $38
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    rst $38
    db $10
    rra
    jr nz, jr_00f_796c

    jr nz, jr_00f_796e

    inc l
    inc sp
    add b
    nop
    adc e
    nop
    inc bc
    inc b
    rlca
    rst $38
    ld [$3e0f], sp
    ccf
    ld e, l
    ld h, e
    cp [hl]
    pop bc
    rst $38
    cp $81

jr_00f_7944:
    db $fc
    add e

jr_00f_7946:
    or b
    rst $08
    ret nz

jr_00f_7949:
    rst $38
    rst $38

jr_00f_794b:
    and b
    ld h, b

jr_00f_794d:
    and b
    ld h, b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    rst $38
    adc b
    ld a, b
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$01
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR23]
    ld hl, sp-$02
    inc a
    db $e4
    ld a, [hl]
    jp nz, $82fe

jr_00f_796c:
    db $fc
    rst $38

jr_00f_796e:
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    rst $38

jr_00f_7977:
    ld bc, $01fe
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
    pop af
    cp $fe
    ld sp, hl
    ld c, $ff
    inc b
    rst $38
    rlca
    ld hl, sp-$80
    nop
    xor a
    nop
    ret nz

    jr nz, jr_00f_7977

    db $10
    ldh a, [rIE]
    ld [hl], b
    sub b
    ld l, h
    call c, $da66
    ld b, a
    cp c
    rst $38
    inc bc
    db $fd
    add e
    ld a, l
    pop hl
    rra
    or $0e
    rst $38
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$01
    inc bc

jr_00f_79b6:
    db $fc
    inc bc
    db $fc
    ld bc, $3ffe
    cp $ff
    ld e, l
    db $e3
    rst $38
    add c
    rst $38
    ld bc, $1de3
    cp $81
    ld a, a
    inc bc
    cp $0f
    rst $38
    ldh a, [$bf]
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_00f_79b6

    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR32]
    db $fc
    rst $38
    ld a, [hl-]
    and $7e
    jp nz, $82fe

    ld [hl], d

jr_00f_79e7:
    adc [hl]
    cp $c2
    ld a, $84
    ld a, h
    jr jr_00f_79e7

    ldh [rIE], a
    rst $08
    jr nc, @-$17

    jr @-$17

    jr @-$3b

    inc a
    rst $38
    and c
    ld a, [hl]
    pop bc
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
    ldh a, [rIE]
    cp $f8
    rrca
    db $fd
    ld b, $ff
    rlca
    ld hl, sp-$75
    nop
    ld bc, $0706
    rst $38
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_00f_7a60

    rst $38
    jr nz, jr_00f_7a63

    jr nz, jr_00f_7a65

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    sbc b
    rst $20
    add d
    nop
    inc bc
    rst $38
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    rst $38
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rst $38
    db $10
    rra
    jr nz, jr_00f_7a8c

    jr nz, jr_00f_7a8e

    ld hl, $ff3e
    inc hl
    inc a
    inc hl
    inc a
    ld b, c
    ld a, [hl]
    ld b, d
    ld a, a
    rst $38
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_00f_7a60:
    ld a, a
    ld b, b
    ld a, a

jr_00f_7a63:
    rst $38
    ld b, b

jr_00f_7a65:
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_00f_7aab

    cp $21
    ccf
    ld [de], a
    rra
    rrca
    ld c, $03
    adc e
    nop
    ld bc, $0706
    rst $38
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_00f_7ac1

    rst $38
    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_00f_7ac8

    jr nz, jr_00f_7aca

    rst $38

jr_00f_7a8c:
    ld b, b
    ld a, a

jr_00f_7a8e:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, a
    ld a, b
    adc a
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [rIE]
    adc a
    ld hl, sp-$79
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

jr_00f_7aab:
    add b
    rst $38
    ld b, c
    ld a, a
    cp $46
    ld a, a
    dec hl
    inc a
    rra
    jr @+$09

    xor a
    nop
    inc bc
    inc b
    rlca
    ld [$ff0f], sp
    db $10
    rra

jr_00f_7ac1:
    db $10
    rra
    jr nz, jr_00f_7b04

    jr nz, jr_00f_7b06

    rst $38

jr_00f_7ac8:
    inc hl
    inc a

jr_00f_7aca:
    daa
    jr c, jr_00f_7af4

    jr c, jr_00f_7b16

    ld a, b
    rst $38
    ld b, a
    ld a, b
    ld b, e
    ld a, h
    add c
    rst $38
    add b
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    and b
    rst $38
    ret c

    cp a

jr_00f_7af4:
    cp $f7
    adc a
    cp a
    ret nz

    ld e, [hl]
    ld h, c
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00f_7b04:
    nop
    rst $38

jr_00f_7b06:
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
    db $fc
    inc bc
    ld sp, hl

jr_00f_7b16:
    rlca
    cp $f1
    rrca
    jp $ce3e


    db $fd
    ccf
    adc e
    nop
    ldh a, [$0c]
    db $fc
    rst $38
    adc $32
    rst $28
    ld a, l
    rst $28
    ld a, l
    ld h, [hl]
    sbc c
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    adc e
    nop
    ld hl, sp+$06
    cp $ff
    dec de
    push hl
    dec e
    rst $28
    dec e
    rst $28
    dec c
    ld a, [c]
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    rrca
    ldh a, [rIF]
    ldh a, [$6f]
    sub b
    rst $38
    nop
    rst $38
    rst $30
    ld [$08ff], sp
    ei
    inc c
    di
    inc e
    rst $38
    pop hl
    cp $01
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
    ld a, h

jr_00f_7b79:
    rst $38
    cp $bf
    jp nz, $01ff

    rst $38
    ld bc, $8bff
    nop
    ldh a, [$0c]
    db $fc

jr_00f_7b87:
    rst $38
    ld h, [hl]
    sbc d
    ld [hl], a
    cp a
    ld [hl], a
    cp a
    ld [hl], $c9
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIE], a
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    cp a
    ld b, b
    rst $18
    jr nz, jr_00f_7b87

    jr nz, jr_00f_7b79

    jr nc, @+$01

    rst $00
    ld a, b
    add e
    db $fc
    inc bc
    db $fc
    ld bc, $fffe
    ld bc, $01fe
    cp $01
    cp $f1
    cp $fe
    ld sp, hl
    ld c, $fe
    dec b
    rst $38
    rlca
    db $fc
    cp a
    ldh a, [$dc]
    inc l
    cp $7a
    db $eb
    dec a
    rst $38
    ld h, a
    sbc c
    nop
    rst $38
    ld e, $e1
    rst $38
    add b
    rst $38
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rst $38
    ld b, b
    ld a, a
    ret nz

jr_00f_7be4:
    rst $38
    add b
    ld a, a
    add b
    rst $38
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIE]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]

jr_00f_7bf7:
    ldh a, [rIF]

jr_00f_7bf9:
    ldh a, [rIE]

jr_00f_7bfb:
    rrca
    ldh a, [rNR34]
    pop hl
    jr nz, @+$01

    ret c

    rst $18
    cp $9f
    sub a
    adc a
    adc b
    add a
    add [hl]
    ld bc, $60ff
    and b
    ld [hl], b
    ret nc

    ld [hl], b
    ret nc

    jr nc, jr_00f_7be4

    rst $38
    jr nz, jr_00f_7bf7

    jr nz, jr_00f_7bf9

    jr nz, jr_00f_7bfb

    ld b, b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$e8]
    sbc b
    ld hl, sp+$08
    cp $f8
    ld [$38c8], sp
    db $10
    ldh a, [$e0]
    rst $38
    rrca
    ld [$181f], sp
    rra
    jr jr_00f_7c4d

    inc e
    rst $38
    inc hl
    ccf
    jr nz, @+$41

    jr nz, jr_00f_7c7d

    jr nz, @+$41

    rst $38
    jr nz, jr_00f_7c82

    jr nz, @+$41

    jr nz, @+$41

    ld de, $fe1f
    ld d, $1f
    dec bc

jr_00f_7c4d:
    inc c
    rrca
    ld [$8007], sp
    nop
    and e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$0e

    db $10
    rst $38
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    cp $02
    rst $38
    cp $02
    cp $02
    cp $02
    cp $02
    rst $38

jr_00f_7c7d:
    ld a, [$fc06]
    inc b
    db $f4

jr_00f_7c82:
    inc c
    ld hl, sp+$08

jr_00f_7c85:
    cp $f8
    jr jr_00f_7c85

    inc h
    ld a, h
    call nz, $80f8
    nop
    add d
    nop
    add b
    rst $38
    ld b, b
    ret nz

    jr nz, @-$1e

    ret nc

Call_00f_7c98:
    jr nc, jr_00f_7c82

    jr @+$01

    db $f4
    inc c
    ld a, [c]
    ld c, $fa
    ld b, $fb
    dec b
    rst $38
    ei
    dec b
    ld sp, hl
    rlca
    cp $02
    cp $02
    rst $38
    cp $02
    ld a, [$fa06]
    ld b, $fa
    ld b, $ff
    db $f4
    inc c
    ld a, [c]
    ld c, $ee
    ld a, [de]
    sbc $32
    add sp, -$5c
    ld a, h
    ld hl, sp+$00
    add b
    nop
    xor a
    nop
    add b
    ld h, b
    ldh [$9e], a
    ld a, [hl]
    rst $38
    call $ef33
    ld de, $09f7
    rst $30
    add hl, bc
    rst $38
    ld a, [$fa06]
    ld b, $fc
    inc b
    db $fc
    inc b
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    rst $38
    pop af
    rrca
    pop af
    rrca

jr_00f_7ced:
    pop hl
    rra
    jp nz, $ff3e

    add d
    ld a, [hl]
    inc b
    db $fc
    ld [$30f8], sp
    ldh a, [$fe]
    add sp, -$28
    ld hl, sp+$08
    add sp, $18
    ldh a, [$82]
    nop
    inc bc
    rst $38
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    rst $38
    db $10
    rra
    db $10
    rra
    jr nz, jr_00f_7d54

    jr nz, jr_00f_7d56

    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    or b
    rst $08
    db $fc
    add e
    rst $38
    rst $28
    db $10
    rst $20
    jr jr_00f_7ced

    jr c, @-$5b

    ld a, h
    rst $38
    pop bc
    cp $01
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
    pop af
    cp $fe
    ld sp, hl
    ld c, $ff
    inc b
    rst $38
    rlca
    ld hl, sp-$7e
    nop
    ld bc, $02ff
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$ff0f], sp
    ld [$100f], sp
    rra

jr_00f_7d54:
    db $10
    rra

jr_00f_7d56:
    jr nz, jr_00f_7d97

    rst $38
    jr nz, jr_00f_7d9a

    ld l, $31
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ld a, a
    ld h, b
    cp a
    ldh [$9f], a
    ldh a, [$8f]
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add c
    rst $38
    add a
    cp $4f
    ld a, b
    ld e, a
    ld [hl], b
    ld a, [$233c]
    jr nc, jr_00f_7db0

    rra
    nop
    add d
    nop
    ld bc, $02ff
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$ff0f], sp
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10

jr_00f_7d97:
    rra
    rst $38
    db $10

jr_00f_7d9a:
    rra
    inc hl
    inc a
    daa
    jr c, jr_00f_7dc7

    jr c, @+$01

    cpl
    jr c, jr_00f_7df4

    ld a, b
    ld b, a
    ld a, h
    ld b, e
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_00f_7db0:
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    jr nz, @+$41

    ld hl, $113f
    rra
    cp $12
    rra
    dec bc
    ld c, $07
    ld b, $03
    rst $38
    rra
    db $10

jr_00f_7dc7:
    rra
    db $10
    ld e, $11
    rla
    add hl, de
    rst $38
    ld c, $0f
    ld [$100f], sp
    rra
    db $10
    rra
    rst $38
    db $10
    rra

jr_00f_7dd9:
    ld e, $1f
    ccf
    ld hl, $407f
    cp $7f
    ld b, b
    ld h, c
    ld e, [hl]
    jr nz, jr_00f_7e25

    rra
    rst $38
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rra
    ldh [rIE], a
    rra
    ldh [rIF], a

jr_00f_7df4:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    rlca
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$39
    ld a, b
    cp $e7
    jr c, jr_00f_7dd9

    inc a
    ld l, a
    sbc a
    db $fc
    adc e
    nop
    ld hl, sp+$06
    cp $ff
    ld h, a
    sbc c
    ld [hl], a
    cp [hl]
    ld [hl], a
    cp [hl]
    inc sp
    call z, $00ff
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    ld a, a
    add b
    rst $38

jr_00f_7e25:
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    cp $f0
    rrca
    ret nz

    ccf
    pop bc
    rst $38
    ccf
    adc e
    nop
    ld a, h
    add e
    rst $38
    rst $38
    add hl, de
    and $1d
    rst $28
    dec e
    rst $28
    dec c
    ld a, [c]
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [rIE], a
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    rst $38
    sbc a
    ld h, b
    adc a
    ld [hl], b
    adc a
    ldh a, [rTAC]
    ld hl, sp-$01
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$01
    rst $00
    ld hl, sp-$11
    jr nc, @+$01

    db $10
    rst $38
    db $10
    cp $3f
    ret nc

    inc a
    db $e3
    ldh [rIE], a
    rra
    adc e
    nop
    ld a, h
    add e
    rst $38
    rst $38
    dec c
    ld a, [c]
    ld c, $f7
    ld c, $f7
    ld b, $f9
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    rra
    ldh [$df], a
    jr nz, @+$01

    nop
    rst $28
    db $10
    rst $38
    rst $20
    jr @-$0b

    inc e
    db $e3
    inc a
    pop bc
    cp $ff
    ld bc, $01fe
    cp $01
    cp $01
    cp $ff
    add hl, sp
    cp $ff
    call nz, $827f
    rst $38
    ld [bc], a
    db $fc
    rst $00
    ld a, [hl-]
    add e
    ld a, [hl]
    ld b, $ff
    adc e
    nop
    ret nz

    jr nc, @-$0e

    rst $38
    ld l, b
    sbc b
    ld [hl], h
    db $ec
    ld [hl], h
    db $ec
    ld h, d
    sbc [hl]
    rst $38
    ld [bc], a
    cp $c1
    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    cp $01
    rst $38
    ld bc, $01ff
    cp $01
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    cp $e0
    rra
    adc a
    ld a, a
    ei
    db $fc
    rlca
    add b
    nop
    and e
    nop
    add b
    ld b, b
    ret nz

    rst $38
    ld b, b
    ret nz

    jr nz, @-$1e

    ret nc

    jr nc, @-$16

    jr @+$01

    db $e4
    inc e
    ld a, [c]
    ld c, $f1
    rrca
    ei
    dec b
    rst $38
    cp b
    ld c, b
    cp b
    ld l, b
    sbc h
    ld [hl], h
    sbc h
    ld [hl], h
    rst $38
    adc h
    ld a, h
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp-$01
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR23]

jr_00f_7f48:
    ld hl, sp-$02
    inc a
    db $e4
    ld a, [hl]

Call_00f_7f4d:
    jp nz, $82fe

    db $fc
    add b
    nop
    and e
    add b
    ret nz

    and b
    ld h, b
    rst $38
    jr nz, @-$1e

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_00f_7f48

    jr @+$01

    add sp, $18
    db $f4
    inc c
    db $f4
    inc c
    ld_long a, $ff06
    ld a, [$fb06]
    dec b
    ei
    dec b
    ei
    rlca
    rst $38
    ld a, [$fa06]

jr_00f_7f77:
    ld b, $f2
    ld c, $f2
    ld c, $ff
    ld a, [c]
    ld c, $e2
    ld e, $e4
    inc e
    call nz, $fe3c
    ld c, $fa
    ccf
    pop af
    rst $18
    pop hl
    cp $80
    nop
    and e
    add b
    ret nz

    and b
    ld h, b
    rst $38
    jr nz, jr_00f_7f77

    sub b
    ld [hl], b
    ret nc

    jr nc, @-$16

    jr @+$01

    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    rst $38
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    cp $02
    rst $38
    cp $02
    cp $02
    ld a, [$fa06]

jr_00f_7fb7:
    ld b, $ff
    ld a, [$f406]
    inc c
    db $f4
    inc c
    add sp, $18
    cp $dc
    inc [hl]
    cp [hl]
    ld h, d
    cp $c2
    db $fc
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
    jr nz, @-$1e

    jr nz, jr_00f_7fb7

    ld [hl], b
    sub b
    ldh a, [rNR10]
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, b
    adc b
    add sp, -$68
    rst $38
    ld a, b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$01
    ld [$10f8], sp
    ldh a, [rNR23]
    ld hl, sp+$34
    db $ec
    cp $fc
    call nz, $04fc
    db $f4
    inc c
    ld hl, sp+$00

Jump_00f_7fff:
    nop
