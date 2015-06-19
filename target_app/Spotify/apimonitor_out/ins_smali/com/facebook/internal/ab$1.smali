.class final Lcom/facebook/internal/ab$1;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/internal/ab;
.method constructor <init>(Lcom/facebook/internal/ab;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/ab$1;->a:Lcom/facebook/internal/ab;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/facebook/internal/ab$1;->a:Lcom/facebook/internal/ab;
invoke-virtual {v0, p1}, Lcom/facebook/internal/ab;->a(Landroid/os/Message;)V
return-void
.end method