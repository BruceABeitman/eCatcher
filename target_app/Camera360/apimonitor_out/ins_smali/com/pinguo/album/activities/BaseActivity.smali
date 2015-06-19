.class public Lcom/pinguo/album/activities/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"
.implements Lcom/pinguo/album/PGAlbumContext;
.field public static final KEY_ALBUM_ID:Ljava/lang/String; = "album_id"
.field public static final KEY_ALBUM_TITLE:Ljava/lang/String; = "album_title"
.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"
.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"
.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"
.field private static final TAG:Ljava/lang/String;
.field private mActionBar:Lcom/pinguo/album/views/PGAlbumActionBar;
.field private mBottomBar:Lcom/pinguo/album/views/PGAlbumBottomBar;
.field private mControlPanel:Lcom/pinguo/album/views/PGAlbumControlPanel;
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;
.field private mOrientationManager:Lcom/pinguo/album/OrientationManager;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/activities/BaseActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/activities/BaseActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public getAndroidContext()Landroid/content/Context;
.registers 1
return-object p0
.end method
.method public getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v0
return-object v0
.end method
.method public getOrientationManager()Lcom/pinguo/album/OrientationManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
return-object v0
.end method
.method public getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mActionBar:Lcom/pinguo/album/views/PGAlbumActionBar;
return-object v0
.end method
.method public getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mBottomBar:Lcom/pinguo/album/views/PGAlbumBottomBar;
return-object v0
.end method
.method public getPGAlbumControlPanel()Lcom/pinguo/album/views/PGAlbumControlPanel;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mControlPanel:Lcom/pinguo/album/views/PGAlbumControlPanel;
return-object v0
.end method
.method public getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v0
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 4
return-void
.end method
.method public onBackPressed()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->getActionBarMode()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_13
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->exitSelection()V
:goto_12
return-void
:cond_13
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
goto :goto_12
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/pinguo/album/OrientationManager;
invoke-direct {v0, p0}, Lcom/pinguo/album/OrientationManager;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
new-instance v0, Lcom/pinguo/album/views/PGAlbumControlPanel;
iget-object v1, p0, Lcom/pinguo/album/activities/BaseActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-direct {v0, v1}, Lcom/pinguo/album/views/PGAlbumControlPanel;-><init>(Landroid/support/v4/app/FragmentManager;)V
iput-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mControlPanel:Lcom/pinguo/album/views/PGAlbumControlPanel;
new-instance v1, Lcom/pinguo/album/views/PGAlbumActionBar;
const v0, 0x7f0a003d
invoke-virtual {p0, v0}, Lcom/pinguo/album/activities/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {v1, p0, v0}, Lcom/pinguo/album/views/PGAlbumActionBar;-><init>(Lcom/pinguo/album/activities/BaseActivity;Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/pinguo/album/activities/BaseActivity;->mActionBar:Lcom/pinguo/album/views/PGAlbumActionBar;
new-instance v1, Lcom/pinguo/album/views/PGAlbumBottomBar;
const v0, 0x7f0a0053
invoke-virtual {p0, v0}, Lcom/pinguo/album/activities/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {v1, p0, v0}, Lcom/pinguo/album/views/PGAlbumBottomBar;-><init>(Lcom/pinguo/album/activities/BaseActivity;Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/pinguo/album/activities/BaseActivity;->mBottomBar:Lcom/pinguo/album/views/PGAlbumBottomBar;
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/activities/BaseActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-virtual {v0}, Lcom/pinguo/album/OrientationManager;->pause()V
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/data/AlbumDataManager;->pause()V
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->clear()V
invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/data/utils/BytesBufferPool;->clear()V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
invoke-virtual {p0}, Lcom/pinguo/album/activities/BaseActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/data/AlbumDataManager;->resume()V
iget-object v0, p0, Lcom/pinguo/album/activities/BaseActivity;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-virtual {v0}, Lcom/pinguo/album/OrientationManager;->resume()V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/album/activities/BaseActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V
const-string v1, " - Lcom/pinguo/album/activities/BaseActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method