.class  Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method