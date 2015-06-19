.class final Lcom/instagram/android/fragment/fn;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/fk;
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/fn;->a:Lcom/instagram/android/fragment/fk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/fn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/fn;->a:Lcom/instagram/android/fragment/fk;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fk;->l()Landroid/support/v4/app/k;
move-result-object v1
const-string v2, "starred_posts"
invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/fn;->a:Lcom/instagram/android/fragment/fk;
const-string v1, "/xwoiynko"
sget v2, Lcom/facebook/az;->about_ads:I
invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fk;->a(Lcom/instagram/android/fragment/fk;Ljava/lang/String;I)V
const-string v1, " - Lcom/instagram/android/fragment/fn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method