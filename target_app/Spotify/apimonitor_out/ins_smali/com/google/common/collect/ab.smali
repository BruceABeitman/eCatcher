.class final Lcom/google/common/collect/ab;
.super Lcom/google/common/collect/r;
.source "SourceFile"
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/ab;->a:Lcom/google/common/collect/MapMakerInternalMap;
invoke-direct {p0, p1}, Lcom/google/common/collect/r;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V
return-void
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ab;->a()Lcom/google/common/collect/aj;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/aj;->getValue()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method