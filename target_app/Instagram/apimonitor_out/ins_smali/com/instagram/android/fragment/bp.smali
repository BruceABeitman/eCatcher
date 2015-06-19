.class final Lcom/instagram/android/fragment/bp;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/bo;
.method constructor <init>(Lcom/instagram/android/fragment/bo;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/bp; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/widget/a;
iget-object v1, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;
invoke-virtual {v1}, Lcom/instagram/android/fragment/bo;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/bp;->a:Lcom/instagram/android/fragment/bo;
invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V
const-string v1, " - Lcom/instagram/android/fragment/bp; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method