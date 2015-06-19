.class  Lcom/twidroid/net/c/t$9$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/net/c/t$9;
.method constructor <init>(Lcom/twidroid/net/c/t$9;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/t$9$1;->a:Lcom/twidroid/net/c/t$9;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/t$9$1;->a:Lcom/twidroid/net/c/t$9;
iget-object v0, v0, Lcom/twidroid/net/c/t$9;->b:Landroid/app/Activity;
invoke-static {v0}, Lcom/twidroid/c/l;->c(Landroid/content/Context;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method