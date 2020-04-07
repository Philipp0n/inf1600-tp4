.globl	_ZNK8Cylinder9VolumeAsmEv

_ZNK8Cylinder9VolumeAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        pushl 8(%ebp)
        call _ZNK8Cylinder11BaseAreaAsmEv
        add $4, %esp
        movl 8(%ebp), %eax
        fld 8(%eax)
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
