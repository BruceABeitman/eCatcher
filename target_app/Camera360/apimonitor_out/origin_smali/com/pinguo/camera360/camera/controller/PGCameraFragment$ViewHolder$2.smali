.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

.field private final synthetic val$asiGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Landroid/view/GestureDetector;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->val$asiGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->val$asiGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
