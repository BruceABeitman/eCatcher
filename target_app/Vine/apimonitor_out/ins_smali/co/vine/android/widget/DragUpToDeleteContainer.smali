.class public Lco/vine/android/widget/DragUpToDeleteContainer;
.super Landroid/widget/RelativeLayout;
.source "DragUpToDeleteContainer.java"
.field private static final ALPHA_AT_TOP:I = 0x4d
.field private static final DESTROY_TIME:I = 0x15e
.field private static final DROP_TIME:I = 0x96
.field private static final SMOOTHNESS:F = 0.05f
.field private mCurY:F
.field private mDestroying:Z
.field private mDownX:F
.field private mDownY:F
.field private mDragBitmap:Landroid/graphics/Bitmap;
.field private mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
.field private mDragView:Landroid/widget/ImageView;
.field private mDragViewAlpha:F
.field private final mDragViewDestroyAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;
.field private final mDragViewDropAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;
.field private mDragViewHeight:I
.field private mDragViewWidth:I
.field private mDragViewX:I
.field private mDragViewY:I
.field private mDropping:Z
.field private mLockAlpha:Z
.field private final mTouchSlop:I
.field private mViewToPickUp:Landroid/view/View;
.field private mYOffsetFromTouch:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/DragUpToDeleteContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/DragUpToDeleteContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const v2, 0x3d4ccccd
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mLockAlpha:Z
new-instance v0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;
const/16 v1, 0x15e
invoke-direct {v0, p0, v2, v1}, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;-><init>(Lco/vine/android/widget/DragUpToDeleteContainer;FI)V
iput-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewDestroyAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;
new-instance v0, Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;
const/16 v1, 0x96
invoke-direct {v0, p0, v2, v1}, Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;-><init>(Lco/vine/android/widget/DragUpToDeleteContainer;FI)V
iput-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewDropAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v0
iput v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mTouchSlop:I
return-void
.end method
.method static synthetic access$000(Lco/vine/android/widget/DragUpToDeleteContainer;)I
.registers 2
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
return v0
.end method
.method static synthetic access$002(Lco/vine/android/widget/DragUpToDeleteContainer;I)I
.registers 2
iput p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
return p1
.end method
.method static synthetic access$100(Lco/vine/android/widget/DragUpToDeleteContainer;)I
.registers 2
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
return v0
.end method
.method static synthetic access$1000(Lco/vine/android/widget/DragUpToDeleteContainer;)I
.registers 2
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewX:I
return v0
.end method
.method static synthetic access$1002(Lco/vine/android/widget/DragUpToDeleteContainer;I)I
.registers 2
iput p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewX:I
return p1
.end method
.method static synthetic access$202(Lco/vine/android/widget/DragUpToDeleteContainer;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDestroying:Z
return p1
.end method
.method static synthetic access$302(Lco/vine/android/widget/DragUpToDeleteContainer;F)F
.registers 2
iput p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
return p1
.end method
.method static synthetic access$400(Lco/vine/android/widget/DragUpToDeleteContainer;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->destroyDragView()V
return-void
.end method
.method static synthetic access$500(Lco/vine/android/widget/DragUpToDeleteContainer;)Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
return-object v0
.end method
.method static synthetic access$602(Lco/vine/android/widget/DragUpToDeleteContainer;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDropping:Z
return p1
.end method
.method static synthetic access$700(Lco/vine/android/widget/DragUpToDeleteContainer;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/widget/DragUpToDeleteContainer;)F
.registers 2
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
return v0
.end method
.method static synthetic access$900(Lco/vine/android/widget/DragUpToDeleteContainer;)F
.registers 2
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
return v0
.end method
.method private createDragView()V
.registers 9
const/4 v7, 0x2
const/4 v6, 0x1
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
if-nez v2, :cond_7
:goto_6
return-void
:cond_7
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
const/high16 v3, 0x10
invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragBitmap:Landroid/graphics/Bitmap;
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
if-nez v2, :cond_2a
new-instance v2, Landroid/widget/ImageView;
invoke-virtual {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
:cond_2a
const/high16 v2, 0x437f
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
iget-object v3, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
new-instance v3, Landroid/view/ViewGroup$LayoutParams;
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getWidth()I
move-result v4
iget-object v5, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getHeight()I
move-result v5
invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-array v1, v7, [I
new-array v0, v7, [I
invoke-virtual {p0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->getLocationInWindow([I)V
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
aget v3, v0, v6
int-to-float v3, v3
sub-float/2addr v2, v3
aget v3, v1, v6
int-to-float v3, v3
add-float/2addr v2, v3
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getWidth()I
move-result v2
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewWidth:I
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getHeight()I
move-result v2
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mCurY:F
iget v3, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
sub-float/2addr v2, v3
float-to-int v2, v2
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
goto :goto_6
.end method
.method private destroyDragView()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragBitmap:Landroid/graphics/Bitmap;
iput-object v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
:cond_e
return-void
.end method
.method public dispatchDraw(Landroid/graphics/Canvas;)V
.registers 11
.parameter
.end parameter
const/4 v8, 0x0
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
if-eqz v0, :cond_66
iget-boolean v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDestroying:Z
if-nez v0, :cond_27
iget-boolean v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mLockAlpha:Z
if-nez v0, :cond_27
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
sub-float/2addr v0, v2
float-to-int v7, v0
const/high16 v0, 0x3f80
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
int-to-float v2, v2
mul-float/2addr v0, v2
int-to-float v2, v7
div-float/2addr v0, v2
const/high16 v2, 0x4332
mul-float/2addr v0, v2
const/high16 v2, 0x429a
add-float/2addr v0, v2
iput v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
:cond_27
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
cmpg-float v0, v0, v1
if-gez v0, :cond_2f
iput v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
:cond_2f
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewX:I
int-to-float v0, v0
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
int-to-float v2, v2
invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewWidth:I
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
invoke-virtual {p1, v8, v8, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewWidth:I
int-to-float v3, v0
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
int-to-float v4, v0
iget v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
float-to-int v5, v0
const/16 v6, 0x1f
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
iget v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewWidth:I
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
invoke-virtual {v0, v8, v8, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragView:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_66
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_5a
:pswitch_8
:goto_8
:cond_8
return v2
:pswitch_9
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
iput v3, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
iput v3, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownX:F
goto :goto_8
:pswitch_16
iget v3, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
sub-float/2addr v3, v4
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mTouchSlop:I
int-to-float v4, v4
cmpl-float v3, v3, v4
if-ltz v3, :cond_8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownX:F
sub-float/2addr v3, v4
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mTouchSlop:I
int-to-float v4, v4
cmpg-float v3, v3, v4
if-gez v3, :cond_8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mCurY:F
const/4 v1, 0x1
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
if-eqz v2, :cond_47
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
invoke-interface {v2}, Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;->prepareForPickup()Z
move-result v1
:cond_47
if-eqz v1, :cond_58
invoke-direct {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->createDragView()V
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
if-eqz v2, :cond_55
iget-object v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
invoke-interface {v2}, Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;->viewPickedUp()V
:cond_55
invoke-virtual {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->invalidate()V
:cond_58
const/4 v2, 0x1
goto :goto_8
:pswitch_data_5a
.packed-switch 0x0
:pswitch_9
:pswitch_8
:pswitch_16
.end packed-switch
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
.parameter
.end parameter
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_58
const/4 v3, 0x0
:goto_9
return v3
:pswitch_a
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
iput v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mCurY:F
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mCurY:F
iget v5, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
sub-float/2addr v4, v5
float-to-int v4, v4
iput v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDownY:F
iget v5, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mYOffsetFromTouch:F
sub-float/2addr v4, v5
float-to-int v2, v4
iget v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
if-le v4, v2, :cond_36
:goto_22
iput v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
if-eqz v4, :cond_32
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
iget v5, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
invoke-interface {v4, v5}, Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;->viewMoved(I)Z
move-result v4
iput-boolean v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mLockAlpha:Z
:cond_32
invoke-virtual {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->invalidate()V
goto :goto_9
:cond_36
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
goto :goto_22
:pswitch_39
const/4 v1, 0x0
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
if-eqz v4, :cond_46
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
iget v5, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
invoke-interface {v4, v5}, Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;->viewDropped(I)Z
move-result v1
:cond_46
if-eqz v1, :cond_51
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewDestroyAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;
invoke-virtual {v4}, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->start()V
:goto_4d
invoke-virtual {p0}, Lco/vine/android/widget/DragUpToDeleteContainer;->invalidate()V
goto :goto_9
:cond_51
iget-object v4, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewDropAnimator:Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;
invoke-virtual {v4}, Lco/vine/android/widget/DragUpToDeleteContainer$DropAnimator;->start()V
goto :goto_4d
nop
:pswitch_data_58
.packed-switch 0x1
:pswitch_39
:pswitch_a
.end packed-switch
.end method
.method public setInteractionListner(Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
return-void
.end method
.method public setView(Landroid/view/View;I)V
.registers 3
iput-object p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mViewToPickUp:Landroid/view/View;
iput p2, p0, Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewX:I
return-void
.end method