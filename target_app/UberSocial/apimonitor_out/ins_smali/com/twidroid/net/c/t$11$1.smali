.class  Lcom/twidroid/net/c/t$11$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/net/c/t$11;
.method constructor <init>(Lcom/twidroid/net/c/t$11;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/t$11$1;->a:Lcom/twidroid/net/c/t$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/t$11$1;->a:Lcom/twidroid/net/c/t$11;
iget-object v0, v0, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$11$1;->a:Lcom/twidroid/net/c/t$11;
iget-object v1, v1, Lcom/twidroid/net/c/t$11;->a:Landroid/app/Activity;
const v2, 0x7f0c016a
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method