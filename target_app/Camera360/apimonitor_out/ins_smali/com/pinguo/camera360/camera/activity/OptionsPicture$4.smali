.class  Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;
.super Ljava/lang/Object;
.source "OptionsPicture.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsPicture$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v5, 0xa
if-nez p2, :cond_2b
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
sget-object v4, Lcom/pinguo/camera360/save/Storage;->DEFALUT_DIRECTORY:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPictureSavePath(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsSavePathSummary:Landroid/widget/TextView;
invoke-static {v3}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$4(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Landroid/widget/TextView;
move-result-object v3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->lpPicSaveType:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-static {v3}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$5(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v3
invoke-virtual {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V
:goto_27
:cond_27
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
:goto_2a
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsPicture$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
new-instance v0, Landroid/content/Intent;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
const-class v4, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;
invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v3, "select_which"
invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const/4 v3, 0x1
if-ne p2, v3, :cond_61
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_49
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_4d
:cond_49
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
goto :goto_2a
:cond_4d
const-string/jumbo v3, "select_root"
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
invoke-virtual {v3, v0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_27
:cond_61
const/4 v3, 0x2
if-ne p2, v3, :cond_27
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/lib/util/UtilStorage;->isHasExternalSdCard()Z
move-result v3
if-nez v3, :cond_8b
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
new-instance v4, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
const v6, 0x7f080323
const/4 v7, 0x0
invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
#setter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v3, v4}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$6(Lcom/pinguo/camera360/camera/activity/OptionsPicture;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->toast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v3}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$7(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
goto :goto_2a
:cond_8b
const-string/jumbo v3, "select_root"
invoke-virtual {v1}, Lcom/pinguo/lib/util/UtilStorage;->getExternalSdCardPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
invoke-virtual {v3, v0, v5}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_27
.end method