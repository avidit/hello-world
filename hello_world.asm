;Compilation:    nasm -f macho64 hello_world.asm && ld -macosx_version_min 10.7.0 -lSystem -o hello hello.o
;Execution:      ./hello_world

global start

section .text
start:
  mov rax, 0x2000004    ; system call for write
  mov rdi, 1            ; file handle 1 is stdout
  mov rsi, msg          ; address of string to output
  mov rdx, msg.len      ; number of bytes
  syscall               ; invoke operating system to do the write

  mov rax, 0x2000001    ; system call for exit
  mov rdi, 0            ; exit code 0
  syscall               ; invoke operating system to exit

section .data
msg:    db      "Hello world", 10   ;string to be printed
.len:   equ     $ - msg             ;length of the string
