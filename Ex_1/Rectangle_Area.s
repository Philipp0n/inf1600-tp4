.globl	_ZNK9Rectangle7AreaAsmEv

_ZNK9Rectangle7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        fld 8(%eax)
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
