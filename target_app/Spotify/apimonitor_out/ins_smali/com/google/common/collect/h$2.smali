.class final Lcom/google/common/collect/h$2;
.super Lcom/google/common/collect/e;
.source "SourceFile"
.field final synthetic a:Ljava/lang/Iterable;
.field final synthetic b:Lcom/google/common/base/b;
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V
.registers 3
iput-object p1, p0, Lcom/google/common/collect/h$2;->a:Ljava/lang/Iterable;
iput-object p2, p0, Lcom/google/common/collect/h$2;->b:Lcom/google/common/base/b;
invoke-direct {p0}, Lcom/google/common/collect/e;-><init>()V
return-void
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/h$2;->a:Ljava/lang/Iterable;
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/h$2;->b:Lcom/google/common/base/b;
invoke-static {v0, v1}, Lcom/google/common/collect/i;->a(Ljava/util/Iterator;Lcom/google/common/base/b;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method