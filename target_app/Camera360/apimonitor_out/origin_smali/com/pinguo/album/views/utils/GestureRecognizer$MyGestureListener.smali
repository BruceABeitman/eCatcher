.class Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/utils/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;-><init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyGestureListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onSingleTapConfirmed(FF)Z

    move-result v0

    return v0
.end method
