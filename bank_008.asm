SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld d, $40
    ld d, $44
    ld d, $48
    ld d, $40
    ld d, $40
    ld d, $4c
    ld d, $4c
    ld d, $44
    ld d, $50
    ld d, $54
    ld d, $58
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld h, a
    ld h, h
    rst $18
    cp b
    and a
    ret c

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $28
    sbc b
    db $dd
    cp [hl]
    ld l, a
    ld l, b
    ld c, $09
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0201
    inc bc
    rlca
    inc b
    rra
    jr jr_008_407c

    jr z, jr_008_4082

    inc h
    inc sp
    inc l
    inc sp
    inc l
    ld sp, $662e
    ld e, a
    ld l, a
    ld e, h
    scf
    inc [hl]
    rlca
    rlca
    ld b, $06
    rlca
    dec b
    rlca
    dec b
    ld h, $25
    ld [hl], a
    ld d, h
    ld [hl], a
    ld d, h
    ld l, e
    ld e, h
    ld d, a
    ld l, b
    ld e, a
    ld h, b
    ld l, a
    ld d, b
    ld a, a
    ld d, b
    scf
    jr c, jr_008_407a

    inc c
    ld e, $11
    dec e
    inc de
    ld e, $1e
    ld b, $06
    rlca
    dec b

jr_008_407a:
    rlca
    inc b

jr_008_407c:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld h, a
    ld h, h

jr_008_4082:
    rst $18
    cp b
    and a
    ret c

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $28
    sbc b
    db $dd
    cp [hl]
    ld l, a
    ld l, b
    ld c, $09
    rrca
    rrca
    nop
    nop
    ld c, $0e
    rrca
    add hl, bc
    rra
    jr jr_008_40d4

    ld l, $37
    inc l
    ld d, a
    ld l, b
    cp a
    ret nz

    rst $38
    add b
    rst $08
    or b
    ld [hl], a
    ld a, b
    dec bc
    inc c
    ld c, $09
    ld e, $11
    dec d
    dec de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    ld c, $09
    ccf
    jr c, jr_008_4144

    ld b, [hl]
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    di
    adc h
    call c, Call_008_67bb
    ld h, a

jr_008_40d4:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    dec b
    ld b, $1f
    inc e
    scf
    ld l, $3e
    add hl, hl
    ccf
    jr z, jr_008_413e

    ld l, [hl]
    cp a
    ret nz

    rst $38
    add b
    ld [hl], a
    ld a, b
    add hl, bc
    ld c, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca

Call_008_40ff:
    add hl, bc
    ld c, $09
    rla
    inc e
    add hl, sp
    ld h, $7f
    ld b, b
    ld a, a
    ld b, b
    rst $28
    sub b
    rst $00
    cp b
    db $db
    cp h
    push hl
    and [hl]
    ld h, a
    ld h, l
    ld b, $06
    jr @+$1a

    inc e
    inc d
    sbc h
    sub h
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    cp e
    ld h, a
    rst $38
    ld b, l
    rst $38
    ld h, a
    sbc c
    ld h, a
    rst $38
    add hl, bc
    db $fd
    inc bc
    ld a, [$6406]
    sbc h
    ld hl, sp-$18
    jr jr_008_414e

    jr nc, @+$32

    cp b
    xor b
    db $f4
    ld l, h
    db $ec
    inc [hl]

jr_008_413e:
    ld a, [$fe06]
    ld [bc], a
    db $ed
    dec de

jr_008_4144:
    rst $38
    ld de, $1bfd
    rst $20
    add hl, de
    rst $38
    ld bc, $03fd

jr_008_414e:
    ld a, [$a406]
    ld e, h
    ld a, b
    ret c

    or b
    or b
    inc c
    inc c
    inc e
    inc d
    inc e
    inc d
    db $ec
    db $f4
    ld a, [$fe06]
    ld [bc], a
    ld [hl], l
    rst $08
    rst $38
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    ld a, [$e406]
    inc e
    db $fc
    db $f4
    inc c
    inc c
    jr @+$1a

    inc e
    inc d
    sbc h
    sub h
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    ld a, a
    rst $20
    sbc c
    ld h, a
    rst $38
    add hl, bc
    db $fd
    inc bc
    ld a, [$6406]
    sbc h
    ld hl, sp-$18
    jr jr_008_41ae

    nop
    nop
    inc bc
    inc bc
    rlca
    dec b
    rst $38
    ld sp, hl
    cp $02
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc hl
    rst $30
    dec e
    rst $38
    inc hl
    db $fd
    dec bc

jr_008_41ae:
    ld a, [$6406]
    sbc h
    or $fa
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld a, b
    ld e, b
    or h
    call z, $06fa
    db $fd
    rrca
    db $fd
    dec bc
    di
    dec c
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $03fd
    ld a, [c]
    ld c, $fc
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld a, h
    adc h
    ld a, [$fe06]
    ld a, [de]
    db $fd
    inc de
    rst $20
    add hl, de
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $02fe
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_422e

    ld hl, sp-$18
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    dec c
    db $ed
    dec de
    rst $30
    add hl, bc
    rst $38
    inc bc
    db $fd
    dec bc
    ld a, d
    add [hl]
    db $fc
    db $fc
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl], a
    ld d, h
    ld l, a
    ld e, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $18
    or b
    ld l, a
    ld l, b

jr_008_422e:
    dec bc
    inc c
    ld e, $11
    dec e
    inc de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    jr nc, jr_008_424a

jr_008_424a:
    jr nc, jr_008_424c

jr_008_424c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld a, $00
    inc a
    nop
    jr nc, jr_008_4290

    jr nc, jr_008_4292

    db $10
    inc c
    jr jr_008_4295

    inc c
    inc bc

jr_008_4290:
    inc bc
    nop

jr_008_4292:
    nop
    nop
    nop

jr_008_4295:
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    ld e, $00
    inc e
    nop
    stop
    stop
    ld [$0800], sp
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, b
    nop
    ld b, b
    jr nz, jr_008_4309

    jr c, jr_008_42eb

    rra
    jr jr_008_42d5

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_42d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    db $76
    ld [$0472], sp
    ld b, d
    inc h
    ld h, [hl]
    jr jr_008_4327

jr_008_42eb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $3301
    ld [hl-], a
    ld l, a
    ld e, h
    ld a, e
    ld c, h
    ld [hl], a
    ld c, b
    ld a, a

jr_008_4309:
    ld b, b
    cp a
    ret nz

    db $fd
    add [hl]
    rst $38
    sbc b
    ld l, [hl]
    ld l, c
    ld b, $07
    ld bc, $0001
    nop
    jr @+$1a

    call c, $bad4
    db $76
    sub $2a
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38

jr_008_4327:
    ld bc, $e37f
    adc c
    ld [hl], a
    rst $38
    add hl, bc
    db $fd
    inc bc
    ld a, [$fc06]
    db $f4
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    stop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_4372:
    jr nz, jr_008_4374

jr_008_4374:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    jr jr_008_4380

jr_008_4380:
    ld [$0410], sp
    ld [$0804], sp
    inc b
    ld [$1804], sp
    ld [$0830], sp
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_008_43dc

    db $10
    jr nz, jr_008_43af

    jr nz, jr_008_43a9

    db $10
    ld [$0810], sp
    db $10
    ld [$0810], sp

jr_008_43a9:
    db $10
    ld [$1030], sp
    jr nz, jr_008_43bf

jr_008_43af:
    ld h, b
    jr nz, jr_008_4372

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

jr_008_43bf:
    nop
    call nz, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    inc e
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_43dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret c

    ld e, b
    db $fc
    inc [hl]
    db $fc
    inc b
    cp $02
    db $fd
    inc bc
    rst $30
    add hl, de
    rst $38
    ld hl, $33df
    rst $28
    dec d
    ei
    rlca
    ld a, l
    adc e
    cp $02
    db $f4
    inc c
    ld hl, sp-$08
    nop
    nop
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    rlca
    inc b
    ld h, e
    ld h, d
    or a
    call nc, $9ceb
    rst $28
    sbc b
    rst $30
    sbc b
    cp a
    ret nc

    ld a, a
    ld d, b
    ld e, a
    ld [hl], a
    ld a, [hl+]
    dec a
    rra
    jr jr_008_4444

    rrca
    inc c
    inc c
    ld c, $0a
    rrca
    add hl, bc
    dec bc
    inc c
    ld h, l
    ld h, [hl]
    or a
    call nc, $9ceb

jr_008_4444:
    rst $28
    sbc b
    rst $30
    sbc b
    cp a
    ret nc

    ld a, a
    ld d, b
    ld e, a
    ld [hl], c
    ld l, $3b
    dec e
    ld e, $06
    dec b
    rlca
    rlca
    ld b, $06
    rlca
    dec b
    rlca
    dec b
    ld b, $05
    ld h, a
    ld h, h
    or a
    call nc, $9dea
    rst $28
    sbc c
    rst $30
    sbc c
    cp [hl]
    pop de
    ld a, a
    ld d, b
    ld d, a
    ld a, b
    cpl
    jr c, jr_008_4490

    ld d, $15
    dec de
    rrca
    rrca
    nop
    nop
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    rlca
    inc b
    ld h, e
    ld h, d
    or a
    call nc, $9ceb
    rst $28
    sbc b
    rst $30
    sbc c
    cp a
    ret nc

    ld a, a
    ld d, b
    ld e, a
    ld [hl], a

jr_008_4490:
    ld a, [hl+]
    dec a
    rra
    jr jr_008_44a4

    rrca
    jr nc, @+$32

    inc a
    inc l
    ld a, [hl-]
    ld h, $6d
    ld [hl], e
    cp e
    call c, $9ceb
    rst $28
    sbc b

jr_008_44a4:
    rst $30
    sbc b
    cp a
    ret nc

    ld a, a
    ld d, b
    ld e, a
    ld a, h
    ccf
    ld [hl-], a
    dec sp
    ld h, $36
    cpl
    inc sp
    ccf
    inc e
    inc e
    nop
    nop
    ld e, $1e
    rra
    ld de, $080f
    dec b
    ld b, $05
    ld b, $0b
    inc c
    dec bc
    inc c
    rrca

Call_008_44c7:
Jump_008_44c7:
    ld [$787f], sp
    cp a
    ret z

    ei
    adc h
    xor l
    sbc $7f
    ld a, e
    ld a, [bc]
    dec c
    rlca
    rlca
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    ld h, l
    ld h, [hl]
    di
    sub d
    rst $28
    sbc h
    ei
    adc h
    cp a
    ret z

    ld [hl], a
    ld e, b
    ld e, a
    ld [hl], b
    ccf
    jr nc, jr_008_450c

    rla
    dec bc
    inc c
    rrca
    ld [$090f], sp
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_450c:
    inc e
    inc e
    ld a, [hl+]
    ld [hl], $3e
    ld [hl+], a
    ld a, [hl+]
    ld [hl], $1c
    inc e
    nop
    nop
    jr jr_008_4532

    inc e
    inc d
    sbc h
    sub h
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    ld [hl], a
    call $89ff
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $82

jr_008_4532:
    rst $30
    adc l
    rst $38
    rst $38
    jr nc, jr_008_4568

    jr c, jr_008_4562

    jr c, jr_008_4564

    db $ec
    db $f4
    ld a, [$fe06]
    ld [bc], a
    cp e
    ld h, a
    rst $38
    ld b, l
    rst $38
    ld h, a
    sbc c
    ld h, a
    rst $38
    add hl, bc
    db $fd
    jp $22fe


    db $f4
    inc l
    inc a
    db $f4
    call c, $0cdc
    inc c
    inc e
    inc d
    inc e
    inc d
    db $ec
    db $f4
    ld a, [$fe06]
    ld [bc], a

jr_008_4562:
    db $ed
    sbc e

jr_008_4564:
    rst $38
    ld de, $99ff

jr_008_4568:
    ld h, a
    sbc c
    rst $38
    ld hl, $03fd
    cp $06
    rst $28
    add hl, de
    di
    rst $38
    ld e, $1e
    nop
    nop
    jr jr_008_4592

    inc e
    inc d
    sbc h
    sub h
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $08
    inc sp
    call $11ff
    db $fd
    inc bc
    cp $82

jr_008_4592:
    rst $30
    adc l
    rst $38
    rst $38
    ld b, $06
    ld c, $0a
    ld d, $1a
    cp $e2
    db $f4
    inc c
    db $fc
    inc b
    cp $02
    cp $02
    cp $8a
    sbc $72
    cp $8a
    ei
    daa
    rst $38
    dec b
    db $ed
    dec de
    ld a, [c]
    cp $0c
    inc c
    ld [hl], b
    ld [hl], b
    ld l, b
    ld e, b
    db $fc
    db $e4
    ld a, [$7606]
    adc $fd
    adc e
    rst $38
    call $cd33
    rst $38
    ld de, $01ff
    db $fd
    inc bc
    cp $02
    db $f4
    inc c
    db $fc
    db $fc
    or h
    xor h
    jr jr_008_45ee

    jr jr_008_45f0

    inc e
    inc d
    sbc h
    sub h
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    ld [hl], a
    call $89ff
    rst $38
    call $cd33
    db $fd
    inc de
    cp $02

jr_008_45ee:
    rst $38
    add l

jr_008_45f0:
    rst $28
    sbc c
    or $fa
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, [hl]
    ld h, d
    cp a
    pop bc
    rst $18
    pop hl
    rst $38
    pop hl
    xor $f2
    ld a, h
    ld a, h
    rra
    rra
    ld e, $11
    dec bc
    inc c
    ccf
    jr nc, jr_008_467e

    ld h, b
    db $ed
    sub [hl]
    rst $28
    db $f4
    ld a, $27
    dec a
    ld [hl+], a
    ld a, a
    ld h, b
    rst $28
    or b
    rst $38
    sub b
    adc a
    ld hl, sp+$7f
    ld [hl], a
    rla
    add hl, de
    ld c, $0e
    nop
    nop
    inc c
    inc c
    rrca
    dec bc
    rrca
    ld [$0605], sp
    rlca
    inc b
    dec bc
    inc c
    ld l, a
    ld l, b
    rst $10
    cp b
    rst $38
    sub b
    rst $38
    sub b
    or a
    ret c

    ld e, a
    ld l, [hl]
    dec sp
    dec a
    rrca
    ld [$0707], sp
    jr c, @+$3a

    ld d, h
    ld l, h
    ld a, a
    ld b, a
    ld a, l
    ld b, [hl]
    ld e, a
    ld l, b
    ld e, a
    ld [hl], c
    ld l, $31
    ld a, $21
    ccf
    jr nz, jr_008_46a8

    jr nz, jr_008_469a

    jr nc, @+$21

    db $10
    ld e, $1d
    rla
    ld a, [de]
    rra
    ld de, $0f0f
    rrca
    rrca
    rla
    jr jr_008_469a

    db $10
    inc e
    inc de

jr_008_467e:
    dec bc
    inc c
    rrca
    ld [$1817], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rla
    jr @+$21

    jr jr_008_46c4

    ld l, $3a
    daa
    cpl
    inc sp
    ld e, $1e
    nop
    nop
    nop
    nop

jr_008_469a:
    nop
    nop
    ld bc, $0601
    rlca
    dec sp
    inc a
    ld d, a
    ld l, b
    ld h, a
    ld e, b
    ld l, a
    ld d, b

jr_008_46a8:
    ld a, a
    ld d, b
    ccf
    jr nc, jr_008_46c4

    jr jr_008_46be

    ld [$0c0b], sp
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop

Call_008_46ba:
    inc c
    inc c
    rra
    inc de

jr_008_46be:
    rra
    db $10
    ccf
    cpl
    scf
    add hl, sp

jr_008_46c4:
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, [hl]
    ld c, c
    ld e, a
    ld h, a
    ccf
    jr nz, jr_008_46ff

    ld sp, $1c13
    rrca
    rrca
    nop
    nop
    inc bc
    inc bc
    rra
    inc e
    dec hl
    inc [hl]
    ccf
    jr nz, jr_008_471d

    inc hl
    inc d
    dec de
    rra
    db $10
    rra
    db $10
    rrca
    inc c
    rlca
    rlca
    dec b
    dec b
    scf
    scf
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0201

Jump_008_46fd:
    inc bc
    inc bc

jr_008_46ff:
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    jr jr_008_4724

    dec a
    dec a
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ret nz

    ret nz

    or $36
    db $eb

jr_008_471d:
    ld e, l
    ld a, a
    ret


    rst $38
    ld l, c
    rst $18
    add hl, hl

jr_008_4724:
    db $fd
    dec hl
    ld sp, hl
    rrca
    cp $0e
    ldh a, [rNR10]
    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_476a

    jr c, jr_008_4764

    db $f4
    db $ec
    ld a, [$fe06]
    ld [bc], a
    ld [hl], a
    call $89ff
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $06
    ld l, a
    sbc c
    ld sp, hl
    rst $30
    cp [hl]

jr_008_4755:
    cp [hl]
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ret c

    jr c, jr_008_4755

    adc $bf
    ld h, l
    rst $38
    dec h

jr_008_4764:
    rst $38
    dec h
    ld e, e
    and l
    ld a, a
    add c

jr_008_476a:
    db $fd
    inc bc
    db $fd
    inc bc
    cp $ce
    ld [hl-], a

jr_008_4771:
    adc $e6
    ld a, [de]
    cp $fe
    add b
    add b
    ldh [$60], a
    ret c

    jr c, jr_008_4771

    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fd
    rst $28
    ld [hl], e
    rst $38
    sub l
    ld l, [hl]
    cp d
    jp z, $fe7e

    cp $00
    nop
    nop
    nop
    jr c, jr_008_47d4

    call c, $fee4
    ld b, d
    cp [hl]
    ld b, d
    cp [hl]
    ld b, d
    db $dd
    inc hl
    db $dd
    inc hl
    db $db
    dec h
    ei
    dec b
    push af
    dec bc
    cp $02
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    cp $6e
    push af
    dec de
    rst $38
    sub c

jr_008_47c6:
    rst $38
    sub c
    rst $38
    ld sp, hl
    or l
    rst $08
    cp $86
    db $fc
    add h
    db $f4
    inc c
    add sp, $18

jr_008_47d4:
    ldh a, [$f0]
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    jr nz, jr_008_47c6

    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_008_4832

    db $fc
    call nz, Call_008_46ba
    rst $38
    ld bc, $31cf
    ld c, a
    or c
    ld a, [c]
    ld c, $fc
    inc b
    db $f4
    call z, $b8b8
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_008_4836

    nop
    nop
    inc bc
    inc bc
    db $fd
    cp $ff
    add b
    ld b, l
    ld a, [hl]
    rst $38
    cp b
    rst $38
    sub b
    rst $38
    sub b
    ld a, a
    ld d, b
    ld d, a
    ld a, b
    cpl
    jr c, jr_008_484a

    ld e, $1b
    rla
    dec d
    dec de

jr_008_4832:
    ld c, $0e
    nop
    nop

jr_008_4836:
    ld hl, sp-$08
    db $f4
    adc h
    ld a, a
    ld h, e
    ld d, $19
    dec bc
    inc c
    ld l, a
    ld l, b
    rst $10
    cp b
    rst $38
    sub b
    rst $38
    sub b
    ld a, a
    ld d, b

