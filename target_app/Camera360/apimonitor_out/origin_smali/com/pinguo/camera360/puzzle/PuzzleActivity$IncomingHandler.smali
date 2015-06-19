.class Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pinguo/camera360/puzzle/PuzzleActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    if-nez v0, :cond_d

    :goto_c
    :sswitch_c
    return-void

    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_40

    goto :goto_c

    :sswitch_13
    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$5(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_c

    :sswitch_29
    const v1, 0x7f0802a1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_c

    :sswitch_30
    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$5(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    nop

    :sswitch_data_40
    .sparse-switch
        0x65 -> :sswitch_13
        0x66 -> :sswitch_30
        0x6e -> :sswitch_29
        0xc8 -> :sswitch_c
    .end sparse-switch
.end method
