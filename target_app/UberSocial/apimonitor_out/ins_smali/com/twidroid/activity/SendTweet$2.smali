.class  Lcom/twidroid/activity/SendTweet$2;
.super Lcom/twidroid/ui/widgets/h;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/twidroid/ui/widgets/h;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$2;->a:Lcom/twidroid/activity/SendTweet;
const/16 v1, 0x174
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:cond_3d
return-void
.end method