jr_008_484a:
    ld d, a
    ld a, b
    cpl
    jr c, @+$1f

    ld e, $1b
    rla
    dec d
    dec de
    ld c, $0e
    inc bc
    inc bc
    dec c
    ld c, $37
    jr c, jr_008_48ba

    ld h, d
    rst $30
    adc h
    rst $38
    ld hl, sp-$41
    ret nc

    ld a, a
    ld d, b
    ld d, a
    ld a, b
    cpl
    jr c, jr_008_4888

    ld e, $1b
    rla
    dec d
    dec de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    db $fd
    cp $ff
    add b
    ld b, l
    ld a, [hl]
    rst $38
    cp b
    cp $91
    rst $38
    sub b
    ld a, a
    ld d, b

jr_008_4888:
    ld d, a
    ld a, b
    cpl
    jr c, jr_008_48aa

    ld e, $1b
    rla
    dec d
    dec de
    ld c, $0e
    nop
    nop
    ld hl, sp-$08
    db $f4
    adc h
    ld a, [hl]
    ld h, d
    rla
    add hl, de
    rrca
    inc c
    dec bc
    inc c
    ld [hl], a
    ld a, b
    rst $18
    or b
    rst $38
    sub b
    rst $38
    sub b

jr_008_48aa:
    ld a, a
    ld d, b
    ld c, a
    ld a, [hl]
    ccf
    add hl, sp
    add hl, de
    rla
    ld de, $0f1f
    rrca
    nop
    nop
    nop
    nop

jr_008_48ba:
    nop
    nop
    inc bc
    inc bc
    db $fd
    cp $ff
    add b
    ld b, l
    ld a, [hl]
    rst $38
    cp b
    rst $38
    sub b
    rst $38
    sub b
    ld a, a
    ld d, b
    ld d, a
    ld a, b
    cpl

Call_008_48cf:
    ld a, $15
    dec de
    rra
    ld de, $1f1f
    nop
    nop
    ld hl, sp-$08
    db $f4
    adc h
    ld a, a
    ld h, e
    ld d, $19
    dec bc
    inc c
    ld l, a
    ld l, b
    rst $10
    cp b
    rst $38
    sub b
    rst $38
    sub b
    ld a, a
    ld d, b
    ld d, a
    ld a, e
    dec l
    ld a, $1e
    dec e
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    db $fd
    cp $ff
    add b
    ld b, l
    ld a, [hl]
    ccf
    jr c, jr_008_4922

    db $10
    rra
    db $10
    rra
    db $10
    rla
    jr @+$41

    jr z, jr_008_497a

    ld e, [hl]
    ei
    sub a
    push af
    sbc e
    adc [hl]
    cp $70
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    rst $28
    rra
    rst $38
    ld bc, $ce76
    rst $38
    adc c

jr_008_4922:
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $02
    db $f4
    inc c
    ld hl, sp-$08
    ld l, b
    ld e, b
    jr nc, jr_008_4964

    nop
    nop
    rrca
    rrca
    rra
    ld de, $e2fe
    db $fc
    inc b
    cp $02
    db $76
    adc $ff
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $02
    db $f4
    inc c
    ld hl, sp-$08
    ld l, b
    ld e, b
    jr nc, @+$32

    ldh a, [$f0]
    db $ec
    inc e
    ld a, [$7606]
    adc $ff
    adc c
    rst $38
    call $cd33

jr_008_4964:
    rst $38
    ld de, $03fd
    cp $02
    db $f4
    inc c
    ld hl, sp-$08
    ld l, b
    ld e, b
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]

jr_008_497a:
    rst $28
    rra
    rst $38
    ld bc, $06fa
    rst $38
    ld bc, $cffd
    inc sp
    call $11ff
    db $fd
    inc bc
    cp $02
    db $f4
    inc c
    ld hl, sp-$08
    ld l, b
    ld e, b
    jr nc, jr_008_49c4

    nop
    nop
    rrca
    rrca
    rra
    ld de, $322e
    db $fc
    db $e4
    db $f4
    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    rst $38
    adc c
    rst $18
    ld [hl], c
    rst $38
    adc c
    rst $38
    daa
    rst $38
    add hl, bc
    ld sp, hl
    rla
    ld a, [c]
    cp $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $28
    rra
    rst $38
    ld bc, $ce76

jr_008_49c4:
    rst $38
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $03fd
    cp $02
    or $0e
    rst $38
    ld sp, hl
    rra
    rra
    nop
    nop
    rrca
    rrca
    rra
    ld de, $e2fe
    db $fc
    inc b
    cp $02
    db $76
    adc $ff
    adc c
    rst $38
    call $cd33
    db $fd
    inc de
    rst $38
    add a
    rst $38
    ld c, c
    reti


    rst $30
    or $fe
    sbc h
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, [hl]
    ld h, d
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    dec a
    jp Jump_008_7e42


    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $f4
    adc h
    ld a, h
    ld b, h
    ld a, [hl-]
    ld h, $1f
    inc de
    rra
    db $10
    cpl
    jr nc, @+$3d

    ld h, $5f
    ld h, h
    ld a, a
    ld b, [hl]
    ld a, c
    ld b, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    dec sp
    ld h, $27
    dec sp
    ld e, $1e
    inc a
    inc a
    ld a, $22
    rra
    ld de, $1917
    ld a, [bc]
    dec c
    dec bc
    inc c
    ld l, a
    ld l, b
    rst $10
    cp b
    rst $38
    sub b
    rst $38
    sub b
    cp a
    ret nc

    ld a, a
    ld d, b
    ld d, a
    ld a, e
    dec l
    ld a, $1e
    dec e
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0201
    inc bc
    ld h, l
    ld h, [hl]
    rst $30
    sub h
    ei
    adc h
    rst $38
    adc b
    cp a
    ret nz

    ld e, a
    ld h, b
    scf
    jr c, jr_008_4a7e

    ld c, $03
    inc bc
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    dec b
    ld b, $03
    ld [bc], a

jr_008_4a7e:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    dec a
    ld a, $57
    ld l, h
    ld a, a
    ld b, h
    ld a, e
    ld b, h
    ld e, a
    ld h, b
    ccf
    jr nz, @+$19

    jr jr_008_4a9d

    rrca
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    db $f4
    adc h
    ld a, h
    ld b, h
    ld a, [hl-]

jr_008_4a9d:
    ld h, $1f
    inc de
    rra
    db $10
    cpl
    inc sp
    dec a
    ld h, $5f
    ld h, h
    ld a, a
    ld b, h
    ld a, l
    ld b, [hl]
    ld a, e
    ld b, [hl]
    ld e, l
    ld h, d
    daa
    jr c, jr_008_4af2

    ccf
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    ld l, $31
    ld a, a
    ld b, d
    rst $38
    cp h
    rst $38
    sub b
    rst $38
    sub e
    db $fd
    sub [hl]
    cp [hl]
    call Call_008_7f7f
    ld bc, $0601
    rlca
    dec de
    inc e
    ccf
    jr z, jr_008_4b16

    jr c, jr_008_4b20

    ld sp, $313f
    ccf
    ld l, $3f
    jr z, jr_008_4b08

    jr jr_008_4b06

    inc e
    rrca
    inc c
    ld b, $07
    dec b
    rlca

jr_008_4af2:
    dec b
    ld b, $03
    inc bc
    db $fc
    db $fc
    ei
    add a
    ld l, [hl]
    ld [hl], c
    dec de
    inc e
    rrca
    ld [$1817], sp
    rra
    db $10
    rra
    db $10

jr_008_4b06:
    rra
    db $10

jr_008_4b08:
    rla
    dec de
    dec c
    ld c, $06
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_4b16:
    rra
    rra
    cpl
    ld sp, $223e
    ld e, h
    ld h, h
    ld hl, sp-$38

jr_008_4b20:
    ld hl, sp+$08
    db $f4
    inc c
    cp h
    ld h, h
    ld a, [$fe46]
    ld h, d
    sbc [hl]
    ld h, d
    cp $82
    cp $3a
    call c, $e464
    call c, Call_008_7878
    rlca
    rlca
    rrca
    add hl, bc
    ld e, $12
    ld a, [de]
    ld d, $ec
    db $f4
    db $fc
    inc b
    cp $02
    db $76
    adc $ff
    adc c
    rst $38
    call $cd33
    db $fd
    inc de
    rst $38
    add a
    rst $38
    ld c, c
    ld a, c
    rst $30
    sbc [hl]
    sbc [hl]
    ldh [$e0], a
    ret nc

    jr nc, jr_008_4bcb

    sub b
    ldh a, [$90]
    xor b
    ret c

    db $fc
    inc b
    cp $02
    or $0e
    db $fd
    dec bc
    rst $38
    dec c
    di
    dec c
    rst $38
    ld bc, $1dff
    xor [hl]
    ld [hl], d
    ld a, [c]
    xor $3c
    inc a
    adc a
    adc a
    ld d, a
    reti


    db $dd
    ld d, e
    xor [hl]
    ld [hl], d
    ld a, [$fe26]
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fd
    cp $02
    rst $30
    dec c
    ld sp, hl
    rst $38
    xor $ee
    rra
    rra
    cpl
    ld sp, $223e
    ld e, h
    ld h, h
    ld hl, sp-$38
    ld hl, sp+$08
    db $f4
    call z, Call_008_64bc
    ld a, [$fe26]
    ld [hl+], a
    cp $22
    cp [hl]
    ld h, d
    cp d
    ld h, [hl]
    ld h, h
    call c, $fcfc
    jr c, jr_008_4bee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $ec
    inc e
    ld a, [$fd06]
    inc bc
    rst $38

jr_008_4bcb:
    call $cd33
    rst $38

jr_008_4bcf:
    sub a
    rst $38
    ld c, c
    ld a, c
    rst $10
    cp $fe
    ldh [$e0], a
    ret c

    jr c, jr_008_4bcf

    inc c
    ld a, h
    add h
    ld a, d
    xor [hl]
    sub $2a
    cp $2a
    cp $2a
    sub $2a
    cp $12
    ld a, [$fc06]
    inc b

jr_008_4bee:
    add sp, $18
    ldh a, [$f0]
    ret nc

    or b
    ld h, b
    ld h, b
    rra
    rra
    rst $28
    pop af
    cp $06
    cp $02
    db $76
    adc $ff
    adc c
    rst $38
    call $cd33
    db $fd
    inc de
    rst $38
    add a
    rst $38
    ld c, c
    db $ed
    rst $18
    cp d
    add $7f
    ld b, c
    cpl
    ld sp, $1e1e
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld l, $32
    ccf
    ld hl, $302f
    rla
    jr jr_008_4c54

    jr nc, @+$41

    jr nz, @+$61

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld l, [hl]
    ccf
    ld sp, $1f1f
    nop
    nop
    ld c, $0e
    dec d
    dec de
    rra
    ld de, $1817
    add hl, de
    ld e, $2f
    jr nc, @+$41

    jr nz, jr_008_4ca6

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    cpl
    ld sp, $1e1b

jr_008_4c54:
    rlca
    rlca
    nop
    nop
    jr c, jr_008_4c92

    ld e, h
    ld h, h
    ld a, a
    ld b, e
    ld e, a
    ld h, b
    scf
    jr c, jr_008_4c92

    jr nc, @+$41

    jr nz, jr_008_4cc5

    ld h, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, a
    ld [hl], b
    ld l, a
    ld e, b
    ld e, a
    ld h, a
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld l, $32
    ccf
    ld hl, $302f
    rla
    jr jr_008_4cb4

    jr nc, jr_008_4cc6

    jr nz, @+$61

    ld h, b
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, b
    ld e, a
    ld l, [hl]

jr_008_4c92:
    ccf
    ld sp, $1f1f
    ld h, b
    ld h, b
    ldh a, [$90]
    ld hl, sp-$78
    rst $38
    add a
    ld a, a
    ld b, b
    daa
    jr c, @+$41

    jr nz, jr_008_4d04

    ld h, b

jr_008_4ca6:
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    cpl
    ld [hl-], a
    ld a, [hl-]
    daa
    inc sp
    cpl

jr_008_4cb4:
    inc e
    inc e
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    jr nz, @+$41

    jr nz, @+$81

    ld b, b
    ld a, a

jr_008_4cc5:
    ld b, b

jr_008_4cc6:
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_008_4cfc

    jr nc, @+$15

    inc e
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0f
    ld [$1817], sp
    rra
    db $10
    cpl
    jr nc, jr_008_4d22

    jr nz, jr_008_4d24

    jr nz, jr_008_4d26

    jr nz, jr_008_4d28

    jr nz, jr_008_4d1a

    jr nc, jr_008_4d0c

    db $10
    rla
    jr jr_008_4cfc

    inc c
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_008_4cfc:
    dec c
    ld c, $17
    jr @+$41

    jr nz, jr_008_4d82

    ld b, b

jr_008_4d04:
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

jr_008_4d0c:
    adc a
    ldh a, [$60]
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_4d1a:
    ld h, b
    ld h, b
    ldh a, [$90]
    or b
    ret nc

    ldh a, [rNR10]

jr_008_4d22:
    ld hl, sp+$08

jr_008_4d24:
    db $fc
    inc b

jr_008_4d26:
    db $fc
    inc b

jr_008_4d28:
    ld l, [hl]

jr_008_4d29:
    jp c, $92fe

    cp $da
    ld h, $da
    db $fc
    inc b
    xor $1a
    cp $fe
    nop

jr_008_4d37:
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ld h, b
    and b
    ret nc

    jr nc, jr_008_4d29

    jr jr_008_4d37

    inc c
    db $fc
    inc b
    or [hl]
    ld l, [hl]
    cp $4a
    cp $6e
    sub d
    ld l, [hl]
    db $fc
    call nz, $28f8
    xor b
    ld a, b
    ret c

    ret c

    nop
    nop
    jr nc, jr_008_4d8a

    ld a, b
    ld c, b
    cp b
    ret z

    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    db $fc
    inc b
    jp c, $feb6

    ld [hl+], a
    cp $b2
    ld c, d
    or [hl]
    db $fc
    inc b
    xor $1a
    ld a, [$1cf6]
    inc e
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    or b
    ret nc

    ldh a, [rNR10]

jr_008_4d82:
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $02

jr_008_4d8a:
    cp $02
    cp $da
    ld h, $da
    db $fc
    inc b
    xor $1a
    cp $fe
    jr jr_008_4db0

    inc a
    inc h
    inc a
    inc h
    db $fc
    call nz, $14ec
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $8a
    sbc $72
    cp $8a
    rst $38
    dec b

jr_008_4db0:
    db $ed
    dec de
    ei
    rst $30
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    db $f4
    inc c

jr_008_4dc2:
    ld a, [$fa06]

jr_008_4dc5:
    ld b, $fa

jr_008_4dc7:
    ld b, $f2
    ld c, $f4
    inc c
    db $e4
    inc e
    adc b
    ld a, b
    jr nc, jr_008_4dc2

    ret nz

    ret nz

jr_008_4dd4:
    nop

jr_008_4dd5:
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_008_4dc5

    jr jr_008_4dc7

    jr jr_008_4dd5

    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $f4
    inc c
    db $e4
    inc e
    add sp, $18
    ret z

    jr c, @-$6e

    ld [hl], b
    jr nz, jr_008_4dd4

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld hl, sp-$08
    or $0e
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$e406]
    inc e
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, e
    ld h, a
    ld a, a
    ld b, b
    ld d, a
    ld l, b
    cpl
    jr nc, jr_008_4e60

    jr nz, jr_008_4e82

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ccf
    jr nc, jr_008_4e8e

    ld l, a
    ld a, l
    ld b, l
    ld d, l
    ld l, l
    jr c, jr_008_4e6e

    jr jr_008_4e50

    inc a
    inc h
    ld a, $22
    dec a
    inc hl
    cpl
    jr nc, jr_008_4e58

    jr jr_008_4e82

    jr nz, @+$61

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    cpl
    ld [hl-], a

jr_008_4e50:
    ld a, [hl-]
    daa
    inc sp
    cpl
    inc e
    inc e
    nop
    nop

jr_008_4e58:
    nop
    nop
    jr c, jr_008_4e94

    ld e, h
    ld h, h
    ld a, [hl]
    ld b, d

jr_008_4e60:
    ld e, l
    ld h, e
    ccf
    jr nc, @+$41

    jr nz, @+$41

    jr nz, jr_008_4ee8

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_008_4e6e:
    ld e, a
    ld h, b
    ccf
    jr nz, jr_008_4eaa

    jr c, jr_008_4eb4

    ccf
    nop
    nop
    nop
    nop
    jr c, jr_008_4eb4

    ld e, h
    ld h, h
    ld a, a
    ld b, e
    ld e, a
    ld h, b

jr_008_4e82:
    cpl
    jr nc, jr_008_4ec4

    jr nz, jr_008_4ee6

    ld h, b
    ld a, e
    ld b, [hl]
    ld a, a
    ld b, h
    ld a, a
    ld b, [hl]

jr_008_4e8e:
    ld e, c
    ld h, [hl]
    ccf
    jr nc, jr_008_4f0e

    ld c, h

jr_008_4e94:
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr c, jr_008_4ed4

    ld e, h
    ld h, h
    ld a, a
    ld b, e
    ld e, a
    ld h, b
    scf
    jr c, jr_008_4ee4

    jr nz, jr_008_4f06

    ld h, b
    ld a, a
    ld b, b

jr_008_4eaa:
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$79

    ld e, b

jr_008_4eb4:
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_4ec4:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    dec l
    inc sp
    ccf
    ld hl, $213f
    dec l
    inc sp

jr_008_4ed4:
    ld e, $1e
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_008_4f60

    ld b, b
    cp a
    ret nz

jr_008_4ee4:
    rst $38
    add b

jr_008_4ee6:
    rst $38
    add b

jr_008_4ee8:
    cp a
    ret nz

    ld e, a
    ld h, b
    daa
    jr c, jr_008_4f07

    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec bc
    inc c
    rla
    jr jr_008_4f30

    jr nc, jr_008_4f42

    jr nz, jr_008_4f64

    ld h, b

jr_008_4f06:
    ld a, a

jr_008_4f07:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b

jr_008_4f0e:
    ld e, a
    ld h, b
    jr nz, jr_008_4f51

    rra
    rra
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$b0]
    ld hl, sp+$08
    db $fc
    inc b
    ld l, h
    call c, $92fe
    cp $da
    ld h, $da
    cp $02
    ld a, [$fc06]
    inc b
    add sp, $18
    ldh a, [$f0]

jr_008_4f30:
    ldh a, [rNR10]
    ld d, b
    or b
    ldh [$e0], a
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [$90]
    or b
    ret nc

    ldh a, [rNR10]
    ld hl, sp+$08

jr_008_4f42:
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    ld l, [hl]
    jp c, $92fe

    cp $da
    daa
    db $dd
    db $fd

jr_008_4f51:
    dec bc
    ei
    rst $30
    ld c, $0e
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    ld hl, sp-$78

jr_008_4f60:
    ld hl, sp-$78
    add sp, $18

jr_008_4f64:
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    cp $02
    cp $1a
    db $ec
    inc [hl]
    db $f4
    ld c, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld h, $fe
    jp nz, $06fa

    db $f4
    inc c
    db $fc
    inc b
    ld a, [$be06]
    ld h, d
    cp $42
    cp $62
    sbc d
    ld h, [hl]
    db $fc
    inc c
    sbc $32
    cp $fe
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld h, $fe
    jp nz, $06fa

    db $ec
    inc e
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    cp $1e
    db $ed
    inc sp
    rst $38
    ld hl, $21ff
    db $ed
    inc sp
    cp $fe
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld h, $fe
    jp nz, $06fa

    db $ec
    inc e
    db $fc
    inc b
    ld a, [$fe06]
    ld [bc], a
    cp $3e
    jp c, $fe66

    ld b, d
    cp $42
    jp c, $fe66

    cp $00
    nop
    nop
    nop
    ldh [$e0], a
    ret c

    jr c, @-$0a

    inc c
    ld a, [$fd06]
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc

