.class Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;
.super Ljava/lang/Object;
.source "DndPagerdCameraModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->view(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

.field private final synthetic val$modeEntry:Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->val$modeEntry:Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;)Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080239

    const v2, 0x7f0800a7

    const/16 v3, -0x3e7

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->val$modeEntry:Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget v0, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    if-nez v0, :cond_4c

    const-string/jumbo v11, ""

    :goto_23
    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08025e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080300

    const v8, 0x7f080002

    new-instance v9, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;

    invoke-direct {v9, p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1$1;-><init>(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;Landroid/view/View;)V

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto :goto_19

    :cond_4c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->this$0:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;

    #getter for: Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter$1;->val$modeEntry:Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget v1, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_23
.end method
