.class final Lcom/twidroid/net/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/a/d$1;->a:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/d$1;->a:Landroid/app/Activity;
invoke-static {v0}, Lcom/twidroid/c/r;->a(Landroid/app/Activity;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method