.class  Lcom/twidroid/activity/MutedUsers$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$6;->a:Lcom/twidroid/activity/MutedUsers;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v1, 0x0
const/4 v0, 0x6
if-ne p2, v0, :cond_20
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$6;->a:Lcom/twidroid/activity/MutedUsers;
const-string v2, "input_method"
invoke-virtual {v0, v2}, Lcom/twidroid/activity/MutedUsers;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v2, p0, Lcom/twidroid/activity/MutedUsers$6;->a:Lcom/twidroid/activity/MutedUsers;
iget-object v2, v2, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$6;->a:Lcom/twidroid/activity/MutedUsers;
invoke-static {v0}, Lcom/twidroid/activity/MutedUsers;->a(Lcom/twidroid/activity/MutedUsers;)V
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
move v0, v1
goto :goto_1f
.end method