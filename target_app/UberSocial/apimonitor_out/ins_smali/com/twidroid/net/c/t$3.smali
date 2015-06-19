.class final Lcom/twidroid/net/c/t$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/net/c/a/f;
.method constructor <init>(Lcom/twidroid/net/c/a/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/t$3;->a:Lcom/twidroid/net/c/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/t$3;->a:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/twidroid/net/c/t$3;->a:Lcom/twidroid/net/c/a/f;
const/4 v1, -0x1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->b(ILjava/lang/String;)V
:cond_b
return-void
.end method