.class  Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;
.super Ljava/lang/Object;
.source "SceneCameraModel.java"
.implements Landroid/sax/EndTextElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
.field private final synthetic val$info:Ljava/util/HashMap;
.method constructor <init>(Lcom/pinguo/camera360/camera/model/SceneCameraModel;Ljava/util/HashMap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;->this$0:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
iput-object p2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;->val$info:Ljava/util/HashMap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$3;->val$info:Ljava/util/HashMap;
const-string/jumbo v1, "name"
invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method