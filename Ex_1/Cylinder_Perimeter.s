.globl	_ZNK8Cylinder12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK8Cylinder12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        # st[0] <- radius_ ;
        fld 4(%eax)
        # st[0] <- pi : st[1] <- radius_ ;
        fldpi
        # st[0] <- st[0] * st[1];
        fmulp
        # st[1] <- st[0] : st[0] <- 2.0;
        fld factor
        # st[0] <- st[0] * st[1];
        fmulp
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        