.class public interface abstract Lcom/pinguo/camera360/camera/model/plugin/ICameraPluginManager;
.super Ljava/lang/Object;
.source "ICameraPluginManager.java"


# virtual methods
.method public abstract clearNewFlagInDB(Ljava/lang/String;)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
.end method

.method public abstract getCameraModeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.end method

.method public abstract uninstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z
.end method

.method public abstract uninstallBatch(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateCameraModeList(Ljava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;)Z"
        }
    .end annotation
.end method
