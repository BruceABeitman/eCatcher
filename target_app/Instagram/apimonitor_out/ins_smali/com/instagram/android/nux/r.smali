.class final Lcom/instagram/android/nux/r;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/instagram/android/nux/n;
.method constructor <init>(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/nux/r;->c:Lcom/instagram/android/nux/n;
iput-object p2, p0, Lcom/instagram/android/nux/r;->a:Lcom/instagram/user/c/a;
iput-object p3, p0, Lcom/instagram/android/nux/r;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/nux/r; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/nux/r;->c:Lcom/instagram/android/nux/n;
iget-object v1, p0, Lcom/instagram/android/nux/r;->a:Lcom/instagram/user/c/a;
iget-object v2, p0, Lcom/instagram/android/nux/r;->b:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/nux/r; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method