.globl	_ZNK8Cylinder9VolumeAsmEv

_ZNK8Cylinder9VolumeAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        # st[0] <- BaseArea;
        pushl 8(%ebp)
        call _ZNK8Cylinder11BaseAreaAsmEv
        add $4, %esp
        # st[1] <- st[0] : st[0] <- height_;
        movl 8(%ebp), %eax
        fld 8(%eax)
        # st[0] <- st[0] * st[1];
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        