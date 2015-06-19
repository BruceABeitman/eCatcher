.class Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ArcSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;-><init>(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$0(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
    invoke-static {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$1(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$1(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
    invoke-static {v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$2(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x190

    #calls: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateThumbScale(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$3(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;III)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    const/4 v1, 0x1

    #setter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$4(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$5(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$5(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;->onStartScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V

    :cond_42
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
    invoke-static {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$6(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    #calls: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getThumbOffset(F)I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$7(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;F)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$8(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #calls: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getStandardScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
    invoke-static {v2, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$9(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;

    move-result-object v0

    iget v1, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentX:I

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #calls: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateToOffset(I)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$10(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    iget v3, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentItem:I

    #setter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$11(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$12(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$12(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
    invoke-static {v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$13(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;->onScaleChanged(I)V

    :cond_45
    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$14(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;

    move-result-object v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$15(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #calls: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateToOffset(I)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$10(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    int-to-float v3, v1

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
    invoke-static {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$15(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    #setter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
    invoke-static {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$16(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;F)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$14(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
    invoke-static {v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$17(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V

    :cond_77
    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$0(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    const/4 v3, 0x0

    #setter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
    invoke-static {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$4(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$5(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    #getter for: Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->access$5(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;->onStopScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V

    :cond_98
    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V

    const/4 v2, 0x1

    return v2
.end method
