.class public Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;,
        Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;,
        Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;,
        Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureRecognizer"


# instance fields
.field private final mDownUpDetector:Lcom/pinguo/camera360/gallery/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyGestureListener;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyScaleListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$MyDownUpListener;)V

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;-><init>(Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/pinguo/camera360/gallery/ui/DownUpDetector;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mListener:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public cancelScale()V
    .registers 10

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isDown()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/pinguo/camera360/gallery/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/pinguo/camera360/gallery/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
