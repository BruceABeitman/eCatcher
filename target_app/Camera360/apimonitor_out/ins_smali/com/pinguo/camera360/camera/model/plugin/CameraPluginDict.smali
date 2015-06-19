.class public Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;
.super Ljava/lang/Object;
.source "CameraPluginDict.java"
.field private mCameraMap:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->mCameraMap:Ljava/util/Map;
return-void
.end method
.method public getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->mCameraMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
return-object v0
.end method
.method public getCameraModeList()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->mCameraMap:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_19
invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return-object v1
:cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
.end method
.method public put(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->mCameraMap:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method