.globl	_ZNK8Cylinder11BaseAreaAsmEv

_ZNK8Cylinder11BaseAreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        # st[0] <- radius_;
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- radius_; 
        fld 4(%eax)
        # st[0] <- st[0] * st[1]
        fmulp
        # st[1] <- st[0] : st[0] <- pi; 
        fldpi
        # st[0] <- st[0] * st[1];
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        