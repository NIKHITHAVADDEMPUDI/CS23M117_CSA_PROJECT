Ptr_Glob: 
Next_Ptr_Glob: 
Arr_1_Glob: 
Arr_2_Glob: 
Proc_5: 
        daddiu  $sp,$sp,-16
        sd      $fp,8($sp)
        move    $fp,$sp
        nop
        move    $sp,$fp
        ld      $fp,8($sp)
        daddiu  $sp,$sp,16
        jr      $31
        nop
Proc_4: 
        daddiu  $sp,$sp,-16
        sd      $fp,8($sp)
        move    $fp,$sp
        nop
        move    $sp,$fp
        ld      $fp,8($sp)
        daddiu  $sp,$sp,16
        jr      $31
        nop
Proc_7: 
        daddiu  $sp,$sp,-32
        sd      $fp,24($sp)
        move    $fp,$sp
        move    $3,$4
        move    $2,$5
        sd      $6,8($fp)
        sll     $3,$3,0
        sw      $3,0($fp)
        sll     $2,$2,0
        sw      $2,4($fp)
        nop
        move    $sp,$fp
        ld      $fp,24($sp)
        daddiu  $sp,$sp,32
        jr      $31
        nop
Proc_8: 
        daddiu  $sp,$sp,-48
        sd      $fp,40($sp)
        move    $fp,$sp
        sd      $4,0($fp)
        sd      $5,8($fp)
        move    $3,$6
        move    $2,$7
        sll     $3,$3,0
        sw      $3,16($fp)
        sll     $2,$2,0
        sw      $2,20($fp)
        nop
        move    $sp,$fp
        ld      $fp,40($sp)
        daddiu  $sp,$sp,48
        jr      $31
        nop
Proc_1: 
        daddiu  $sp,$sp,-32
        sd      $fp,24($sp)
        move    $fp,$sp
        sd      $4,0($fp)
        nop
        move    $sp,$fp
        ld      $fp,24($sp)
        daddiu  $sp,$sp,32
        jr      $31
        nop
Proc_2: 
        daddiu  $sp,$sp,-32
        sd      $fp,24($sp)
        move    $fp,$sp
        move    $2,$4
        sll     $2,$2,0
        sw      $2,0($fp)
        nop
        move    $sp,$fp
        ld      $fp,24($sp)
        daddiu  $sp,$sp,32
        jr      $31
        nop
Proc_3: 
        daddiu  $sp,$sp,-32
        sd      $fp,24($sp)
        move    $fp,$sp
        sd      $4,0($fp)
        nop
        move    $sp,$fp
        ld      $fp,24($sp)
        daddiu  $sp,$sp,32
        jr      $31
        nop
Func_1: 
        daddiu  $sp,$sp,-32
        sd      $fp,24($sp)
        move    $fp,$sp
        move    $3,$4
        move    $2,$5
        sll     $3,$3,0
        sb      $3,0($fp)
        sll     $2,$2,0
        sb      $2,1($fp)
        move    $2,$0
        move    $sp,$fp
        ld      $fp,24($sp)
        daddiu  $sp,$sp,32
        jr      $31
        nop
