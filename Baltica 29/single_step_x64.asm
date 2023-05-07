.code

single_step_cpuid proc
pushfq
or dword ptr [rsp], 0100h 
popfq
cpuid
nop
ret
single_step_cpuid endp

single_step_rdtsc proc
pushfq
or dword ptr [rsp], 0100h 
popfq
rdtsc
nop
ret
single_step_rdtsc endp
 

abuse_step_rdtsc proc
mov eax,ss
pushfq 
or dword ptr [rsp], 0100h 
popfq
mov ss,eax
nop;F1
pushfq 
or dword ptr [rsp], 0FFFFFEFFh 
popfq
ret
abuse_step_rdtsc endp

end