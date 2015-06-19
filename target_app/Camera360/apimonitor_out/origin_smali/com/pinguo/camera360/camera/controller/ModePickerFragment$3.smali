.class Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->changeMode(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

.field private final synthetic val$col:I

.field private final synthetic val$modeId:Ljava/lang/String;

.field private final synthetic val$row:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;IILandroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$modeId:Ljava/lang/String;

    iput p3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$row:I

    iput p4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$col:I

    iput-object p5, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneInitFinish()V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$modeId:Ljava/lang/String;

    iget v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$row:I

    iget v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$col:I

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$view:Landroid/view/View;

    #calls: Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->access$2(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;IILandroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ModePickerFragment;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;->val$modeId:Ljava/lang/String;

    #calls: Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->notifyModeChangeEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->access$3(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;)V

    return-void
.end method