jr_008_4fe8:
    ld sp, hl
    rlca
    ld a, [c]
    ld c, $c4
    inc a
    jr jr_008_4fe8

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $f4
    inc c
    ld a, [$fa06]
    ld b, $fa
    ld b, $fa
    ld b, $fa
    ld b, $f2
    ld c, $f4
    inc c
    db $e4
    inc e
    ret z

    jr c, jr_008_501f

    ldh a, [$60]
    ldh [$80], a

jr_008_5013:
    add b
    nop
    nop
    rrca
    rrca
    ld d, $19
    cpl
    jr nc, jr_008_504c

    jr nc, jr_008_505e

jr_008_501f:
    jr nz, jr_008_5060

    jr nz, jr_008_5052

    jr nc, jr_008_5054

    jr nc, jr_008_5046

    db $10
    rra
    db $10
    rla
    jr jr_008_503c

    ld [$0c0b], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_008_503c:
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a

jr_008_5046:
    ldh a, [rNR10]
    ld e, b
    add sp, -$0c
    adc h

jr_008_504c:
    db $ec
    sub h
    ld a, [$fef6]

jr_008_5051:
    ld a, [c]

jr_008_5052:
    xor $72

jr_008_5054:
    cp $82
    cp $82
    cp $02
    cp $02
    cp $02

jr_008_505e:
    cp $02

jr_008_5060:
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    add sp, $18
    ret nc

    jr nc, jr_008_50cb

    ldh [$a0], a
    ldh [$e0], a
    jr nz, jr_008_5051

    jr nz, jr_008_5013

    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rrca
    ld [$888f], sp
    ld a, l
    cp $bf
    ld b, b
    rst $38
    nop
    rst $28
    ld [hl], b
    cp $c1
    or $c9
    ld a, [hl]
    ld sp, hl
    rst $38
    ld a, b
    ld [hl], a
    cp b
    cp a
    ld b, c
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $eb
    inc l
    db $eb
    inc l
    push bc
    ld b, [hl]
    add e
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    cp e
    rst $00
    cp $81
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nc, jr_008_50d7

    rrca
    dec b

jr_008_50cb:
    ld b, $0b
    inc c
    rrca
    ld [$1817], sp

jr_008_50d2:
    rra
    db $10
    dec e
    ld [de], a
    cpl

jr_008_50d7:
    jr nc, jr_008_5118

    jr nz, jr_008_511a

    jr nz, jr_008_515c

    ld h, b
    rst $38
    and b
    rst $28
    jr nc, jr_008_50d2

    jr nc, @+$01

    db $10
    rst $30
    jr @-$03

    inc e
    sub $3f
    or l
    ld a, e
    rst $10
    ret c

    rla
    jr jr_008_50fe

    inc c
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_50fe:
    inc bc
    inc bc
    dec c
    ld c, $17
    jr @+$31

    jr nc, jr_008_5146

    jr nz, jr_008_5148

    jr nz, jr_008_514a

    jr nz, @+$31

    jr nc, jr_008_5125

    add hl, de
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_5118:
    nop
    nop

jr_008_511a:
    nop
    nop
    nop
    nop
    jr c, jr_008_5158

    db $76
    ld c, [hl]
    ld a, l
    ld b, e
    ld e, a

jr_008_5125:
    ld h, b
    ccf
    jr nz, jr_008_5148

    db $10
    rrca
    ld [$0407], sp
    ld [bc], a
    inc bc
    add c
    add c
    ld b, e
    jp nz, Jump_008_44c7

    xor a
    ld l, b
    rst $30
    jr c, @+$01

    jr nc, @-$0f

    jr nc, jr_008_50fe

    ld h, b
    rst $18
    ld h, b
    db $dd
    ld h, d
    rst $38
    ld b, b

jr_008_5146:
    rst $38
    ld b, b

jr_008_5148:
    rst $38
    ld b, b

jr_008_514a:
    rst $18
    ld h, a

jr_008_514c:
    cp a
    ld l, b
    rst $38
    or b
    ld e, a
    ld [hl], b
    scf
    jr c, jr_008_5164

    rrca
    nop
    nop

jr_008_5158:
    nop
    nop
    nop
    nop

jr_008_515c:
    ld a, b
    ld a, b
    or $8e
    db $fd
    add e
    cp a
    ret nz

jr_008_5164:
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    dec bc
    inc c
    ld b, $07
    add c
    add c

jr_008_5170:
    ld b, c
    pop bc

jr_008_5172:
    jp $a742


    ld h, h
    db $eb
    inc l
    rst $18
    jr c, jr_008_5172

    jr @+$01

    db $10
    rst $28
    jr nc, jr_008_5170

    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @-$0f

    jr nc, jr_008_514c

    pop de
    ld [hl], a
    ld a, c
    dec e
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_008_51d6

    ld [hl], h
    ld c, h
    ld a, [hl]
    ld b, d
    ld e, a
    ld h, c
    ccf
    jr nz, jr_008_51d6

    jr nc, jr_008_51c8

    db $10
    rrca
    ld [$0407], sp
    add d
    add e
    ld b, a
    call nz, Call_008_48cf
    cp a
    ld [hl], b
    rst $38
    ld hl, $61df
    rst $38
    ld b, c
    cp a
    pop bc
    cp [hl]
    pop bc
    push af
    adc d
    cp $81
    rst $38
    add b
    cp a
    ret nz

jr_008_51c8:
    ld a, a
    ret nz

    rst $18
    ldh [$af], a
    ldh a, [$bb]
    call c, $c7bf
    ld e, [hl]
    ld h, c
    ccf
    ccf

jr_008_51d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add sp, $70
    db $10
    ld hl, sp-$18
    jr @+$72

    nop
    nop
    nop
    rst $38
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    push af
    adc d
    cp $81
    rst $38
    add b
    cp a
    jp Jump_008_46fd


    ei
    db $ec
    ccf
    jr c, jr_008_521d

    dec bc

jr_008_5212:
    ld [$070f], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_521d:
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    add a
    add h
    rst $00
    ld b, h
    push hl
    ld h, $f5
    ld d, $eb
    ld a, [de]
    or $0f
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    or a
    ld a, b
    ld c, a
    or b
    cp a
    ld b, e
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, jr_008_5212

    ld h, b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    rrca
    ld [$888f], sp
    bit 1, h
    rst $20
    inc h
    push af
    ld d, $fa
    dec bc
    rst $38
    rlca
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rrca
    or $0f
    xor c
    ld d, [hl]
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld a, h
    cp e
    add $7f
    add d
    rst $38
    ld [bc], a
    add e
    ld a, [hl]
    inc bc
    rst $38
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rlca
    inc b
    rlca
    inc b
    add a
    add h
    ld b, a
    call nz, Call_008_44c7
    and l
    ld h, [hl]
    db $dd
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    db $e3
    db $dd
    db $e3
    ld a, $c1
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rlca
    inc b
    rlca
    inc b
    add a
    add h
    rst $00
    ld b, h
    and a
    ld h, h
    push hl
    ld h, $dd
    ld a, $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    pop af
    ld l, [hl]
    pop af
    sbc a
    ld h, b
    rst $38
    ld b, $fb
    and $df
    jr nc, @+$01

    db $10
    rst $38
    ld de, $f719
    rra
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop

jr_008_531b:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    jr nc, jr_008_531b

    jr @-$06

    ld [$6cf4], sp
    db $fc
    call nz, $c6fa
    ld a, [$fef6]
    ld a, [c]
    ld l, [hl]
    ld a, [c]
    sbc [hl]
    ld h, d
    ld a, [$fa06]
    ld b, $fc
    inc b
    db $f4
    inc c
    cp $0e
    db $ed
    dec de
    rst $18
    ld sp, $f16f
    cp $fe
    nop
    nop
    nop
    nop
    nop

jr_008_535b:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    ret nc

    jr nc, jr_008_535b

    db $10
    ld [hl], b
    sub b
    ld hl, sp+$08
    db $fc
    inc b
    ld a, [$fe06]
    ld a, [de]
    db $fd
    inc sp
    rst $38
    ld sp, $3dff
    rst $38
    dec a
    db $db
    dec a
    rst $20
    add hl, de
    db $fd
    ld h, e
    cp l
    ld h, e
    cp $02
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    add sp, $18
    cp h
    ld [hl], h
    call c, $fce4
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b

jr_008_53a3:
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    ret nc

    jr nc, jr_008_53a3

    db $10
    add sp, -$68
    ld hl, sp+$08
    ld hl, sp+$08
    db $f4
    call z, $c4fc
    cp h
    call nz, $847c
    db $fc
    inc b
    db $f4
    inc c
    ld hl, sp+$08
    db $fc
    inc a
    ld a, [$fe46]
    add d
    cp $82
    jp nz, $843e

    ld a, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b

jr_008_53e3:
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    ret nc

    jr nc, jr_008_53e3

    db $10
    add sp, $18
    ld hl, sp+$08
    db $f4
    call z, $8cf4
    db $fc
    add h
    db $fc
    db $e4
    db $fc
    db $e4
    call c, $3ce4
    call nz, $0cf4
    db $fc
    inc a
    ld a, [$fe46]
    add d
    ld a, [hl]
    add d
    jp nz, $843e

    ld a, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, de
    add hl, de
    scf
    ld l, $3d
    ld h, $2f
    inc [hl]
    rla
    dec e
    rrca
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    dec b
    ld b, $1a
    dec de
    scf
    ld l, $3d
    ld h, $2f
    inc [hl]
    rla
    inc e
    dec c
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec de
    ld a, [de]
    dec [hl]
    ld l, $3f
    inc h
    cpl
    inc [hl]
    rla
    ld e, $0f
    dec c
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add hl, de
    add hl, de
    scf
    ld l, $3d
    ld h, $2f
    inc [hl]
    rla
    dec e
    rrca
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    rrca
    add hl, bc
    dec de
    inc e
    ld [hl], $2f
    dec a
    ld h, $2f
    inc [hl]
    rra
    inc d
    dec bc
    rrca
    rlca
    inc b
    ld b, $05
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    ld c, $15
    dec de
    rra
    ld [de], a
    rrca
    ld c, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1901
    add hl, de
    dec [hl]
    dec l
    ccf
    ld h, $2d
    ld [hl], $1f
    inc d
    rrca
    inc c
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

Call_008_54fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_5554

    cp b
    xor b
    ld hl, sp+$68
    db $fc
    inc b
    call nc, $f42c
    inc l
    db $fc
    inc b
    ld hl, sp-$78
    db $ec
    ld d, h
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$d0]
    sbc b
    ld l, b
    ld hl, sp+$08
    db $ec
    inc d
    db $fc
    inc d
    db $fc
    inc b
    db $f4
    ld l, h
    ld hl, sp-$68
    ld a, b
    xor b

jr_008_5554:
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_008_557a

    cp b
    xor b
    ld hl, sp-$18
    db $f4
    inc c
    xor h
    ld d, h
    db $fc
    ld d, h
    db $fc
    inc b
    db $f4
    inc c
    ld l, [hl]
    sbc d
    ld a, [$9cf6]
    sbc h
    nop
    nop
    nop
    nop

jr_008_557a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    cp b
    xor b
    ld hl, sp+$68
    db $fc
    inc b
    db $fc
    inc b
    sub h
    ld l, h
    db $fc
    inc b
    ld hl, sp-$78
    db $ec
    ld d, h
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc e
    inc d
    db $ec
    db $f4
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld c, h
    db $fc
    inc [hl]
    db $fc
    ld c, h
    xor $9a
    ld a, [$0cf6]
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    ld hl, sp+$68
    ld a, h
    add h
    db $fc
    inc l
    call nc, $fc2c
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    ldh a, [$50]
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    ld hl, sp+$68
    sbc b
    ld l, b
    ld hl, sp+$08
    db $fc
    inc b
    call nc, $fc2c
    inc l
    db $fc
    add h
    cp $4a
    ld a, d
    or $9c
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    dec b
    ld b, $0f
    ld [$0e0d], sp
    inc bc
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    dec c
    dec bc
    rlca
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    dec e
    ld e, $37
    inc l
    ccf
    inc h
    dec de
    rla
    rrca
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_008_567c

    dec a
    dec h
    ccf
    ld h, $2a
    dec [hl]
    rla
    add hl, de
    ld c, $09
    rrca
    ld [$0b0f], sp
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_567c:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$0c0b], sp
    rrca
    dec bc
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    dec e
    ld [de], a
    dec de
    inc d
    rrca
    ld [$080f], sp
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rlca
    dec b
    rlca
    inc b
    ld a, [bc]
    dec c
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    dec bc
    dec c
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_56fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ei
    dec bc
    rst $38
    dec d
    rst $38
    ld b, l
    rst $38
    dec b
    cp $06
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    add b
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
    ld [hl], b
    ld [hl], b
    add sp, -$28
    db $f4
    inc c
    call nc, $fc2c
    inc l
    db $fc
    inc b
    db $f4
    inc c
    xor $9a
    ld a, [$8c76]
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$78
    db $fc
    ld d, h
    db $fc
    ld d, h
    xor h
    ld d, h
    db $f4
    inc c
    add sp, -$68
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_577f:
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_008_577f

    ld [$04fc], sp
    db $fc
    inc b
    db $fc
    inc b
    cp h
    call z, Call_008_54fc
    ld hl, sp+$68
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld l, b
    sbc b
    xor h
    ld d, h
    xor h
    ld d, h
    db $ec
    inc d
    call nc, $e82c
    jr @-$0e

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [rNR10]
    ld c, b
    cp b
    db $fc
    adc h
    cp $72
    cp $4a
    cp h
    call z, $18e8
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld e, $12
    rra
    ld de, $111e
    rla
    jr jr_008_5854

    jr nc, jr_008_5866

    jr nz, jr_008_5888

    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$0c0b], sp
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_5854:
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$1817], sp
    rra
    db $10
    rra
    db $10
    rla
    add hl, de

jr_008_5866:
    ld c, $0e
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    rra
    rra
    cpl
    ld sp, $605f
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld e, [hl]
    ld h, d
    inc a
    inc a
    rlca
    rlca
    dec bc
    inc c

jr_008_5888:
    ld d, $19
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ld d, $19
    rrca
    rrca
    nop
    nop
    inc e
    inc e
    ld l, $32
    ccf
    ld hl, $203f
    ccf
    jr nz, @+$21

    db $10
    dec bc
    inc c
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $1e01
    ld e, $2f
    ld sp, $203f
    ccf
    jr nz, jr_008_58ee

    jr nc, jr_008_58d8

    jr jr_008_58d2

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_58d2:
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_58d8:
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

jr_008_58e0:
    inc a
    inc h
    ccf
    inc hl
    dec a
    ld [hl+], a
    ld c, l
    ld [hl], d
    xor a
    ret nc

    ld a, a
    add b
    rst $38
    nop

jr_008_58ee:
    rst $38
    nop
    cp $03
    rst $38
    inc b
    rst $38
    ld b, $f9
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_008_58e0

    inc sp
    ld a, a
    sbc a
    ldh a, [$90]
    ld a, [hl]
    ld e, [hl]
    ld l, l
    ld d, e
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld [hl], c
    ld c, a
    ld h, d
    ld e, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    jr nc, jr_008_594c

    ld a, b
    ld c, b
    ret c

    add sp, -$0c
    inc c
    ld a, [$fe06]
    ld [bc], a
    db $fd
    inc bc
    ld [hl], a
    call $89ff
    rst $38
    call $cd33
    db $fd
    inc de
    cp $02
    ld_long a, $ff06
    add b
    cp a
    ret nz

    ld a, a
    ret c

    rst $38
    ld h, h
    cp $23
    rst $28
    inc sp
    sbc $52
    db $fc
    ld h, h
    ret c

    add sp, $7e
    ld c, [hl]
    xor l
    db $d3

jr_008_594c:
    rst $38
    add c
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ldh a, [rIE]
    ld c, b
    db $fd
    ld b, a
    ld a, [hl]
    and $bc
    and h
    inc [hl]
    inc l
    ld a, b
    ld c, b
    ld l, c
    ld e, c
    pop af
    sub c
    ld e, c
    cp c
    push af
    dec c
    db $fc
    inc b
    ld a, h
    add h
    ld hl, sp-$08
    rst $38
    nop
    ld a, a
    add b
    rst $38
    or b
    rst $18
    add sp, -$03
    bit 7, a
    ld c, a
    ld l, b
    ld e, b
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    call c, Call_008_66fb
    cp [hl]
    ld h, e
    rst $18
    db $d3
    cpl
    inc sp
    db $fc
    call nz, $18e8
    or b
    ld [hl], b
    ldh a, [rNR10]
    ld sp, hl
    add hl, bc
    ld a, [$eb0b]
    ld a, [de]
    di
    ld a, [c]
    ld bc, $ff01
    add b
    cp a
    ret nz

    ld a, a
    sbc $ef
    ld [hl], c
    rst $38

jr_008_59bf:
    jr nz, jr_008_5a1c

    call c, $8487
    rlca
    dec b
    dec bc
    dec c
    dec c
    ld a, [bc]
    rla
    jr jr_008_59ec

    db $10
    ld e, $11
    add hl, de
    rla
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_59dd:
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    or b
    ld d, b
    add sp, $18
    ld hl, sp+$08

jr_008_59ec:
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $38
    ld hl, sp+$48
    ld hl, sp+$68
    adc b
    ld a, b
    ldh a, [$90]
    ret nc

    jr nc, jr_008_59dd

    jr nz, jr_008_59bf

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ld d, b
    or b
    ldh a, [$90]
    ld a, [hl]
    ld e, [hl]
    ld l, l
    ld d, e
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, c
    ld b, a
    ld d, d
    ld l, [hl]
    inc a
    inc a
    nop
    nop
    inc b
    inc bc
    ld c, $07

jr_008_5a1c:
    rra
    ld c, $3d
    ld c, $2f
    inc e
    ld l, a
    inc e
    ld l, a
    inc e
    ld l, a
    inc e
    ld l, a
    inc e
    cpl
    inc e
    dec a
    ld c, $1f
    ld c, $0e
    rlca
    inc b
    inc bc
    nop
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    and b
    ld h, b
    ldh [$e0], a
    ldh a, [$90]
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    or b
    ret nc

    ld hl, sp-$68
    ld e, h
    and h
    cp $02
    cp $02
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ld h, b
    ldh [$f0], a
    sub b
    cp b
    ret z

    ld e, b
    ld l, b
    ld a, b
    ld c, b
    ldh a, [$90]
    ld d, b
    or b
    ld hl, sp+$08
    db $fc
    inc b
    ld a, h
    add h
    cp h
    call nz, Call_008_7878
    nop
    nop
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$90]
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld e, [hl]
    ld a, l
    ld d, e
    rst $18
    and c
    rst $38
    add c
    ld sp, hl
    add a
    and [hl]
    sbc $78
    ld a, b
    nop
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ld hl, sp+$38
    or h
    ld c, h
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp-$08
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$a0], a
    and b
    ld h, b
    ret nz

    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    dec a
    dec a
    ld a, e
    ld b, a
    ld a, a
    ld b, b
    ld d, [hl]
    ld l, c
    cpl
    ld sp, $213e
    ccf
    jr nz, @+$61

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    dec de
    dec e
    ld a, $27
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    rst $38
    add d
    db $fd
    add [hl]
    rst $38
    add h
    cp a
    ret


    ld a, [hl]
    ld [hl], d
    ld a, h
    ld b, h
    db $f4
    adc h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    cp b
    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ret nz

    ldh [rNR10], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rNR10], a
    nop
    ret nz

    nop
    nop
    nop
    nop
    ret nz

    jr nz, @-$1e

    jr @-$0e

    inc c
    db $fc
    inc b
    db $fc
    ld b, $fa
    ld b, $fa
    ld b, $fa
    ld b, $fa
    ld b, $fc
    ld b, $fc
    inc b
    ldh a, [$0c]
    ldh [rNR23], a
    ret nz

    jr nz, jr_008_5b55

