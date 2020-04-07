.globl	_ZNK8Cylinder7AreaAsmEv

_ZNK8Cylinder7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        pushl 8(%ebp)
        call _ZNK8Cylinder14LateralAreaAsmEv
        add $4, %esp
        movl 8(%ebp), %eax
        fstp 8(%eax)
        pushl 8(%ebp)
        call _ZNK8Cylinder11BaseAreaAsmEv
        add $4, %esp
        movl 8(%ebp), %eax
        fld 8(%eax)
        faddp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
