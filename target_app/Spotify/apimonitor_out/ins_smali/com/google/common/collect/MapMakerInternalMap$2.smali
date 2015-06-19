.class final Lcom/google/common/collect/MapMakerInternalMap$2;
.super Ljava/util/AbstractQueue;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V
return-void
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 2
invoke-static {}, Lcom/google/common/collect/i;->a()Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public final offer(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final peek()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final poll()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final size()I
.registers 2
const/4 v0, 0x0
return v0
.end method