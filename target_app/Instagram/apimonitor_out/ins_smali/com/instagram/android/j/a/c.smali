.class final Lcom/instagram/android/j/a/c;
.super Ljava/lang/Object;
.source "SimilarAccountsViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/j/a/d;
.field final synthetic b:Landroid/support/v4/app/s;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Lcom/instagram/android/j/a/d;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/j/a/c;->a:Lcom/instagram/android/j/a/d;
iput-object p2, p0, Lcom/instagram/android/j/a/c;->b:Landroid/support/v4/app/s;
iput-object p3, p0, Lcom/instagram/android/j/a/c;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/android/j/a/c;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/j/a/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/j/a/c;->a:Lcom/instagram/android/j/a/d;
invoke-interface {v0}, Lcom/instagram/android/j/a/d;->a()V
iget-object v0, p0, Lcom/instagram/android/j/a/c;->b:Landroid/support/v4/app/s;
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/common/analytics/e;
sget-object v1, Lcom/instagram/android/j/a;->d:Lcom/instagram/android/j/a;
iget-object v2, p0, Lcom/instagram/android/j/a/c;->c:Ljava/lang/String;
const/4 v3, 0x0
iget-object v4, p0, Lcom/instagram/android/j/a/c;->d:Ljava/lang/String;
invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/j/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/android/j/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/j/a/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method