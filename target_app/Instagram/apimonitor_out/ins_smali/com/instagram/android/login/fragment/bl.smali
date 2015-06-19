.class final Lcom/instagram/android/login/fragment/bl;
.super Ljava/lang/Object;
.source "RegisterFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/bl;->b:Lcom/instagram/android/login/fragment/an;
iput-object p2, p0, Lcom/instagram/android/login/fragment/bl;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/bl; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/bl;->b:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/login/fragment/bl;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/login/fragment/bl; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method