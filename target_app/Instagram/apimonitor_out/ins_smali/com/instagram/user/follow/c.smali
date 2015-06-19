.class final Lcom/instagram/user/follow/c;
.super Ljava/lang/Object;
.source "FollowButton.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Landroid/support/v4/app/an;
.field final synthetic c:Lcom/instagram/user/follow/g;
.field final synthetic d:Lcom/instagram/user/follow/FollowButton;
.method constructor <init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
.registers 5
iput-object p1, p0, Lcom/instagram/user/follow/c;->d:Lcom/instagram/user/follow/FollowButton;
iput-object p2, p0, Lcom/instagram/user/follow/c;->a:Lcom/instagram/user/c/a;
iput-object p3, p0, Lcom/instagram/user/follow/c;->b:Landroid/support/v4/app/an;
iput-object p4, p0, Lcom/instagram/user/follow/c;->c:Lcom/instagram/user/follow/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/user/follow/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/user/follow/c;->d:Lcom/instagram/user/follow/FollowButton;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/user/follow/FollowButton;->setEnabled(Z)V
iget-object v0, p0, Lcom/instagram/user/follow/c;->a:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
if-ne v0, v1, :cond_22
iget-object v0, p0, Lcom/instagram/user/follow/c;->d:Lcom/instagram/user/follow/FollowButton;
iget-object v1, p0, Lcom/instagram/user/follow/c;->d:Lcom/instagram/user/follow/FollowButton;
invoke-virtual {v1}, Lcom/instagram/user/follow/FollowButton;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/user/follow/c;->b:Landroid/support/v4/app/an;
iget-object v3, p0, Lcom/instagram/user/follow/c;->a:Lcom/instagram/user/c/a;
iget-object v4, p0, Lcom/instagram/user/follow/c;->c:Lcom/instagram/user/follow/g;
invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/follow/FollowButton;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/user/follow/g;)V
:goto_21
const-string v1, " - Lcom/instagram/user/follow/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_22
iget-object v0, p0, Lcom/instagram/user/follow/c;->d:Lcom/instagram/user/follow/FollowButton;
iget-object v1, p0, Lcom/instagram/user/follow/c;->a:Lcom/instagram/user/c/a;
iget-object v2, p0, Lcom/instagram/user/follow/c;->b:Landroid/support/v4/app/an;
iget-object v3, p0, Lcom/instagram/user/follow/c;->c:Lcom/instagram/user/follow/g;
invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
goto :goto_21
.end method