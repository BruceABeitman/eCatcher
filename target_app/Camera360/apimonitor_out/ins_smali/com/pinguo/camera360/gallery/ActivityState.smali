.class public abstract Lcom/pinguo/camera360/gallery/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"
.field protected static final FLAG_ALBUM_SET_SWITCH:I = 0x64
.field protected static final FLAG_CAMERA360_ALBUM_SWITCH:I = 0x65
.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8
.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4
.field private static final SCREEN_ON_FLAGS:I = 0x80081
.field protected mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
.field protected mData:Landroid/os/Bundle;
.field private mDestroyed:Z
.field protected mFlags:I
.field  mIsFinishing:Z
.field private mPlugged:Z
.field  mPowerIntentReceiver:Landroid/content/BroadcastReceiver;
.field protected mReceivedResults:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
.field protected mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
.method protected constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mDestroyed:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mIsFinishing:Z
new-instance v0, Lcom/pinguo/camera360/gallery/ActivityState$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ActivityState$1;-><init>(Lcom/pinguo/camera360/gallery/ActivityState;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ActivityState;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ActivityState;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
return-void
.end method
.method public getData()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mData:Landroid/os/Bundle;
return-object v0
.end method
.method  initialize(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mData:Landroid/os/Bundle;
return-void
.end method
.method public invalidate()V
.registers 1
return-void
.end method
.method  isDestroyed()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mDestroyed:Z
return v0
.end method
.method public isFinishing()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mIsFinishing:Z
return v0
.end method
.method protected onBackPressed()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/StateManager;->finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V
return-void
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method protected onDestroy()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mDestroyed:Z
return-void
.end method
.method protected onPause()V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mFlags:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_d
return-void
.end method
.method protected onResume()V
.registers 1
return-void
.end method
.method protected onSaveState(Landroid/os/Bundle;)V
.registers 2
return-void
.end method
.method protected onStateResult(IILandroid/content/Intent;)V
.registers 4
return-void
.end method
.method  resume()V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->setScreenOnFlags()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mReceivedResults:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
if-eqz v1, :cond_15
const/4 v3, 0x0
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mReceivedResults:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
iget v3, v1, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->requestCode:I
iget v4, v1, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultCode:I
iget-object v5, v1, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;
invoke-virtual {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/ActivityState;->onStateResult(IILandroid/content/Intent;)V
:cond_15
iget v3, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mFlags:I
and-int/lit8 v3, v3, 0x4
if-eqz v3, :cond_2b
new-instance v2, Landroid/content/IntentFilter;
invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V
const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:cond_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onResume()V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTransitionStore()Lcom/pinguo/camera360/gallery/TransitionStore;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/TransitionStore;->clear()V
return-void
.end method
.method protected setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V
return-void
.end method
.method protected setContentPaneBackground([F)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->setContentPaneBackground([F)V
return-void
.end method
.method  setScreenOnFlags()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iget v2, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mFlags:I
and-int/lit8 v2, v2, 0x8
if-nez v2, :cond_1a
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
if-eqz v2, :cond_26
iget v2, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mFlags:I
and-int/lit8 v2, v2, 0x4
if-eqz v2, :cond_26
:cond_1a
iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
const v3, 0x80081
or-int/2addr v2, v3
iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
:goto_22
invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
return-void
:cond_26
iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
const v3, -0x80082
and-int/2addr v2, v3
iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
goto :goto_22
.end method
.method protected setStateResult(ILandroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
iput p1, v0, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultCode:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;
iput-object p2, v0, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;
goto :goto_4
.end method