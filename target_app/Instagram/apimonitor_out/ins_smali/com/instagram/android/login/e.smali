.class final Lcom/instagram/android/login/e;
.super Ljava/lang/Object;
.source "PasswordValidator.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/instagram/android/login/d;
.method constructor <init>(Lcom/instagram/android/login/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/e; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_2f
iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;
invoke-static {v0}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;
invoke-static {v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x6
if-ge v0, v1, :cond_30
iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;Z)V
sget v0, Lcom/facebook/az;->password_must_be_six_characters:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
:goto_2f
:cond_2f
const-string v1, " - Lcom/instagram/android/login/e; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_30
iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;Z)V
goto :goto_2f
.end method