.class  Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1;->this$1:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum$DeleteAlbumSetTask$1; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method