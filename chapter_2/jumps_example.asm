
global _start
section .text

_start:
cmp rax, 42
jl yes
mov rbx, 0
jmp ex
yes:
  mov rbx, 1
ex:

mov rax, 60
xor rdi, rdi
syscall
