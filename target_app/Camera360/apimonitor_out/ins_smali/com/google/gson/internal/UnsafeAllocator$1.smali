.class final Lcom/google/gson/internal/UnsafeAllocator$1;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"
.field final synthetic val$allocateInstance:Ljava/lang/reflect/Method;
.field final synthetic val$unsafe:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/google/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;
iput-object p2, p0, Lcom/google/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;
invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V
return-void
.end method
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/google/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/google/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method