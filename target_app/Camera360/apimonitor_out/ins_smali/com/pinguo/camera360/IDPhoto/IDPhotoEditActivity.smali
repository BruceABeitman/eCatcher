.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "IDPhotoEditActivity.java"
.field public static final TAG:Ljava/lang/String; = "IDPhotoEditActivity"
.field private mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public static startActivity(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const-string/jumbo v1, "IDPhotoEditActivity"
const-string/jumbo v2, "onCreate"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V
const v1, 0x7f030054
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->setContentView(I)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
invoke-direct {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
const v1, 0x7f0a01af
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string/jumbo v0, "IDPhotoEditActivity"
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
sparse-switch p1, :sswitch_data_12
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_7
return v0
:sswitch_8
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->handleKey(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_7
:sswitch_f
const/4 v0, 0x1
goto :goto_7
nop
:sswitch_data_12
.sparse-switch
0x4 -> :sswitch_8
0x1b -> :sswitch_f
.end sparse-switch
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
const-string/jumbo v0, "IDPhotoEditActivity"
const-string/jumbo v1, "onResume"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
:cond_1c
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method