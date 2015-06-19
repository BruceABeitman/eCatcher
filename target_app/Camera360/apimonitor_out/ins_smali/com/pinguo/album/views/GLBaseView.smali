.class public Lcom/pinguo/album/views/GLBaseView;
.super Ljava/lang/Object;
.source "GLBaseView.java"
.field private static final FLAG_INVISIBLE:I = 0x1
.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4
.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2
.field public static final INVISIBLE:I = 0x4
.field private static final TAG:Ljava/lang/String; = "GLBaseView"
.field public static final VISIBLE:I
.field private mAnimation:Lcom/pinguo/album/animations/CanvasAnim;
.field private mBackgroundColor:[F
.field private mBackgroundColorInt:I
.field protected final mBounds:Landroid/graphics/Rect;
.field private mComponents:Ljava/util/ArrayList;
.field private mGLController:Lcom/pinguo/album/views/GLController;
.field private mLastHeightSpec:I
.field private mLastWidthSpec:I
.field protected mMeasuredHeight:I
.field protected mMeasuredWidth:I
.field protected mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
.field protected final mPaddings:Landroid/graphics/Rect;
.field protected mParent:Lcom/pinguo/album/views/GLBaseView;
.field protected mScrollHeight:I
.field protected mScrollWidth:I
.field private mScrollX:I
.field private mScrollY:I
.field private mTransition:Lcom/pinguo/album/animations/StateTransAnim;
.field private mViewFlags:I
.method public constructor <init>()V
.registers 4
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mPaddings:Landroid/graphics/Rect;
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredWidth:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredHeight:I
iput v2, p0, Lcom/pinguo/album/views/GLBaseView;->mLastWidthSpec:I
iput v2, p0, Lcom/pinguo/album/views/GLBaseView;->mLastHeightSpec:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollY:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollX:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollHeight:I
iput v1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollWidth:I
return-void
.end method
.method private removeOneComponent(Lcom/pinguo/album/views/GLBaseView;)V
.registers 11
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
if-ne v2, p1, :cond_17
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const/4 v4, 0x3
const/4 v7, 0x0
move-wide v2, v0
move v6, v5
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
invoke-virtual {p0, v8}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V
:cond_17
invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->onDetachFromRoot()V
const/4 v2, 0x0
iput-object v2, p1, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
return-void
.end method
.method private setBounds(IIII)Z
.registers 9
sub-int v1, p3, p1
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v3
if-ne v1, v2, :cond_21
sub-int v1, p4, p2
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
sub-int/2addr v2, v3
if-ne v1, v2, :cond_21
const/4 v0, 0x0
:goto_1b
iget-object v1, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V
return v0
:cond_21
const/4 v0, 0x1
goto :goto_1b
.end method
.method public addComponent(Lcom/pinguo/album/views/GLBaseView;)V
.registers 3
iget-object v0, p1, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
if-nez v0, :cond_15
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
:cond_15
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-object p0, p1, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-virtual {p1, v0}, Lcom/pinguo/album/views/GLBaseView;->onAttachToRoot(Lcom/pinguo/album/views/GLController;)V
:cond_25
return-void
.end method
.method public attachToRoot(Lcom/pinguo/album/views/GLController;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_9
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->onAttachToRoot(Lcom/pinguo/album/views/GLController;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_9
.end method
.method public bounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
return-object v0
.end method
.method public detachFromRoot()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_9
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->onDetachFromRoot()V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_9
.end method
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 14
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v2, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v3, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v10
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
if-eqz v0, :cond_26
if-nez v10, :cond_35
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v1
const/4 v0, 0x3
invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V
iget-object v4, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
const/4 v5, 0x0
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/album/views/GLBaseView;Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
:cond_26
if-nez v10, :cond_30
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getComponentCount()I
move-result v0
add-int/lit8 v11, v0, -0x1
:goto_2e
if-gez v11, :cond_4a
:cond_30
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->onTouch(Landroid/view/MotionEvent;)Z
move-result v0
:goto_34
return v0
:cond_35
iget-object v8, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
const/4 v9, 0x0
move-object v4, p0
move-object v5, p1
move v6, v2
move v7, v3
invoke-virtual/range {v4 .. v9}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/album/views/GLBaseView;Z)Z
const/4 v0, 0x3
if-eq v10, v0, :cond_45
const/4 v0, 0x1
if-ne v10, v0, :cond_48
:cond_45
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
:cond_48
const/4 v0, 0x1
goto :goto_34
:cond_4a
invoke-virtual {p0, v11}, Lcom/pinguo/album/views/GLBaseView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/album/views/GLBaseView;->getVisibility()I
move-result v0
if-eqz v0, :cond_57
:cond_54
add-int/lit8 v11, v11, -0x1
goto :goto_2e
:cond_57
const/4 v9, 0x1
move-object v4, p0
move-object v5, p1
move v6, v2
move v7, v3
invoke-virtual/range {v4 .. v9}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/album/views/GLBaseView;Z)Z
move-result v0
if-eqz v0, :cond_54
iput-object v8, p0, Lcom/pinguo/album/views/GLBaseView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;
const/4 v0, 0x1
goto :goto_34
.end method
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/album/views/GLBaseView;Z)Z
.registers 11
iget-object v1, p4, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v0, v1, Landroid/graphics/Rect;->left:I
iget v2, v1, Landroid/graphics/Rect;->top:I
if-eqz p5, :cond_e
invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-eqz v3, :cond_27
:cond_e
neg-int v3, v0
int-to-float v3, v3
neg-int v4, v2
int-to-float v4, v4
invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V
invoke-virtual {p4, p1}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
if-eqz v3, :cond_22
int-to-float v3, v0
int-to-float v4, v2
invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V
const/4 v3, 0x1
:goto_21
return v3
:cond_22
int-to-float v3, v0
int-to-float v4, v2
invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V
:cond_27
const/4 v3, 0x0
goto :goto_21
.end method
.method public getBackgroundColor()[F
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColor:[F
return-object v0
.end method
.method public getBackgroundColorInt()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColorInt:I
return v0
.end method
.method public getBoundsOf(Lcom/pinguo/album/views/GLBaseView;Landroid/graphics/Rect;)Z
.registers 9
const/4 v2, 0x0
const/4 v3, 0x0
move-object v1, p1
:goto_3
if-ne v1, p0, :cond_14
invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getWidth()I
move-result v4
add-int/2addr v4, v2
invoke-virtual {p1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I
move-result v5
add-int/2addr v5, v3
invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
const/4 v4, 0x1
:goto_13
return v4
:cond_14
if-nez v1, :cond_18
const/4 v4, 0x0
goto :goto_13
:cond_18
iget-object v0, v1, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v4
iget v4, v0, Landroid/graphics/Rect;->top:I
add-int/2addr v3, v4
iget-object v1, v1, Lcom/pinguo/album/views/GLBaseView;->mParent:Lcom/pinguo/album/views/GLBaseView;
goto :goto_3
.end method
.method public getComponent(I)Lcom/pinguo/album/views/GLBaseView;
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V
throw v0
:cond_a
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/GLBaseView;
return-object v0
.end method
.method public getComponentCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_5
.end method
.method public getContentLength()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getGLController()Lcom/pinguo/album/views/GLController;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
return-object v0
.end method
.method public getHeight()I
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
sub-int/2addr v0, v1
return v0
.end method
.method public getMeasuredHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredHeight:I
return v0
.end method
.method public getMeasuredWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredWidth:I
return v0
.end method
.method public getPaddings()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mPaddings:Landroid/graphics/Rect;
return-object v0
.end method
.method protected getScrollX()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollX:I
return v0
.end method
.method protected getScrollY()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollY:I
return v0
.end method
.method public getVisibility()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const/4 v0, 0x4
goto :goto_7
.end method
.method public getWidth()I
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
sub-int/2addr v0, v1
return v0
.end method
.method public invalidate()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->requestRender()V
:cond_9
return-void
.end method
.method public isBegin()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEnd()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public layout(IIII)V
.registers 11
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/album/views/GLBaseView;->setBounds(IIII)Z
move-result v1
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, -0x5
iput v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/views/GLBaseView;->onLayout(ZIIII)V
return-void
.end method
.method public lockRendering()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->lockRenderThread()V
:cond_9
return-void
.end method
.method public measure(II)V
.registers 6
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mLastWidthSpec:I
if-ne p1, v0, :cond_f
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mLastHeightSpec:I
if-ne p2, v0, :cond_f
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, 0x4
if-nez v0, :cond_f
:cond_e
return-void
:cond_f
iput p1, p0, Lcom/pinguo/album/views/GLBaseView;->mLastWidthSpec:I
iput p2, p0, Lcom/pinguo/album/views/GLBaseView;->mLastHeightSpec:I
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, -0x3
iput v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/views/GLBaseView;->onMeasure(II)V
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, " should call setMeasuredSize() in onMeasure()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected onAttachToRoot(Lcom/pinguo/album/views/GLController;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getComponentCount()I
move-result v1
:goto_7
if-lt v0, v1, :cond_a
return-void
:cond_a
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/GLBaseView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;
move-result-object v2
invoke-virtual {v2, p1}, Lcom/pinguo/album/views/GLBaseView;->onAttachToRoot(Lcom/pinguo/album/views/GLController;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method protected onDetachFromRoot()V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getComponentCount()I
move-result v1
:goto_5
if-lt v0, v1, :cond_b
const/4 v2, 0x0
iput-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
return-void
:cond_b
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/GLBaseView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/album/views/GLBaseView;->onDetachFromRoot()V
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method protected onLayout(ZIIII)V
.registers 6
return-void
.end method
.method protected onMeasure(II)V
.registers 3
return-void
.end method
.method protected onTouch(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected onVisibilityChanged(I)V
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getComponentCount()I
move-result v2
:goto_5
if-lt v1, v2, :cond_8
return-void
:cond_8
invoke-virtual {p0, v1}, Lcom/pinguo/album/views/GLBaseView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->getVisibility()I
move-result v3
if-nez v3, :cond_15
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/GLBaseView;->onVisibilityChanged(I)V
:cond_15
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method public removeAllComponents()V
.registers 4
const/4 v0, 0x0
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_7
if-lt v0, v1, :cond_f
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
return-void
:cond_f
iget-object v2, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/GLBaseView;
invoke-direct {p0, v2}, Lcom/pinguo/album/views/GLBaseView;->removeOneComponent(Lcom/pinguo/album/views/GLBaseView;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public removeComponent(Lcom/pinguo/album/views/GLBaseView;)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/album/views/GLBaseView;->mComponents:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->removeOneComponent(Lcom/pinguo/album/views/GLBaseView;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 8
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
if-eqz v3, :cond_1a
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/pinguo/album/animations/StateTransAnim;->calculate(J)Z
move-result v3
if-eqz v3, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v3}, Lcom/pinguo/album/animations/StateTransAnim;->isActive()Z
move-result v2
:cond_1a
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->renderBackground(Lcom/pinguo/album/opengles/GLESCanvas;)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->save()V
if-eqz v2, :cond_27
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v3, p0, p1}, Lcom/pinguo/album/animations/StateTransAnim;->applyContentTransform(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_27
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getComponentCount()I
move-result v1
:goto_2c
if-lt v0, v1, :cond_39
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
if-eqz v2, :cond_38
iget-object v3, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v3, p0, p1}, Lcom/pinguo/album/animations/StateTransAnim;->applyOverlay(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_38
return-void
:cond_39
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/GLBaseView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;
move-result-object v3
invoke-virtual {p0, p1, v3}, Lcom/pinguo/album/views/GLBaseView;->renderChild(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/views/GLBaseView;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2c
.end method
.method protected renderBackground(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColor:[F
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColor:[F
invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->clearBuffer([F)V
:cond_9
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v0}, Lcom/pinguo/album/animations/StateTransAnim;->isActive()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v0, p0, p1}, Lcom/pinguo/album/animations/StateTransAnim;->applyBackground(Lcom/pinguo/album/views/GLBaseView;Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_1a
return-void
.end method
.method protected renderChild(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/views/GLBaseView;)V
.registers 8
invoke-virtual {p2}, Lcom/pinguo/album/views/GLBaseView;->getVisibility()I
move-result v3
if-eqz v3, :cond_b
iget-object v3, p2, Lcom/pinguo/album/views/GLBaseView;->mAnimation:Lcom/pinguo/album/animations/CanvasAnim;
if-nez v3, :cond_b
:goto_a
return-void
:cond_b
iget-object v3, p2, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
iget v4, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollX:I
sub-int v1, v3, v4
iget-object v3, p2, Lcom/pinguo/album/views/GLBaseView;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
iget v4, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollY:I
sub-int v2, v3, v4
int-to-float v3, v1
int-to-float v4, v2
invoke-interface {p1, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
iget-object v0, p2, Lcom/pinguo/album/views/GLBaseView;->mAnimation:Lcom/pinguo/album/animations/CanvasAnim;
if-eqz v0, :cond_3b
invoke-virtual {v0}, Lcom/pinguo/album/animations/CanvasAnim;->getCanvasSaveFlags()I
move-result v3
invoke-interface {p1, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/pinguo/album/animations/CanvasAnim;->calculate(J)Z
move-result v3
if-eqz v3, :cond_4b
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V
:goto_38
invoke-virtual {v0, p1}, Lcom/pinguo/album/animations/CanvasAnim;->apply(Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_3b
invoke-virtual {p2, p1}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V
if-eqz v0, :cond_43
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
:cond_43
neg-int v3, v1
int-to-float v3, v3
neg-int v4, v2
int-to-float v4, v4
invoke-interface {p1, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
goto :goto_a
:cond_4b
const/4 v3, 0x0
iput-object v3, p2, Lcom/pinguo/album/views/GLBaseView;->mAnimation:Lcom/pinguo/album/animations/CanvasAnim;
goto :goto_38
.end method
.method public setBackgroundColorInt(I)V
.registers 3
iput p1, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColorInt:I
invoke-static {p1}, Lcom/pinguo/album/utils/PGAlbumUtils;->intColorToFloatARGBArray(I)[F
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mBackgroundColor:[F
return-void
.end method
.method public setIntroAnimation(Lcom/pinguo/album/animations/StateTransAnim;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mTransition:Lcom/pinguo/album/animations/StateTransAnim;
invoke-virtual {v0}, Lcom/pinguo/album/animations/StateTransAnim;->start()V
:cond_b
return-void
.end method
.method protected setMeasuredSize(II)V
.registers 4
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
iput p1, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredWidth:I
iput p2, p0, Lcom/pinguo/album/views/GLBaseView;->mMeasuredHeight:I
return-void
.end method
.method protected setScrollX(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollX:I
return-void
.end method
.method protected setScrollY(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/views/GLBaseView;->mScrollY:I
return-void
.end method
.method public setVisibility(I)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->getVisibility()I
move-result v0
if-ne p1, v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p1, :cond_16
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
:goto_f
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->onVisibilityChanged(I)V
invoke-virtual {p0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V
goto :goto_6
:cond_16
iget v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/album/views/GLBaseView;->mViewFlags:I
goto :goto_f
.end method
.method public unlockRendering()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/album/views/GLBaseView;->mGLController:Lcom/pinguo/album/views/GLController;
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->unlockRenderThread()V
:cond_9
return-void
.end method