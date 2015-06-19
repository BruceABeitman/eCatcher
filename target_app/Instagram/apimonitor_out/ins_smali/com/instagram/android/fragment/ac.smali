.class final Lcom/instagram/android/fragment/ac;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/ac; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/an;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->b(Lcom/instagram/android/fragment/ab;)V
:cond_11
const-string v1, " - Lcom/instagram/android/fragment/ac; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method