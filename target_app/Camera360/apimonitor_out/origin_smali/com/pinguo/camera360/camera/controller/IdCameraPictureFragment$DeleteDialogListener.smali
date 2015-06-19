.class Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;
.super Ljava/lang/Object;
.source "IdCameraPictureFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;

    #calls: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->deletePicture()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$7(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V

    :cond_8
    return-void
.end method