jr_008_5b55:
    nop
    nop
    nop
    nop
    ret nz

    or b
    ld [hl], b
    ld hl, sp+$78
    ld [hl], b
    db $fc
    ld l, b
    db $f4
    db $fc
    ld [c], a
    db $fc
    ld [c], a
    db $fc
    ld [c], a
    db $fc
    ld [c], a
    ld l, b
    db $f4
    ld [hl], b
    db $fc
    ld hl, sp+$78
    or b
    ld [hl], b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, [hl]
    ld h, d
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    dec a
    jp Jump_008_7e42


    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld l, b
    sbc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld l, b
    sbc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    ld [bc], a
    dec a
    ld a, $5f
    ld h, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld e, l
    ld h, [hl]
    dec sp
    ld h, $1f
    dec de
    rlca
    rlca
    ld bc, $e001
    ldh [$f8], a
    jr jr_008_5c0f

    call z, $06fa
    xor $9a
    db $fd
    inc de
    rst $28
    db $dd
    inc sp
    call $11ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    cp $02
    ld a, [$fc06]
    inc b
    ld hl, sp+$08
    rst $38
    add c
    cp $42
    or $4e
    rst $38
    ld a, c
    rst $08
    ld c, c
    adc a
    adc c
    adc [hl]
    adc d
    ld e, $12
    inc a
    inc h
    ld a, b
    ld c, b
    add sp, -$68
    db $f4
    adc h
    db $fc

jr_008_5c0f:
    add h
    db $fc
    add h
    ld a, h
    ld b, h
    jr c, jr_008_5c4e

    add b
    adc b
    ld b, [hl]
    ld e, h
    add b
    adc b
    scf
    ld h, e
    add b
    adc d
    rla
    ld h, l
    add b
    adc d
    inc [hl]
    ld l, d
    add b
    adc d
    inc [hl]
    ld l, d
    add b
    adc b
    dec de
    ld l, a
    ld h, b
    adc e
    ret nc

    ld [hl], c
    ld h, b
    adc e
    ret nc

    ld [hl], c
    ld h, b
    adc e
    ld [bc], a
    ld [hl], l
    ld h, b
    adc e
    ld [bc], a
    ld [hl], l
    nop
    adc d
    ld [hl], $79
    ld b, b
    adc l
    jp nc, $807b

    nop
    xor a
    nop
    inc a
    ld e, d
    ld h, [hl]
    ld a, [hl]

jr_008_5c4e:
    ld b, d
    ld a, [$427e]
    ld e, d
    ld h, [hl]
    inc a
    nop
    add b
    nop
    add b
    nop
    cp a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $81ff


    cp $ff
    add c
    cp l
    jp Jump_008_665a


    inc a
    add b
    nop
    add d
    nop
    inc bc
    rst $38
    dec b
    ld b, $0f
    ld [$1817], sp
    rra
    db $10
    rst $38
    rra
    db $10
    rla
    jr jr_008_5c8d

    ld [$0605], sp
    and b
    inc bc
    nop
    rst $38
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    daa
    db $fc
    rra

jr_008_5c8d:
    rst $38
    ld hl, sp+$0f
    ldh a, [rIE]
    ld b, b
    ld a, a
    ld h, a
    ld a, a
    rst $38
    dec a
    ld a, $3f
    jr c, @+$19

    jr @+$20

    ld de, $1cfe
    inc de
    inc d
    dec de
    inc c
    dec bc
    rlca
    add b
    nop
    add d
    nop
    ld bc, $02ff
    inc bc
    inc b
    rlca
    ld [$160f], sp
    add hl, de
    rst $38
    rra
    db $10
    cpl
    jr nc, jr_008_5cfa

    jr nz, jr_008_5d1c

    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld l, a
    ld [hl], b
    db $fd
    cp [hl]
    rst $38
    rst $30
    rst $38
    rst $38
    cp $f7
    adc a
    cp $81
    rst $38
    add b
    cp $bf
    call nz, Call_008_635f
    inc a
    ccf
    rra
    rst $28
    inc c
    rrca
    rlca
    dec b
    rlca
    ld [$ff0f], sp
    dec bc
    inc c
    rrca
    ld [$080f], sp
    rrca
    ld [$0ffe], sp
    ld [$0c0b], sp
    dec b
    ld b, $03
    add b
    nop
    add b
    nop
    adc e
    nop
    rlca
    dec de
    inc e

jr_008_5cfa:
    rst $38
    cpl
    jr nc, jr_008_5d5d

    ld h, d
    ld a, a
    ld b, d
    or e
    call z, $fdff
    add d
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, [$605f]
    scf
    jr c, jr_008_5d21

    nop
    xor a
    nop
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$01

    ld e, a

jr_008_5d1c:
    ld h, b
    ld a, a
    ld b, c
    cp a
    pop bc

jr_008_5d21:
    ld sp, hl
    add [hl]
    rst $38
    cp $81
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp $7f
    ld b, b
    cpl
    jr nc, jr_008_5d4d

    inc e
    rlca
    add d
    nop
    inc bc
    rst $38
    ld c, $0f
    rla
    add hl, de
    inc sp
    inc l
    ld a, l
    ld b, d
    rst $38
    cp [hl]
    pop bc
    rst $38
    add c
    rst $38
    add c
    ld a, [hl]
    ld b, c
    ld a, [$302f]
    dec de

jr_008_5d4d:
    inc e
    rlca
    nop
    adc e
    nop
    jr c, jr_008_5dcb

    ld c, a
    rst $38
    ld a, e
    ld b, h
    cp a
    ret nz

    cp a
    ret nz

    rst $38

jr_008_5d5d:
    add b
    rst $38
    rst $38
    add d
    rst $38
    add d
    and a
    ret c

    ld a, e
    call nz, $3fff
    ldh [rNR22], a
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    rst $38
    jr @+$01

    ld sp, $e3ff
    rst $38
    cp $ff
    rst $38
    db $fd
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rst $30
    cp $07
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ldh a, [$bf]
    jr c, jr_008_5e0d

    ld c, a
    ld a, e
    ld b, h
    ld a, a
    ld b, b
    rst $38
    ld e, [hl]
    ld h, e
    ld d, e
    ld l, l
    db $fd
    jp nz, $c07f

    rst $38
    ld a, a
    ret nz

    ld e, a
    ldh [$2f], a
    ldh a, [rNR31]
    db $fc
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    rst $38
    ret nz

    ld a, a
    ld b, c
    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    rst $38
    adc h
    rst $38
    sbc b
    rst $38
    or c
    rst $38
    db $e3

jr_008_5dc7:
    rst $38
    rst $38
    add [hl]
    rst $38

jr_008_5dcb:
    dec e
    rst $38
    ld [hl], e
    rst $38
    rst $08
    rst $38
    jp $ff3f


    ccf
    rst $38
    rst $38
    adc d
    ld a, e
    ld [$fa1b], a
    dec bc
    ld sp, hl
    add hl, bc
    cp $f9
    add hl, bc
    add sp, $18
    ret nc

    jr nc, jr_008_5dc7

    add b
    nop
    add b
    nop
    adc e
    nop
    ret nz

    or b
    ld [hl], b
    rst $38
    add sp, $18
    ld hl, sp+$28
    db $fc
    inc h
    db $fc
    inc b
    rst $38
    db $fc
    ld b, h
    db $fc
    ld b, h
    ld hl, sp+$08
    add sp, $18
    ld a, [$30d0]
    ld h, b
    ldh [$80], a
    nop
    xor a
    nop
    ret nz

    or b

jr_008_5e0d:
    ld [hl], b
    add sp, $18
    rst $38
    db $f4
    inc c
    db $fc
    inc d
    ld a, [$fe16]
    ld [bc], a
    rst $38
    cp $02
    cp $22
    cp $22
    db $fc
    inc b
    cp $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    add d
    nop
    ldh a, [rIE]
    db $ec
    inc a
    ld a, [$b616]
    ld a, d
    ei
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    ei
    db $fd
    cp $fa
    ld a, [$f26e]
    db $fc
    inc c
    ldh a, [rP1]
    adc e
    nop
    jr c, @-$22

    db $e4
    rst $38
    db $fc
    inc b
    rst $38
    rlca
    cp $03
    cp $03
    rst $38
    db $fd
    inc de
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $ffff
    ld hl, $03fe
    db $fc
    rst $38
    nop
    rst $38
    rst $38

jr_008_5e67:
    ld hl, sp-$01
    cp $ff
    rlca
    rst $38
    ld bc, $ffff
    ld a, c
    rst $38
    db $fc
    rst $38
    add [hl]
    rst $38
    ld a, d
    rst $38
    rst $18
    db $fd
    rst $38
    cp $ff
    db $fc
    ei
    db $fc
    cp $ff
    ld hl, sp-$02
    ld sp, hl
    ld a, [$07fd]
    cp a
    jr c, jr_008_5e67

    db $e4
    db $fc
    inc b
    ld_long a, $ff06
    or $1a
    rst $38
    add hl, bc
    rst $38
    ld bc, $10ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    ld a, h
    rst $38
    add e
    rst $38
    nop

jr_008_5eb1:
    rst $38
    rst $38
    inc a
    rst $38
    cp $ff
    jp $3dff


    rst $38
    ret nz

    cp $ff
    adc e

jr_008_5ebf:
    rst $38
    cp $f2
    cp $ff
    ld e, $e2
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    cp $7f
    add c
    cp a
    pop bc
    ld e, [hl]
    ld h, d
    inc a
    add b
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    add b
    xor a
    add b
    ret nz

    and b
    ldh [$30], a
    ret nc

    rst $38
    jr z, jr_008_5ebf

    jr c, jr_008_5eb1

    inc d
    db $ec
    inc a
    db $e4
    rst $38
    ld a, [hl-]
    and $1e
    ld a, [c]
    sbc e
    rst $30
    sbc a
    db $fd
    rst $38
    rst $18
    rst $30
    ld e, a
    rst $38
    ld a, e
    db $fd
    ccf
    pop af
    cp $b7
    ld sp, hl
    cp [hl]
    ld a, [c]
    ld a, h
    db $fc
    ret nz

    and b
    add b
    nop
    and e
    nop
    ld bc, $0302
    sbc e
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    rst $38
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    dec b
    ld b, $e8
    ld [bc], a
    inc bc
    ld bc, $ad00
    nop
    ld bc, $0302
    ld [bc], a
    ld sp, hl
    dec b
    ld b, $07
    dec b
    rlca
    dec b
    cp a
    rlca
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    add sp, $03
    ld [bc], a
    ld bc, $ff00
    ld l, l
    di
    ccf
    pop hl
    dec sp
    push hl
    daa
    ld sp, hl
    ld a, [$e2be]
    cp h
    db $fc
    ldh [$f0], a
    rst $38
    ld a, b
    adc b
    db $fc
    inc b
    db $fc
    inc b
    adc h
    ld [hl], h
    cp $04
    db $fc
    ld [$10f8], sp
    ldh a, [$e0]
    add b
    nop
    xor a
    nop
    inc bc
    inc b
    rlca
    ld [$ff0f], sp
    ld d, $19
    cpl
    jr nc, jr_008_5fac

    jr nz, jr_008_5fce

    ld h, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $28
    ldh a, [$fd]
    cp [hl]
    rst $38
    rst $38
    rst $30
    rst $38
    cp $f7
    adc a
    cp $81
    cp $ff
    add b
    cp a
    call nz, Call_008_635f
    ld a, a
    ei
    ld l, $3f
    jr nc, jr_008_5fce

    rra
    dec c
    ld c, $fe
    dec bc
    inc c
    rrca
    ld [$080f], sp
    rlca
    add b
    nop
    cp a
    inc bc
    inc b
    rlca
    ld [$170f], sp
    jr @+$01

    rra
    db $10
    cpl
    jr nc, jr_008_5fe9

    jr nz, jr_008_602b

jr_008_5fac:
    ld h, b
    rst $38
    ld e, a
    ld h, b
    ld e, l
    ld h, e
    ld e, a
    ld l, a
    ld e, a
    ld a, e
    rst $38
    ld a, l
    ld l, [hl]
    ld a, a
    ld a, b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    rst $38
    scf
    jr c, jr_008_5fee

    inc a
    scf
    ccf
    db $10
    rra
    xor $18
    rra
    rrca
    ld b, $07

jr_008_5fce:
    inc bc
    add b
    nop
    add b
    nop
    cp a
    inc bc
    inc c
    rrca
    jr nc, jr_008_6018

    ld e, b
    ld h, a
    rst $38
    cp h
    jp $837c


    cp $01
    cp $01
    rst $38
    cp $01
    db $fc
    add e

jr_008_5fe9:
    cp $e3
    cp $bf
    rst $38

jr_008_5fee:
    db $fc
    rst $30
    call c, $fc3f
    rlca
    db $fc
    rlca
    rst $38
    ld hl, sp+$2f
    pop af
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    ld a, a
    rst $38
    ld a, b
    ld a, a
    and c
    rst $38
    cp a
    rst $18
    or $8f
    cp $fd
    add e
    cp a
    ret nz

    ld e, a
    ld h, b
    ccf
    add b
    nop
    xor a
    nop
    rrca
    jr nc, jr_008_6056

    ld e, b

jr_008_6018:
    ld h, a
    rst $38
    db $fc
    add e
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    cp $01
    db $ec
    di
    db $fc
    cp a
    db $fc
    rst $30

jr_008_602b:
    rst $38
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    daa
    db $fc
    rra
    rst $38
    ld hl, sp+$0f
    ldh a, [rIE]
    add b
    rst $38
    jp $b3ff


    rst $38
    ld a, h
    ld a, a
    ccf

jr_008_6042:
    jr nz, jr_008_6042

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    xor a
    nop
    inc e
    dec sp
    daa
    dec a
    ld [hl+], a
    rst $38
    rst $18
    ldh [$5f], a

jr_008_6056:
    ldh [$7f], a
    pop bc
    ld a, a
    pop bc
    rst $38
    ld [hl], e
    call z, $e25d
    ccf
    ldh [$9f], a
    ld [hl], b
    rst $38
    adc e
    ld a, h
    rst $00
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    add c
    rst $38
    add e
    rst $38
    add [hl]

jr_008_6073:
    rst $38
    adc h
    rst $38
    rst $38
    sbc b
    rst $38
    or c
    rst $38

jr_008_607b:
    db $e3
    rst $38
    add [hl]
    rst $38
    pop af
    dec e
    rst $38
    ld [hl], e
    rst $38
    rlca
    cp $ff
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $bf
    ld c, $1d
    inc de
    ld l, $31
    rst $08
    ldh a, [rIE]
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, c
    and $ff
    cp [hl]
    ld h, c
    rst $28
    jr nc, jr_008_607b

    jr c, jr_008_6073

    ld a, $ff
    jp $c03f


    rst $38
    ret nz

    ld a, a
    ldh [rIE], a
    rst $38
    pop de
    ccf
    di
    rra
    or $1f
    db $fc
    sbc a
    rst $38
    ld hl, sp+$7f
    ld h, c
    rst $38
    add e
    rst $38
    ld c, $ff
    rst $18
    ccf
    rst $38
    ld hl, sp+$2f
    ldh a, [rIE]
    ldh [$fe], a
    call c, Call_008_70e3
    ld c, a
    ld h, b
    ld e, a
    ccf
    cp a
    ld [hl], b
    rst $28
    sbc a
    rst $30
    adc b
    rst $38
    add b
    rst $38
    cp a
    ret nz

    rst $38
    add h
    rst $38
    add h
    rst $08
    or b
    rst $38
    rst $30
    adc b
    cp a
    ret nz

    ld e, a
    ldh [$37], a
    ld hl, sp-$01
    rrca
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    jr nc, @+$01

    ld h, e
    rst $38
    rst $38
    rst $00
    rst $38
    adc h
    rst $38
    dec de
    rst $38
    scf
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    ld b, b
    ret nz

    add b
    adc e
    nop
    jr c, jr_008_6191

    ld c, a
    rst $38
    ld a, e
    ld b, h
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    add [hl]
    rst $38
    add c
    and a
    ret c

    ld a, e
    call nz, $3fff
    ldh [rNR22], a
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    rst $38
    jr @+$01

    ld sp, $e3ff
    rst $38
    add $ff
    rst $38
    dec c
    rst $38
    dec sp
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $38
    cp $df
    ccf
    rst $38
    rra
    rst $38
    rra
    ldh [$af], a
    nop
    inc e
    xor $f2
    cp $02
    rst $38
    cp $02
    rst $38
    ld bc, $09ff
    cp $09
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    rst $38

jr_008_6174:
    ld bc, $fffe
    nop
    rst $38
    ld a, h
    rst $38
    cp a
    rst $38
    add e
    rst $38
    nop
    rst $38
    inc a
    rst $38
    rst $38
    cp $ff
    jp $3dff


    rst $38
    cp $ff
    add b
    rst $38
    cp [hl]
    rst $38
    db $fd

jr_008_6191:
    cp $f7
    ld hl, sp+$3f
    cp a
    jr c, jr_008_6174

    db $e4
    db $fc
    inc b
    cp $02
    rst $38
    db $fd
    inc bc
    rst $38
    add l
    cp $85
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    cp $01
    cp h
    rst $38
    nop
    rst $38
    ld a, $ff
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    db $fc
    pop hl
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp $7d
    cp [hl]
    scf
    ld hl, sp+$5e
    pop hl

jr_008_61d3:
    rst $38
    cp a
    jr jr_008_61d3

    db $e4
    call c, $fc24
    inc b
    rst $38
    cp $02
    rst $38
    inc hl
    db $fd
    inc hl
    rst $38
    ld bc, $ffff
    ld bc, $41ff
    db $fd
    inc bc
    ld_long a, $ff07
    db $fc
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38

jr_008_61f7:
    rst $38
    ld c, $ff
    inc bc
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    inc c
    rst $38
    or $ff
    ld a, [$fbff]
    rst $38
    rst $00
    db $fd
    rst $38
    cp $fd
    cp $fe
    ei
    db $fc
    rst $28
    add sp, $0a
    dec c
    rlca
    adc e
    nop
    jr c, jr_008_61f7

    db $e4
    rst $38
    db $fc
    inc b
    rst $38
    rlca
    cp $03
    cp $03
    rst $38
    db $fd
    dec de
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $ffff
    ld hl, $03fe
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
    rlca
    rst $38
    ld bc, $ffff
    ld a, c
    rst $38
    db $fc
    rst $38
    add [hl]
    rst $38
    ld a, d
    rst $38
    call z, $fffd
    cp $ff
    cp [hl]
    rst $38
    db $fd
    cp $fb
    db $fc
    rra
    add b
    nop
    adc d
    nop
    add b
    ret nz

    rst $38
    and b
    ldh [$b0], a
    ret nc

    cp b
    ret z

    or h
    call z, $3cff
    call nz, $e61a
    ld a, $e2
    dec sp
    rst $20
    rst $38
    rra
    db $fd
    sbc a
    rst $30
    sbc a
    rst $38
    db $db
    db $fd
    rst $38
    ld e, a
    pop af
    ld [hl], a
    ld sp, hl
    ld a, $f2
    cp h
    db $fc
    di
    or b
    ldh a, [$60]
    ldh [$f0], a
    sub b
    cp $f8
    ld [$08f8], sp
    ld hl, sp+$08
    ldh a, [$80]
    nop
    xor e
    nop
    add b
    ret nz

    and b
    ldh [rIE], a
    ret nc

    or b
    ldh a, [$90]
    cp b
    ret z

    cp b
    ret z

    rst $38
    inc a
    db $e4
    inc a
    db $e4
    inc d
    db $fc
    sbc [hl]
    ld a, [$deff]
    cp $5e

