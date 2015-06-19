.class final Lcom/instagram/android/fragment/ft;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/fk;
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/ft; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;
invoke-static {v0}, Lcom/instagram/android/fragment/fk;->e(Lcom/instagram/android/fragment/fk;)Lcom/instagram/android/d/n;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/ft;->a:Lcom/instagram/android/fragment/fk;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fk;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/d/n;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/instagram/android/fragment/ft; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method