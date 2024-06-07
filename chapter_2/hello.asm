global _start

section .data
message: db 'hello, world!', 10

section .text
_start:
  mov rax, 1       ; the system call number must be stored in rax ( 1 = write)
  mov rdi, 1       ; arg #1 in rdi: where to write (descriptor)?
  mov rsi, message ; arg #2 in rsi: where does the string begin? 
  mov rdx, 14      ; arg #3 in rdx: how many bytes should be written?
  syscall          ; this instruction makes a call system

  mov rax, 60      ; syscall number 'exit'
  xor rdi, rdi     ; change the rdi value from 1 to 0
  syscall
