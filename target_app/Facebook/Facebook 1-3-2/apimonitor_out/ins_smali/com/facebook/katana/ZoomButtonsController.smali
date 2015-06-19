.class public Lcom/facebook/katana/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"
.implements Landroid/view/View$OnTouchListener;
.field private static final MSG_DISMISS_ZOOM_CONTROLS:I = 0x3
.field private static final MSG_POST_CONFIGURATION_CHANGED:I = 0x2
.field private static final MSG_POST_SET_VISIBLE:I = 0x4
.field private static final TAG:Ljava/lang/String; = "ZoomButtonsController"
.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0x0
.field private static final ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14
.field private mAutoDismissControls:Z
.field private mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;
.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;
.field private final mContainer:Landroid/widget/FrameLayout;
.field private mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
.field private final mContainerRawLocation:[I
.field private final mContext:Landroid/content/Context;
.field private mControls:Landroid/widget/ZoomControls;
.field private final mHandler:Landroid/os/Handler;
.field private mIsVisible:Z
.field private final mOwnerView:Landroid/view/View;
.field private final mOwnerViewRawLocation:[I
.field private mPostedVisibleInitializer:Ljava/lang/Runnable;
.field private mReleaseTouchListenerOnUp:Z
.field private final mTempIntArray:[I
.field private final mTempRect:Landroid/graphics/Rect;
.field private mTouchPaddingScaledSq:I
.field private mTouchTargetView:Landroid/view/View;
.field private final mTouchTargetWindowLocation:[I
.field private final mWindowManager:Landroid/view/WindowManager;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J
move-result-wide v0
long-to-int v0, v0
sput v0, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
return-void
.end method
.method public constructor <init>(Landroid/view/View;)V
.registers 4
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mAutoDismissControls:Z
new-array v0, v1, [I
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
new-array v0, v1, [I
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
new-array v0, v1, [I
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetWindowLocation:[I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;
new-array v0, v1, [I
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTempIntArray:[I
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.CONFIGURATION_CHANGED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;
new-instance v0, Lcom/facebook/katana/ZoomButtonsController$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/ZoomButtonsController$1;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/facebook/katana/ZoomButtonsController$2;
invoke-direct {v0, p0}, Lcom/facebook/katana/ZoomButtonsController$2;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
const/high16 v0, 0x41a0
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchPaddingScaledSq:I
iget v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchPaddingScaledSq:I
iget v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchPaddingScaledSq:I
mul-int/2addr v0, v1
iput v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchPaddingScaledSq:I
invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/ZoomButtonsController;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
return v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/ZoomButtonsController;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->onPostConfigurationChanged()V
return-void
.end method
.method static synthetic access$3(Lcom/facebook/katana/ZoomButtonsController;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4(Lcom/facebook/katana/ZoomButtonsController;Landroid/view/KeyEvent;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method static synthetic access$5()I
.registers 1
sget v0, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
return v0
.end method
.method static synthetic access$6(Lcom/facebook/katana/ZoomButtonsController;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
return-void
.end method
.method static synthetic access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
return-object v0
.end method
.method static synthetic access$8(Lcom/facebook/katana/ZoomButtonsController;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->refreshPositioningVariables()V
return-void
.end method
.method private createContainer()Landroid/widget/FrameLayout;
.registers 6
const/4 v4, -0x2
new-instance v2, Landroid/view/WindowManager$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V
const/16 v3, 0x33
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
const v3, 0x20218
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I
iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I
const/4 v3, -0x1
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I
const/16 v3, 0x3e8
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I
iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I
iput-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
new-instance v0, Lcom/facebook/katana/ZoomButtonsController$Container;
iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
invoke-direct {v0, p0, v3}, Lcom/facebook/katana/ZoomButtonsController$Container;-><init>(Lcom/facebook/katana/ZoomButtonsController;Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v3, 0x1
invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V
iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
const-string v4, "layout_inflater"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/LayoutInflater;
const v3, 0x7f030052
invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
const v3, 0x7f0b00d6
invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ZoomControls;
iput-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
new-instance v4, Lcom/facebook/katana/ZoomButtonsController$3;
invoke-direct {v4, p0}, Lcom/facebook/katana/ZoomButtonsController$3;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V
invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
new-instance v4, Lcom/facebook/katana/ZoomButtonsController$4;
invoke-direct {v4, p0}, Lcom/facebook/katana/ZoomButtonsController$4;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V
invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
.end method
.method private dismissControlsDelayed(I)V
.registers 6
const/4 v3, 0x3
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mAutoDismissControls:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
int-to-long v1, p1
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_10
return-void
.end method
.method private findViewForTouch(II)Landroid/view/View;
.registers 16
const/4 v12, 0x1
iget-object v10, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
const/4 v11, 0x0
aget v10, v10, v11
sub-int v3, p1, v10
iget-object v10, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
aget v10, v10, v12
sub-int v4, p2, v10
iget-object v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;
const/4 v1, 0x0
const v2, 0x7fffffff
iget-object v10, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
invoke-virtual {v10}, Landroid/widget/FrameLayout;->getChildCount()I
move-result v10
sub-int v9, v10, v12
:goto_1c
if-gez v9, :cond_20
move-object v10, v1
:goto_1f
return-object v10
:cond_20
iget-object v10, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v10
if-eqz v10, :cond_2f
:goto_2c
:cond_2c
add-int/lit8 v9, v9, -0x1
goto :goto_1c
:cond_2f
invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z
move-result v10
if-eqz v10, :cond_3a
move-object v10, v0
goto :goto_1f
:cond_3a
iget v10, v8, Landroid/graphics/Rect;->left:I
if-lt v3, v10, :cond_5b
iget v10, v8, Landroid/graphics/Rect;->right:I
if-gt v3, v10, :cond_5b
const/4 v6, 0x0
:goto_43
iget v10, v8, Landroid/graphics/Rect;->top:I
if-lt v4, v10, :cond_6f
iget v10, v8, Landroid/graphics/Rect;->bottom:I
if-gt v4, v10, :cond_6f
const/4 v7, 0x0
:goto_4c
mul-int v10, v6, v6
mul-int v11, v7, v7
add-int v5, v10, v11
iget v10, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchPaddingScaledSq:I
if-ge v5, v10, :cond_2c
if-ge v5, v2, :cond_2c
move-object v1, v0
move v2, v5
goto :goto_2c
:cond_5b
iget v10, v8, Landroid/graphics/Rect;->left:I
sub-int/2addr v10, v3
invoke-static {v10}, Ljava/lang/Math;->abs(I)I
move-result v10
iget v11, v8, Landroid/graphics/Rect;->right:I
sub-int v11, v3, v11
invoke-static {v11}, Ljava/lang/Math;->abs(I)I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v6
goto :goto_43
:cond_6f
iget v10, v8, Landroid/graphics/Rect;->top:I
sub-int/2addr v10, v4
invoke-static {v10}, Ljava/lang/Math;->abs(I)I
move-result v10
iget v11, v8, Landroid/graphics/Rect;->bottom:I
sub-int v11, v4, v11
invoke-static {v11}, Ljava/lang/Math;->abs(I)I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v7
goto :goto_4c
.end method
.method private getOwnerViewRoot()Landroid/view/View;
.registers 3
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private isInterestingKey(I)Z
.registers 3
sparse-switch p1, :sswitch_data_8
const/4 v0, 0x0
:goto_4
return v0
:sswitch_5
const/4 v0, 0x1
goto :goto_4
nop
:sswitch_data_8
.sparse-switch
0x4 -> :sswitch_5
0x13 -> :sswitch_5
0x14 -> :sswitch_5
0x15 -> :sswitch_5
0x16 -> :sswitch_5
0x17 -> :sswitch_5
0x42 -> :sswitch_5
.end sparse-switch
.end method
.method private onContainerKey(Landroid/view/KeyEvent;)Z
.registers 6
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
invoke-direct {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->isInterestingKey(I)Z
move-result v2
if-eqz v2, :cond_19
const/4 v2, 0x4
if-ne v0, v2, :cond_13
invoke-virtual {p0, v3}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V
:goto_11
move v2, v3
:goto_12
return v2
:cond_13
sget v2, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
invoke-direct {p0, v2}, Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
goto :goto_11
:cond_19
invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->getOwnerViewRoot()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
:cond_22
const/4 v2, 0x1
goto :goto_12
.end method
.method private onPostConfigurationChanged()V
.registers 2
sget v0, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
invoke-direct {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->refreshPositioningVariables()V
return-void
.end method
.method private refreshPositioningVariables()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v4
if-nez v4, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getHeight()I
move-result v1
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getWidth()I
move-result v3
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I
move-result v4
sub-int v0, v1, v4
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
aget v5, v5, v6
aput v5, v4, v6
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
aget v5, v5, v7
add-int/2addr v5, v0
aput v5, v4, v7
iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->mTempIntArray:[I
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
aget v5, v2, v6
iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
aget v5, v2, v7
add-int/2addr v5, v0
iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I
iget-boolean v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
if-eqz v4, :cond_a
iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;
iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
iget-object v6, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_a
.end method
.method private setTouchTargetView(Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;
if-eqz p1, :cond_9
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetWindowLocation:[I
invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
:cond_9
return-void
.end method
.method public getContainer()Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
return-object v0
.end method
.method public getZoomControls()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
return-object v0
.end method
.method public isAutoDismissed()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mAutoDismissControls:Z
return v0
.end method
.method public isVisible()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
return v0
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 14
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
iget-boolean v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z
if-eqz v8, :cond_1d
const/4 v8, 0x1
if-eq v0, v8, :cond_e
const/4 v8, 0x3
if-ne v0, v8, :cond_1b
:cond_e
iget-object v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
const/4 v9, 0x0
invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const/4 v8, 0x0
invoke-direct {p0, v8}, Lcom/facebook/katana/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V
const/4 v8, 0x0
iput-boolean v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z
:cond_1b
const/4 v8, 0x1
:goto_1c
return v8
:cond_1d
sget v8, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
invoke-direct {p0, v8}, Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;
packed-switch v0, :pswitch_data_a2
:goto_27
:pswitch_27
if-eqz v5, :cond_9e
iget-object v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
const/4 v9, 0x0
aget v8, v8, v9
iget-object v9, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetWindowLocation:[I
const/4 v10, 0x0
aget v9, v9, v10
add-int v6, v8, v9
iget-object v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerRawLocation:[I
const/4 v9, 0x1
aget v8, v8, v9
iget-object v9, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetWindowLocation:[I
const/4 v10, 0x1
aget v9, v9, v10
add-int v7, v8, v9
invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v1
iget-object v8, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
const/4 v9, 0x0
aget v8, v8, v9
sub-int/2addr v8, v6
int-to-float v8, v8
iget-object v9, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerViewRawLocation:[I
const/4 v10, 0x1
aget v9, v9, v10
sub-int/2addr v9, v7
int-to-float v9, v9
invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V
invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F
move-result v3
const/4 v8, 0x0
cmpg-float v8, v2, v8
if-gez v8, :cond_6e
const/high16 v8, -0x3e60
cmpl-float v8, v2, v8
if-lez v8, :cond_6e
neg-float v8, v2
const/4 v9, 0x0
invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V
:cond_6e
const/4 v8, 0x0
cmpg-float v8, v3, v8
if-gez v8, :cond_7e
const/high16 v8, -0x3e60
cmpl-float v8, v3, v8
if-lez v8, :cond_7e
const/4 v8, 0x0
neg-float v9, v3
invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V
:cond_7e
invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v4
invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
move v8, v4
goto :goto_1c
:pswitch_87
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F
move-result v8
float-to-int v8, v8
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F
move-result v9
float-to-int v9, v9
invoke-direct {p0, v8, v9}, Lcom/facebook/katana/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;
move-result-object v5
invoke-direct {p0, v5}, Lcom/facebook/katana/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V
goto :goto_27
:pswitch_99
const/4 v8, 0x0
invoke-direct {p0, v8}, Lcom/facebook/katana/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V
goto :goto_27
:cond_9e
const/4 v8, 0x0
goto/16 :goto_1c
nop
:pswitch_data_a2
.packed-switch 0x0
:pswitch_87
:pswitch_99
:pswitch_27
:pswitch_99
.end packed-switch
.end method
.method public setAutoDismissed(Z)V
.registers 3
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mAutoDismissControls:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/facebook/katana/ZoomButtonsController;->mAutoDismissControls:Z
goto :goto_4
.end method
.method public setFocusable(Z)V
.registers 6
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
if-eqz p1, :cond_22
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
and-int/lit8 v2, v2, -0x9
iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
:goto_e
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
if-eq v1, v0, :cond_21
iget-boolean v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;
iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_21
return-void
:cond_22
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
or-int/lit8 v2, v2, 0x8
iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
goto :goto_e
.end method
.method public setOnZoomListener(Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
return-void
.end method
.method public setVisible(Z)V
.registers 6
const/4 v1, 0x4
const/4 v3, 0x0
if-eqz p1, :cond_1f
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_19
:goto_19
return-void
:cond_1a
sget v0, Lcom/facebook/katana/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
invoke-direct {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
:cond_1f
iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
if-eq v0, p1, :cond_19
iput-boolean p1, p0, Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
if-eqz p1, :cond_63
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
if-nez v0, :cond_37
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
:cond_37
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;
invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;
if-nez v0, :cond_4b
new-instance v0, Lcom/facebook/katana/ZoomButtonsController$5;
invoke-direct {v0, p0}, Lcom/facebook/katana/ZoomButtonsController$5;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V
iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;
:cond_4b
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-boolean v3, p0, Lcom/facebook/katana/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z
goto :goto_19
:cond_63
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;
if-eqz v0, :cond_89
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z
:goto_6a
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;
invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
invoke-interface {v0, v3}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V
goto :goto_19
:cond_89
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto :goto_6a
.end method
.method public setZoomInEnabled(Z)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V
return-void
.end method
.method public setZoomOutEnabled(Z)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V
return-void
.end method
.method public setZoomSpeed(J)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;
invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V
return-void
.end method