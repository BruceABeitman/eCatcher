.class public Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "QuickSnapCameraModel.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
return-void
.end method
.method public destroyMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "destroyMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f080332
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public initMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "initMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;->setSubEffect(Ljava/lang/String;)V
return-void
.end method