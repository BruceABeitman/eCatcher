.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$1;
.super Ljava/lang/Object;
.source "SceneTemplateModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getTemplateList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pinguo/camera360/scenetemplate/SceneTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)I
    .registers 5

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I

    move-result v0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I

    move-result v0

    if-ne v0, v1, :cond_11

    const/4 v0, -0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    check-cast p2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$1;->compare(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)I

    move-result v0

    return v0
.end method
