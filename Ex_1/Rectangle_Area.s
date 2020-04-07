.globl	_ZNK9Rectangle7AreaAsmEv

_ZNK9Rectangle7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- length
        fld 8(%eax)
        # st[1] <- st[0] : st[0] <- width
        fmulp
        # st[0] <- st[0] * st[1]
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
         