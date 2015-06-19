.class Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;
.super Ljava/lang/Object;
.source "SceneCameraModel.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/model/SceneCameraModel;->parseSceneParam(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

.field private final synthetic val$info:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/model/SceneCameraModel;Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;->this$0:Lcom/pinguo/camera360/camera/model/SceneCameraModel;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;->val$info:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SceneCameraModel$1;->val$info:Ljava/util/HashMap;

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