jr_008_62ac:
    cp $76
    ld a, [$f23e]
    rst $38
    cp d
    or $bc
    db $fc
    ld [hl], b
    ldh a, [$60]
    ldh [$aa], a
    ldh [$c0], a
    add b
    nop
    add d
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
    jr nz, jr_008_62ac

    ld [hl], b
    sub b
    ld a, b
    adc b
    ld [hl], h
    adc h
    rst $38
    inc a
    call nz, $de7e
    ld a, [hl]
    or $3f
    rst $38
    rst $38
    scf
    ld sp, hl
    ccf
    pop hl
    dec sp
    push hl
    and a

jr_008_62e3:
    ld sp, hl
    rst $28
    cp [hl]
    ld [c], a
    db $fc
    ld h, b
    ldh [rNR41], a
    ldh [$bf], a
    ld hl, sp+$7c
    add h
    cp $02
    cp $02
    cp $c6
    ld a, [hl-]
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$80
    nop
    adc e
    nop
    ret nz

    jr nz, jr_008_62e3

    rst $38
    ld [hl], b
    sub b
    ld a, b
    adc b
    ld a, h
    add h
    ld a, h
    add h
    rst $38
    ld a, [hl]
    add d
    ld a, $de
    ld a, a
    push af
    ld a, a
    rst $18
    rst $38
    ld l, l
    di
    ccf
    pop hl
    dec sp
    push hl
    daa
    ld sp, hl
    ei
    cp [hl]
    ld [c], a
    cp h
    db $fc
    ldh [$60], a
    ldh [$fb], a
    ld h, b
    ldh [rLCDC], a
    ret nz

    ldh a, [$b8]
    ret z

    cp $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$00
    xor a
    nop
    ld b, $0f
    add hl, bc
    rla
    jr @+$01

    dec sp
    inc h
    add hl, sp
    ld h, $2b
    inc [hl]
    rra
    db $10
    ld [$131d], a
    ld c, $02
    dec c
    cp a
    rra
    rrca
    ld a, [bc]
    ld a, [$e8fd]
    sbc a
    rst $38
    ei
    add a
    ld l, l
    ld [hl], e
    ccf
    ld hl, $675f
    rst $38

Call_008_635f:
    ld a, e
    ld c, h
    cp a
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    rst $38
    adc e
    cp a
    call z, Call_008_40ff
    rst $28
    ld [hl], b
    cp $ff
    ld e, a
    ld a, [hl]
    jp nz, $e6da

    inc a
    add d
    nop
    ld bc, $01a8
    nop
    ld bc, $00aa
    inc bc
    rlca
    nop
    cp a
    ld [hl], $3f
    dec l
    dec a
    ld h, $3c
    daa
    rst $38
    ld a, $23
    rra
    inc de
    rla
    jr jr_008_63c3

    jr nc, @+$01

    ld e, a
    ld h, c
    ld a, a
    ld b, c
    cp [hl]
    pop bc
    rst $38
    add b
    rst $38
    rst $38
    add a
    ei
    adc h
    rst $38
    adc b
    rst $38
    sbc [hl]
    cp $bf
    pop de
    ld a, c
    ld h, a
    ld sp, $1e2f
    adc e
    nop
    inc bc
    rlca
    inc b
    rst $38
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    inc b
    ld b, $05
    xor d
    inc bc
    nop
    ld b, $0f
    xor a

jr_008_63c3:
    ld bc, $6706
    ld h, l
    ld [hl], l
    ld d, [hl]
    rst $38
    ld a, h
    ld c, a
    ld a, h
    ld b, a
    ccf
    inc hl
    rra
    db $10
    rst $38
    cpl
    ld sp, $615f
    ld a, [hl]
    ld b, c
    cp a
    ret nz

    rst $38
    rst $38
    add a

Jump_008_63de:
    ei
    adc h
    rst $38
    adc b
    rst $38
    adc b
    cp $ff
    or b
    ld a, a
    rst $08
    ld a, [$7fc7]
    add b
    nop
    xor a
    nop
    ld c, $15
    dec de
    rra
    ld de, $1eff
    ld de, $1817
    rrca
    ld [$0c0b], sp
    ld a, [$0605]
    ld [bc], a
    inc bc
    ld bc, $ff00
    ld a, h
    ld c, a
    ld a, h
    ld b, a
    ccf
    inc hl
    rra
    db $10
    rst $38
    cpl
    ld sp, $615f
    ld a, [hl]
    ld b, c
    cp a
    ret nz

    rst $38
    rst $38
    add a
    ei
    adc h
    rst $38
    adc b
    ld a, a
    ld c, b
    add sp, $3f
    jr nc, jr_008_6433

    nop
    adc e
    nop
    add b
    ret nz

    ld b, b
    rst $28
    ret nz

    ld b, b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    xor d

jr_008_6433:
    add b
    ld h, b
    ret nz

    add b
    sbc a
    ldh [$a0], a
    ldh a, [$30]
    ld hl, sp+$28
    rst $38
    ld hl, sp-$18
    call c, $fe34
    and d
    cp $5a
    rst $38
    db $fd
    rst $20
    rst $38
    ld b, l
    rst $38
    dec b
    ld e, a
    push hl
    rst $38
    rst $38
    or l
    rst $38
    dec c
    db $fd
    inc bc
    ld a, [$be06]
    db $fc
    ld hl, sp-$78
    xor b
    ret c

    ld [hl], b
    xor a
    nop
    jr nc, @-$06

    ret z

    db $f4
    inc c
    rst $38
    xor $12
    adc $b2
    ld [$fc16], a
    inc b
    ld [$e4dc], a

jr_008_6473:
    ld a, b
    ldh [$f0], a
    cp a
    cp h
    db $fc
    ld d, h
    ld a, h
    sub h
    ld a, h

jr_008_647d:
    sub h
    rst $38
    ld e, h
    or h
    ld [hl], h
    db $ec
    db $f4
    inc c
    db $fc
    inc b
    rst $38
    ld a, [$fe16]
    or d
    db $ed
    or e
    db $fd
    inc bc
    rst $38
    rst $38
    ld e, c
    rst $38
    push hl
    rst $38
    ld b, l
    rst $38
    rrca
    cp $5f
    pop af

jr_008_649c:
    ld sp, hl
    and a
    pop af
    rst $28
    ld e, $af
    nop
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    rst $38
    jr c, jr_008_6473

    jr nc, jr_008_647d

    ld hl, sp+$08
    ret c

    jr z, jr_008_649c

    ldh a, [$30]
    ret nz

    or b
    ld hl, sp-$51
    ret nz

    or b
    db $fc
    ld e, h

Call_008_64bc:
    ld a, h
    sub h
    rst $38
    ld a, h
    sub h
    ld e, h
    or h
    db $fc
    db $e4
    ld_long a, $ff06
    ld a, [$fe16]
    or d
    db $ed
    or e
    db $fd
    inc bc
    rst $38
    rst $38
    ld e, c
    rst $38
    push hl
    rst $38
    ld b, l
    db $fd
    rlca
    cp $5e
    ld [c], a
    rst $38
    cp l
    rra
    ld sp, hl
    rst $38
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0203
    rlca
    inc b
    dec bc
    inc c
    cp $0f
    ld [$080f], sp
    dec bc
    inc c
    rlca
    rst $38
    ld a, h
    sub h
    ld e, h
    or h
    db $fc
    db $e4
    ld_long a, $ff06
    ld a, [$fe16]
    or d
    db $ed
    or e
    db $fd
    inc bc
    rst $38
    rst $38
    ld e, c
    rst $38
    push hl
    rst $38
    ld b, l
    db $fd
    rlca
    ld hl, sp+$5e
    ld [c], a
    db $fc
    cp h
    nop
    nop
    adc e
    nop
    inc c
    rra
    inc de
    rst $38
    rra
    db $10
    scf
    jr z, jr_008_65a1

    ld b, b
    ld a, [hl]
    ld b, c
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    cp $7f
    ld b, a
    ld a, a
    ld c, b
    inc a
    inc sp
    rra
    adc e
    nop
    jr nc, jr_008_65b9

    ld c, a
    rst $38
    ld a, a
    ld b, b
    ccf
    jr nz, jr_008_65c0

    ld b, b
    ld a, e
    ld b, [hl]
    rst $38
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    add b
    cp a
    ret nz

    cp $ff
    ret nz

    rst $38
    or b
    ei
    adc h
    ld a, a
    adc e
    nop
    inc c
    inc de
    rra
    rst $38
    db $10
    rra
    jr z, jr_008_659e

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $47
    ld a, a
    ld c, e
    ld a, h
    inc a
    inc sp
    rra
    adc e
    nop
    jr nc, @+$51

    ld a, a
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_008_65bd

jr_008_657e:
    ld b, b
    ld a, a
    ld b, d

jr_008_6581:
    ld a, a
    rst $38
    add [hl]
    db $fd
    add [hl]
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $c0
    rst $38
    ldh a, [$bf]
    ld hl, sp-$71
    ld a, a
    adc e
    nop
    jr jr_008_65d6

    daa
    rst $38
    ccf
    jr nz, @+$31

    jr nc, jr_008_661d

jr_008_659e:
    ld b, b
    ld a, l
    ld b, e

jr_008_65a1:
    rst $38
    rst $38
    add d
    rst $38
    add e
    rst $38
    add b
    rst $38
    add b
    cp $7f
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    ld b, h
    ld a, a
    adc e
    nop
    jr nc, jr_008_657e

    ld hl, sp-$01
    sbc b

jr_008_65b9:
    ld a, b
    ret z

    jr c, jr_008_6581

jr_008_65bd:
    inc a
    db $ec
    inc e

jr_008_65c0:
    rst $38
    ld a, [$fa16]
    ld e, $e2
    ld e, $e2
    ld e, $fe
    call nz, $c43c
    inc a
    sbc [hl]
    ld a, d
    cp $8b
    nop
    jr @+$29

    ccf

jr_008_65d6:
    rst $38
    jr nz, jr_008_6618

    jr nc, jr_008_661a

    ld b, b
    ld a, a
    ld b, c
    ld a, a
    rst $38
    add e
    cp $83
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $40
    ld a, a
    ld a, b

jr_008_65ec:
    ld a, a
    ld a, h
    ld b, a
    ld a, a
    adc e
    nop
    jr nc, jr_008_65ec

    ret z

    rst $38
    ld l, b
    sbc b
    jr c, @-$36

    inc a
    call nz, $fc0c

jr_008_65fe:
    rst $38
    ld e, $f2
    ld e, $fa
    ld e, $e2
    ld e, $e2
    cp $3c
    call nz, $cc34
    ld e, [hl]
    cp d
    cp $8b
    nop
    ld h, b
    sub b
    ldh a, [rIE]
    sub b

jr_008_6616:
    ld [hl], b
    ret z

jr_008_6618:
    jr c, jr_008_65fe

jr_008_661a:
    inc e
    db $e4
    sbc h

jr_008_661d:
    rst $38
    cp $0a
    cp $8e
    ld a, [c]
    ld c, $e2
    ld e, $fe
    db $e4
    inc e
    call nz, $9cbc
    db $f4
    ld hl, sp-$75
    nop
    jr jr_008_6616

    db $fc
    rst $38
    inc b
    db $fc
    ld [$84f8], sp
    ld a, h
    sub h
    ld a, h
    rst $38
    or d
    ld l, [hl]
    or d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    cp $86
    ld a, [hl]
    rrca
    ld sp, hl
    add hl, sp
    rst $30
    cp $8b
    nop
    ld h, b
    or b
    ret nc

    rst $38
    ld [hl], b
    sub b
    jr c, @-$36

    inc e
    db $e4
    sub h

Jump_008_665a:
    db $ec
    rst $38
    adc [hl]
    ld a, d
    adc [hl]
    cp $0e
    ld a, [c]
    ld c, $f2
    cp $1c
    db $e4
    sub h
    db $ec
    xor h
    call nc, $8bf8
    nop
    jr @-$02

    db $e4
    rst $38
    db $fc
    inc b
    ld hl, sp+$08
    ld a, h
    add h
    ld e, h
    or h
    rst $38
    ld a, [hl]
    and d
    ld a, [hl]
    or d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    cp $7e
    add [hl]
    rst $38
    add hl, bc
    reti


    scf
    cp $bf
    jr nc, jr_008_66dd

    ld a, a
    ld b, b
    ld a, a
    ld hl, $ff3f
    ld b, e
    ld a, [hl]
    ld b, e
    ld a, a
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
    ld b, b
    ld a, a
    cp $f0
    cp a
    rst $38
    adc a
    cp b
    ret z

    ld [hl], b
    xor a
    nop

jr_008_66af:
    inc c
    inc de
    rra
    ld [de], a
    rra
    rst $38
    jr z, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    rst $38
    add c
    rst $38
    add e

jr_008_66c1:
    cp $83
    rst $38
    ld b, b
    ld a, a
    or $4e
    ld a, a
    scf
    add hl, sp
    daa
    ld e, $bf
    ld b, $0f
    add hl, bc
    dec bc
    inc c
    rra
    ld de, $3fff
    jr nz, jr_008_6718

    ld hl, $407f
    ld a, a

jr_008_66dd:
    ld b, b
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_008_6725

jr_008_66e6:
    jr nz, jr_008_66e6

    ld [hl], a
    ld e, b
    ld a, l
    ld c, [hl]
    ld e, a
    ld h, a
    jr c, jr_008_66af

    ld b, $09

jr_008_66f2:
    rrca
    inc c
    rrca
    ld de, $ff1f
    jr nz, jr_008_6739

    inc hl

Call_008_66fb:
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_008_6746

    jr nz, jr_008_6748

    cp $70
    ld e, a
    ld a, h
    ld c, a
    ld e, a
    ld h, a
    jr c, jr_008_66c1

    nop
    ldh [$5c], a
    cp h
    ld [hl], $ca

jr_008_6718:
    rst $38
    cp [hl]
    jp nz, $cabe

    ld a, $d2
    ccf
    ret


    rst $38
    ld a, a
    add c
    ld a, a

jr_008_6725:
    add c
    ld a, a
    sbc l
    ld l, d
    or [hl]
    cp $fe
    ld [hl+], a
    cp $22
    db $fc
    db $e4
    jr jr_008_66f2

    ld bc, $0203
    ld b, $07
    ld a, c

jr_008_6739:
    ld a, [hl]
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ld b, d
    ld a, a
    ld b, [hl]
    ld a, l
    rst $38
    add e
    rst $38

jr_008_6746:
    add b
    rst $38

jr_008_6748:
    add b
    rst $38
    ld b, b
    ld a, a
    cp $40
    ld a, a
    jr c, jr_008_6790

    ld a, e
    ld b, a
    ld a, [hl]
    cp a
    add b
    ret nz

    ld b, b
    ldh [$60], a

jr_008_675a:
    ldh a, [rNR10]
    rst $38
    cp b

jr_008_675e:
    ld l, b
    ld a, b
    ret z

    ld l, [hl]
    cp [hl]
    ld [hl], a
    sbc c
    rst $38
    dec a
    db $d3

jr_008_6768:
    dec a
    db $d3
    dec a
    db $d3
    ld d, $fa
    ld a, [$fc1c]
    ld h, b
    ldh [$80], a
    nop
    add b
    nop
    xor a
    nop
    ld bc, $0706

jr_008_677c:
    dec bc
    inc c
    db $eb
    rrca
    dec bc
    rrca
    rra
    inc e
    rra
    add d
    ccf
    rra
    cp a
    ld h, b
    ldh a, [$90]
    jr nc, jr_008_675e

    jr z, jr_008_6768

jr_008_6790:
    rst $38
    inc e
    db $f4
    inc e
    db $fc
    ld e, $e2
    ld e, $e2
    rst $38
    ld e, $e2

jr_008_679c:
    ld e, $e2
    inc a
    call nz, $cc34
    cp $58
    cp b
    ld hl, sp-$18
    ld a, b
    ld c, b
    jr nc, jr_008_675a

    nop
    jr @-$02

    db $e4
    ld e, h
    and h
    rst $38
    jr c, jr_008_677c

    inc a
    call nz, $e41c
    ld e, $e2
    rst $38

Call_008_67bb:
    ld c, $fa
    ld e, $f2
    ld e, $fa
    inc e
    db $e4
    cp $1c
    db $ec
    ld a, $d2
    ld a, [c]
    xor $1c
    xor a
    nop
    ldh [$9c], a
    ld a, h
    jp z, $ff3e

    ld b, d
    cp [hl]
    jp z, $d2be

    ld a, $c9
    ccf
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    sbc l
    ld a, a
    xor d
    db $76
    cp $3e
    ld [c], a
    ld a, $e2
    db $fc
    db $e4
    jr jr_008_679c

    nop
    jr nc, jr_008_6858

    ld e, b
    ld a, [hl]
    ld b, [hl]
    rst $38
    ld a, a
    ld b, c
    ld e, a
    ld h, b
    cpl
    jr nc, jr_008_682e

    inc a
    ret nz

    inc a
    ccf
    add b
    ccf
    cp a
    ccf
    dec a
    ccf
    dec a
    ccf
    dec a
    ccf
    db $fc
    ld a, $3f
    ld a, $3f
    ld a, $3f
    db $fc
    dec sp
    ccf
    add hl, sp
    ccf
    inc a
    ccf
    cp $2e
    ld sp, $605f
    ld a, a
    ld b, b
    ld a, a
    add b
    nop
    add b
    nop
    add d
    nop
    ld [hl], b
    rst $38
    xor [hl]
    sbc $fd
    add e
    cp a
    ret nz

    ld e, a

jr_008_682e:
    ld h, b
    ld [c], a
    db $76
    ld a, c
    ccf
    ld a, a
    cp a
    ld a, a
    di
    rst $38
    db $fc
    rst $38
    cp $ff
    xor [hl]
    rst $38
    ld a, a
    ld [hl], c
    ld a, a
    rst $38
    cp [hl]
    rst $38
    db $dd
    db $e3
    rst $38
    ret nz

    ld a, a
    add b
    nop
    xor a
    nop
    ldh a, [$fc]
    inc c
    rst $38
    inc bc
    ei
    ld a, d
    add a
    rst $10
    rst $28
    rst $38

jr_008_6858:
    ld a, [$fcff]
    adc a
    rst $38
    pop af
    rst $38
    cp $ff
    cp a
    jr nc, jr_008_68e3

    ld c, a
    ld a, a
    ld b, b
    dec a
    inc hl
    rst $38
    ld a, a
    ld b, d
    ld a, a
    ld b, e
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld e, a
    ld h, b
    cp $f7
    cp b
    rst $38
    adc a
    cp b
    ret z

    ld [hl], b
    xor a
    nop
    inc c
    rra
    inc de
    rra
    ld [de], a
    rst $38
    ccf
    jr z, jr_008_690d

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    db $fd
    add e
    rst $38
    add d
    rst $38
    add e
    ld a, a
    ld b, b
    or $7f
    ld c, [hl]
    scf
    add hl, sp
    daa
    ld e, $bb
    ld bc, $0302
    rlca
    ld a, [hl]
    ld a, c
    rst $38
    rst $28
    sub b
    rst $38
    add b
    ld a, e
    ld b, [hl]
    ld a, a
    ld b, h
    rst $38
    cp $83
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    cp $7f
    ld b, b
    dec sp
    inc a
    ld a, a
    ld b, e
    ld a, [hl]
    add b
    nop
    cp a
    rst $30
    rst $28
    inc e
    db $fd
    ld e, $de
    ccf
    rst $38
    ld [hl], $fb
    rst $28
    pop af
    ld h, l
    ei
    inc sp
    rst $38
    rst $38
    inc e
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38

