.globl	_ZNK8Cylinder12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK8Cylinder12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        fldpi
        fmulp
        fld factor
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
