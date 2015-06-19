.class final Lcom/google/common/collect/i$7;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"
.field final synthetic a:Ljava/util/Iterator;
.field final synthetic b:Lcom/google/common/base/j;
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/j;)V
.registers 3
iput-object p1, p0, Lcom/google/common/collect/i$7;->a:Ljava/util/Iterator;
iput-object p2, p0, Lcom/google/common/collect/i$7;->b:Lcom/google/common/base/j;
invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V
return-void
.end method
.method protected final a()Ljava/lang/Object;
.registers 3
:cond_0
iget-object v0, p0, Lcom/google/common/collect/i$7;->a:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/common/collect/i$7;->a:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/i$7;->b:Lcom/google/common/base/j;
invoke-interface {v1, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_0
:goto_16
return-object v0
:cond_17
invoke-virtual {p0}, Lcom/google/common/collect/i$7;->b()Ljava/lang/Object;
move-result-object v0
goto :goto_16
.end method