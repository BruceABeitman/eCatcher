.class  Lcom/twidroid/activity/n$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/n$1;
.method constructor <init>(Lcom/twidroid/activity/n$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v1, v1, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-wide v1, v1, Lcom/twidroid/activity/n;->b:J
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->j(J)Z
iget-object v0, p0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/n$1$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/n$1$1$1;-><init>(Lcom/twidroid/activity/n$1$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
iget-object v0, p0, Lcom/twidroid/activity/n$1$1;->a:Lcom/twidroid/activity/n$1;
iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/n$1$1$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/n$1$1$2;-><init>(Lcom/twidroid/activity/n$1$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_25
.end method