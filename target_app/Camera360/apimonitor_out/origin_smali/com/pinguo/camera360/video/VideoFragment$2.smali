.class Lcom/pinguo/camera360/video/VideoFragment$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/VideoFragment;->onCameraOpenFail(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/VideoFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/VideoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoFragment$2;->this$0:Lcom/pinguo/camera360/video/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoFragment$2;->this$0:Lcom/pinguo/camera360/video/VideoFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
