.class final Lcom/instagram/user/follow/d;
.super Ljava/lang/Object;
.source "FollowButton.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/user/follow/FollowButton;
.method constructor <init>(Lcom/instagram/user/follow/FollowButton;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/follow/d;->a:Lcom/instagram/user/follow/FollowButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/user/follow/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/user/follow/d;->a:Lcom/instagram/user/follow/FollowButton;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/user/follow/FollowButton;->setEnabled(Z)V
const-string v1, " - Lcom/instagram/user/follow/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method