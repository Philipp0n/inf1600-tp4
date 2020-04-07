.globl	_ZNK8Cylinder14LateralAreaAsmEv

_ZNK8Cylinder14LateralAreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        # st[0] <- Perimeter;
        pushl 8(%ebp)
        call _ZNK8Cylinder12PerimeterAsmEv
        add $4, %esp
        # st[1] <- st[0] : st[0] <- height_;
        movl 8(%ebp), %eax
        fld 8(%eax)
        # st[0] <- st[0] * st[1];
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        