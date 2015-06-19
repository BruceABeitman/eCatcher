.class final Lcom/instagram/user/follow/e;
.super Ljava/lang/Object;
.source "FollowButton.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Landroid/support/v4/app/an;
.field final synthetic c:Lcom/instagram/user/follow/g;
.field final synthetic d:Lcom/instagram/user/follow/FollowButton;
.method constructor <init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
.registers 5
iput-object p1, p0, Lcom/instagram/user/follow/e;->d:Lcom/instagram/user/follow/FollowButton;
iput-object p2, p0, Lcom/instagram/user/follow/e;->a:Lcom/instagram/user/c/a;
iput-object p3, p0, Lcom/instagram/user/follow/e;->b:Landroid/support/v4/app/an;
iput-object p4, p0, Lcom/instagram/user/follow/e;->c:Lcom/instagram/user/follow/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/user/follow/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/user/follow/e;->d:Lcom/instagram/user/follow/FollowButton;
iget-object v1, p0, Lcom/instagram/user/follow/e;->a:Lcom/instagram/user/c/a;
iget-object v2, p0, Lcom/instagram/user/follow/e;->b:Landroid/support/v4/app/an;
iget-object v3, p0, Lcom/instagram/user/follow/e;->c:Lcom/instagram/user/follow/g;
invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
const-string v1, " - Lcom/instagram/user/follow/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method