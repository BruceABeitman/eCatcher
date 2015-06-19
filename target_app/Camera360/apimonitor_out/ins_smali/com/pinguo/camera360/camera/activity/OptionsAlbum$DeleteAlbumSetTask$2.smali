.class  Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
move-result-object v0
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$8(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
move-result-object v0
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$9(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
const v1, 0x7f08008c
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method