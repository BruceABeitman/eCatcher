.class Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PGSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;-><init>(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$0(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$1(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    #calls: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getThumbOffset(F)I
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$2(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)I

    move-result v3

    #setter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$3(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;I)V

    :goto_1f
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$5(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$6(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$6(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    #setter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
    invoke-static {v2, v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$8(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$5(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$9(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V

    :cond_52
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->invalidate()V

    const/4 v2, 0x1

    return v2

    :cond_59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$4(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    #calls: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getThumbOffset(F)I
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$2(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)I

    move-result v3

    #setter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$3(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;I)V

    goto :goto_1f
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9

    const/16 v5, 0x190

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$0(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$1(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    #calls: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getThumbOffset(F)I
    invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$2(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)I

    move-result v6

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$10(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v3

    sub-int v4, v6, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_35
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$5(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$6(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    int-to-float v1, v6

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$6(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    #setter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
    invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$8(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$5(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$9(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V

    :cond_62
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_69
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$4(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    #calls: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getThumbOffset(F)I
    invoke-static {v0, v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$2(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)I

    move-result v6

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$10(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;->this$0:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;

    #getter for: Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I

    move-result v3

    sub-int v4, v6, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_35
.end method
