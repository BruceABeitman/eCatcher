.class final Lcom/google/gson/internal/UnsafeAllocator$2;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"
.field final synthetic val$newInstance:Ljava/lang/reflect/Method;
.method constructor <init>(Ljava/lang/reflect/Method;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;
invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V
return-void
.end method
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;
const/4 v1, 0x0
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/Object;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method