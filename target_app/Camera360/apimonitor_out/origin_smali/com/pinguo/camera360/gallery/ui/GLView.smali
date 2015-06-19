.class public Lcom/pinguo/camera360/gallery/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I


# instance fields
.field private mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

.field private mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredWidth:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredHeight:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastWidthSpec:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastHeightSpec:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mScrollY:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mScrollX:I

    return-void
.end method

.method private removeOneComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V
    .registers 11

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-ne v2, p1, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_17
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onDetachFromRoot()V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    return-void
.end method

.method private setBounds(IIII)Z
    .registers 9

    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_21

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_21

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_1b
.end method


# virtual methods
.method public addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V
    .registers 3

    iget-object v0, p1, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->onAttachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    :cond_25
    return-void
.end method

.method public attachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onAttachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->onDetachFromRoot()V

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

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-eqz v0, :cond_26

    if-nez v10, :cond_35

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/camera360/gallery/ui/GLView;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    :cond_26
    if-nez v10, :cond_30

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    :goto_2e
    if-gez v11, :cond_4a

    :cond_30
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_34
    return v0

    :cond_35
    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/camera360/gallery/ui/GLView;Z)Z

    const/4 v0, 0x3

    if-eq v10, v0, :cond_45

    const/4 v0, 0x1

    if-ne v10, v0, :cond_48

    :cond_45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    :cond_48
    const/4 v0, 0x1

    goto :goto_34

    :cond_4a
    invoke-virtual {p0, v11}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/ui/GLView;->getVisibility()I

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

    invoke-virtual/range {v4 .. v9}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/camera360/gallery/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_54

    iput-object v8, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMotionTarget:Lcom/pinguo/camera360/gallery/ui/GLView;

    const/4 v0, 0x1

    goto :goto_34
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/camera360/gallery/ui/GLView;Z)Z
    .registers 11

    iget-object v1, p4, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

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

    invoke-virtual {p4, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method dumpTree(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "GLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_24
    if-lt v0, v1, :cond_27

    return-void

    :cond_27
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLView;->dumpTree(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public getBoundsOf(Lcom/pinguo/camera360/gallery/ui/GLView;Landroid/graphics/Rect;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    :goto_3
    if-ne v1, p0, :cond_14

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->getHeight()I

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
    iget-object v0, v1, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    goto :goto_3
.end method

.method public getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getWidth()I
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestRender()V

    :cond_9
    return-void
.end method

.method public layout(IIII)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/gallery/ui/GLView;->setBounds(IIII)Z

    move-result v1

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/GLView;->onLayout(ZIIII)V

    return-void
.end method

.method public lockRendering()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    :cond_9
    return-void
.end method

.method public measure(II)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_f

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_f

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastWidthSpec:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastHeightSpec:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/GLView;->onMeasure(II)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

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

.method protected onAttachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_7
    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onAttachToRoot(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method protected onDetachFromRoot()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_5
    if-lt v0, v1, :cond_b

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    return-void

    :cond_b
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->onDetachFromRoot()V

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

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v2

    :goto_5
    if-lt v1, v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onVisibilityChanged(I)V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public removeAllComponents()V
    .registers 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-lt v0, v1, :cond_f

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->removeOneComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public removeComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->removeOneComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->renderBackground(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_8
    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getComponent(I)Lcom/pinguo/camera360/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->renderChild(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected renderBackground(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 2

    return-void
.end method

.method protected renderChild(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/GLView;)V
    .registers 8

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p2, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    if-nez v3, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v3, p2, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    iget-object v3, p2, Lcom/pinguo/camera360/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    iget-object v0, p2, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    :goto_38
    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;->apply(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    :cond_3b
    invoke-virtual {p2, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    if-eqz v0, :cond_43

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    :cond_43
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    goto :goto_a

    :cond_4b
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    goto :goto_38
.end method

.method public requestLayout()V
    .registers 4

    const/4 v2, -0x1

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastHeightSpec:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mLastWidthSpec:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mParent:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/GLView;->requestLayout()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_14
.end method

.method protected setMeasuredSize(II)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredWidth:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mMeasuredHeight:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_16

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    :goto_f
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->onVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    goto :goto_6

    :cond_16
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mViewFlags:I

    goto :goto_f
.end method

.method public startAnimation(Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;->start()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mAnimation:Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->registerLaunchedAnimation(Lcom/pinguo/camera360/gallery/anim/CanvasAnimation;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method public unlockRendering()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLView;->mRoot:Lcom/pinguo/camera360/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    :cond_9
    return-void
.end method
