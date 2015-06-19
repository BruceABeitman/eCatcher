.class public Lcom/pinguo/camera360/ui/PGOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PGOrientationEventListener.java"
.field private mActivity:Landroid/app/Activity;
.field private mDisabled:Z
.field private mOrientation:I
.field private mOrientationCompensation:I
.field private mRotaters:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x2
invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
iput-object v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mActivity:Landroid/app/Activity;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientation:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mDisabled:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
check-cast p1, Landroid/app/Activity;
iput-object p1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public disable()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mDisabled:Z
invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V
return-void
.end method
.method public enable()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mDisabled:Z
iget v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->setOrientationIndicator(IZ)V
return-void
.end method
.method public onOrientationChanged(I)V
.registers 5
const/4 v1, -0x1
if-eq p1, v1, :cond_7
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mDisabled:Z
if-eqz v1, :cond_8
:cond_7
:goto_7
return-void
:cond_8
iget v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientation:I
invoke-static {p1, v1}, Lcom/pinguo/lib/util/SystemUtils;->roundOrientation(II)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientation:I
iget v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientation:I
iget-object v2, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/util/SystemUtils;->getDisplayRotation(Landroid/app/Activity;)I
move-result v2
add-int/2addr v1, v2
rem-int/lit16 v0, v1, 0x168
iget v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
if-eq v1, v0, :cond_7
iput v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/PgCameraApplication;->setOrientation(I)V
iget v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->setOrientationIndicator(IZ)V
goto :goto_7
.end method
.method public register(Lcom/pinguo/camera360/lib/ui/Rotatable;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mOrientationCompensation:I
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V
return-void
.end method
.method public setOrientationIndicator(IZ)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
if-nez v1, :cond_5
:cond_4
return-void
:cond_5
iget-object v1, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_4
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/Rotatable;
invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V
goto :goto_b
.end method
.method public unregister(Lcom/pinguo/camera360/lib/ui/Rotatable;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/PGOrientationEventListener;->mRotaters:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method