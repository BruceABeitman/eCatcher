.class final Lcom/twidroid/net/c/t$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/net/c/a/f;
.field final synthetic b:Lcom/twidroid/net/c/u;
.method constructor <init>(Lcom/twidroid/net/c/a/f;Lcom/twidroid/net/c/u;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/c/t$13;->a:Lcom/twidroid/net/c/a/f;
iput-object p2, p0, Lcom/twidroid/net/c/t$13;->b:Lcom/twidroid/net/c/u;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/t$13;->a:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/twidroid/net/c/t$13;->a:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V
iget-object v0, p0, Lcom/twidroid/net/c/t$13;->a:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->p()V
iget-object v0, p0, Lcom/twidroid/net/c/t$13;->b:Lcom/twidroid/net/c/u;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/twidroid/net/c/t$13;->b:Lcom/twidroid/net/c/u;
invoke-interface {v0}, Lcom/twidroid/net/c/u;->a()V
:cond_17
return-void
.end method