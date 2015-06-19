.class final Lcom/instagram/android/fragment/ae;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 6
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/an;->removeMessages(I)V
iget-object v1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/android/fragment/an;->sendEmptyMessageDelayed(IJ)Z
iget-object v1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v1}, Lcom/instagram/android/fragment/ab;->c(Lcom/instagram/android/fragment/ab;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
if-eqz v1, :cond_2f
:goto_25
iget-object v1, p0, Lcom/instagram/android/fragment/ae;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v1}, Lcom/instagram/android/fragment/ab;->d(Lcom/instagram/android/fragment/ab;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V
return-void
:cond_2f
const/4 v0, 0x0
goto :goto_25
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method