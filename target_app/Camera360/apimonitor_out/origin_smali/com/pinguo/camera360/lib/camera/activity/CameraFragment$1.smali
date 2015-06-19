.class Lcom/pinguo/camera360/lib/camera/activity/CameraFragment$1;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->onCameraOpenFail(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment$1;->this$0:Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment$1;->this$0:Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/activity/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
