.class public abstract Lcom/google/common/collect/f;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/f;
.registers 4
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_12
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/common/collect/f;->a(Ljava/lang/Object;)Lcom/google/common/collect/f;
goto :goto_4
:cond_12
return-object p0
.end method
.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/f;
.end method