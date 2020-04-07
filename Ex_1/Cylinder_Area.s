.globl	_ZNK8Cylinder7AreaAsmEv

_ZNK8Cylinder7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        # st[0] <- LateralArea;
        pushl 8(%ebp)
        call _ZNK8Cylinder14LateralAreaAsmEv
        add $4, %esp

        # height <- st[0];
        movl 8(%ebp), %eax
        fstp 8(%eax)

        # st[0] <- BaseArea;
        pushl 8(%ebp)
        call _ZNK8Cylinder11BaseAreaAsmEv
        add $4, %esp

        # st[1] <- st[0] : st[0] <- LateralArea;
        movl 8(%ebp), %eax
        fld 8(%eax)
        # st[0] <- st[0] + st[1];
        faddp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        