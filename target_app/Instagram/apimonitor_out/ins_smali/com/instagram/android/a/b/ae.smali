.class final Lcom/instagram/android/a/b/ae;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Z
.field final synthetic b:Landroid/support/v4/app/s;
.field final synthetic c:Lcom/instagram/user/d/a;
.field final synthetic d:I
.method constructor <init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V
.registers 5
iput-boolean p1, p0, Lcom/instagram/android/a/b/ae;->a:Z
iput-object p2, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;
iput-object p3, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;
iput p4, p0, Lcom/instagram/android/a/b/ae;->d:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/a/b/ae; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/instagram/android/a/b/ae;->a:Z
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/base/a/c;
iget-object v1, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;
iget v2, p0, Lcom/instagram/android/a/b/ae;->d:I
const/4 v3, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/d/b;->b(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
:cond_16
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;
iget-object v2, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;
invoke-virtual {v2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/a/b/ae; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method