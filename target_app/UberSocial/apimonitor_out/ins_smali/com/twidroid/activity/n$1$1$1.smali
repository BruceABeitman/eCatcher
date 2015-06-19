.class  Lcom/twidroid/activity/n$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/n$1$1;
.method constructor <init>(Lcom/twidroid/activity/n$1$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/n$1$1$1;->a:Lcom/twidroid/activity/n$1$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/n$1$1$1;->a:Lcom/twidroid/activity/n$1$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
iget-object v1, p0, Lcom/twidroid/activity/n$1$1$1;->a:Lcom/twidroid/activity/n$1$1;
iget-object v1, v1, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v1, v1, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v1, v1, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
const v2, 0x7f0c0161
invoke-virtual {v1, v2}, Lcom/twidroid/activity/OutboxListing;->e(I)Ljava/lang/CharSequence;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/activity/n$1$1$1;->a:Lcom/twidroid/activity/n$1$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
invoke-virtual {v0}, Lcom/twidroid/activity/OutboxListing;->e()V
iget-object v0, p0, Lcom/twidroid/activity/n$1$1$1;->a:Lcom/twidroid/activity/n$1$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/OutboxListing;->e(Z)V
return-void
.end method