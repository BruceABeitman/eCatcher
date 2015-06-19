.class  Lcom/pinguo/album/views/FullImageView$MyGestureListener;
.super Ljava/lang/Object;
.source "FullImageView.java"
.implements Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
.field private mAccScale:F
.field private mCanChangeMode:Z
.field private mDeltaY:I
.field private mDownInScrolling:Z
.field private mFirstScrollX:Z
.field private mHadFling:Z
.field private mIgnoreScalingGesture:Z
.field private mIgnoreSwipingGesture:Z
.field private mIgnoreUpEvent:Z
.field private mModeChanged:Z
.field private mScrolledAfterDown:Z
.field final synthetic this$0:Lcom/pinguo/album/views/FullImageView;
.method private constructor <init>(Lcom/pinguo/album/views/FullImageView;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreUpEvent:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/views/FullImageView$MyGestureListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;-><init>(Lcom/pinguo/album/views/FullImageView;)V
return-void
.end method
.method private calculateDeltaY(F)I
.registers 11
const/high16 v8, 0x3f00
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxDeletable:Z
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$32(Lcom/pinguo/album/views/FullImageView;)Z
move-result v2
if-eqz v2, :cond_e
add-float v2, p1, v8
float-to-int v2, v2
:goto_d
return v2
:cond_e
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v2}, Lcom/pinguo/album/views/FullImageView;->getHeight()I
move-result v1
const v2, 0x3e19999a
int-to-float v3, v1
mul-float v0, v2, v3
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v2
int-to-float v3, v1
cmpl-float v2, v2, v3
if-ltz v2, :cond_2f
const/4 v2, 0x0
cmpl-float v2, p1, v2
if-lez v2, :cond_2d
move p1, v0
:goto_29
add-float v2, p1, v8
float-to-int v2, v2
goto :goto_d
:cond_2d
neg-float p1, v0
goto :goto_29
:cond_2f
float-to-double v2, v0
int-to-float v4, v1
div-float v4, p1, v4
float-to-double v4, v4
const-wide v6, 0x3ff921fb54442d18L
mul-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
mul-double/2addr v2, v4
double-to-float p1, v2
goto :goto_29
.end method
.method private deleteAfterAnimation(I)V
.registers 7
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
invoke-interface {v2, v3}, Lcom/pinguo/album/views/FullImageView$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_13
:goto_12
return-void
:cond_13
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;
move-result-object v2
invoke-interface {v2}, Lcom/pinguo/album/views/FullImageView$Listener;->onCommitDeleteImage()V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/album/views/FullImageView$Model;->getCurrentIndex()I
move-result v3
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v4
add-int/2addr v3, v4
#setter for: Lcom/pinguo/album/views/FullImageView;->mUndoIndexHint:I
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$36(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
or-int/lit8 v3, v3, 0x4
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
const/4 v3, 0x5
invoke-virtual {v2, v3}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v2
iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v2
iput v2, v1, Landroid/os/Message;->arg1:I
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
int-to-long v3, p1
invoke-virtual {v2, v1, v3, v4}, Lcom/pinguo/album/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_12
.end method
.method private flingImages(FFF)Z
.registers 14
const/high16 v8, 0x3f00
add-float/2addr v8, p1
float-to-int v6, v8
const/high16 v8, 0x3f00
add-float/2addr v8, p2
float-to-int v7, v8
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v8
if-nez v8, :cond_1b
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v8
invoke-virtual {v8, v6, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->flingPage(II)Z
move-result v8
:goto_1a
return v8
:cond_1b
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v8
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v9
cmpl-float v8, v8, v9
if-lez v8, :cond_32
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v8
invoke-virtual {v8, v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->flingFilmX(I)Z
move-result v8
goto :goto_1a
:cond_32
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v8
if-eqz v8, :cond_4d
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v8
const v9, 0x7fffffff
if-eq v8, v9, :cond_4d
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxDeletable:Z
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$32(Lcom/pinguo/album/views/FullImageView;)Z
move-result v8
if-nez v8, :cond_4f
:cond_4d
const/4 v8, 0x0
goto :goto_1a
:cond_4f
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$34(Lcom/pinguo/album/views/FullImageView;)Landroid/content/Context;
move-result-object v8
const/16 v9, 0x9c4
invoke-static {v8, v9}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v5
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$34(Lcom/pinguo/album/views/FullImageView;)Landroid/content/Context;
move-result-object v8
const/16 v9, 0x1f4
invoke-static {v8, v9}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v3
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mContext:Landroid/content/Context;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$34(Lcom/pinguo/album/views/FullImageView;)Landroid/content/Context;
move-result-object v8
const/16 v9, 0x96
invoke-static {v8, v9}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v2
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v9}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v9
invoke-virtual {v8, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;
move-result-object v8
invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I
move-result v0
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v8
if-le v8, v3, :cond_e3
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v8
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v9
if-le v8, v9, :cond_e3
if-lez v7, :cond_df
const/4 v8, 0x1
:goto_9a
iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v9}, Lcom/pinguo/album/views/FullImageView;->getHeight()I
move-result v9
div-int/lit8 v9, v9, 0x2
if-le v0, v9, :cond_e1
const/4 v9, 0x1
:goto_a5
if-ne v8, v9, :cond_e3
int-to-float v8, v2
cmpl-float v8, p3, v8
if-ltz v8, :cond_e3
const/4 v4, 0x1
:goto_ad
if-eqz v4, :cond_e7
invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I
move-result v7
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v9}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v9
invoke-virtual {v8, v9, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->flingFilmY(II)I
move-result v1
if-ltz v1, :cond_e7
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v8}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v9
if-gez v7, :cond_e5
const/4 v8, 0x1
:goto_ce
invoke-virtual {v9, v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->setPopFromTop(Z)V
invoke-direct {p0, v1}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->deleteAfterAnimation(I)V
iget-object v8, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
const v9, 0x7fffffff
#setter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v8, v9}, Lcom/pinguo/album/views/FullImageView;->access$35(Lcom/pinguo/album/views/FullImageView;I)V
const/4 v8, 0x1
goto/16 :goto_1a
:cond_df
const/4 v8, 0x0
goto :goto_9a
:cond_e1
const/4 v9, 0x0
goto :goto_a5
:cond_e3
const/4 v4, 0x0
goto :goto_ad
:cond_e5
const/4 v8, 0x0
goto :goto_ce
:cond_e7
const/4 v8, 0x0
goto/16 :goto_1a
.end method
.method private startExtraScalingIfNeeded()V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$37(Lcom/pinguo/album/views/FullImageView;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x2
const-wide/16 v2, 0x2bc
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/album/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->setExtraScalingRange(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#setter for: Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z
invoke-static {v0, v4}, Lcom/pinguo/album/views/FullImageView;->access$2(Lcom/pinguo/album/views/FullImageView;Z)V
:cond_23
return-void
.end method
.method private stopExtraScalingIfNeeded()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$37(Lcom/pinguo/album/views/FullImageView;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->setExtraScalingRange(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#setter for: Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z
invoke-static {v0, v2}, Lcom/pinguo/album/views/FullImageView;->access$2(Lcom/pinguo/album/views/FullImageView;Z)V
:cond_21
return-void
.end method
.method public onDoubleTap(FF)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/FullImageView$MyGestureListener; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v5, 0x1
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v3, :cond_7
:goto_6
:cond_6
const-string v1, " - Lcom/pinguo/album/views/FullImageView$MyGestureListener; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
:cond_7
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v3
if-eqz v3, :cond_2f
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v3
invoke-virtual {v3, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Lcom/pinguo/album/views/FullImageView$FullPicture;
if-eqz v3, :cond_2f
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v3
invoke-virtual {v3, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/FullImageView$FullPicture;
invoke-virtual {v3}, Lcom/pinguo/album/views/FullImageView$FullPicture;->isReady()Z
move-result v1
if-eqz v1, :cond_6
:cond_2f
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageScale()F
move-result v2
iput-boolean v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreUpEvent:Z
const/high16 v3, 0x3f40
cmpg-float v3, v2, v3
if-lez v3, :cond_47
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAtMinimalScale()Z
move-result v3
if-eqz v3, :cond_54
:cond_47
const/high16 v3, 0x3f80
const/high16 v4, 0x3fc0
mul-float/2addr v4, v2
invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
move-result v3
invoke-virtual {v0, p1, p2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->zoomIn(FFF)V
goto :goto_6
:cond_54
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->resetToFullView()V
goto :goto_6
.end method
.method public onDown(FF)V
.registers 10
const v6, 0x7fffffff
const/high16 v5, 0x3f00
const/4 v4, 0x0
iput v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDeltaY:I
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mModeChanged:Z
iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v2, :cond_f
:goto_e
return-void
:cond_f
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
or-int/lit8 v3, v3, 0x1
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v2
if-eqz v2, :cond_85
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->isScrolling()Z
move-result v2
if-eqz v2, :cond_85
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDownInScrolling:Z
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->stopScrolling()V
:goto_3a
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mHadFling:Z
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mScrolledAfterDown:Z
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v2
if-eqz v2, :cond_a5
add-float v2, p1, v5
float-to-int v0, v2
add-float v2, p2, v5
float-to-int v1, v2
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v4}, Lcom/pinguo/album/views/FullImageView;->getHeight()I
move-result v4
div-int/lit8 v4, v4, 0x2
invoke-virtual {v3, v0, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->hitTest(II)I
move-result v3
#setter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$35(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPrevBound:I
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$8(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
if-lt v2, v3, :cond_7f
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mNextBound:I
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$7(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
if-le v2, v3, :cond_88
:cond_7f
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#setter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2, v6}, Lcom/pinguo/album/views/FullImageView;->access$35(Lcom/pinguo/album/views/FullImageView;I)V
goto :goto_e
:cond_85
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDownInScrolling:Z
goto :goto_3a
:cond_88
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v2
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/FullImageView$Picture;
invoke-interface {v2}, Lcom/pinguo/album/views/FullImageView$Picture;->isDeletable()Z
move-result v2
#setter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxDeletable:Z
invoke-static {v3, v2}, Lcom/pinguo/album/views/FullImageView;->access$38(Lcom/pinguo/album/views/FullImageView;Z)V
goto/16 :goto_e
:cond_a5
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#setter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v2, v6}, Lcom/pinguo/album/views/FullImageView;->access$35(Lcom/pinguo/album/views/FullImageView;I)V
goto/16 :goto_e
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v0, :cond_6
:cond_5
:goto_5
return v2
:cond_6
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mModeChanged:Z
if-nez v0, :cond_5
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#calls: Lcom/pinguo/album/views/FullImageView;->swipeImages(FF)Z
invoke-static {v0, p3, p4}, Lcom/pinguo/album/views/FullImageView;->access$33(Lcom/pinguo/album/views/FullImageView;FF)Z
move-result v0
if-eqz v0, :cond_17
iput-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreUpEvent:Z
:goto_14
iput-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mHadFling:Z
goto :goto_5
:cond_17
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-direct {p0, p3, p4, v0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->flingImages(FFF)Z
goto :goto_14
.end method
.method public onScale(FFF)Z
.registers 10
const/4 v2, 0x0
const/4 v3, 0x1
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v4, :cond_7
:goto_6
:cond_6
return v3
:cond_7
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreScalingGesture:Z
if-nez v4, :cond_6
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mModeChanged:Z
if-nez v4, :cond_6
invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z
move-result v4
if-nez v4, :cond_1b
invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z
move-result v4
if-eqz v4, :cond_1d
:cond_1b
move v3, v2
goto :goto_6
:cond_1d
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v4
invoke-virtual {v4, p3, p1, p2}, Lcom/pinguo/album/views/layout/FullImageLayout;->scaleBy(FFF)I
move-result v1
iget v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mAccScale:F
mul-float/2addr v4, p3
iput v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mAccScale:F
iget v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mAccScale:F
const v5, 0x3f7851ec
cmpg-float v4, v4, v5
if-ltz v4, :cond_7a
iget v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mAccScale:F
const v5, 0x3f83d70a
cmpl-float v4, v4, v5
if-gtz v4, :cond_7a
move v0, v2
:goto_3f
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mCanChangeMode:Z
if-eqz v4, :cond_7e
if-eqz v0, :cond_7e
if-gez v1, :cond_4f
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v4
if-eqz v4, :cond_59
:cond_4f
if-lez v1, :cond_7e
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v4
if-eqz v4, :cond_7e
:cond_59
invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->stopExtraScalingIfNeeded()V
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
and-int/lit8 v5, v5, -0x2
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v4, v5}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v5
if-eqz v5, :cond_7c
:goto_71
invoke-virtual {v4, v2}, Lcom/pinguo/album/views/FullImageView;->setFilmMode(Z)V
invoke-virtual {p0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->onScaleEnd()V
iput-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mModeChanged:Z
goto :goto_6
:cond_7a
move v0, v3
goto :goto_3f
:cond_7c
move v2, v3
goto :goto_71
:cond_7e
if-eqz v1, :cond_84
invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->startExtraScalingIfNeeded()V
goto :goto_6
:cond_84
invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->stopExtraScalingIfNeeded()V
goto/16 :goto_6
.end method
.method public onScaleBegin(FF)Z
.registers 6
const/4 v1, 0x0
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v0, :cond_7
:goto_6
:cond_6
return v2
:cond_7
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/FullImageView$Picture;
invoke-interface {v0}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreScalingGesture:Z
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreScalingGesture:Z
if-nez v0, :cond_6
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/views/layout/FullImageLayout;->beginScale(FF)V
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v0
if-nez v0, :cond_42
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->isAtMinimalScale()Z
move-result v0
if-nez v0, :cond_42
move v0, v1
:goto_3b
iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mCanChangeMode:Z
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mAccScale:F
goto :goto_6
:cond_42
move v0, v2
goto :goto_3b
.end method
.method public onScaleEnd()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreScalingGesture:Z
if-nez v0, :cond_4
iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mModeChanged:Z
if-nez v0, :cond_4
iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->endScale()V
goto :goto_4
.end method
.method public onScroll(FFFF)Z
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/FullImageView$MyGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/high16 v7, 0x3f00
const/4 v5, 0x1
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v4, :cond_8
:goto_7
:cond_7
const-string v1, " - Lcom/pinguo/album/views/FullImageView$MyGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
:cond_8
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mScrolledAfterDown:Z
if-nez v4, :cond_1d
iput-boolean v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mScrolledAfterDown:Z
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v4
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v6
cmpl-float v4, v4, v6
if-lez v4, :cond_39
move v4, v5
:goto_1b
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mFirstScrollX:Z
:cond_1d
neg-float v4, p1
add-float/2addr v4, v7
float-to-int v1, v4
neg-float v4, p2
add-float/2addr v4, v7
float-to-int v2, v4
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v4
if-eqz v4, :cond_62
iget-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mFirstScrollX:Z
if-eqz v4, :cond_3b
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->scrollFilmX(I)V
goto :goto_7
:cond_39
const/4 v4, 0x0
goto :goto_1b
:cond_3b
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v4
const v6, 0x7fffffff
if-eq v4, v6, :cond_7
invoke-direct {p0, p4}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->calculateDeltaY(F)I
move-result v3
iget v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDeltaY:I
sub-int v0, v3, v4
if-eqz v0, :cond_7
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v4
iget-object v6, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v6}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v6
invoke-virtual {v4, v6, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->scrollFilmY(II)V
iput v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDeltaY:I
goto :goto_7
:cond_62
iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v4
invoke-virtual {v4, v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->scrollPage(II)V
goto :goto_7
.end method
.method public onSingleTapConfirmed(FF)Z
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/FullImageView$MyGestureListener; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v10, 0x1
const/4 v9, 0x0
const/high16 v8, 0x3f00
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v6
and-int/lit8 v6, v6, -0x2
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v5, v6}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v5
if-eqz v5, :cond_36
iget-boolean v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mDownInScrolling:Z
if-nez v5, :cond_36
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
add-float v6, p1, v8
float-to-int v6, v6
add-float v7, p2, v8
float-to-int v7, v7
#calls: Lcom/pinguo/album/views/FullImageView;->switchToHitPicture(II)V
invoke-static {v5, v6, v7}, Lcom/pinguo/album/views/FullImageView;->access$30(Lcom/pinguo/album/views/FullImageView;II)V
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
move-result-object v5
invoke-interface {v5, v9}, Lcom/pinguo/album/views/FullImageView$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v1
const/4 v4, 0x0
if-eqz v1, :cond_36
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getSupportedOperations()I
:cond_36
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;
move-result-object v5
if-eqz v5, :cond_6b
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v5}, Lcom/pinguo/album/views/FullImageView;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v5
invoke-interface {v5}, Lcom/pinguo/album/views/GLController;->getCompensationMatrix()Landroid/graphics/Matrix;
move-result-object v2
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
const/4 v5, 0x2
new-array v3, v5, [F
aput p1, v3, v9
aput p2, v3, v10
invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;
move-result-object v5
aget v6, v3, v9
add-float/2addr v6, v8
float-to-int v6, v6
aget v7, v3, v10
add-float/2addr v7, v8
float-to-int v7, v7
invoke-interface {v5, v6, v7}, Lcom/pinguo/album/views/FullImageView$Listener;->onSingleTapConfirmed(II)V
:cond_6b
const-string v1, " - Lcom/pinguo/album/views/FullImageView$MyGestureListener; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v10
.end method
.method public onUp()V
.registers 9
const/high16 v7, 0x3f00
const/4 v4, 0x0
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
if-eqz v3, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
and-int/lit8 v5, v5, -0x2
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v3, v5}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mEdgeView:Lcom/pinguo/album/views/EdgeView;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$39(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/EdgeView;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/album/views/EdgeView;->onRelease()V
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v3
if-eqz v3, :cond_8c
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mScrolledAfterDown:Z
if-eqz v3, :cond_8c
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mFirstScrollX:Z
if-nez v3, :cond_8c
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
const v5, 0x7fffffff
if-eq v3, v5, :cond_8c
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
invoke-virtual {v3, v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->getPosition(I)Landroid/graphics/Rect;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v3}, Lcom/pinguo/album/views/FullImageView;->getHeight()I
move-result v1
invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I
move-result v3
int-to-float v3, v3
int-to-float v5, v1
mul-float/2addr v5, v7
sub-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
const v5, 0x3ecccccd
int-to-float v6, v1
mul-float/2addr v5, v6
cmpl-float v3, v3, v5
if-lez v3, :cond_8c
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mTouchBoxIndex:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$31(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
invoke-virtual {v3, v5, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->flingFilmY(II)I
move-result v0
if-ltz v0, :cond_8c
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v5
invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I
move-result v3
int-to-float v3, v3
int-to-float v6, v1
mul-float/2addr v6, v7
cmpg-float v3, v3, v6
if-gez v3, :cond_94
const/4 v3, 0x1
:goto_86
invoke-virtual {v5, v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->setPopFromTop(Z)V
invoke-direct {p0, v0}, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->deleteAfterAnimation(I)V
:cond_8c
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreUpEvent:Z
if-eqz v3, :cond_96
iput-boolean v4, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreUpEvent:Z
goto/16 :goto_7
:cond_94
move v3, v4
goto :goto_86
:cond_96
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mFilmMode:Z
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$29(Lcom/pinguo/album/views/FullImageView;)Z
move-result v3
if-eqz v3, :cond_ae
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mHadFling:Z
if-nez v3, :cond_ae
iget-boolean v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mFirstScrollX:Z
if-eqz v3, :cond_ae
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#calls: Lcom/pinguo/album/views/FullImageView;->snapToNeighborImage()Z
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$40(Lcom/pinguo/album/views/FullImageView;)Z
move-result v3
if-nez v3, :cond_7
:cond_ae
iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->this$0:Lcom/pinguo/album/views/FullImageView;
#calls: Lcom/pinguo/album/views/FullImageView;->snapback()V
invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$13(Lcom/pinguo/album/views/FullImageView;)V
goto/16 :goto_7
.end method
.method public setSwipingEnabled(Z)V
.registers 3
if-eqz p1, :cond_6
const/4 v0, 0x0
:goto_3
iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$MyGestureListener;->mIgnoreSwipingGesture:Z
return-void
:cond_6
const/4 v0, 0x1
goto :goto_3
.end method