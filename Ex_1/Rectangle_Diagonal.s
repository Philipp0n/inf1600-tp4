.globl	_ZNK9Rectangle11DiagonalAsmEv

_ZNK9Rectangle11DiagonalAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        movl 8(%ebp), %eax
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- length
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- length
        fmulp
        # st[0] <- st[0] * st[1]
        fstp 4(%eax)
        # st[1] <- st[0] : length <- st[0]
        fld 8(%eax)
        # st[1] <- st[0] : st[0] <- width
        fld 8(%eax)
        # st[1] <- st[0] : st[0] <- width
        fmulp
        # st[0] <- st[1] * st[0]
        fstp 8(%eax)
        # st[1] <- st[0] : width <- st[0]
        fld 4(%eax)
        # st[1] <- st[0] : st[0] <- length
        fld 8(%eax)
        # st[1] <- st[0] : st[0] <- width
        faddp
        # st[0] <- st[1] + st[0]
        fsqrt
        # st[0] <- sqrt(st[0])
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
