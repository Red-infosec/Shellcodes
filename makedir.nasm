section .text
        global _start

_start:

                  jmp short call_shellcode

shellcode:
                  xor    eax, eax
                  xor    ebx, ebx
                  xor    edx, edx
                  xor    ecx, ecx
                  mov    al, 0x27
                  pop    ebx
                  mov    cx, 0x1ed
                  int    0x80

                   ; exit
                  xor    eax, eax
                  mov    al, 0x1
                  xor    ebx,ebx
                  int    0x80
call_shellcode:
         call   shellcode
        msg: db 0x4f,0x73,0x61,0x6e,0x64,0x61
