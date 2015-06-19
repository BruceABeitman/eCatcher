.class  Lcom/twidroid/activity/SendTweet$11$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$11;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$11;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_24
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->L:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/16 v1, 0x177
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$2;->a:Lcom/twidroid/activity/SendTweet$11;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Z)Z
:try_end_48
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49
:goto_48
return-void
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_48
.end method