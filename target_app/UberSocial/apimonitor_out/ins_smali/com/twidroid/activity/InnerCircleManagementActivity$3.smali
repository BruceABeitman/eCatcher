.class  Lcom/twidroid/activity/InnerCircleManagementActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v0, 0x6
if-ne p2, v0, :cond_8d
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v0
if-lez v0, :cond_8d
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/d;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-virtual {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->j()Landroid/widget/ListAdapter;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/ae;
iget-object v4, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v4}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
move-result v4
invoke-virtual {v0, v4}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ae;->a(Lcom/twidroid/model/twitter/User;)Z
move-result v4
if-eqz v4, :cond_4f
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v1
iget-object v4, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
const v5, 0x7f0c011a
invoke-virtual {v4, v5}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v2, [Ljava/lang/Object;
aput-object v0, v5, v3
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V
:goto_4d
move v0, v2
:goto_4e
return v0
:cond_4f
iget-object v4, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v4}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;
move-result-object v4
const/4 v5, -0x1
invoke-virtual {v4, v0, v5}, Lcom/twidroid/b/a/b;->c(Lcom/twidroid/model/twitter/User;I)Z
invoke-virtual {v0, v2}, Lcom/twidroid/model/twitter/User;->a(Z)V
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ae;->b(Lcom/twidroid/model/twitter/User;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->d(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$3;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
goto :goto_4d
:cond_8d
move v0, v3
goto :goto_4e
.end method