jr_008_68e3:
    pop bc
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    adc a
    rst $38
    ld a, [hl]
    rst $38
    inc e
    rst $38
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    db $fc
    ret nz

    rst $38
    ld h, c
    rst $38
    ld a, [hl]
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    pop bc
    db $e3
    ld [hl+], a
    ld d, l
    rst $30
    cp a

jr_008_690d:
    rst $38
    rst $30

jr_008_690f:
    ei
    ld l, a
    pop af

jr_008_6912:
    and l
    ei
    jp $fff3


    ld e, $ff
    di
    add b
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    db $fc
    ret nz

    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    add b
    nop
    xor a
    nop
    ld bc, $0607
    rra
    jr @+$01

jr_008_6931:
    or a
    cp h
    rst $38
    cp $1f
    rst $38
    ld l, c
    sbc a
    db $fc
    rra
    rst $38
    ld hl, sp-$01
    ld bc, $bfff
    ld h, b
    sub b
    ldh a, [$d0]
    jr nc, jr_008_690f

    jr c, @+$01

    db $fc

jr_008_694a:
    inc d
    db $fc
    inc e
    ld [c], a
    ld e, $e2
    ld e, $ff
    ld [c], a
    ld e, $e2
    ld e, $c4
    inc a
    call nz, $fe3c
    sbc b
    ld a, b
    ld hl, sp-$18
    ld a, b
    ld c, b
    jr nc, jr_008_6912

    nop
    jr jr_008_694a

    db $fc
    and h
    ld a, h
    rst $38
    ret z

    jr c, jr_008_6931

    inc a
    db $e4
    inc e
    ld [c], a
    ld e, $ff
    ld [$fa1e], a
    ld d, $fa
    ld e, $e4
    inc e
    cp $ec
    inc e
    sbc $32
    ld a, [c]
    xor $1c
    cp a
    add b
    ld b, b

jr_008_6986:
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [rIE]
    jr z, jr_008_6986

    add sp, $58
    cp [hl]
    ld a, [hl]
    rst $10
    add hl, sp
    rst $38
    db $dd
    inc sp
    db $dd
    inc sp
    db $fd
    inc de
    or $1a
    ld a, [$3cdc]
    ld h, b
    ldh [$80], a
    nop
    xor a
    nop
    jr nc, jr_008_69e0

    jr z, jr_008_6a02

    ld l, b
    rst $38
    cp b
    ret z

    ld hl, sp+$08
    ldh a, [rNR10]
    ret nc

    jr nc, @+$01

    jr nc, @-$0e

    ret nc

    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rIE]
    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rIE]
    sub b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rIE]
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rIE]
    ld d, b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$08]

jr_008_69e0:
    ld hl, sp-$02
    ld a, b
    ld hl, sp-$44
    call nz, $847c
    db $fc
    add b
    nop
    add b
    nop
    add d
    nop
    inc e
    rst $38
    ld l, d
    db $76
    cp [hl]
    jp nz, $06fa

    ld a, [hl]
    add [hl]
    rst $28
    xor h
    call c, $92fc
    cp $22
    cp $ff

jr_008_6a02:
    ld [c], a

jr_008_6a03:
    cp $c6

jr_008_6a05:
    cp $84
    db $fc
    inc c
    db $fc
    rst $38
    jr jr_008_6a05

    ld a, h
    db $fc
    db $e4
    db $fc
    ld a, [hl]
    cp $be
    cp $d6
    xor $7e
    add [hl]
    db $fc
    add b
    nop
    xor a
    nop
    ldh [$f0], a
    db $10
    ret c

    jr z, jr_008_6a03

    ld hl, sp+$78
    ld hl, sp-$1c
    db $fc
    adc h
    db $fc
    cp $1e
    cp $32
    cp $c2
    cp $fc
    nop
    add d
    nop
    ld bc, $01a8
    nop
    ld bc, $00aa
    rlca
    inc bc
    ld bc, $06bf
    rst $00
    push bc
    push hl
    and [hl]
    db $f4
    sub a
    cp a
    ld bc, $0607
    rrca
    ld [$090e], sp
    rst $38
    ld b, $05
    rrca
    ld [$0a0d], sp
    rlca
    ld b, $8a
    ld bc, $0f06
    cp a
    ld b, $37
    dec [hl]
    dec a
    ld l, $3c
    daa
    rst $38
    inc a
    daa
    cpl
    inc sp
    rra
    db $10
    cpl
    ld [hl-], a
    rst $38
    ld e, a
    ld h, e
    ld a, l
    ld b, e
    cp a
    ret nz

    rst $38
    adc [hl]
    rst $38
    rst $30
    sbc c
    rst $38
    sub b
    rst $38
    sub b
    cp $a1
    or $7f
    rst $18
    ldh [$bf], a
    rst $18
    ld a, h
    xor a
    nop
    inc bc
    rlca
    inc b
    dec bc
    inc c
    rst $38
    dec e
    ld [de], a
    inc e
    inc de
    dec d
    ld a, [de]
    rrca
    ld [$0eea], sp
    add hl, bc
    rlca
    ld bc, $bf06
    rrca
    scf
    dec [hl]
    dec a
    ld l, $3c
    daa
    xor a
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    cp [hl]
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $00aa
    ld b, $0f
    ld bc, $06bf
    rst $00
    push bc
    push hl
    and [hl]
    db $f4
    sub a
    rst $38
    db $fc
    adc a
    ld a, e
    ld b, a
    cpl
    jr nc, jr_008_6af7

    jr nc, @+$01

    ld e, a
    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    add e
    rst $38
    db $fd
    add [hl]
    rst $38
    add h
    rst $38
    add h
    cp a
    rst $08
    cp $7f
    ret c

    cp a
    ldh a, [$78]
    ld [hl], a
    rra
    cp a
    ld h, b
    ldh a, [$90]
    add sp, $18
    call c, $ff24
    sbc h
    ld h, h
    call nc, $f82c
    ld [$c8b8], sp
    xor d
    ld [hl], b
    add b

jr_008_6af7:
    or b
    ld hl, sp-$41
    cp b
    ldh a, [$50]
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    rst $38
    ld d, b
    or b
    ld hl, sp-$18
    db $f4
    inc c
    ld_long a, $ff8e
    cp $da
    ld [hl], l
    db $db
    db $fd
    inc bc
    rst $38
    xor l
    rst $38
    rst $38
    ld [hl], e
    rst $38
    inc hl
    rst $38
    inc bc
    xor a
    ld [hl], c
    cp $fe
    sbc $84

jr_008_6b20:
    db $fc
    call c, $bce4
    xor a
    nop
    jr nc, jr_008_6b20

    ret z

    db $f4
    inc c
    rst $38
    xor $12
    adc $b2
    ld [$fc16], a
    inc b
    ld [$e4dc], a
    ld a, b
    ld b, b
    or b
    sbc a
    ld hl, sp+$58
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    cp a
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ld [hl], b
    sub b
    rst $38
    ld h, b
    and b
    ldh a, [rNR10]

jr_008_6b4e:
    or b
    ld d, b
    ldh [$60], a
    xor d
    add b
    jr nc, jr_008_6b4e

    ret nz

    cp a
    or b
    or $56
    ld a, [hl]
    sbc d
    db $76
    sbc d
    rst $38
    ld e, [hl]
    or d
    ld a, [$fce6]
    inc b
    ld_long a, $ff26
    cp $62
    db $dd
    ld h, e
    db $fd
    inc bc
    rst $38
    or c
    rst $38
    rst $38
    ret


    rst $38
    adc c
    db $fd
    dec bc
    cp [hl]
    add $fe
    rst $38
    ld a, c
    ccf
    pop af
    di
    rst $28
    ld a, $8b
    nop
    ret nz

    ldh [rNR41], a
    rst $38
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    xor d
    ret nz

    jr nc, jr_008_6bf4

    ret nz

    cp a
    ldh a, [$f6]
    ld d, [hl]
    ld a, [hl]
    sbc d
    db $76
    sbc d
    cp a
    jr jr_008_6bd8

    jr z, @+$36

    inc l
    ld a, a
    ld h, e
    rst $38
    cp a
    ret nc

    db $eb
    sbc h
    rst $28
    sbc b
    or $99
    rst $38
    cp a
    ret nc

    ld a, [hl]
    ld d, c
    ld e, a
    ld a, h
    ccf
    ld [hl-], a
    cp $3b
    ld h, $36
    cpl
    inc sp
    ccf
    inc e
    add b
    nop
    add b
    nop
    add d
    nop
    inc bc
    xor a
    ld bc, $3b30
    dec hl
    ccf
    ld h, $80
    nop
    adc d
    ld bc, $0100
    and d
    ld bc, $0300
    xor a

jr_008_6bd8:
    rlca
    jr nc, jr_008_6c16

    dec hl
    ccf
    ld h, $ff
    ld c, $09
    dec bc
    inc c
    dec bc
    inc c
    rla
    jr @+$01

    ccf
    jr nz, jr_008_6c69

    ld b, e
    cp a
    pop bc
    rst $38
    add b
    rst $38
    rst $38
    add a
    ei

jr_008_6bf4:
    adc h
    rst $38
    adc b
    rst $38
    cp b
    ld a, [$d07f]
    rst $38
    rst $08
    ld a, a
    nop
    and a
    nop
    ldh [rNR41], a
    ret nz

    ld b, b
    and b
    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    jr c, jr_008_6c64

    ld l, h
    ld a, a
    ld b, a
    ld a, l
    ld b, [hl]
    rst $38

jr_008_6c16:
    ld e, a
    ld l, b
    ld e, a
    ld [hl], b
    cpl
    jr nc, @+$41

    jr nz, @+$01

    ccf
    jr nz, jr_008_6c61

    jr nz, jr_008_6c53

    jr nc, jr_008_6c45

    db $10
    cp $1f
    inc e
    rla
    ld a, [de]
    rra
    ld de, $800f
    nop
    add d
    nop
    rst $38
    add sp, $77
    adc b
    rst $38
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    rst $38
    add sp, $55
    xor d
    rst $38
    nop

jr_008_6c45:
    add b
    nop
    cp a
    inc c
    ld c, $0a
    ld c, $0a
    cp $f2
    rst $38
    db $fc
    inc b
    db $fc

jr_008_6c53:
    inc b
    cp $02
    ld_long a, $ff8e
    sbc $72
    ld a, [$fe8e]
    ld [hl+], a
    rst $38
    inc bc

jr_008_6c61:
    cp $ef
    ld [hl], l

jr_008_6c64:
    db $fd
    adc e
    ld a, [c]
    cp $0c

jr_008_6c69:
    add d
    nop
    jr @+$01

    ld a, h
    ld h, h
    ld a, [$f786]
    adc c
    ld h, a
    ld e, c
    cp $f5
    adc e
    cp $82
    ld l, [hl]
    ld [hl], d
    cp h
    xor d

jr_008_6c7e:
    and b
    ret c

    ld a, h
    db $fc
    adc e
    nop
    jr nc, jr_008_6c7e

    ret z

    rst $38
    db $f4
    inc c
    xor $12
    adc $b2
    ld [$fa16], a
    db $fc
    inc b
    call c, $38e4
    ld b, b
    xor d
    ret c

    db $fc
    ld c, h
    ld hl, sp-$01
    cp [hl]
    jp z, $f78b

    sbc l
    and $ff
    ld a, b
    rst $38
    rst $38
    ld bc, $1aee
    ld e, [hl]
    or d
    db $fd
    inc bc
    rst $38
    rst $38
    ld e, c
    rst $38
    push hl
    rst $38
    ld b, l
    db $fd
    rlca
    ld a, [$e25e]
    rst $38
    cp l
    rst $38
    nop
    add b
    nop
    adc e
    nop
    ld a, b
    or [hl]
    adc $fa
    ld a, l
    add e
    or [hl]
    adc $78
    nop
    add b
    nop
    adc e
    nop
    ldh [$d8], a
    jr c, @+$01

    db $f4
    inc c
    ld a, [$f306]
    rrca
    db $fc
    inc bc
    rst $38
    rst $38
    nop
    cp h
    ld b, e
    rst $08
    ccf
    ld a, l
    rst $00
    cp $fe
    xor d
    cp $6e
    and $1a
    cp $8b
    nop
    ld c, $0d
    dec bc
    rst $38
    dec bc
    inc c
    ld h, a
    ld h, [hl]
    ld a, e
    ld e, h
    ld e, a
    ld h, b
    rst $38
    cpl
    jr nc, jr_008_6d74

    ld a, e
    rst $38
    sub c
    rst $38
    sub b
    cp $b7
    reti


    ld e, a
    ld l, d
    ccf
    ld [hl], $0f
    adc e
    nop
    ld a, e
    or l
    adc $ff
    rst $38
    adc b
    rst $38
    sub b
    xor a
    ret nc

    ld a, a
    ld h, b
    rst $38
    ccf
    jr nz, jr_008_6d5d

    jr nz, jr_008_6d5f

    jr nz, jr_008_6d51

jr_008_6d22:
    jr nc, jr_008_6d22

    rra
    rla
    ld e, $19
    rla
    jr jr_008_6d3a

    cp a
    inc bc
    dec b
    ld b, $07
    dec b
    ld b, $05
    rst $38
    ld h, a
    ld h, h
    cp e
    call c, $9bed

jr_008_6d3a:
    rst $30
    sbc d
    rst $38
    cp a
    pop de
    cp a
    ret nc

    ld e, a
    ld [hl], b
    ld d, a
    ld a, b
    cp $2b
    inc a
    ld e, $17
    dec d
    dec de
    rrca
    xor a
    nop
    inc bc
    rlca

jr_008_6d51:
    dec b
    ld b, $05
    rst $38
    dec b
    ld b, $63
    ld h, d
    or a
    call nc, $9dea

jr_008_6d5d:
    rst $38
    rst $28

jr_008_6d5f:
    sbc c
    or a
    ret c

    cp a
    ret nc

    ld e, a
    ld [hl], b
    cp $5f
    ld [hl], a
    ld a, [hl+]
    dec a
    rra
    jr jr_008_6d7d

    cp l
    inc bc
    rlca
    dec b
    ld b, $05

jr_008_6d74:
    ld b, $ff
    ld h, e
    ld h, d
    or a
    call nc, $98ef
    rst $30

jr_008_6d7d:
    sbc b
    rst $38
    cp a
    ret nc

    cp a
    ret nc

    ld e, a
    ld [hl], b
    ld d, a
    ld a, c
    db $fc
    ld a, [hl+]
    ccf
    dec e
    ld e, $05
    rlca
    xor a
    nop
    ld e, $1d
    inc de
    rrca
    ld [$05ff], sp
    ld b, $07
    dec b
    dec bc
    inc c
    dec bc
    inc c
    rst $38
    rrca
    ld [$787f], sp
    cp a
    ret z

    ei
    adc h
    cp $ad
    sbc $7f
    ld a, e
    ld a, [bc]
    dec c
    rlca
    cp a
    inc bc
    rlca
    dec b
    ld b, $05
    ld h, l
    ld h, [hl]
    rst $38
    di
    sub d
    rst $28
    sbc h
    xor d
    db $dd
    cp a
    ret


    rst $38
    ld [hl], a
    ld e, b
    ld e, a
    ld [hl], b
    dec sp
    scf
    rla
    inc e
    cp $0b
    inc c
    ld c, $09
    rrca
    add hl, bc
    ld b, $bf
    ld bc, $7372
    xor e
    jp c, $8efd

    rst $38
    rst $28
    sbc b
    cp a
    ret nc

    ld a, l
    ld h, e
    ccf
    ld [hl+], a
    rst $38
    ccf
    add hl, sp
    ld e, a
    ld h, h
    ld [hl], l
    ld c, a
    ld h, a
    ld e, h
    ld a, [$5c6b]
    ld [hl], $37
    ld bc, $8200
    nop

jr_008_6df4:
    add b
    rst $38
    ld [hl], b
    ldh a, [$ec]
    inc e
    ld a, [$fe16]
    ld a, [de]
    rst $38
    cp a
    ret


    rst $38
    ld b, c
    ld a, a
    adc c
    rst $38
    pop de
    cp $ed
    inc sp
    cp a

jr_008_6e0b:
    ld h, d
    scf
    db $ec
    rst $38
    xor a
    nop
    jr jr_008_6e0b

    add sp, -$08
    jr z, @+$01

    db $dd
    ld l, l
    ei
    ld c, a
    ld [hl], l
    adc d
    rst $28
    db $10
    rst $38
    rst $38
    nop
    ld a, l
    jp $a7fd


    db $fd
    ld h, a
    cp $fe
    ld a, [bc]
    cp $86
    rst $28
    sbc c
    rst $38
    cp a
    or b
    cp b
    xor b
    inc e
    inc d
    db $ec
    db $f4
    rst $38
    ld a, [$fe06]
    ld [bc], a
    ld a, c
    adc a
    cp a
    push de
    rst $38
    db $eb
    sbc l
    rst $38
    ld hl, $81ff
    db $fd
    ld h, e
    cp $f6
    ld c, $cf
    add hl, sp
    di
    rst $38
    ld e, $af
    nop
    jr nc, @+$3a

    jr z, jr_008_6df4

    sub h
    rst $38
    ld l, d
    or $fe
    ld [bc], a
    db $fd
    inc bc
    cp l
    rst $00
    rst $38
    rst $18
    ld l, e
    rst $30
    call $11ff
    rst $38
    ld b, c
    cp $fd
    inc sp
    ld a, [$8786]
    db $fd
    rst $38
    cp a
    ld h, b
    ld [hl], b

