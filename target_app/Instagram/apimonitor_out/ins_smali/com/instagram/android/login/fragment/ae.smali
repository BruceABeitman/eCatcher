.class final Lcom/instagram/android/login/fragment/ae;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;
.method constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ae;->a:Lcom/instagram/android/login/fragment/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/ae; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/ae;->a:Lcom/instagram/android/login/fragment/ad;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->a(Lcom/instagram/android/login/fragment/ad;)Landroid/widget/EditText;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/instagram/android/login/fragment/ae; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method