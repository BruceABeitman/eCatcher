.class  Lcom/twidroid/activity/SendTweet$69;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v0, 0x4
if-ne p2, v0, :cond_38
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bL()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
const-string v3, "input_method"
invoke-virtual {v0, v3}, Lcom/twidroid/activity/SendTweet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v3, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
iget-object v3, v3, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v3
invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->e()V
:goto_29
move v0, v1
:goto_2a
return v0
:cond_2b
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$69;->a:Lcom/twidroid/activity/SendTweet;
const v2, 0x7f0c02cc
invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_29
:cond_38
move v0, v2
goto :goto_2a
.end method