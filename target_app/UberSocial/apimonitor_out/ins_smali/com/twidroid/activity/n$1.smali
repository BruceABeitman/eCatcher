.class  Lcom/twidroid/activity/n$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/n;
.method constructor <init>(Lcom/twidroid/activity/n;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/n$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/OutboxListing;->e(Z)V
:try_start_8
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/activity/n$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/n$1$1;-><init>(Lcom/twidroid/activity/n$1;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_1b
:goto_15
iget-object v0, p0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
invoke-virtual {v0}, Lcom/twidroid/activity/n;->dismiss()V
const-string v1, " - Lcom/twidroid/activity/n$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_1b
move-exception v0
iget-object v0, p0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;
iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;
iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/n$1$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/n$1$2;-><init>(Lcom/twidroid/activity/n$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_15
.end method