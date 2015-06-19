.class final Lcom/instagram/android/a/b/m;
.super Ljava/lang/Object;
.source "FriendRequestHeaderRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Landroid/support/v4/app/an;
.field final synthetic c:Lcom/instagram/user/c/a;
.field final synthetic d:Lcom/instagram/android/a/b/n;
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/android/a/b/n;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/a/b/m;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/a/b/m;->b:Landroid/support/v4/app/an;
iput-object p3, p0, Lcom/instagram/android/a/b/m;->c:Lcom/instagram/user/c/a;
iput-object p4, p0, Lcom/instagram/android/a/b/m;->d:Lcom/instagram/android/a/b/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/a/b/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/user/follow/i;
iget-object v1, p0, Lcom/instagram/android/a/b/m;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/android/a/b/m;->b:Landroid/support/v4/app/an;
sget v3, Lcom/instagram/user/c/g;->d:I
iget-object v4, p0, Lcom/instagram/android/a/b/m;->c:Lcom/instagram/user/c/a;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V
invoke-virtual {v0}, Lcom/instagram/user/follow/i;->h()V
iget-object v0, p0, Lcom/instagram/android/a/b/m;->d:Lcom/instagram/android/a/b/n;
invoke-static {v0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/instagram/android/a/b/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method