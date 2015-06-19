.class public Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;
.super Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;
.source "PGEditTiltShiftView.java"
.field private mInSideLine:Landroid/graphics/Rect;
.field private mOutSideLine:Landroid/graphics/Rect;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
.registers 4
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v1
neg-int v1, v1
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v1
mul-int/lit8 v1, v1, 0x2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v1
neg-int v1, v1
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v1
mul-int/lit8 v1, v1, 0x2
iput v1, v0, Landroid/graphics/Rect;->right:I
invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->refreshStatus()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->init()V
return-void
.end method
.method private changeLineValue()V
.registers 7
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getWidth()F
move-result v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v2, v3
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
add-float/2addr v2, v3
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v3
long-to-float v3, v3
mul-float/2addr v3, v0
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
const/high16 v3, 0x4000
mul-float/2addr v3, v0
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v4
long-to-float v4, v4
mul-float/2addr v3, v4
add-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getStep()F
move-result v3
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v4
long-to-float v4, v4
mul-float/2addr v3, v4
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v2, v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getStep()F
move-result v3
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v4
long-to-float v4, v4
mul-float/2addr v3, v4
add-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->bottom:I
return-void
.end method
.method private moveView(Landroid/view/MotionEvent;)V
.registers 13
const/high16 v10, 0x3f80
const/4 v9, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v6
sub-float v2, v4, v6
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v6
sub-float v3, v5, v6
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v6
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v7
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F
move-result v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v8
int-to-float v8, v8
mul-float/2addr v7, v8
add-float v0, v6, v7
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v6
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v7
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F
move-result v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v8
int-to-float v8, v8
mul-float/2addr v7, v8
add-float v1, v6, v7
add-float v6, v0, v2
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v7
int-to-float v7, v7
cmpg-float v6, v6, v7
if-gez v6, :cond_a6
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
invoke-virtual {v6, v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V
:goto_67
add-float v6, v1, v3
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v7
int-to-float v7, v7
cmpg-float v6, v6, v7
if-gez v6, :cond_db
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
invoke-virtual {v6, v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V
:goto_7d
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F
invoke-static {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v7
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F
invoke-static {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
move-result-object v6
if-eqz v6, :cond_a5
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
move-result-object v6
invoke-interface {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V
:cond_a5
return-void
:cond_a6
add-float v6, v0, v2
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoRight:I
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$23(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v7
int-to-float v7, v7
cmpl-float v6, v6, v7
if-lez v6, :cond_bd
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
invoke-virtual {v6, v10}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V
goto :goto_67
:cond_bd
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v7
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F
move-result v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v8
int-to-float v8, v8
div-float v8, v2, v8
add-float/2addr v7, v8
invoke-virtual {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V
goto :goto_67
:cond_db
add-float v6, v1, v3
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoBottom:I
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v7
int-to-float v7, v7
cmpl-float v6, v6, v7
if-lez v6, :cond_f2
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
invoke-virtual {v6, v10}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V
goto :goto_7d
:cond_f2
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v7
invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F
move-result v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v8
int-to-float v8, v8
div-float v8, v3, v8
add-float/2addr v7, v8
invoke-virtual {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V
goto/16 :goto_7d
.end method
.method private scaleAndRotate(Landroid/view/MotionEvent;)V
.registers 21
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v13
const/high16 v14, -0x4080
cmpl-float v13, v13, v14
if-eqz v13, :cond_1c
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v13
const/high16 v14, -0x4080
cmpl-float v13, v13, v14
if-nez v13, :cond_db
:cond_1c
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
const/4 v14, 0x1
move-object/from16 v0, p1
invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F
move-result v14
const/4 v15, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F
move-result v15
sub-float/2addr v14, v15
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$27(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
const/4 v14, 0x1
move-object/from16 v0, p1
invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F
move-result v14
const/4 v15, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F
move-result v15
sub-float/2addr v14, v15
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$28(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
:goto_48
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
move-object/from16 v0, p1
#calls: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->distanceBetweenFingers(Landroid/view/MotionEvent;)D
invoke-static {v13, v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;Landroid/view/MotionEvent;)D
move-result-wide v3
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)D
move-result-wide v13
sub-double v13, v3, v13
move-object/from16 v0, p0
iget-object v15, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v15}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v15
const-wide/16 v17, 0x2
mul-long v15, v15, v17
long-to-double v15, v15
div-double v5, v13, v15
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v14
invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getWidth()F
move-result v14
double-to-float v15, v5
add-float/2addr v14, v15
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setWidth(F)V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getWidth()F
move-result v13
move-object/from16 v0, p0
iget-object v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v14
long-to-float v14, v14
mul-float/2addr v13, v14
const/high16 v14, 0x4120
cmpg-float v13, v13, v14
if-gez v13, :cond_b7
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
const/high16 v14, 0x4120
move-object/from16 v0, p0
iget-object v15, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
invoke-static {v15}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v15
long-to-float v15, v15
div-float/2addr v14, v15
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setWidth(F)V
:cond_b7
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D
invoke-static {v13, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;D)V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
move-result-object v13
if-eqz v13, :cond_da
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
move-result-object v13
invoke-interface {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V
:cond_da
return-void
:cond_db
const/4 v13, 0x1
move-object/from16 v0, p1
invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F
move-result v13
const/4 v14, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F
move-result v14
sub-float v10, v13, v14
const/4 v13, 0x1
move-object/from16 v0, p1
invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F
move-result v13
const/4 v14, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F
move-result v14
sub-float v11, v13, v14
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v13
mul-float/2addr v13, v10
move-object/from16 v0, p0
iget-object v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static {v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v14
mul-float/2addr v14, v11
add-float/2addr v13, v14
float-to-double v13, v13
move-object/from16 v0, p0
iget-object v15, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v15}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v15
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
move-object/from16 v16, v0
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static/range {v16 .. v16}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v16
mul-float v15, v15, v16
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
move-object/from16 v16, v0
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static/range {v16 .. v16}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v16
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
move-object/from16 v17, v0
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static/range {v17 .. v17}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v17
mul-float v16, v16, v17
add-float v15, v15, v16
float-to-double v15, v15
invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v15
mul-float v17, v10, v10
mul-float v18, v11, v11
add-float v17, v17, v18
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v17, v0
invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v17
mul-double v15, v15, v17
div-double v8, v13, v15
const-wide/high16 v13, -0x4010
cmpl-double v13, v8, v13
if-ltz v13, :cond_242
const-wide/high16 v13, 0x3ff0
cmpg-double v13, v8, v13
if-gtz v13, :cond_242
invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D
move-result-wide v13
const-wide v15, 0x404ca8f5c28f5c29L
mul-double/2addr v13, v15
double-to-float v2, v13
const/high16 v13, 0x4080
cmpg-float v13, v2, v13
if-gez v13, :cond_242
div-float v12, v11, v10
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v13
move-object/from16 v0, p0
iget-object v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
move-result v14
div-float v7, v13, v14
cmpg-float v13, v12, v7
if-gez v13, :cond_189
neg-float v2, v2
:cond_189
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v14}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v14
invoke-virtual {v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v14
add-float/2addr v14, v2
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setDegree(F)V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
const/high16 v14, 0x42b4
cmpl-float v13, v13, v14
if-lez v13, :cond_1d4
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
const v14, 0x42b43333
cmpg-float v13, v13, v14
if-gez v13, :cond_1d4
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
const v14, 0x42b43333
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setDegree(F)V
:cond_1d4
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
const v14, 0x43868000
cmpl-float v13, v13, v14
if-lez v13, :cond_208
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
const v14, 0x43878000
cmpg-float v13, v13, v14
if-gez v13, :cond_208
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
const v14, 0x4387199a
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setDegree(F)V
:cond_208
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
float-to-double v13, v13
const-wide v15, 0x40568ccccccccccdL
cmpl-double v13, v13, v15
if-lez v13, :cond_242
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
invoke-virtual {v13}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v13
float-to-double v13, v13
const-wide v15, 0x4056b33333333333L
cmpg-double v13, v13, v15
if-gez v13, :cond_242
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v13}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v13
const v14, 0x42b5999a
invoke-virtual {v13, v14}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setDegree(F)V
:cond_242
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F
invoke-static {v13, v10}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$27(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
move-object/from16 v0, p0
iget-object v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F
invoke-static {v13, v11}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$28(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
goto/16 :goto_48
.end method
.method public drawView(Landroid/graphics/Canvas;)V
.registers 6
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z
move-result v2
if-eqz v2, :cond_6f
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->changeLineValue()V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v2, v3
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
add-float v0, v2, v3
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v2, v3
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
move-result v3
int-to-float v3, v3
add-float v1, v2, v3
const/high16 v2, 0x4120
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;
move-result-object v3
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getDegree()F
move-result v2
invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mInSideLine:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;
move-result-object v3
invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->mOutSideLine:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;
move-result-object v3
invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_6f
return-void
.end method
.method public init()V
.registers 1
return-void
.end method
.method public move(Landroid/view/MotionEvent;)V
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_13
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mIsPointer2:Z
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z
move-result v1
if-nez v1, :cond_12
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->moveView(Landroid/view/MotionEvent;)V
:cond_12
:goto_12
return-void
:cond_13
const/4 v1, 0x2
if-ne v0, v1, :cond_12
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;->scaleAndRotate(Landroid/view/MotionEvent;)V
goto :goto_12
.end method