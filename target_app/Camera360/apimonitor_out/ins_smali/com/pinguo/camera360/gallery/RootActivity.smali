.class public abstract Lcom/pinguo/camera360/gallery/RootActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "RootActivity.java"
.implements Lcom/pinguo/camera360/gallery/AlbumActivity;
.field private static final TAG:Ljava/lang/String; = "RootActivity"
.field protected mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.field private mBottomTip:Landroid/view/View;
.field private mEmptyView:Landroid/view/View;
.field private mEnterCameraView:Landroid/view/View;
.field private mGLCoverView:Landroid/view/View;
.field private mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
.field private mLoadingDialog:Landroid/view/View;
.field private mMountFilter:Landroid/content/IntentFilter;
.field private mMountReceiver:Landroid/content/BroadcastReceiver;
.field private mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;
.field private mRoot:Landroid/view/View;
.field private mStateManager:Lcom/pinguo/camera360/gallery/StateManager;
.field private mTopTip:Landroid/view/ViewGroup;
.field private mTransitionStore:Lcom/pinguo/camera360/gallery/TransitionStore;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
new-instance v0, Lcom/pinguo/camera360/gallery/TransitionStore;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/TransitionStore;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mTransitionStore:Lcom/pinguo/camera360/gallery/TransitionStore;
new-instance v0, Lcom/pinguo/camera360/gallery/RootActivity$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/RootActivity$1;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/RootActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLCoverView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/RootActivity;)Lcom/pinguo/camera360/gallery/ui/GLRootView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
return-object v0
.end method
.method public getAndroidContext()Landroid/content/Context;
.registers 1
return-object p0
.end method
.method public getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
return-object v0
.end method
.method public getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
return-object v0
.end method
.method public getOrientationManager()Lcom/pinguo/camera360/gallery/OrientationManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;
return-object v0
.end method
.method public declared-synchronized getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mStateManager:Lcom/pinguo/camera360/gallery/StateManager;
if-nez v0, :cond_c
new-instance v0, Lcom/pinguo/camera360/gallery/StateManager;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/StateManager;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mStateManager:Lcom/pinguo/camera360/gallery/StateManager;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mStateManager:Lcom/pinguo/camera360/gallery/StateManager;
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
return-object v0
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
move-result-object v0
return-object v0
.end method
.method public getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
return-object v0
.end method
.method public getTopTip()Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mTopTip:Landroid/view/ViewGroup;
return-object v0
.end method
.method public getTransitionStore()Lcom/pinguo/camera360/gallery/TransitionStore;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mTransitionStore:Lcom/pinguo/camera360/gallery/TransitionStore;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/16 v0, 0x3e8
if-ne p1, v0, :cond_8
const/4 v0, -0x1
if-ne p2, v0, :cond_8
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->lockRenderThread()V
:try_start_d
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
:try_end_14
.catchall {:try_start_d .. :try_end_14} :catchall_1a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
goto :goto_7
:catchall_1a
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
throw v0
.end method
.method public onBackPressed()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
:try_start_7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/StateManager;->onBackPressed()V
:try_end_e
.catchall {:try_start_7 .. :try_end_e} :catchall_12
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
return-void
:catchall_12
move-exception v1
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
throw v1
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mRoot:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
monitor-enter p0
:try_start_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mStateManager:Lcom/pinguo/camera360/gallery/StateManager;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_10
throw v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
new-instance v0, Lcom/pinguo/camera360/gallery/OrientationManager;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/OrientationManager;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
const-string/jumbo v1, "file"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-static {}, Lcom/pinguo/camera360/gallery/util/Log;->init()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 3
return-void
.end method
.method protected onDestroy()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEnterCameraView:Landroid/view/View;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEnterCameraView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->lockRenderThread()V
:try_start_f
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/StateManager;->destroy()V
:try_end_16
.catchall {:try_start_f .. :try_end_16} :catchall_1f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onDestroy()V
return-void
:catchall_1f
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
throw v0
.end method
.method protected onPause()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->lockRenderThread()V
:try_start_8
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/StateManager;->pause()V
:try_end_f
.catchall {:try_start_8 .. :try_end_f} :catchall_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/OrientationManager;->pause()V
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getMicroThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->clear()V
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->clear()V
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->pause()V
return-void
:catchall_34
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
throw v0
.end method
.method protected onResume()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->lockRenderThread()V
:try_start_8
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/StateManager;->resume()V
:try_end_f
.catchall {:try_start_8 .. :try_end_f} :catchall_24
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mOrientationManager:Lcom/pinguo/camera360/gallery/OrientationManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/OrientationManager;->resume()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->resume()V
return-void
:catchall_24
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
throw v0
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->lockRenderThread()V
:try_start_5
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/StateManager;->saveState(Landroid/os/Bundle;)V
:try_end_f
.catchall {:try_start_5 .. :try_end_f} :catchall_15
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
return-void
:catchall_15
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->unlockRenderThread()V
throw v0
.end method
.method protected onStart()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onStart()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountFilter:Landroid/content/IntentFilter;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method protected onStop()V
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onStop()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;
:cond_14
return-void
.end method
.method public setContentView(I)V
.registers 4
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mRoot:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mRoot:Landroid/view/View;
invoke-super {p0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->setContentView(Landroid/view/View;)V
const v1, 0x7f0a0057
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/gallery/ui/GLRootView;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLRootView:Lcom/pinguo/camera360/gallery/ui/GLRootView;
const v1, 0x7f0a0058
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mGLCoverView:Landroid/view/View;
const v1, 0x7f0a013f
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEmptyView:Landroid/view/View;
const v1, 0x7f0a0140
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mLoadingDialog:Landroid/view/View;
const v1, 0x7f0a0142
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mTopTip:Landroid/view/ViewGroup;
return-void
.end method
.method public setEmptyAlbumView(Z)V
.registers 5
const/16 v1, 0x8
iget-object v2, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEmptyView:Landroid/view/View;
if-eqz p1, :cond_2b
const/4 v0, 0x0
:goto_7
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mLoadingDialog:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
if-eqz p1, :cond_2a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEmptyView:Landroid/view/View;
const v1, 0x7f0a0129
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEnterCameraView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEnterCameraView:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEnterCameraView:Landroid/view/View;
new-instance v1, Lcom/pinguo/camera360/gallery/RootActivity$2;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/RootActivity$2;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_2a
return-void
:cond_2b
move v0, v1
goto :goto_7
.end method
.method public setProgressBar(Z)V
.registers 4
const/16 v1, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mLoadingDialog:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/RootActivity;->mEmptyView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method