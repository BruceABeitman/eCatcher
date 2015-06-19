.class final Lcom/google/common/collect/s;
.super Lcom/google/common/collect/r;
.source "SourceFile"
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/MapMakerInternalMap;
invoke-direct {p0, p1}, Lcom/google/common/collect/r;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V
return-void
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/s;->a()Lcom/google/common/collect/aj;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/aj;->getKey()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method