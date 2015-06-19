.class final Lcom/twidroid/net/c/t$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/net/c/a/f;
.method constructor <init>(Lcom/twidroid/net/c/a/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/t$2;->a:Lcom/twidroid/net/c/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/t$2;->a:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/twidroid/net/c/t$2;->a:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V
iget-object v0, p0, Lcom/twidroid/net/c/t$2;->a:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->q()V
:cond_e
return-void
.end method