jr_008_6e76:
    ld d, b
    cp b
    xor b
    db $ec
    ld [hl], h
    rst $38
    ld a, [$fe06]
    ld [bc], a
    ld e, a
    db $e3
    rst $28
    or l
    rst $38
    ei
    ld h, a
    rst $38
    add hl, bc
    rst $38
    ld hl, $dbfd
    cp $be
    ld h, d
    db $e4
    inc a
    db $fc
    db $f4
    call c, Call_008_70bf
    ld l, b
    ld e, b
    sbc h
    db $e4
    cp $02
    rst $38
    cp [hl]
    add $df
    ld l, e
    push af
    rst $08
    rst $38
    ld de, $ffff
    ld b, c
    rst $38
    ld sp, $03fd
    cp $02
    xor $f4
    inc c
    db $fc
    or h
    xor h
    jr jr_008_6e76

    jr c, @+$36

    inc l
    sbc h
    sub h
    ld l, d
    or $ff
    cp $02
    db $fd
    inc bc
    cp l
    rst $00
    rst $18
    ld l, e
    rst $38
    rst $30
    call $11ff
    db $fd
    ld b, e
    cp $b2
    cp $ff
    add l
    rst $28
    sbc c
    or $fa
    inc c
    sbc e
    ret nz

    ld b, b
    sbc b
    ld a, h
    db $f4
    rst $38
    ld c, h
    or h
    db $ec
    inc d
    ld a, d
    add [hl]
    cp d
    add $ff
    and $9a
    sbc $3a
    cp $22
    cp $86
    cp $ff
    add hl, bc
    db $dd
    inc sp
    ld sp, hl
    rst $30
    ld e, $80
    nop
    add b
    nop
    add b
    nop
    cp [hl]
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    xor a
    nop
    ld h, b
    ldh [$a0], a
    ldh [$a0], a
    rst $38
    ld h, b
    and b
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ld b, b
    and b
    add b
    nop
    add b
    nop
    nop
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld b, l
    cp a
    ld l, b
    rst $38
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ccf
    and b
    ld h, b
    and b
    ret nz

    nop
    add b
    nop
    add b
    nop
    cp a
    rst $38
    ld a, [hl]
    add c
    sbc a
    ld h, b
    rst $28
    db $10
    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    rst $18
    ccf
    xor $71
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    ei
    add a
    rst $30
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    cp a
    rst $08
    ld [hl], a
    rst $08
    ld e, e
    rst $20
    xor a
    ld [hl], b
    rst $38
    db $db
    inc a
    rst $30
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    ld b, h
    cp a
    ld l, b
    rst $38
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ccf
    and b
    ld h, b
    and b
    ret nz

    nop
    add b
    nop
    cp a
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    cp $04
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0080
    rst $38
    rst $18
    ccf
    xor $71
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    add b
    ei
    add a
    rst $30
    adc a
    rst $38
    adc a
    rst $38
    cp a
    rst $08
    ld a, a
    rst $08
    ld d, a
    rst $28
    xor e
    ld [hl], a
    rst $38
    db $db
    inc a
    rst $30
    rrca
    rst $38
    ld bc, $01ff
    adc e
    nop
    rlca
    dec de
    inc e
    rst $38
    cpl
    jr nc, @+$61

    ld h, b
    ld e, a
    ld h, b
    cp a
    ret nz

    rst $38
    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$5f], a
    ld h, b
    cp $4f
    ld [hl], b
    inc hl
    inc a
    jr @+$21

    rlca
    rst $38
    cp $01
    cp l
    jp Jump_008_63de


    xor $33
    rst $38
    sbc $33
    db $76
    sbc e
    or a
    db $db
    push af
    db $db
    rst $38
    push af
    db $db
    rst $30
    reti


    sbc [hl]
    pop af
    ld l, a
    or b
    rst $38
    ld e, a
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$7f
    add b
    sbc a
    ldh [rIE], a
    adc a
    rst $38
    db $fd
    rst $38
    add [hl]
    ld a, e
    rst $38
    rst $30
    rrca
    db $dd
    ld a, $ef
    ldh a, [$9f]
    ldh [$a0], a
    ld a, a
    nop
    add b
    nop
    adc b
    nop
    ld bc, $81bf
    ld [hl], c
    pop af
    rst $08
    ld a, $f3
    ld c, $ff
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    cp $01
    rst $38
    ld bc, $feff
    ld bc, $c3bd
    sbc $63
    xor $33
    rst $38
    ld e, [hl]
    or e
    or [hl]
    db $db
    rst $30
    db $db
    push af
    db $db
    rst $38
    push af
    db $db
    or a
    reti


    ld e, [hl]
    or c
    rst $28
    jr nc, @+$01

    ld e, a
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    rst $30
    rrca
    db $dd
    ld a, $ef
    ldh a, [$9f]
    ldh [$a0], a
    ld a, a
    nop
    add b
    nop
    cp a
    ldh [rSVBK], a
    sub b
    ld hl, sp+$08
    ld hl, sp+$08
    rst $38
    ld l, h
    sbc h
    rrca
    ei
    ld e, $f1
    rst $28
    ldh a, [$fd]
    rla
    jr jr_008_709d

    inc c
    dec b
    ld b, $07
    rst $38
    dec bc
    dec c
    ld d, $19
    ld d, $19

jr_008_709d:
    ld l, $31
    rst $38
    ld l, $31
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    rst $38
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [rIE], a
    sbc a
    ldh [$9f], a
    and $8e
    rst $30
    set 6, a
    rst $38
    ld c, a
    di
    rst $00
    ld a, b

Call_008_70bf:
    rst $20
    ld a, b
    and e
    ld a, h
    rst $38
    di
    ccf
    rst $28
    inc e
    rst $38
    ld [$18f7], sp
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    sbc a
    ld [hl], b
    scf
    ld hl, sp-$60
    rst $08
    nop
    rst $38
    ret nc

    ldh a, [$58]
    cp b
    ld hl, sp+$08
    db $e4
    inc a
    rst $38
    db $f4

Call_008_70e3:
    ld a, h
    db $fc
    ld a, h
    ld a, [$be7e]
    ld a, d
    rst $38
    cp [hl]
    ld a, d
    ld e, [hl]
    or d
    cp $82
    cp d
    add $ff
    add $7e
    sbc $3a
    cp $12
    ld_long a, $ff16
    jp c, $bc36

    ld h, h
    db $f4
    db $ec
    ld hl, sp-$38
    rst $38
    ldh a, [$d0]
    ld hl, sp-$48
    ld d, h
    db $ec
    cp [hl]
    jp nz, Jump_008_7dff

    add e
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    and b
    cp $00
    add b
    nop
    cp a
    ld a, b
    sbc h
    db $e4
    ld a, $c2
    ld a, $c2
    rst $38
    ld a, [$52e6]
    cp [hl]
    db $f4
    inc e
    ret c

    jr c, @+$01

    ldh [rNR41], a
    and b
    ldh [$c0], a
    ld b, b
    ldh [rNR41], a
    rst $38
    ret nc

    ldh a, [$58]
    cp b
    ld hl, sp+$08
    db $f4
    inc c
    rst $38
    db $fc
    inc [hl]
    db $f4
    ld a, h
    ld a, [$fe7e]
    ld a, d
    rst $38
    cp $7a
    ld a, $fa
    sbc $b2
    cp d
    add $ff
    add $7e
    sbc $3a
    cp $12
    ld_long a, $ff16
    jp c, $bc36

    ld h, h
    db $f4
    xor h
    ld hl, sp+$48
    rst $38
    ldh a, [$50]
    ld hl, sp-$48
    ld d, h
    db $ec
    cp [hl]
    jp nz, Jump_008_7dff

    add e
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    and b
    cp $00
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0f0e
    or a
    cp b
    sub $6f
    rst $38
    rst $18
    ccf
    rst $38
    rrca
    rst $38
    ld b, $f7
    inc c
    rst $38
    ei
    inc c
    rst $28
    sbc b
    or a
    ret c

    rst $38
    ldh a, [rIE]
    xor $f1
    sbc $e1
    cp $01
    cp $01
    rst $38
    cp $01
    xor a
    ld d, b
    push af
    ld a, [bc]
    cp $01
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $28
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    inc bc
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
    and b
    rst $38
    nop
    nop
    adc e
    nop
    jr c, jr_008_7210

    inc h
    rst $38
    db $ec
    db $f4
    cp $02
    db $fd
    inc bc
    ld [hl], a
    call $ffff
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $fdfe
    inc bc
    cp $82
    rst $30
    adc l
    rst $38
    adc e
    nop
    ld c, $0f
    add hl, bc
    rst $38
    rrca
    ld [$0605], sp
    rlca
    inc b
    db $eb
    db $ec
    rst $38
    ld e, a
    cp b
    rst $30
    jr @+$01

    db $10
    ld a, a
    sub b
    cp $ff
    sub a
    ld e, d
    ld l, l
    ccf
    jr c, @+$11

    add b
    nop

jr_008_7210:
    add b
    nop
    add b
    ld bc, $0080
    add d
    nop
    jr @+$01

    db $ec
    db $f4
    cp $02
    db $fd
    inc bc
    ld [hl], a
    call $ffff
    adc c
    rst $38
    call $cd33
    rst $38
    ld de, $fdfe
    inc bc
    cp $82
    rst $30
    adc l
    rst $38
    add d
    nop
    ld b, $ff
    rrca
    add hl, bc
    dec c
    ld a, [bc]
    rlca
    inc b
    dec bc
    inc c
    rst $38
    rst $18
    ret c

    rst $30
    jr c, @+$01

    db $10
    rst $38
    db $10
    cp $ff
    rla
    cp d
    call Call_008_787f
    rrca
    add b
    nop
    add b
    nop
    adc a
    nop
    ldh a, [rP1]
    ei
    nop
    rst $38
    db $fd
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
    add e
    nop
    ld a, b
    nop
    rst $38
    cp $00
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
    adc a
    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    cp $00
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
    adc a
    nop
    ld a, $00
    rst $38
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
    add b
    nop
    add b
    nop
    rst $38
    ld [hl], b
    nop
    ld hl, sp+$00
    ld sp, hl
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
    nop
    add b
    nop
    rst $38
    jr c, jr_008_72b7

jr_008_72b7:
    ld a, a
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
    nop
    add b
    nop
    rst $38
    inc bc
    nop
    rrca
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
    add b
    nop
    add b
    nop
    cp a
    nop
    ret nz

    nop
    db $ec
    nop
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
    add b
    nop
    add b
    nop
    adc a
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    inc a
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
    nop
    add b
    nop
    adc a
    nop
    ld bc, $0300
    nop
    rst $38
    adc a
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
    add e
    nop
    add b
    nop
    rst $38
    db $d3
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    add b
    nop
    jp $ff00


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
    add b
    nop
    adc a
    nop
    cp b
    nop
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
    add b
    nop
    add b
    nop
    rst $38
    add b
    nop
    ldh [rP1], a
    di
    nop
    rst $30
    nop
    rst $38
    ei
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
    cp a
    nop
    inc e
    nop
    ld a, $00
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    inc e
    nop
    cp $00
    cp $00
    cp $00
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    cp d
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    adc a
    nop
    ret nz

    nop
    ldh [rP1], a
    rst $38
    add sp, $00
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    ld l, b
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    inc bc
    rlca
    inc b
    ld a, [$0605]
    ld [bc], a
    inc bc
    ld bc, $bf00
    add hl, sp
    ld d, l
    ld l, l
    ld a, [hl]
    ld b, a
    ld a, e
    ld b, [hl]
    rst $38
    ld e, a
    ld h, d
    ccf
    ld [hl+], a
    cpl
    inc sp
    rla
    ld a, [de]
    ld a, [$0e0b]
    ld b, $07
    ld bc, $8b00
    nop
    inc bc
    rlca
    inc b
    rst $38
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    inc b
    ld b, $05
    xor d
    inc bc

jr_008_7408:
    dec c
    rra
    inc bc
    cp a
    ld a, [de]
    rra
    dec d
    push de
    jp c, Jump_008_7eb1

    rst $38
    pop af
    ld e, $ff
    rrca
    rst $18
    ldh [$bf], a
    ret nz

    rst $38
    ld a, a
    add b
    rst $38
    nop
    db $ed
    ld e, $ff
    nop
    rst $38
    rst $38
    dec e
    rst $28
    di
    rst $18
    ld sp, $10ff
    cp $1d
    di

jr_008_7431:
    dec de
    or $1f
    rst $38
    ldh [$af], a
    nop
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    rst $38
    jr c, jr_008_7408

    jr nc, @-$2e

    ld hl, sp+$08
    ret c

    jr z, jr_008_7431

    ldh a, [$30]
    ret nz

    add b
    ret nz

jr_008_744c:
    cp a
    ldh [$c0], a
    ld b, b
    ret c

    ld e, b
    db $fc
    ld h, h
    rst $38
    ld a, h
    call nz, $8cf4
    ret c

    jr c, jr_008_744c

    db $10
    rst $38
    add sp, $18
    ld hl, sp+$08
    ld d, h
    db $ec
    db $f4
    inc c
    rst $38
    db $fc
    ld h, h
    cp $9e
    db $fd
    inc de
    rst $38
    ld hl, $71fe
    xor a
    or c
    rst $28
    ld [c], a
    cp $1c
    add b
    nop
    xor a
    nop
    ld bc, $0203
    inc bc
    ld [bc], a
    rst $08
    ld [bc], a
    inc bc
    ld a, $3f
    ld a, a
    ld b, d
    cp $ff
    add e
    cp $83
    cp e
    add $7f
    add b
    nop
    add b
    nop
    add b
    nop
    xor d
    nop
    inc bc
    ld bc, $ff03
    rlca
    dec b
    ld a, [bc]
    dec c
    add hl, sp
    ld a, $5c
    ld h, a
    rst $38
    rst $38
    add e
    rst $30
    ld [$10ef], sp
    and $1f
    rst $38
    rst $18
    jr nz, @+$01

    adc $f7
    add hl, de
    rst $38
    db $10
    cp $df
    ldh a, [$fe]
    ld hl, $3ff1
    rst $38
    add b
    nop
    add b
    nop
    xor a
    nop
    inc e
    ld a, [hl]
    ld h, d
    ld_long a, $ff86
    rst $28
    sub c
    rst $28
    sub c
    ld sp, hl
    rst $00
    xor $f2
    cp a
    cp $b8
    ld e, b
    ld [hl], b
    sub b
    ld d, b
    or b
    rst $38
    ld hl, sp-$38
    db $fc
    inc b
    ld [$ae16], a
    ld [hl], d
    rst $38
    cp $0a
    ld [hl], h
    cp h
    db $fc
    call z, $8e7a
    cp $fa
    ld c, $be
    add $ce
    ld a, d
    cp $80
    nop
    add b
    nop
    or a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    and b
    ld bc, $0000
    rst $38
    rst $18
    ccf
    xor $71
    ld a, a
    ret nz

    or [hl]
    rst $08
    rst $38
    rst $28
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $18
    db $76
    rst $08
    ld e, a
    ldh [$af], a
    ld [hl], b
    rst $38
    db $db
    inc a
    rst $30
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    cp $01
    cp l
    jp Jump_008_63de


    xor $33
    rst $38
    ld e, [hl]
    or e
    or $9b
    rst $30
    sbc e
    push af
    sbc e
    rst $38
    ld [hl], l
    sbc e
    rst $30
    add hl, de
    sbc $31
    rst $28
    jr nc, @+$01

    ld e, a
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    ldh a, [$58]
    cp b
    ld hl, sp+$08
    db $f4
    inc c
    rst $38
    db $fc
    inc b
    db $fc
    inc [hl]
    ld a, [c]
    ld a, [hl]
    cp $7a
    rst $38
    cp $7a
    ld a, $fa
    cp [hl]
    ld a, [$f69a]
    rst $38
    add $7e
    sbc $3a
    cp $12
    ld_long a, $ff16
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    cp $85
    rst $38
    ld b, h
    cp a
    ld l, b
    rst $38
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ccf
    and b
    ld h, b
    and b
    ret nz

    nop
    ld hl, sp+$7f
    add b
    sbc a
    ldh [rIE], a
    sbc a
    rst $38
    cp $83
    ld a, l
    cp $03
    rst $38
    rst $30
    rrca
    db $dd

jr_008_759d:
    ld a, $ef
    ldh a, [$9f]
    ldh [$a0], a
    ld a, a
    nop
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    ld a, a
    add h
    cp a
    call nz, $c8ff
    ld a, [$d0bf]
    rra
    ldh [rIE], a
    nop
    add b
    nop
    rst $38
    dec bc
    inc c
    rla
    jr jr_008_75dc

    add hl, de
    ld l, $31
    rst $38
    ld l, $31
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    rst $38
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [rIE], a

jr_008_75dc:
    sbc a
    ldh [$9f], a
    and $8e
    rst $30
    ld c, e
    ld [hl], a
    rst $38
    rst $08
    di
    rst $00
    ld a, b
    rst $28
    ld a, a
    or a
    ld a, b
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $38
    jr nz, jr_008_759d

    ld [hl], b
    add sp, $3b
    db $fc
    rst $00
    nop
    add b
    nop
    add b
    nop
    cp a
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$38
    rst $38
    or a
    ld l, a
    ld a, $e1
    ld a, a
    ret nz

    xor a
    or b
    rst $38
    rra
    jr @+$17

    ld e, $16
    dec de
    cpl
    ld sp, $2eff
    ld sp, $704f
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    rst $38
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [rIE], a
    sbc a
    ldh [$9f], a
    and $8e
    rst $30
    ld c, e
    ld [hl], a
    rst $38
    rst $08
    di
    rst $00
    ld a, b
    rst $20
    ld a, b
    ld [c], a
    ld a, l
    rst $38
    or c
    ld a, a
    ld sp, hl
    ccf
    db $ed
    rra
    rst $38
    ld b, $ff
    db $fd
    ld b, $f7
    inc c
    rst $20
    inc e
    adc a
    ld a, h
    add sp, $35
    or $c3
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
    ret nz

    ld b, b
    ld a, [$c040]
    ld b, b
    ret nz

    add b
    nop
    add b
    nop
    add b
    nop
    cp a
    rlca
    add hl, bc
    ld c, $13

jr_008_7678:
    inc e
    inc de
    inc e
    cp $11
    ld e, $10
    rra
    ld [$070f], sp
    rst $38
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    rra
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$f7ff], sp
    jr jr_008_7678

    jr nc, @+$01

    ldh a, [$1f]
    db $10
    add sp, $14
    dec de
    rrca
    nop
    rst $38
    ld a, e
    db $ec
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    xor $f1
    sbc $e1
    cp $01
    cp $01
    rst $38
    cp $01
    xor a
    ld d, b
    push af
    ld a, [bc]
    cp $01
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $28
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ret nz

    cp a
    ld [hl], b
    rst $38
    db $ed
    ld e, $f7
    rrca
    ei
    rlca
    rst $38
    inc bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fde8
    inc bc
    cp $00
    add b
    nop
    add b
    nop
    cp a
    ld bc, $0f0e
    scf
    jr c, jr_008_7748

    ld l, a
    rst $28
    rst $38
    sbc a
    rst $38
    rst $18

jr_008_76f8:
    ld a, $f7
    inc c
    rst $38
    ei
    inc c
    rst $28
    jr jr_008_76f8

    jr @-$1f

    or b
    rst $38
    xor $f1
    sbc $e1
    cp $01
    cp $01
    rst $38
    cp $01
    xor a
    ld d, b
    push af
    ld a, [bc]
    cp $01
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $28
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    rrca
    rst $30
    ld hl, sp-$01
    rst $18
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    ret z

    nop
    rst $38
    nop
    rst $38
    jp c, $bc36

    ld h, h
    rst $30
    xor a
    rst $30
    ld c, d
    db $fc

jr_008_7748:
    rst $30
    ld e, d
    db $db
    cp [hl]
    ld a, [hl]
    rst $38
    ret z

    ld [hl], d
    rst $38
    nop
    add b
    nop
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    ei
    db $fc
    sbc a
    rst $38
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
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    jp c, $bc36

    ld h, h
    cp $be
    db $dd
    db $e3
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    add sp, $01
    rst $38
    cp $00
    xor a
    nop
    ld bc, $0302
    inc b
    rlca
    rst $30
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    inc b
    rst $38
    adc e
    adc h
    ld a, a
    ld hl, sp-$33
    ld a, $f2
    rrca
    rst $38
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    cp $01
    rst $38
    ld bc, $00af
    ld e, $27
    add hl, sp
    ld c, a
    ld [hl], b
    rst $38
    ld c, a
    ld [hl], b
    ld b, [hl]
    ld a, c
    ld b, b
    ld a, a
    ld hl, $f63f
    ld e, $1f
    inc bc
    ld [bc], a
    inc bc
    ld bc, $018f
    inc bc
    ld [bc], a
    rlca
    inc b
    add b
    nop
    add b
    nop
    cp a
    add b
    ld [hl], b
    ldh a, [$cc]
    inc a
    ld a, [c]
    ld c, $ff
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    cp $01
    rst $38
    ld bc, $daff
    ld [hl], $bc

