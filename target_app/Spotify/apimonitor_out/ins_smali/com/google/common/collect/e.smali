.class public abstract Lcom/google/common/collect/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Iterable;
.field private final a:Ljava/lang/Iterable;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p0, p0, Lcom/google/common/collect/e;->a:Ljava/lang/Iterable;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/e;->a:Ljava/lang/Iterable;
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-static {v0}, Lcom/google/common/collect/i;->b(Ljava/util/Iterator;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method