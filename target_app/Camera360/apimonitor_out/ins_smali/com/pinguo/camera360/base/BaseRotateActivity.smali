.class public abstract Lcom/pinguo/camera360/base/BaseRotateActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "BaseRotateActivity.java"
.field private mOrientation:I
.field private mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/base/BaseRotateActivity;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/base/BaseRotateActivity;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getOrientation()I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
return-void
.end method
.method protected onDestroy()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->disable()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
:cond_c
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onDestroy()V
return-void
.end method
.method protected onPause()V
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
iget v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/PgCameraApplication;->setOrientation(I)V
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->disable()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
:cond_17
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V
return-void
.end method
.method protected onResume()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
if-nez v1, :cond_1c
new-instance v1, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-direct {v1, p0, p0}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;-><init>(Lcom/pinguo/camera360/base/BaseRotateActivity;Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->enable()V
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getOrientation()I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
:cond_1c
iget v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/base/BaseRotateActivity;->setOrientationIndicator(IZ)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V
return-void
.end method
.method protected onStart()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
if-nez v1, :cond_1c
new-instance v1, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-direct {v1, p0, p0}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;-><init>(Lcom/pinguo/camera360/base/BaseRotateActivity;Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->enable()V
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getOrientation()I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
:cond_1c
iget v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/base/BaseRotateActivity;->setOrientationIndicator(IZ)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onStart()V
return-void
.end method
.method protected onStop()V
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;
iget v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/PgCameraApplication;->setOrientation(I)V
iget-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->disable()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationListener:Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
:cond_17
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onStop()V
return-void
.end method
.method protected abstract setOrientationIndicator(IZ)V
.end method