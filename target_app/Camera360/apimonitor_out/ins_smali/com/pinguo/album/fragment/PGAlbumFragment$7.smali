.class  Lcom/pinguo/album/fragment/PGAlbumFragment$7;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/PGAlbumFragment$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/pinguo/album/fragment/PGAlbumFragment$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method