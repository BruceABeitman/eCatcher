.class  Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.super Ljava/lang/ref/PhantomReference;
.source "Pointer.java"
.field static head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.field  deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
.field  next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.field  prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
return-void
.end method
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/googlecode/javacpp/Pointer;->access$000()Ljava/lang/ref/ReferenceQueue;
move-result-object v0
invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
iput-object v1, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object v1, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
return-void
.end method
.method final add()V
.registers 3
const-class v1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-nez v0, :cond_b
sput-object p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
:goto_9
monitor-exit v1
return-void
:cond_b
sget-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
sput-object p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object p0, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
goto :goto_9
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v0
.end method
.method public clear()V
.registers 2
invoke-super {p0}, Ljava/lang/ref/PhantomReference;->clear()V
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
invoke-interface {v0}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V
return-void
.end method
.method final remove()V
.registers 4
const-class v1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-ne v0, p0, :cond_d
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-ne v0, p0, :cond_d
monitor-exit v1
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-nez v0, :cond_28
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
sput-object v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->head:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
:goto_15
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iget-object v2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object v2, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
:cond_1f
iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
monitor-exit v1
goto :goto_c
:catchall_25
move-exception v0
monitor-exit v1
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_25
throw v0
:cond_28
:try_start_28
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->prev:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iget-object v2, p0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
iput-object v2, v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->next:Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
:try_end_2e
.catchall {:try_start_28 .. :try_end_2e} :catchall_25
goto :goto_15
.end method