main: 
        daddiu  $sp,$sp,-96
        sd      $31,88($sp)
        sd      $fp,80($sp)
        sd      $28,72($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        li      $2,50000                    # 0xc350
        sw      $2,12($fp)
        li      $4,56                 # 0x38
        ld      $2,%call16(malloc)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        move    $3,$2
        ld      $2,%got_disp(Next_Ptr_Glob)($28)
        sd      $3,0($2)
        li      $4,56                 # 0x38
        ld      $2,%call16(malloc)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        move    $3,$2
        ld      $2,%got_disp(Ptr_Glob)($28)
        sd      $3,0($2)
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        ld      $3,%got_disp(Next_Ptr_Glob)($28)
        ld      $3,0($3)
        sd      $3,0($2)
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        sw      $0,8($2)
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        sw      $0,12($2)
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        li      $3,40                 # 0x28
        sw      $3,16($2)
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        daddiu  $2,$2,20
        ld      $3,%got_page(.LC0)($28)
        ld      $6,%got_ofst(.LC0)($3)
        daddiu  $4,$3,%got_ofst(.LC0)
        ld      $5,8($4)
        daddiu  $4,$3,%got_ofst(.LC0)
        ld      $4,16($4)
        sdl     $6,0($2)
        sdr     $6,7($2)
        sdl     $5,8($2)
        sdr     $5,15($2)
        sdl     $4,16($2)
        sdr     $4,23($2)
        daddiu  $3,$3,%got_ofst(.LC0)
        lbu     $4,24($3)
        sb      $4,24($2)
        lbu     $4,25($3)
        sb      $4,25($2)
        lbu     $4,26($3)
        sb      $4,26($2)
        lbu     $4,27($3)
        sb      $4,27($2)
        lbu     $4,28($3)
        sb      $4,28($2)
        lbu     $4,29($3)
        sb      $4,29($2)
        lbu     $3,30($3)
        sb      $3,30($2)
        ld      $2,%got_disp(Arr_2_Glob)($28)
        li      $3,10                 # 0xa
        sw      $3,1628($2)
        ld      $2,%call16(clock)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        sd      $2,16($fp)
        li      $2,1                        # 0x1
        sw      $2,8($fp)
        b       .L11
        nop
        ld      $2,%got_disp(Proc_5)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        ld      $2,%got_disp(Proc_4)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        li      $2,65                 # 0x41
        sb      $2,4($fp)
        b       .L12
        nop
        lb      $2,4($fp)
        li      $5,67                 # 0x43
        move    $4,$2
        ld      $2,%got_disp(Func_1)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        move    $3,$2
        lw      $2,48($fp)
        bne     $2,$3,.L13
        nop
        daddiu  $3,$fp,52
        lw      $2,48($fp)
        move    $6,$3
        move    $5,$2
        li      $4,1                        # 0x1
        ld      $2,%got_disp(Proc_7)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        lbu     $2,4($fp)
        addiu   $2,$2,1
        andi    $2,$2,0x00ff
        sb      $2,4($fp)
        lb      $3,4($fp)
        lb      $2,40($fp)
        slt     $2,$2,$3
        beq     $2,$0,.L14
        nop
        lw      $2,52($fp)
        lw      $3,0($fp)
        move    $7,$3
        move    $6,$2
        ld      $5,%got_disp(Arr_2_Glob)($28)
        ld      $4,%got_disp(Arr_1_Glob)($28)
        ld      $2,%got_disp(Proc_8)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        move    $4,$2
        ld      $2,%got_disp(Proc_1)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        lw      $2,52($fp)
        move    $4,$2
        ld      $2,%got_disp(Proc_2)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        ld      $4,%got_disp(Ptr_Glob)($28)
        ld      $2,%got_disp(Proc_3)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        li      $2,2                        # 0x2
        sw      $2,44($fp)
        lw      $2,52($fp)
        lw      $3,44($fp)
        mult    $3,$2
        mflo    $2
        sw      $2,0($fp)
        lw      $2,52($fp)
        lw      $3,0($fp)
        div     $0,$3,$2
        teq     $2,$0,7
        mfhi    $2
        mflo    $2
        sw      $2,44($fp)
        lw      $3,0($fp)
        lw      $2,44($fp)
        subu    $2,$3,$2
        move    $3,$2
        move    $2,$3
        sll     $2,$2,3
        subu    $2,$2,$3
        move    $3,$2
        lw      $2,52($fp)
        subu    $2,$3,$2
        sw      $2,44($fp)
        lw      $3,44($fp)
        lw      $2,0($fp)
        mult    $3,$2
        mflo    $2
        sw      $2,52($fp)
        lw      $3,52($fp)
        lw      $2,44($fp)
        div     $0,$3,$2
        teq     $2,$0,7
        mfhi    $2
        mflo    $2
        sw      $2,0($fp)
        lw      $3,52($fp)
        lw      $4,0($fp)
        lw      $2,44($fp)
        mult    $4,$2
        mflo    $2
        subu    $2,$3,$2
        sw      $2,44($fp)
        lw      $2,8($fp)
        addiu   $2,$2,1
        sw      $2,8($fp)
        lw      $3,8($fp)
        lw      $2,12($fp)
        slt     $2,$2,$3
        beq     $2,$0,.L15
        nop
        ld      $2,%call16(clock)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        sd      $2,24($fp)
        ld      $3,24($fp)
        ld      $2,16($fp)
        dsubu   $2,$3,$2
        dmtc1   $2,$f0
        nop
        cvt.d.l $f1,$f0
        ld      $2,%got_page(.LC1)($28)
        ldc1    $f0,%got_ofst(.LC1)($2)
        div.d   $f0,$f1,$f0
        sdc1    $f0,32($fp)
        ld      $2,%got_disp(Next_Ptr_Glob)($28)
        ld      $2,0($2)
        move    $4,$2
        ld      $2,%call16(free)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        ld      $2,%got_disp(Ptr_Glob)($28)
        ld      $2,0($2)
        move    $4,$2
        ld      $2,%call16(free)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop
        move    $2,$0
        move    $sp,$fp
        ld      $31,88($sp)
        ld      $fp,80($sp)
        ld      $28,72($sp)
        daddiu  $sp,$sp,96
        jr      $31
        nop
