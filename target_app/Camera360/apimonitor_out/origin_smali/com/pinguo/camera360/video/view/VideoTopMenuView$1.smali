.class Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;
.super Ljava/lang/Object;
.source "VideoTopMenuView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/view/VideoTopMenuView;->initFlashMode(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/view/VideoTopMenuView;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;->this$0:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    iput-object p2, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
