.class final Lcom/instagram/android/login/fragment/i;
.super Ljava/lang/Object;
.source "LoginFragment.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/h;
.method constructor <init>(Lcom/instagram/android/login/fragment/h;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/i;->a:Lcom/instagram/android/login/fragment/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x6
if-ne p2, v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/login/fragment/i;->a:Lcom/instagram/android/login/fragment/h;
invoke-static {v0}, Lcom/instagram/android/login/fragment/h;->a(Lcom/instagram/android/login/fragment/h;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->isEnabled()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/instagram/android/login/fragment/i;->a:Lcom/instagram/android/login/fragment/h;
invoke-static {v0}, Lcom/instagram/android/login/fragment/h;->b(Lcom/instagram/android/login/fragment/h;)V
:cond_14
const/4 v0, 0x0
:goto_15
return v0
:cond_16
const/4 v0, 0x1
goto :goto_15
.end method