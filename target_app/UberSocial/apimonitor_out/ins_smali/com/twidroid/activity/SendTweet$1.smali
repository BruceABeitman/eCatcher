.class  Lcom/twidroid/activity/SendTweet$1;
.super Lcom/twidroid/net/a/b/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/twidroid/net/a/b/c;-><init>()V
return-void
.end method
.method public a(I)V
.registers 5
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Upload progress: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->c(Lcom/twidroid/activity/SendTweet;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
:cond_38
const/16 v0, 0x64
if-ne p1, v0, :cond_44
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
:cond_44
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iput-object p1, v0, Lcom/twidroid/activity/SendTweet;->am:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/activity/t;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/activity/t;
move-result-object v0
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/activity/t;->b:Z
:cond_15
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Z)Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_22
if-eqz p2, :cond_2b
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$1;->a:Lcom/twidroid/activity/SendTweet;
const/16 v1, 0x177
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->showDialog(I)V
:cond_2b
return-void
.end method