jr_008_77e9:
    ld h, h
    db $f4
    xor h
    ld hl, sp+$48
    rst $38
    ldh a, [$50]
    ldh [$a0], a
    ld b, b
    ret nz

    ldh [$a0], a
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_008_77e9

    and b
    ld h, b
    ret nz

    nop
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    add d
    ld a, a
    jp nz, $ffff

jr_008_7810:
    ld [hl+], a
    rst $38
    inc d
    rst $28
    inc e
    rst $38
    ld [$ffff], sp
    ld [$e81f], sp
    rrca
    rst $38
    jr @+$01

    add sp, $64
    rst $20
    add e
    nop
    cp a
    ld bc, $0607
    rrca
    ld [$101f], sp
    rst $38
    ccf
    jr nz, jr_008_7810

    ldh [$7e], a
    pop bc
    inc a
    jp $bcff


    jp $c7b8


    cp b
    rst $00
    sub b
    rst $28
    cp $50
    ld l, a
    ld b, b
    ld a, a
    jr nz, jr_008_7885

    rra
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rst $38
    call nz, $24ff
    rst $38

jr_008_7858:
    jr @+$01

    rst $28
    jr @+$01

    ld [$0fff], sp
    ld hl, sp+$08
    add sp, -$18
    jr @-$0e

    nop
    add b
    nop
    cp a
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    rst $38
    ldh [rNR41], a
    ld h, b
    and b
    jr nz, jr_008_7858

Call_008_7878:
    ld b, b
    ret nz

    and b
    add b
    nop
    xor a
    nop

Call_008_787f:
    ldh [rSVBK], a
    sub b
    ld hl, sp+$08
    rst $38

jr_008_7885:
    ld hl, sp+$08
    xor b
    ret c

    ret z

    ld a, b
    ret nc

    ld [hl], b
    ld hl, sp+$60
    ldh [rLCDC], a
    ret nz

    add b
    xor a
    nop
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    add d
    nop
    add b
    add e
    add b
    ld b, b
    ret nz

    rst $38
    pop hl
    ld hl, $17f6
    ei
    inc c
    cp $07
    rst $38
    ld a, a
    add e
    cp l
    jp $46fb


    rst $10
    ld l, h
    add b
    nop
    add b
    nop
    cp a
    rrca
    inc de
    inc e
    daa
    jr c, jr_008_78fd

    jr c, @+$01

    ld d, a
    ld l, h
    db $fc
    add a
    db $f4
    ld c, a
    rst $38
    cpl
    add d
    nop
    rst $38
    rst $30
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $38
    adc b
    rst $38
    and b
    rst $38
    nop
    add b
    nop
    rst $38
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    rst $30
    rrca
    rst $18
    inc a
    rst $28
    ldh a, [$7f]
    add b
    add sp, -$01
    nop
    rst $38
    nop
    cp a

jr_008_78f9:
    ldh a, [$e8]
    jr jr_008_78f9

jr_008_78fd:
    inc b
    ld_long a, $ff06
    cp $02
    add [hl]
    ld a, d
    ld [bc], a
    cp $02
    cp $ff
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    cp $08
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$80], a
    rst $38
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    ld a, [$0ff4]
    rst $18
    ccf
    ldh [rP1], a
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    cp a
    add hl, sp
    ld e, l
    ld h, l
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld b, c
    cp $7f
    ld b, b
    ld e, a
    ld h, b
    ld l, $31
    rra
    add b
    nop
    add d
    nop
    ld bc, $01bf
    ld a, $3f
    ld a, h
    ld b, e
    cp $81
    cp $fe
    add c
    rst $38
    add e
    or l
    call $8078
    nop
    cp a
    ld a, b
    or h
    call z, $82fe
    rst $38
    add c
    cp $bf
    ret nz

    ld e, [hl]
    ld h, c
    ld [hl], $39
    rrca
    adc b
    ld bc, $8000
    nop
    xor a
    nop
    inc a
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld b, d
    rst $38
    ld a, [hl]
    ld b, d
    ld a, a
    ld b, c
    ld a, $21
    cpl
    jr nc, @-$16

    rla
    jr jr_008_7999

    nop
    adc d
    ld bc, $0100
    cp a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a

jr_008_7999:
    inc bc
    ld [bc], a
    inc bc
    ld a, h
    ld a, a
    cp [hl]
    pop bc
    cp $ff
    add b
    cp $81
    cp l
    jp $807e


    nop
    add b
    nop
    adc e
    nop
    rrca
    rra
    db $10
    rst $38
    ccf
    jr nz, jr_008_79ee

    ld h, $30
    cpl
    jr c, jr_008_79e1

    add b
    nop
    add b
    nop
    adc e

jr_008_79bf:
    nop
    add b
    ld h, b
    ldh [rIE], a
    ret nc

    jr nc, jr_008_79bf

    ld [$c43c], sp
    or $2a
    add b
    nop
    add d
    nop
    inc e
    rst $38
    ld a, $22
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    cp a
    pop bc
    rst $38
    cp $82
    cp $82
    db $fc
    add h

jr_008_79e1:
    cp b
    ret z

    add b
    nop
    cp a
    rra
    ld h, b
    ld a, a
    add e
    rst $38
    add a
    db $fc
    rst $38

jr_008_79ee:
    rlca
    db $fc
    dec b
    cp $02
    rst $38
    inc bc
    db $fc
    cp $03
    db $fc
    ld h, a
    cp $ff
    sbc c
    rst $38
    add b
    nop
    cp a
    ld e, $61
    ld a, a
    add a
    rst $38
    ld c, $f9
    rst $38
    rrca
    ld hl, sp+$05
    cp $03
    db $fc
    inc bc
    db $fd
    cp $c3
    cp $a3
    ld a, [hl]
    ld l, a
    cp a
    rst $38
    add d
    nop
    rrca
    rst $38
    jr nc, jr_008_7a5e

    ld b, c
    ld a, a
    add e
    cp $83
    cp $ff
    ld [bc], a
    rst $38
    ld bc, $81ff
    cp $c1
    cp $fe
    and c
    ld a, a
    ld [c], a
    ccf
    rst $38
    cp $01

jr_008_7a36:
    add d
    nop

jr_008_7a38:
    rlca
    rst $38
    jr jr_008_7a5b

    jr nz, jr_008_7a7d

    ld b, b
    ld a, a
    add c
    rst $38
    rst $38
    add d
    rst $38
    inc bc
    cp $01
    cp $63
    db $fc
    cp $f3
    sbc h
    db $d3
    cp a
    ld a, a
    ld a, h
    rlca
    rst $38
    rst $18
    jr nz, jr_008_7a36

    jr nz, jr_008_7a38

    ldh [rIF], a

jr_008_7a5b:
    ldh a, [rIE]
    rrca

jr_008_7a5e:
    ldh a, [rIF]
    ld hl, sp+$1f
    db $e4
    ld l, $f5
    rst $38
    dec de
    db $fc
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    cp $3e
    pop bc
    rst $28
    sub c
    ei
    sbc l
    ld [hl], a
    rst $38
    ld e, $13
    ld e, $13
    inc c
    rrca

jr_008_7a7d:
    ld [$ff0f], sp
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc b
    rlca
    rst $28
    ld [bc], a
    inc bc
    ld bc, $0706
    rrca
    ld [$1ffe], sp
    db $10
    rra
    db $10
    rla
    jr jr_008_7aa7

    cp a
    add hl, de
    ccf
    ld h, $33
    inc l
    inc hl
    inc a
    rst $38
    ld hl, $413e
    ld a, a
    ld b, b
    ld a, a

jr_008_7aa7:
    ldh [$bf], a
    rst $38
    ret nz

    cp a
    add b
    rst $38
    ld b, [hl]
    ld a, a
    ld c, a
    ld a, c
    cp $36
    add hl, hl
    inc [hl]
    dec hl
    rra
    db $10
    rrca
    rst $38
    add hl, bc
    rrca
    db $10
    rra
    jr nz, jr_008_7b00

    ld b, b
    ld a, a
    rst $38
    ld b, b
    ld a, a
    add c
    rst $38
    jp $c3be


    cp [hl]
    rst $38
    ld h, e
    ld a, [hl]
    ld de, $111f
    rra
    ld [$fe0f], sp
    add hl, bc
    rrca
    rlca
    ld b, $07
    inc b

jr_008_7adc:
    inc bc
    add b
    nop
    xor a
    nop
    ret nz

    jr c, jr_008_7adc

    cp h
    db $e4
    rst $38
    db $ec
    ld [hl], h
    db $fc
    inc b
    ld a, [$fe4e]

jr_008_7aee:
    ld c, d
    cp $fe
    ld [bc], a
    cp $02
    db $f4
    inc c
    ld hl, sp-$80
    nop
    xor a
    nop
    ret nz

    jr nc, jr_008_7aee

    ld hl, sp-$38

jr_008_7b00:
    rst $38
    db $fc
    inc b
    ld a, [$fe4e]
    ld c, d
    cp $82
    ld a, [$43ff]
    ld a, a
    push bc
    cp $80
    add b
    nop
    cp a
    ret nz

    xor h
    db $ec
    sbc $72
    cp $32
    rst $38
    or $3a

jr_008_7b1d:
    cp $02
    db $fd
    daa
    rst $38
    dec h
    cp $ff
    add c
    db $fd
    ld b, e
    cp e
    ld a, l
    rst $00
    add d
    nop
    add b
    rst $38
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$32
    cp $ff
    rst $28
    add hl, sp
    rst $38
    ld sp, $46be
    ld a, [$fe06]
    cp $4a
    cp $4a
    ld a, [$fc86]
    cp a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret c

    ret nz

    ld b, b
    ret nz

    add b
    ld hl, sp-$40
    ld b, b
    ret nz

    ld b, b
    add b
    add d
    add b
    nop
    rst $38
    db $76
    xor d
    db $fc
    call nz, $847c
    ld a, d
    add [hl]
    rst $38
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld h, $da
    rst $38
    ld l, l
    sub e
    rst $30
    adc c
    ei
    ld c, l
    or $36
    cp $e0
    jr nz, jr_008_7b1d

    ld h, b
    ld b, b
    ret nz

    add b
    cp a
    ldh [$d8], a
    jr c, @-$0a

jr_008_7b86:
    inc c
    ld_long a, $ff06
    cp $02
    ld a, a
    add c
    cp a
    pop bc
    ld a, a
    pop bc
    rst $38
    ld a, $e2
    inc e
    db $fc
    ld d, b
    ldh a, [$e0]
    and b
    ld a, [$20e0]
    ret nz

    ld b, b
    add b
    nop
    cp a
    ret nz

    jr nz, jr_008_7b86

    db $10
    ldh a, [$08]
    ld hl, sp-$01
    inc b
    db $fc
    adc h
    db $fc
    sbc $72
    cp [hl]
    ld [hl], d
    rst $38
    or $3a
    sub $2a
    db $fd
    inc bc
    rst $38
    ld bc, $fffe
    dec h
    db $fd
    and a
    db $76
    ld a, [$808c]
    nop
    add b
    nop
    add b
    nop
    xor a
    nop
    rra
    db $76
    ld l, c
    rst $38
    adc c
    nop
    adc e
    nop
    ld b, b
    ldh [$a0], a
    rst $38
    ret c

    ld a, b
    db $fc
    xor h
    db $fc
    call nc, Call_008_56fe
    rst $38
    ld a, $ea
    ei
    xor l
    sub $aa
    ld a, e
    add l
    cp $fd
    ld d, e
    cp $56
    xor $1a
    cp $8b
    nop
    ld [bc], a
    rrca
    dec c
    rst $38
    ld [hl], $3b
    scf
    dec l
    ld a, e
    db $76
    db $eb
    db $dd
    rst $38
    ld l, a
    ld [hl], a
    db $fd
    ei
    rst $28
    sbc [hl]
    ld l, a
    ld [hl], c
    cp $fc
    rst $38
    rst $28
    sbc [hl]
    ld a, a
    ld [hl], c
    ccf
    xor a
    nop
    ld b, b
    add sp, -$58
    ld hl, sp-$48
    rst $38
    cp h
    call nc, $d77f
    rst $38
    ld d, l
    sbc $7a
    rst $38
    ld a, a
    rst $28
    rst $38
    xor l
    cp $aa
    rst $30
    db $dd
    cp $fa
    sbc $b7
    db $ed
    cp $a6
    db $fc
    xor a
    nop
    ld [bc], a
    rla
    dec d
    rra
    dec e
    rst $38
    ccf
    ld [hl], $3f
    dec sp
    rst $38
    rst $28
    rst $38
    or l
    rst $30
    ld [hl], a
    ld e, l
    xor $ff
    or [hl]
    ld l, a
    ld e, d
    cp $fb
    rst $28
    ld l, a
    ld e, h
    ld a, a
    ld l, c
    rra
    adc d
    nop
    ld b, b
    ret nz

    ei
    ret nz

    ld b, b
    ldh [$60], a
    db $fc
    ld hl, sp+$48
    rst $38
    ld [hl], b
    ret nc

    ret c

    cp b
    cp [hl]
    add $f8
    ld e, b
    sbc $70
    ldh a, [$90]
    ld hl, sp-$48
    ret nz

    xor e
    nop
    ld b, d
    ld h, [hl]
    ld a, [hl]
    ld e, d
    rst $38
    db $ed
    db $db
    rst $38
    ld c, d
    rst $10
    ld l, [hl]
    ld a, [hl]
    ei
    rst $38
    jp hl


    ld [hl], $7f
    and $eb
    sbc l
    cp $c9
    cp $b7
    ld a, d
    db $fc
    cpl
    rst $30
    call z, $80ff
    nop
    cp a
    rrca
    ld [hl], $3b
    ld [hl], a
    ld c, l
    ld a, e
    db $76
    rst $38
    db $eb
    sbc l
    ld l, a
    db $76
    cp $f9
    db $ed
    sbc [hl]
    cp $6f
    ld [hl], b
    db $fd
    cp $fb
    adc h
    rst $38
    add d
    nop
    rrca
    rst $38
    ld [hl], $39
    ld [hl], a
    ld c, a
    ld a, a
    ld a, c
    rst $28
    sub [hl]
    rst $38
    ld a, a
    ld a, e
    rst $28
    db $fd
    cp $95
    ld e, l
    ld a, d
    cp $ff
    db $ec
    rst $30
    sbc b
    cp l
    adc $7f
    add d
    nop
    rlca
    rst $38
    rra
    inc e
    dec sp
    daa
    ld a, a
    ld a, h
    ld l, [hl]
    ld e, a
    rst $38
    rst $30
    cp c
    ld a, a
    ld a, [hl]
    or l
    db $db
    rst $38
    cp h
    cp $7f
    ld h, d
    ei
    sbc $5d
    ld a, [hl]
    ccf
    add d
    nop
    inc bc
    rst $38
    rrca
    ld c, $1e
    add hl, de
    ld a, $27
    ld a, a
    ld a, c
    rst $38
    ld e, a
    ld h, [hl]
    ei
    cp h
    ld a, a
    ld c, [hl]
    rst $30
    cp b
    cp $df
    xor $7f
    ld e, c
    ld sp, hl
    rst $30
    ld a, a
    add b
    nop
    cp a
    rrca
    ccf
    add hl, sp
    ld a, a
    ld c, [hl]
    ld a, a
    ld [hl], e
    rst $38
    rst $38
    sbc l
    ld a, a
    ld h, [hl]
    rst $18
    cp c
    rst $38
    rst $08
    cp $6d
    ld [hl], d
    rst $28
    sbc a
    ld a, a
    ld a, b
    ccf
    add d
    nop
    rrca
    rst $38
    ld a, [hl-]
    dec a
    ld a, d
    ld h, a
    ld a, e
    ld a, l
    or a
    adc $ff
    ld a, a
    ld a, c
    or [hl]
    rst $08
    rst $30
    ld sp, hl
    db $76
    ld c, a
    cp $f7
    ld hl, sp-$21
    cp [hl]
    ld a, a
    ld [hl], c
    ccf
    add d
    nop
    rlca
    rst $38
    rra
    ld e, $3d
    inc sp
    ld [hl], a
    ld c, [hl]
    ld [hl], a
    ld a, e
    rst $38
    rst $28
    sbc l
    ld l, [hl]
    ld [hl], a
    cp $f9
    db $ed
    sbc [hl]
    cp $6f
    ld [hl], b
    rst $38
    db $fc
    ld a, a
    ld h, d
    ccf
    add d
    nop
    inc bc
    rst $38
    rrca
    ld c, $1d
    inc de
    ld a, $3d
    ld [hl], a
    ld c, [hl]
    rst $38
    ld [hl], a
    ld a, c
    db $ed
    sbc [hl]
    ld l, [hl]
    ld [hl], e
    rst $38
    db $fc
    cp $e5
    sbc d
    ld a, a
    ld a, h
    db $fd
    add $7f
    add b
    nop
    cp a
    ldh [$d8], a
    ld a, b
    db $fc
    xor h
    db $f4
    call c, $feff
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    ld a, [$fe06]
    ld d, d
    cp $fa
    ld d, [hl]
    cp $06
    rst $38
    add hl, bc
    rst $38
    add d
    nop
    add b
    cp a
    ldh [$d0], a
    ld [hl], b
    ld hl, sp-$58
    call nc, $ffbc
    db $fc
    ld d, h
    cp $56
    xor $16
    cp $02
    cp $fe
    ld d, d
    cp $52
    rst $38
    dec b
    rst $38
    add d
    nop
    ret nz

    rst $38
    ld [hl], b
    ldh a, [$e8]
    cp b
    db $f4
    call c, Call_008_54fc
    rst $38
    cp $56
    ld a, [hl]
    add [hl]
    cp $02
    cp [hl]
    ld b, d
    cp $fa
    ld d, [hl]
    db $ec
    inc d
    xor $1a
    cp $82
    nop
    ldh [rIE], a
    ld hl, sp+$58
    db $e4
    cp h
    db $fc
    ld d, h
    cp $56
    rst $38
    cp $86
    cp $02
    sbc $22
    cp $2a
    cp $f2
    ld c, $fc
    inc b
    db $f4
    inc c
    ld hl, sp-$80
    nop
    cp a
    ldh [$78], a
    cp b
    db $f4
    call c, Call_008_54fc
    rst $38
    cp $56
    xor d
    sub $fe
    ld [bc], a
    ld a, [hl]
    sub [hl]
    cp $fe
    ld d, $fa
    ld b, $f4
    adc h
    ld hl, sp-$7e
    nop

Jump_008_7dff:
    add b
    cp a
    ldh [$d0], a
    ld [hl], b
    ld hl, sp-$58
    db $f4
    call c, $fcff
    ld d, h
    sbc $b6
    xor d
    ld d, [hl]
    cp $02
    cp $fe
    ld a, [hl+]
    cp $2a
    db $fc
    inc b
    ld hl, sp-$7e
    nop
    ret nz

    rst $38
    ldh a, [rSVBK]
    ld hl, sp-$58
    db $f4
    call c, Call_008_54fc
    rst $38
    cp $56
    xor [hl]
    ld d, [hl]
    ld a, [hl]
    add d
    cp $12
    cp $ff
    ld d, e
    ei
    ld b, l
    or $0e
    ld hl, sp-$7e
    nop
    ldh [rIE], a
    ld hl, sp+$58
    db $fc
    xor h
    cp h
    call nc, $d67e

Jump_008_7e42:
    rst $38
    ld [$fe56], a
    ld [bc], a
    cp $12
    cp $52
    cp $fa
    ld b, [hl]
    rst $38
    dec b
    db $ed
    dec de
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_7eb1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7f7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
