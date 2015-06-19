.class public Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
.super Ljava/lang/Object;
.source "FocusViewUIManager.java"
.implements Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;
.field private static final TAG:Ljava/lang/String;
.field  animationListener:Landroid/view/animation/Animation$AnimationListener;
.field private mAnimation:Landroid/view/animation/Animation;
.field private mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
.field private mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager$1;-><init>(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->animationListener:Landroid/view/animation/Animation$AnimationListener;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;)Lcom/pinguo/camera360/lib/ui/RotateLayout;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
return-object v0
.end method
.method public clearFocus()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->clear()V
:cond_9
return-void
.end method
.method public drawFocusViewDone()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start focus view animation"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z
move-result v0
if-eqz v0, :cond_15
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->animationListener:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_14
.end method
.method public getFocusSize()Landroid/graphics/Point;
.registers 3
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getWidth()I
move-result v1
iput v1, v0, Landroid/graphics/Point;->x:I
iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getHeight()I
move-result v1
iput v1, v0, Landroid/graphics/Point;->y:I
:cond_19
return-object v0
.end method
.method public initFocusView(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
if-nez v0, :cond_f
const v0, 0x7f0a01ad
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
if-nez v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
const v1, 0x7f0a01ae
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
:cond_20
return-void
.end method
.method public resetFocus()V
.registers 6
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
if-eqz v2, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I
move-result-object v1
const/16 v2, 0xd
const/4 v3, -0x1
aput v3, v1, v2
invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->requestLayout()V
:cond_1e
return-void
.end method
.method public setFocusArea(Landroid/app/Activity;IIII)V
.registers 16
iget-object v7, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->getWidth()I
move-result v2
iget-object v7, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->getHeight()I
move-result v1
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v7
invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v7
invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;
iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I
sub-int/2addr v7, p4
div-int/lit8 v7, v7, 0x2
add-int/2addr p2, v7
iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I
sub-int/2addr v7, p5
div-int/lit8 v7, v7, 0x2
add-int/2addr p3, v7
div-int/lit8 v7, v2, 0x2
sub-int v7, p2, v7
neg-int v8, v2
div-int/lit8 v8, v8, 0x2
invoke-static {v7, v8, p4}, Lcom/pinguo/lib/util/Util;->clamp(III)I
move-result v3
div-int/lit8 v7, v1, 0x2
sub-int v7, p3, v7
neg-int v8, v1
div-int/lit8 v8, v8, 0x2
invoke-static {v7, v8, p5}, Lcom/pinguo/lib/util/Util;->clamp(III)I
move-result v6
const-string/jumbo v7, "Test"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "1111111111111: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "left = "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "//"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "/"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual {v4, v3, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I
move-result-object v5
const/16 v7, 0xd
const/4 v8, 0x0
aput v8, v5, v7
iget-object v7, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v7}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->requestLayout()V
return-void
.end method
.method public setFocusSize(II)V
.registers 3
return-void
.end method
.method public showFocusFail(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->showFail(Z)V
:cond_9
return-void
.end method
.method public showFocusStart(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x1
if-nez p1, :cond_4
:cond_3
:goto_3
return-void
:cond_4
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
if-eqz v0, :cond_3
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusAreaIndicator:Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->clearAnimation()V
const v0, 0x7f040009
invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setDrawFocusViewDoneCallback(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->showStart()V
goto :goto_3
.end method
.method public showFocusSuccess(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusViewUIManager;->mFocusIndicatorView:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->showSuccess(Z)V
:cond_9
return-void
.end method