.class public Lcom/googlecode/javacpp/Pointer$NativeDeallocator;
.super Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.source "Pointer.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.field private allocatedAddress:J
.field private deallocatorAddress:J
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;J)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V
iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
iget-wide v0, p1, Lcom/googlecode/javacpp/Pointer;->address:J
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J
iput-wide p2, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J
return-void
.end method
.method private native deallocate(JJ)V
.end method
.method public deallocate()V
.registers 7
const-wide/16 v4, 0x0
iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J
cmp-long v0, v0, v4
if-eqz v0, :cond_19
iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J
cmp-long v0, v0, v4
if-eqz v0, :cond_19
iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J
iget-wide v2, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J
invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocate(JJ)V
iput-wide v4, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->deallocatorAddress:J
iput-wide v4, p0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;->allocatedAddress:J
:cond_19
return-void
.end method