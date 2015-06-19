.class Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "BaseRotateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/base/BaseRotateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/base/BaseRotateActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    #getter for: Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
    invoke-static {v3}, Lcom/pinguo/camera360/base/BaseRotateActivity;->access$0(Lcom/pinguo/camera360/base/BaseRotateActivity;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/pinguo/lib/util/Util;->roundOrientation(II)I

    move-result v3

    #setter for: Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/base/BaseRotateActivity;->access$1(Lcom/pinguo/camera360/base/BaseRotateActivity;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    #getter for: Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientation:I
    invoke-static {v2}, Lcom/pinguo/camera360/base/BaseRotateActivity;->access$0(Lcom/pinguo/camera360/base/BaseRotateActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    invoke-static {v3}, Lcom/pinguo/lib/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iget v2, v2, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iput v1, v2, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/base/BaseRotateActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/PgCameraApplication;

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iget v2, v2, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/PgCameraApplication;->setOrientation(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    invoke-static {v2}, Lcom/pinguo/camera360/adapter/GAdapter;->isAccelerometerRotation(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    iget v3, v3, Lcom/pinguo/camera360/base/BaseRotateActivity;->mOrientationCompensation:I

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/base/BaseRotateActivity;->setOrientationIndicator(IZ)V

    goto :goto_4

    :cond_52
    iget-object v2, p0, Lcom/pinguo/camera360/base/BaseRotateActivity$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/base/BaseRotateActivity;

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getDefaultSceneRotation()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/base/BaseRotateActivity;->setOrientationIndicator(IZ)V

    goto :goto_4
.end method
