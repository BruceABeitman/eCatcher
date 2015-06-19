.class public Lcom/pinguo/camera360/puzzle/PuzzleSystem;
.super Ljava/lang/Object;
.source "PuzzleSystem.java"

# interfaces
.implements Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface;
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public bl:F

.field public height:I

.field private mContext:Landroid/content/Context;

.field private mCurrRadio:F

.field private mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasScaled:Z

.field private mIsScolling:Z

.field private mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

.field private mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

.field private mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

.field private mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

.field private mNeedLayout:Z

.field private mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSystemView:Landroid/view/View;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I

    iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->height:I

    iput-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    iput v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mCurrRadio:F

    sget-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    iput-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mHasScaled:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mIsScolling:Z

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDrawFilter:Landroid/graphics/DrawFilter;

    iput v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->bl:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSystemView:Landroid/view/View;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    return-object v0
.end method

.method private findTouchedItem(Landroid/view/MotionEvent;)Lcom/pinguo/camera360/puzzle/PuzzleItem;
    .registers 8

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-object v1, v3, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    return-object v2

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->isTouched(FF)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v2, v0

    goto :goto_9
.end method

.method private needLayout(F)Z
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-boolean v0, v0, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->getRealRadio()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private onMove(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->findTouchedItem(Landroid/view/MotionEvent;)Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    :cond_17
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    :cond_28
    :goto_28
    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    :cond_2a
    return-void

    :cond_2b
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    goto :goto_28
.end method

.method private setState(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;)Z
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-ne v0, v1, :cond_2a

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " MARK_STOPED , do nothing : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", refuse to set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-eq p1, v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " setState : org state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dst state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    :cond_52
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public cancelSelectedItem()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    :cond_d
    return-void
.end method

.method public drawOutputPhoto()Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->waitPuzzleSystemIDLE()V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->filesExist()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->drawOutPutPhoto(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public drawTempPhoto()Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->waitPuzzleSystemIDLE()V

    iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I

    iget v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v2, v1, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->draw(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    return-object v0
.end method

.method public getCurrState()Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    return-object v0
.end method

.method public getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    return-object v0
.end method

.method public getSelectedItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    return-object v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->findTouchedItem(Landroid/view/MotionEvent;)Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->resetPosition()V

    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->findTouchedItem(Landroid/view/MotionEvent;)Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    iput-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    invoke-interface {v0, v3}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onPuzzleItemClicked(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V

    :cond_2d
    iput-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mHasScaled:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->onLongPress()V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onPuzzleItemLongClick()V

    :cond_19
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    :cond_26
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/lib/log/GLogger;->logMethodName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->scaleBitmap(F)V

    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/log/GLogger;->logMethodName(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/log/GLogger;->logMethodName(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mHasScaled:Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->checkBitmapPosition()V

    :cond_20
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mHasScaled:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return v3

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mIsScolling:Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->moveBitmapBy(FF)V

    goto :goto_8
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->findTouchedItem(Landroid/view/MotionEvent;)Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v2

    :cond_17
    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    :cond_1a
    :goto_1a
    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mHasScaled:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-interface {v1, v3}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onPuzzleItemClicked(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V

    :cond_2b
    return v2

    :cond_2c
    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    goto :goto_1a

    :cond_39
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    goto :goto_1a
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->swapPath(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->swapContent(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    invoke-interface {v1}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onSwapPhoto()V

    :cond_3a
    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "swap : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->onLongPressCancel()V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setSelected(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->onLongPressCancel()V

    :cond_82
    if-nez v0, :cond_8d

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->checkBitmapPosition()V

    :cond_8d
    iput-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDownTouchItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iput-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iput-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLongPressFocusItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iput-boolean v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mIsScolling:Z

    return-void
.end method

.method public replacePhoto(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mLastSelectedItem:Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->replacePhoto(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->resetRotationAndMirror()V

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setPhotoPath(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public run()V
    .registers 11

    sget-object v6, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->INITING:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setState(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "start draw in : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ob : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v5, 0x190

    :goto_35
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v7, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-ne v6, v7, :cond_5b

    :cond_3f
    :goto_3f
    sget-object v6, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    iput-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " system stoped : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v7, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-ne v6, v7, :cond_6a

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " marke stoped, break loop."

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_6a
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    if-eqz v6, :cond_7e

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v6

    if-nez v6, :cond_7e

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v6}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->getDrawType()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->OUTPUT:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;

    if-ne v6, v7, :cond_e1

    :cond_7e
    :try_start_7e
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    if-nez v6, :cond_ad

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " waiting holder.isCreating() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mPuzzleTemplate is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_a7} :catch_a8

    goto :goto_35

    :catch_a8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    :cond_ad
    :try_start_ad
    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " waiting holder.isCreating() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mPuzzleTemplate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", drawType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_e0} :catch_a8

    goto :goto_a2

    :cond_e1
    sget-object v6, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setState(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;)Z

    move-result v6

    if-nez v6, :cond_3f

    iget v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mCurrRadio:F

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->needLayout(F)Z

    move-result v6

    if-eqz v6, :cond_16f

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " layout tempalte, mNeedLayout : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , mPuzzleTemplate.needLayout = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-boolean v8, v8, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->needLayout:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->LOADING_TEMPLATE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setState(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;)Z

    move-result v6

    if-nez v6, :cond_3f

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v6, :cond_130

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSystemView:Landroid/view/View;

    new-instance v7, Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_130
    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " layout tempalte."

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v6, v1}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setRealLayoutRadio(F)V

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v6, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->layout(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " load photo."

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v6}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->loadPhotoForPuzzleMode()V

    iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mCurrRadio:F

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->needLayout(F)Z

    move-result v6

    if-eqz v6, :cond_161

    sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " continue , because find request layout after layout finish."

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_161
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    if-eqz v6, :cond_16f

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSystemView:Landroid/view/View;

    new-instance v7, Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_16f
    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_1aa

    sget-object v7, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " error, canvas is null, is same holder : "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    const-string/jumbo v6, "true"

    :goto_18a
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_197
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " mSurfaceHolder = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_18a

    :cond_1aa
    sget-object v6, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setState(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_3f

    :cond_1b7
    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mDrawFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v6, v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->draw(Landroid/graphics/Canvas;Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_35
.end method

.method public setListener(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    return-void
.end method

.method public setPuzzleTempalte(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " setPuzzleTempalte : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " replace template entity !!!!!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->releaseAllBitmap()V

    :cond_26
    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mPuzzleTemplate:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surface changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I

    if-ne p3, v0, :cond_38

    iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->height:I

    if-ne p4, v0, :cond_38

    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mNeedLayout:Z

    const/high16 v0, 0x3f80

    int-to-float v1, p3

    mul-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mCurrRadio:F

    iput p3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->width:I

    iput p4, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->height:I

    return-void

    :cond_38
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public waitPuzzleSystemIDLE()V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v4, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-ne v3, v4, :cond_f

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " curr state is stoped , no need wait .."

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    sget-object v3, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    iput-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    const/4 v1, 0x0

    :goto_14
    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    sget-object v4, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-eq v3, v4, :cond_e

    :try_start_1a
    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " wait for state change to stoped , currState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_36} :catch_5a

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x64

    if-le v1, v3, :cond_5c

    :try_start_3c
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Draw output photo fail : wait count > 100 , PuzzleSystem.state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mState:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    move v1, v2

    :goto_56
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    :catch_5a
    move-exception v0

    goto :goto_56

    :cond_5c
    move v1, v2

    goto :goto_14
.end method
