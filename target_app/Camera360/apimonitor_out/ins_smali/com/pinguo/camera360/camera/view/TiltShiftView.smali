.class public Lcom/pinguo/camera360/camera/view/TiltShiftView;
.super Landroid/view/View;
.source "TiltShiftView.java"
.implements Landroid/view/GestureDetector$OnGestureListener;
.field public static final TILF_HOR:I = 0x0
.field public static final TILF_VERTICAL:I = 0x1
.field static final TILTSHIF_BG_COLOR:I = 0x60090909
.field private bgH:I
.field private bgW:I
.field private mGestureDetector:Landroid/view/GestureDetector;
.field private mLastTiltShiftPosBL:I
.field private mLastTiltShiftSizeBL:I
.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
.field private mSettingTilfShiftDirect:I
.field private mSettingTilfShiftPosBL:I
.field private mSettingTilfShiftSizeBL:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
const/16 v0, 0xa
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
const/16 v0, 0x32
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
const/16 v0, 0xa
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
const/16 v0, 0x32
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->init(Landroid/content/Context;)V
return-void
.end method
.method private drawTiltShiftRect(Landroid/graphics/Canvas;)V
.registers 12
const/4 v9, 0x0
new-instance v5, Landroid/graphics/Rect;
invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v6
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v6
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
const v6, 0x60090909
invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V
sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
packed-switch v6, :pswitch_data_8c
:goto_27
return-void
:pswitch_28
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iget v7, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
mul-int/2addr v6, v7
div-int/lit8 v1, v6, 0x64
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
iget v7, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
mul-int/2addr v6, v7
div-int/lit16 v0, v6, 0xc8
sub-int v2, v1, v0
if-gez v2, :cond_3b
const/4 v2, 0x0
:cond_3b
add-int v3, v1, v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v6
add-int/lit8 v7, v2, 0x0
invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
add-int/lit8 v6, v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v8
invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_27
:pswitch_5a
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iget v7, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
mul-int/2addr v6, v7
div-int/lit8 v1, v6, 0x64
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
iget v7, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
mul-int/2addr v6, v7
div-int/lit16 v0, v6, 0xc8
sub-int v2, v1, v0
if-gez v2, :cond_6d
const/4 v2, 0x0
:cond_6d
add-int v3, v1, v0
add-int/lit8 v6, v2, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v7
invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
add-int/lit8 v6, v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v8
invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V
invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_27
:pswitch_data_8c
.packed-switch 0x0
:pswitch_28
:pswitch_5a
.end packed-switch
.end method
.method private init(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/view/GestureDetector;
invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mGestureDetector:Landroid/view/GestureDetector;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mGestureDetector:Landroid/view/GestureDetector;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V
return-void
.end method
.method public getBottomMaskRect()Landroid/graphics/Rect;
.registers 10
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v0
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
mul-int/2addr v5, v0
div-int/lit8 v2, v5, 0x64
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
mul-int/2addr v5, v0
div-int/lit16 v1, v5, 0xc8
add-int v3, v2, v1
const/4 v5, 0x0
add-int/lit8 v6, v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v8
invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V
return-object v4
.end method
.method public getEffectAppend()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.registers 7
const/4 v5, 0x0
const/high16 v3, 0x3f00
const/high16 v4, 0x42c8
const-string/jumbo v2, "C360_TiltShift_Other_Line"
invoke-static {v2, v5}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v0
instance-of v2, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
if-eqz v2, :cond_3e
move-object v1, v0
check-cast v1, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
iget v2, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
if-nez v2, :cond_32
const/16 v2, 0x5a
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setDegree(I)V
iget v2, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
int-to-float v2, v2
div-float/2addr v2, v4
invoke-virtual {v1, v3, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setCenterPoint(FF)V
:goto_23
iget v2, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgW:I
iget v3, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->bgH:I
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setBgRect(II)V
iget v2, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
int-to-float v2, v2
div-float/2addr v2, v4
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setWidth(F)V
:goto_31
return-object v1
:cond_32
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setDegree(I)V
iget v2, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
int-to-float v2, v2
div-float/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setCenterPoint(FF)V
goto :goto_23
:cond_3e
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
move-result-object v1
goto :goto_31
.end method
.method public getLeftMaskRect()Landroid/graphics/Rect;
.registers 9
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v0
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
mul-int/2addr v5, v0
div-int/lit8 v2, v5, 0x64
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
mul-int/2addr v5, v0
div-int/lit16 v1, v5, 0xc8
sub-int v3, v2, v1
if-gez v3, :cond_14
const/4 v3, 0x0
:cond_14
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
add-int/lit8 v5, v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v6
invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
return-object v4
.end method
.method public getRightMaskRect()Landroid/graphics/Rect;
.registers 10
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v0
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
mul-int/2addr v5, v0
div-int/lit8 v2, v5, 0x64
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
mul-int/2addr v5, v0
div-int/lit16 v1, v5, 0xc8
add-int v3, v2, v1
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
add-int/lit8 v5, v3, 0x0
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v8
invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V
return-object v4
.end method
.method public getTilfShiftDirect()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
return v0
.end method
.method public getTopMaskRect()Landroid/graphics/Rect;
.registers 9
const/4 v7, 0x0
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v0
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
mul-int/2addr v5, v0
div-int/lit8 v2, v5, 0x64
iget v5, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
mul-int/2addr v5, v0
div-int/lit16 v1, v5, 0xc8
sub-int v3, v2, v1
if-gez v3, :cond_19
const/4 v3, 0x0
:cond_19
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v5
add-int/lit8 v6, v3, 0x0
invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
return-object v4
.end method
.method public hide()V
.registers 2
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->setVisibility(I)V
return-void
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftSizeBL:I
iget v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftPosBL:I
const/4 v0, 0x1
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 2
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->drawTiltShiftRect(Landroid/graphics/Canvas;)V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
:cond_9
const/4 v0, 0x0
return v0
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/TiltShiftView; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/view/TiltShiftView; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/TiltShiftView; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v8, 0x14
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v5
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
packed-switch v6, :pswitch_data_94
:goto_f
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->invalidate()V
const/4 v6, 0x0
const-string v1, " - Lcom/pinguo/camera360/camera/view/TiltShiftView; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v6
:pswitch_14
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftPosBL:I
mul-int/2addr v6, v4
div-int/lit8 v3, v6, 0x64
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v7
sub-float/2addr v6, v7
float-to-int v1, v6
add-int/2addr v3, v1
if-gez v3, :cond_4c
const/4 v3, 0x0
:goto_27
:cond_27
mul-int/lit8 v6, v3, 0x64
div-int/2addr v6, v4
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftSizeBL:I
mul-int/2addr v6, v4
div-int/lit8 v2, v6, 0x64
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
sub-float/2addr v6, v7
float-to-int v6, v6
div-int/lit8 v1, v6, 0x5
mul-int v6, v1, v4
div-int/lit8 v0, v6, 0x64
add-int/2addr v2, v0
if-ge v2, v8, :cond_50
const/16 v2, 0x14
:goto_46
:cond_46
mul-int/lit8 v6, v2, 0x64
div-int/2addr v6, v4
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
goto :goto_f
:cond_4c
if-le v3, v4, :cond_27
move v3, v4
goto :goto_27
:cond_50
if-le v2, v4, :cond_46
move v2, v4
goto :goto_46
:pswitch_54
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftPosBL:I
mul-int/2addr v6, v5
div-int/lit8 v3, v6, 0x64
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
sub-float/2addr v6, v7
float-to-int v1, v6
add-int/2addr v3, v1
if-gez v3, :cond_8c
const/4 v3, 0x0
:cond_67
:goto_67
mul-int/lit8 v6, v3, 0x64
div-int/2addr v6, v5
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftPosBL:I
iget v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mLastTiltShiftSizeBL:I
mul-int/2addr v6, v5
div-int/lit8 v2, v6, 0x64
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v6
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v7
sub-float/2addr v6, v7
float-to-int v6, v6
div-int/lit8 v1, v6, 0x5
mul-int v6, v1, v5
div-int/lit8 v0, v6, 0x64
add-int/2addr v2, v0
if-ge v2, v8, :cond_90
const/16 v2, 0x14
:cond_86
:goto_86
mul-int/lit8 v6, v2, 0x64
div-int/2addr v6, v5
iput v6, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftSizeBL:I
goto :goto_f
:cond_8c
if-le v3, v5, :cond_67
move v3, v5
goto :goto_67
:cond_90
if-le v2, v5, :cond_86
move v2, v5
goto :goto_86
:pswitch_data_94
.packed-switch 0x0
:pswitch_14
:pswitch_54
.end packed-switch
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
if-eqz v0, :cond_12
const-string/jumbo v0, "Test"
const-string/jumbo v1, "On single tap"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
:cond_12
const/4 v0, 0x0
return v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mGestureDetector:Landroid/view/GestureDetector;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x1
goto :goto_a
.end method
.method public refreshTilfShiftUI()I
.registers 3
const/4 v1, 0x1
iget v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
if-ne v0, v1, :cond_e
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
:goto_8
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->invalidate()V
iget v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
return v0
:cond_e
iput v1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
goto :goto_8
.end method
.method public resetTilfShiftDirect()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mSettingTilfShiftDirect:I
return-void
.end method
.method public setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TiltShiftView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
return-void
.end method
.method public show()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->setVisibility(I)V
return-void
.end method