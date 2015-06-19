.class Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;->this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;->this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v0, v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    invoke-static {v0}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;->this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v0, v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;->this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/RotateTextToast$1;->this$0:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->mToast:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    return-void
.end method
