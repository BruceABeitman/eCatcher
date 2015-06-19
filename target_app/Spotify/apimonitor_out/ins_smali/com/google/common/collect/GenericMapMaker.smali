.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Lcom/google/common/collect/l;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a()Lcom/google/common/collect/l;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/l;
sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->a:Lcom/google/common/collect/GenericMapMaker$NullListener;
invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/common/collect/l;
return-object v0
.end method