.class final Lcom/google/gson/internal/UnsafeAllocator$4;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V
return-void
.end method
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Cannot allocate "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method