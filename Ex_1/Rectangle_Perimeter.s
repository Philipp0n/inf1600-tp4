.globl	_ZNK9Rectangle12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK9Rectangle12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        # st[0] <- lentgth
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- length
        fld 8(%eax)
        # st[1] <- st[0] : st[0] <- width
        faddp
        # st[0] <- st[0] + st[1]
        fld factor
        # st[1] <- st[0] : st[0] <- factor
        fmulp
        # st[0] <- factor * st[0]
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
