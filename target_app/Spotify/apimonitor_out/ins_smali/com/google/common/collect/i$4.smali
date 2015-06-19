.class final Lcom/google/common/collect/i$4;
.super Lcom/google/common/collect/aq;
.source "SourceFile"
.field  a:Z
.field final synthetic b:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/i$4;->b:Ljava/lang/Object;
invoke-direct {p0}, Lcom/google/common/collect/aq;-><init>()V
return-void
.end method
.method public final hasNext()Z
.registers 2
iget-boolean v0, p0, Lcom/google/common/collect/i$4;->a:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final next()Ljava/lang/Object;
.registers 2
iget-boolean v0, p0, Lcom/google/common/collect/i$4;->a:Z
if-eqz v0, :cond_a
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/common/collect/i$4;->a:Z
iget-object v0, p0, Lcom/google/common/collect/i$4;->b:Ljava/lang/Object;
return-object v0
.end method