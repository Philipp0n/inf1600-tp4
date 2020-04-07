.globl	_ZNK9Rectangle12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK9Rectangle12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        fld 8(%eax)
        faddp
        fld factor
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */