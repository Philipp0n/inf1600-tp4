.globl	_ZNK9Rectangle11DiagonalAsmEv

_ZNK9Rectangle11DiagonalAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        fld 4(%eax)
        fmulp
        fstp 4(%eax)
        fld 8(%eax)
        fld 8(%eax)
        fmulp
        fstp 8(%eax)
        fld 4(%eax)
        fld 8(%eax)
        faddp
        fsqrt
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
