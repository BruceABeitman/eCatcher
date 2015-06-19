.class public Lcom/glympse/android/controls/GTimerView;
.super Landroid/view/View;
.source "GTimerView.java"
.field private static final CHECK_CHAR:C = '\u2714'
.field private static final EXPIRE_CHAR:C = '\u2718'
.field private static final MS_PER_HOUR:J = 0x36ee80L
.field private static final MS_PER_MINUTE:J = 0xea60L
.field private _bodyHeight:F
.field private _bodySize:F
.field private _bodyWidth:F
.field private _boldTypeface:Landroid/graphics/Typeface;
.field private _cxText:F
.field private _cyText:F
.field private _duration:I
.field private _durationCircle:Landroid/graphics/drawable/Drawable;
.field private _expireTime:J
.field private _gBackDrawable:Landroid/graphics/drawable/Drawable;
.field private _gFillDrawable:Landroid/graphics/drawable/Drawable;
.field private _gestureDetector:Landroid/view/GestureDetector;
.field private _innerRadius:F
.field private _lastExpireTime:J
.field private _maxHeight:I
.field private _maxWidth:I
.field private _middleRadius:F
.field private _minHeight:I
.field private _minWidth:I
.field private _modifyMode:Z
.field private _normalTypeface:Landroid/graphics/Typeface;
.field private _onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
.field private _onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
.field private _onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
.field private _outerRadius:F
.field private _padBottom:I
.field private _padLeft:I
.field private _padRight:I
.field private _padTop:I
.field private _paint:Landroid/graphics/Paint;
.field private _rotation:D
.field private _runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
.field private _slideRatio:F
.field private _textRadiusCenterY:F
.field private _textRadiusEdgeX:F
.field private _thumbDrawable:Landroid/graphics/drawable/Drawable;
.field private _thumbRadius:F
.field private _tickColorPrimary:I
.field private _tickColorSecondary:I
.field private _tickHeight:F
.field private _ticks:Ljava/util/Vector;
.field private _timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
.field private _trackBottom:F
.field private _trackLeft:F
.field private _trackRight:F
.field private _trackSize:F
.field private _trackTop:F
.field private _userModified:Z
.field private _xCenter:F
.field private _yCenter:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/GTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/glympse/android/controls/R$attr;->glympseTimerStyle:I
invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/GTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 12
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
const v0, 0x7fffffff
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_maxWidth:I
const v0, 0x7fffffff
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_maxHeight:I
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/glympse/android/controls/GTimerView;->setLayerTypeIfPossible(Landroid/view/View;ILandroid/graphics/Paint;)V
sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseTimer:[I
const/4 v1, 0x0
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_maxWidth:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_maxWidth:I
const/4 v1, 0x1
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_maxHeight:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_maxHeight:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
new-instance v0, Landroid/view/GestureDetector;
new-instance v1, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/glympse/android/controls/GTimerView$TimerGestureListener;-><init>(Lcom/glympse/android/controls/GTimerView;Lcom/glympse/android/controls/GTimerView$1;)V
invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_gestureDetector:Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_timer_g_bg:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_gBackDrawable:Landroid/graphics/drawable/Drawable;
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_timer_g_fill:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_gFillDrawable:Landroid/graphics/drawable/Drawable;
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_timer_duration:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_durationCircle:Landroid/graphics/drawable/Drawable;
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_timer_thumb:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_thumbDrawable:Landroid/graphics/drawable/Drawable;
sget v1, Lcom/glympse/android/controls/R$color;->glympse_tick_color_primary:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_tickColorPrimary:I
sget v1, Lcom/glympse/android/controls/R$color;->glympse_tick_color_secondary:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_tickColorSecondary:I
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide/16 v3, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x3fd0c152382d7365L
const v5, 0x493e0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x3fe0c152382d7365L
const v5, 0x927c0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x3fe921fb54442d18L
const v5, 0xdbba0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x3ff0c152382d7365L
const v5, 0x124f80
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x3ff4f1a6c638d03eL
const v5, 0x16e360
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x3ff921fb54442d18L
const v5, 0x1b7740
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x3ffd524fe24f89f1L
const v5, 0x200b20
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x4000c152382d7365L
const v5, 0x249f00
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x4002d97c7f3321d2L
const v5, 0x2932e0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x4004f1a6c638d03fL
const v5, 0x2dc6c0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x400709d10d3e7eabL
const v5, 0x325aa0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x400921fb54442d18L
const v5, 0x36ee80
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x400ab41b09886feaL
const v5, 0x44aa20
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x400c463abeccb2bbL
const v5, 0x5265c0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x400dd85a7410f58cL
const v5, 0x602160
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x400f6a7a2955385eL
const v5, 0x6ddd00
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x40107e4cef4cbd98L
const v5, 0x7b98a0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x4011475cc9eedf00L
const v5, 0x895440
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x4012106ca4910069L
const v5, 0x970fe0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x4012d97c7f3321d2L
const v5, 0xa4cb80
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x4013a28c59d5433bL
const v5, 0xb28720
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x40146b9c347764a4L
const v5, 0xc042c0
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x0
const-wide v3, 0x401534ac0f19860cL
const v5, 0xcdfe60
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
iget-object v7, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
new-instance v0, Lcom/glympse/android/controls/GTimerView$Tick;
const/4 v2, 0x1
const-wide v3, 0x4015fdbbe9bba775L
const v5, 0xdbba00
const/4 v6, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/controls/GTimerView$Tick;-><init>(Lcom/glympse/android/controls/GTimerView;ZDILcom/glympse/android/controls/GTimerView$1;)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$600(Lcom/glympse/android/controls/GTimerView;FFZZ)Z
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/glympse/android/controls/GTimerView;->handleRotationMotion(FFZZ)Z
move-result v0
return v0
.end method
.method static synthetic access$700(Lcom/glympse/android/controls/GTimerView;)V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->timerAction()V
return-void
.end method
.method private computeLayout()V
.registers 8
const/4 v6, 0x0
const/high16 v5, 0x3f80
const/4 v3, 0x1
const/high16 v4, 0x4000
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getPaddingLeft()I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_padLeft:I
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getPaddingTop()I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_padTop:I
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getPaddingRight()I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_padRight:I
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getPaddingBottom()I
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_padBottom:I
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getWidth()I
move-result v0
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_padLeft:I
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_padRight:I
add-int/2addr v1, v2
sub-int/2addr v0, v1
invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-float v0, v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodyWidth:F
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getHeight()I
move-result v0
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_padTop:I
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_padBottom:I
add-int/2addr v1, v2
sub-int/2addr v0, v1
invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-float v0, v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodyHeight:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodyWidth:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_bodyHeight:F
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodySize:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodyWidth:F
div-float/2addr v0, v4
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_padLeft:I
int-to-float v1, v1
add-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodyHeight:F
div-float/2addr v0, v4
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_padTop:I
int-to-float v1, v1
add-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodySize:F
const/high16 v1, 0x4160
div-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-direct {p0, v3}, Lcom/glympse/android/controls/GTimerView;->getTypeface(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v5, v1, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
const/high16 v1, 0x4020
div-float/2addr v0, v1
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const-string v2, "1"
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v1
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const-string v3, "\u2714"
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
move-result v1
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const-string v3, "\u2718"
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
move-result v1
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_cxText:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_cyText:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_bodyWidth:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_cxText:F
add-float/2addr v2, v0
mul-float/2addr v2, v4
sub-float/2addr v1, v2
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_bodyHeight:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_cyText:F
add-float/2addr v3, v0
mul-float/2addr v3, v4
sub-float/2addr v2, v3
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
div-float/2addr v1, v4
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
const v2, 0x3f19999a
mul-float/2addr v1, v2
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
add-float/2addr v1, v2
div-float/2addr v1, v4
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_middleRadius:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
add-float/2addr v1, v0
iput v1, p0, Lcom/glympse/android/controls/GTimerView;->_textRadiusEdgeX:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
add-float/2addr v0, v1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_cyText:F
div-float/2addr v1, v4
add-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_textRadiusCenterY:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
sub-float/2addr v0, v1
div-float/2addr v0, v4
const v1, 0x3faccccd
mul-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_thumbRadius:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
sub-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_trackLeft:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
add-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_trackRight:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
sub-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_trackTop:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
add-float/2addr v0, v1
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_trackBottom:F
return-void
.end method
.method private fireExpireTimeEventIfNeeded()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getExpireTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_lastExpireTime:J
cmp-long v2, v2, v0
if-eqz v2, :cond_15
iput-wide v0, p0, Lcom/glympse/android/controls/GTimerView;->_lastExpireTime:J
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
invoke-interface {v2, p0, v0, v1}, Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;->onExpireTimeChanged(Lcom/glympse/android/controls/GTimerView;J)V
:cond_15
return-void
.end method
.method private getRotation(I)D
.registers 11
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/controls/GTimerView$Tick;
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v2, v0
:cond_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_64
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v4
if-lt p1, v4, :cond_2a
move-object v2, v0
:cond_2a
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v4
if-gt p1, v4, :cond_17
:goto_30
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v3
if-gt v1, v3, :cond_3f
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v0
:goto_3e
return-wide v0
:cond_3f
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
sub-int/2addr v1, p1
int-to-double v3, v1
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v5
mul-double/2addr v3, v5
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
sub-int v1, p1, v1
int-to-double v5, v1
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v7
mul-double/2addr v5, v7
add-double/2addr v3, v5
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v0
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
sub-int/2addr v0, v1
int-to-double v0, v0
div-double v0, v3, v0
goto :goto_3e
:cond_64
move-object v0, v1
goto :goto_30
.end method
.method private getTick(D)Lcom/glympse/android/controls/GTimerView$Tick;
.registers 10
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/controls/GTimerView$Tick;
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v2, v0
:cond_17
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v4
cmpl-double v4, p1, v4
if-lez v4, :cond_2d
move-object v2, v0
goto :goto_17
:cond_2d
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v4
cmpg-double v4, p1, v4
if-gtz v4, :cond_17
:goto_35
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v3
sub-double v3, p1, v3
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v5
sub-double/2addr v5, p1
cmpl-double v1, v3, v5
if-lez v1, :cond_45
:goto_44
return-object v0
:cond_45
move-object v0, v2
goto :goto_44
:cond_47
move-object v0, v1
goto :goto_35
.end method
.method private getTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
invoke-interface {v0}, Lcom/glympse/android/controls/GTimerView$TimeProvider;->getTime()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
goto :goto_a
.end method
.method private getTypeface(I)Landroid/graphics/Typeface;
.registers 3
const/4 v0, 0x1
if-ne v0, p1, :cond_d
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_boldTypeface:Landroid/graphics/Typeface;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_boldTypeface:Landroid/graphics/Typeface;
:goto_9
return-object v0
:cond_a
sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
goto :goto_9
:cond_d
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_normalTypeface:Landroid/graphics/Typeface;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_normalTypeface:Landroid/graphics/Typeface;
goto :goto_9
:cond_14
sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
goto :goto_9
.end method
.method private handleRotationMotion(FFZZ)Z
.registers 11
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
sub-float/2addr v0, p1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
sub-float/2addr v1, p1
mul-float/2addr v0, v1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
sub-float/2addr v1, p2
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
sub-float/2addr v2, p2
mul-float/2addr v1, v2
add-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v1
if-eqz p3, :cond_2d
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
const/high16 v3, 0x4040
div-float/2addr v0, v3
:goto_1b
float-to-double v3, v0
cmpg-double v0, v1, v3
if-ltz v0, :cond_2b
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_bodySize:F
const v3, 0x3fe66666
div-float/2addr v0, v3
float-to-double v3, v0
cmpl-double v0, v1, v3
if-lez v0, :cond_30
:cond_2b
const/4 v0, 0x0
:goto_2c
return v0
:cond_2d
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
goto :goto_1b
:cond_30
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
sub-float v0, p2, v0
float-to-double v0, v0
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
sub-float v2, p1, v2
float-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v1
:goto_3e
const-wide v3, 0x401921fb54442d18L
cmpl-double v0, v1, v3
if-lez v0, :cond_4e
const-wide v3, 0x401921fb54442d18L
sub-double/2addr v1, v3
goto :goto_3e
:goto_4e
:cond_4e
const-wide/16 v3, 0x0
cmpg-double v0, v1, v3
if-gez v0, :cond_5b
const-wide v3, 0x401921fb54442d18L
add-double/2addr v1, v3
goto :goto_4e
:cond_5b
const-wide v3, 0x40178fdb9effea46L
cmpl-double v0, v1, v3
if-ltz v0, :cond_b8
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v0
:goto_70
if-nez p4, :cond_92
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
const-wide v4, 0x3fe921fb60000000L
cmpg-double v2, v2, v4
if-gez v2, :cond_d5
const-wide v2, 0x4012d97c80000000L
cmpl-double v2, v0, v2
if-lez v2, :cond_d5
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v0
:goto_92
:cond_92
const/4 v2, 0x0
iget-wide v3, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
cmpl-double v3, v3, v0
if-eqz v3, :cond_9c
iput-wide v0, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
const/4 v2, 0x1
:cond_9c
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->stopCountdown()V
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/glympse/android/controls/GTimerView;->_userModified:Z
invoke-direct {p0, v0, v1}, Lcom/glympse/android/controls/GTimerView;->getTick(D)Lcom/glympse/android/controls/GTimerView$Tick;
move-result-object v0
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/glympse/android/controls/GTimerView;->setDuration(IZ)Z
move-result v0
or-int/2addr v0, v2
if-eqz v0, :cond_b5
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->invalidate()V
:cond_b5
const/4 v0, 0x1
goto/16 :goto_2c
:cond_b8
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v3
cmpl-double v0, v1, v3
if-lez v0, :cond_f6
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v0
goto :goto_70
:cond_d5
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
const-wide v4, 0x4012d97c80000000L
cmpl-double v2, v2, v4
if-lez v2, :cond_92
const-wide v2, 0x3fe921fb60000000L
cmpg-double v2, v0, v2
if-gez v2, :cond_92
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v0
goto :goto_92
:cond_f6
move-wide v0, v1
goto/16 :goto_70
.end method
.method private isCountdownMode()Z
.registers 5
iget-wide v0, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private setDuration(IZ)Z
.registers 9
const/4 v1, 0x1
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v0
if-le p1, v0, :cond_1b
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result p1
:cond_1b
const/4 v0, 0x0
if-eqz p2, :cond_2b
invoke-direct {p0, p1}, Lcom/glympse/android/controls/GTimerView;->getRotation(I)D
move-result-wide v2
iget-wide v4, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
cmpl-double v4, v4, v2
if-eqz v4, :cond_2b
iput-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
move v0, v1
:cond_2b
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
if-eq v2, p1, :cond_43
iput p1, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
invoke-interface {v0, p0, v2}, Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;->onDurationChanged(Lcom/glympse/android/controls/GTimerView;I)V
:cond_3c
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->fireExpireTimeEventIfNeeded()V
:goto_3f
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->startTimerIfNeeded()V
return v1
:cond_43
move v1, v0
goto :goto_3f
.end method
.method private static setLayerTypeIfPossible(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 8
:try_start_0
const-class v0, Landroid/view/View;
const-string v1, "setLayerType"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Landroid/graphics/Paint;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
goto :goto_25
.end method
.method private startTimerIfNeeded()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
if-nez v0, :cond_1d
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->isCountdownMode()Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
if-eqz v0, :cond_1d
:cond_e
new-instance v0, Lcom/glympse/android/controls/GTimerView$TimerRunnable;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/glympse/android/controls/GTimerView$TimerRunnable;-><init>(Lcom/glympse/android/controls/GTimerView;Lcom/glympse/android/controls/GTimerView$1;)V
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
const-wide/16 v1, 0x3e8
invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/controls/GTimerView;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_1d
return-void
.end method
.method private stopCountdown()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
return-void
.end method
.method private stopTimer()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/GTimerView;->removeCallbacks(Ljava/lang/Runnable;)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_runnable:Lcom/glympse/android/controls/GTimerView$TimerRunnable;
:cond_c
return-void
.end method
.method private timerAction()V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->isCountdownMode()Z
move-result v0
if-eqz v0, :cond_22
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
cmp-long v2, v2, v0
if-lez v2, :cond_20
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
sub-long v0, v2, v0
long-to-int v0, v0
:goto_15
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/glympse/android/controls/GTimerView;->setDuration(IZ)Z
move-result v0
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->invalidate()V
:goto_1f
:cond_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_15
:cond_22
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->fireExpireTimeEventIfNeeded()V
goto :goto_1f
.end method
.method  drawEngravedText(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Ljava/lang/String;)V
.registers 11
const/4 v4, 0x0
const/16 v3, 0xfc
const/16 v2, 0x6d
invoke-virtual {p4}, Landroid/graphics/Paint;->getTextSize()F
move-result v0
const/high16 v1, 0x4200
div-float/2addr v0, v1
const/high16 v1, 0x3f80
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
neg-float v1, v0
invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I
move-result v2
invoke-virtual {p4, v0, v4, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I
move-result v1
invoke-virtual {p4, v0, v4, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-void
.end method
.method public getDuration()I
.registers 2
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
return v0
.end method
.method public getExpireTime()J
.registers 5
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
cmp-long v2, v2, v0
if-lez v2, :cond_b
iget-wide v0, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
:cond_a
:goto_a
return-wide v0
:cond_b
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
if-ltz v2, :cond_a
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->getTime()J
move-result-wide v0
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
int-to-long v2, v2
add-long/2addr v0, v2
goto :goto_a
.end method
.method protected onDetachedFromWindow()V
.registers 2
const/4 v0, 0x0
invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->stopTimer()V
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_normalTypeface:Landroid/graphics/Typeface;
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_boldTypeface:Landroid/graphics/Typeface;
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 16
const v6, 0x3f8ccccd
const/4 v13, 0x1
const/4 v7, 0x0
const/high16 v12, 0x3f80
const/high16 v11, 0x3f00
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
int-to-long v1, v1
const-wide/32 v3, 0x668a0
cmp-long v1, v1, v3
if-gtz v1, :cond_250
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_innerRadius:F
sub-float/2addr v1, v2
const/high16 v2, 0x4000
div-float/2addr v1, v2
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
mul-float/2addr v3, v6
add-float/2addr v2, v3
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
const/high16 v5, 0x4060
div-float/2addr v4, v5
sub-float/2addr v3, v4
invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
mul-float/2addr v3, v6
add-float/2addr v2, v3
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
add-float/2addr v3, v1
invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
add-float/2addr v1, v3
invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V
:goto_50
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_gBackDrawable:Landroid/graphics/drawable/Drawable;
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_trackLeft:F
float-to-int v2, v2
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_trackTop:F
float-to-int v3, v3
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_trackRight:F
add-float/2addr v4, v11
float-to-int v4, v4
iget v5, p0, Lcom/glympse/android/controls/GTimerView;->_trackBottom:F
add-float/2addr v5, v11
float-to-int v5, v5
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_gBackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
int-to-long v1, v1
const-wide/32 v3, 0x493e0
cmp-long v1, v1, v3
if-ltz v1, :cond_94
const/4 v1, 0x2
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I
:try_start_76
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_gFillDrawable:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackLeft:F
float-to-int v1, v1
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_trackTop:F
float-to-int v2, v2
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_trackRight:F
add-float/2addr v3, v11
float-to-int v3, v3
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_trackBottom:F
add-float/2addr v4, v11
float-to-int v4, v4
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_gFillDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:try_end_91
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_91} :catch_2ec
:goto_91
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_94
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
float-to-double v0, v0
const-wide v2, 0x3fdb851eb851eb85L
mul-double/2addr v0, v2
double-to-int v0, v0
mul-int/lit8 v1, v0, 0x2
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
int-to-float v3, v0
sub-float/2addr v2, v3
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
int-to-float v0, v0
sub-float v0, v3, v0
invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_durationCircle:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v7, v7, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_durationCircle:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
int-to-long v0, v0
const-wide/32 v2, 0xea5f
add-long/2addr v0, v2
const-wide/32 v2, 0xea60
div-long/2addr v0, v2
long-to-int v0, v0
div-int/lit8 v5, v0, 0x3c
rem-int/lit8 v0, v0, 0x3c
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const/16 v2, 0x37
const/16 v3, 0x37
const/16 v4, 0x37
invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
const/4 v6, 0x0
if-lez v5, :cond_29d
if-lez v0, :cond_28e
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
const/high16 v2, 0x40c0
div-float/2addr v1, v2
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
const v4, 0x40333333
div-float/2addr v1, v4
add-float/2addr v3, v1
iget-object v4, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const-string v1, "%d:%02d"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v8, v7
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v8, v13
invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/controls/GTimerView;->drawEngravedText(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Ljava/lang/String;)V
move-object v0, v6
move v6, v7
:goto_118
if-lez v6, :cond_183
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
const/high16 v2, 0x4090
div-float v8, v1, v2
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
const/high16 v2, 0x4160
div-float v9, v1, v2
add-float v10, v8, v9
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
const/16 v2, 0x33
const/16 v3, 0x33
const/16 v4, 0x33
invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I
move-result v2
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
const/high16 v3, 0x4000
div-float v3, v10, v3
sub-float/2addr v1, v3
add-float/2addr v1, v8
const v3, 0x3e19999a
mul-float/2addr v3, v8
sub-float v3, v1, v3
iget-object v4, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/controls/GTimerView;->drawEngravedText(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-direct {p0, v7}, Lcom/glympse/android/controls/GTimerView;->getTypeface(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
const/high16 v1, 0x4000
div-float v1, v10, v1
add-float/2addr v0, v1
const v1, 0x3dcccccd
mul-float/2addr v1, v8
sub-float v3, v0, v1
iget-object v4, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/controls/GTimerView;->drawEngravedText(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Ljava/lang/String;)V
:cond_183
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_middleRadius:F
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
double-to-float v2, v2
mul-float/2addr v1, v2
add-float/2addr v0, v1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_middleRadius:F
iget-wide v3, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D
move-result-wide v3
double-to-float v3, v3
mul-float/2addr v2, v3
add-float/2addr v1, v2
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_thumbDrawable:Landroid/graphics/drawable/Drawable;
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_thumbRadius:F
sub-float v3, v0, v3
float-to-int v3, v3
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_thumbRadius:F
sub-float v4, v1, v4
float-to-int v4, v4
iget v5, p0, Lcom/glympse/android/controls/GTimerView;->_thumbRadius:F
add-float/2addr v0, v5
add-float/2addr v0, v11
float-to-int v0, v0
iget v5, p0, Lcom/glympse/android/controls/GTimerView;->_thumbRadius:F
add-float/2addr v1, v5
add-float/2addr v1, v11
float-to-int v1, v1
invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_thumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
invoke-direct {p0, v13}, Lcom/glympse/android/controls/GTimerView;->getTypeface(I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_ticks:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_1d1
:cond_1d1
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2eb
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView$Tick;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_visible:Z
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$500(Lcom/glympse/android/controls/GTimerView$Tick;)Z
move-result v1
if-eqz v1, :cond_1d1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_textRadiusEdgeX:F
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D
move-result-wide v3
double-to-float v3, v3
mul-float/2addr v2, v3
add-float/2addr v2, v1
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_textRadiusCenterY:F
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_rotation:D
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$300(Lcom/glympse/android/controls/GTimerView$Tick;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
double-to-float v4, v4
mul-float/2addr v3, v4
add-float/2addr v1, v3
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_tickHeight:F
const v4, 0x4029999a
div-float/2addr v3, v4
add-float/2addr v3, v1
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
if-lez v1, :cond_2c8
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v1
int-to-long v4, v1
const-wide/32 v7, 0x36ee80
div-long/2addr v4, v7
long-to-int v1, v4
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v4
int-to-long v4, v4
const-wide/32 v7, 0xea60
div-long/2addr v4, v7
long-to-int v4, v4
rem-int/lit8 v4, v4, 0x3c
if-lez v1, :cond_2c2
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
:goto_22a
move-object v5, v1
:goto_22b
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v0
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_duration:I
if-gt v0, v4, :cond_2d7
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_tickColorPrimary:I
:goto_237
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
iget-object v1, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
sub-float/2addr v0, v2
cmpl-float v0, v0, v12
if-lez v0, :cond_2db
sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;
:goto_245
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v4, p0, Lcom/glympse/android/controls/GTimerView;->_paint:Landroid/graphics/Paint;
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/controls/GTimerView;->drawEngravedText(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Ljava/lang/String;)V
goto :goto_1d1
:cond_250
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_outerRadius:F
mul-float/2addr v2, v6
add-float/2addr v1, v2
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_yCenter:F
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_trackSize:F
const/high16 v4, 0x4060
div-float/2addr v3, v4
sub-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
iget-wide v1, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
const-wide v3, 0x4066800000000000L
mul-double/2addr v1, v3
const-wide v3, 0x400921fb54442d18L
div-double/2addr v1, v3
double-to-float v1, v1
new-instance v2, Landroid/graphics/RectF;
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_trackLeft:F
sub-float/2addr v3, v12
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_trackTop:F
sub-float/2addr v4, v12
iget v5, p0, Lcom/glympse/android/controls/GTimerView;->_trackRight:F
add-float/2addr v5, v12
iget v6, p0, Lcom/glympse/android/controls/GTimerView;->_trackBottom:F
add-float/2addr v6, v12
invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
const/4 v3, 0x0
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
goto/16 :goto_50
:cond_28e
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
if-ne v13, v5, :cond_29a
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_hour:I
:goto_296
move v6, v0
move-object v0, v1
goto/16 :goto_118
:cond_29a
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_hours:I
goto :goto_296
:cond_29d
if-lez v0, :cond_2ae
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
if-ne v13, v0, :cond_2ab
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_minute:I
:goto_2a7
move v6, v0
move-object v0, v1
goto/16 :goto_118
:cond_2ab
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_minutes:I
goto :goto_2a7
:cond_2ae
iget-boolean v0, p0, Lcom/glympse/android/controls/GTimerView;->_modifyMode:Z
if-eqz v0, :cond_2ba
const-string v1, "\u2718"
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_expire_now:I
move v6, v0
move-object v0, v1
goto/16 :goto_118
:cond_2ba
const-string v1, "\u2714"
sget v0, Lcom/glympse/android/controls/R$string;->glympse_timer_check_in:I
move v6, v0
move-object v0, v1
goto/16 :goto_118
:cond_2c2
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_22a
:cond_2c8
iget-boolean v1, p0, Lcom/glympse/android/controls/GTimerView;->_modifyMode:Z
if-eqz v1, :cond_2d4
const/16 v1, 0x2718
:goto_2ce
invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v5
goto/16 :goto_22b
:cond_2d4
const/16 v1, 0x2714
goto :goto_2ce
:cond_2d7
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_tickColorSecondary:I
goto/16 :goto_237
:cond_2db
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_xCenter:F
sub-float v0, v2, v0
cmpl-float v0, v0, v12
if-lez v0, :cond_2e7
sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
goto/16 :goto_245
:cond_2e7
sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
goto/16 :goto_245
:cond_2eb
return-void
:catch_2ec
move-exception v0
goto/16 :goto_91
.end method
.method protected onMeasure(II)V
.registers 14
const/high16 v8, 0x4000
const/4 v9, 0x0
const/high16 v7, -0x8000
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v4
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v6
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v3
iget v2, p0, Lcom/glympse/android/controls/GTimerView;->_minWidth:I
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_maxWidth:I
if-ne v8, v4, :cond_2d
move v0, v1
move v2, v1
:goto_1d
:cond_1d
iget v5, p0, Lcom/glympse/android/controls/GTimerView;->_minHeight:I
iget v4, p0, Lcom/glympse/android/controls/GTimerView;->_maxHeight:I
if-ne v8, v6, :cond_31
move v4, v3
move v5, v3
:goto_25
:cond_25
if-gtz v1, :cond_35
if-gtz v3, :cond_35
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
:goto_2c
return-void
:cond_2d
if-ne v7, v4, :cond_1d
move v0, v1
goto :goto_1d
:cond_31
if-ne v7, v6, :cond_25
move v4, v3
goto :goto_25
:cond_35
iget v6, p0, Lcom/glympse/android/controls/GTimerView;->_padLeft:I
iget v7, p0, Lcom/glympse/android/controls/GTimerView;->_padRight:I
add-int/2addr v6, v7
sub-int v6, v1, v6
invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I
move-result v6
iget v7, p0, Lcom/glympse/android/controls/GTimerView;->_padTop:I
iget v8, p0, Lcom/glympse/android/controls/GTimerView;->_padBottom:I
add-int/2addr v7, v8
sub-int v7, v3, v7
invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I
move-result v7
if-lez v1, :cond_51
if-lez v3, :cond_6e
if-le v6, v7, :cond_6e
:cond_51
iget v1, p0, Lcom/glympse/android/controls/GTimerView;->_padLeft:I
iget v6, p0, Lcom/glympse/android/controls/GTimerView;->_padRight:I
add-int/2addr v1, v6
add-int/2addr v1, v7
move v10, v3
move v3, v1
move v1, v10
:goto_5a
invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/controls/GTimerView;->setMeasuredDimension(II)V
goto :goto_2c
:cond_6e
if-lez v3, :cond_74
if-lez v1, :cond_7e
if-le v7, v6, :cond_7e
:cond_74
iget v3, p0, Lcom/glympse/android/controls/GTimerView;->_padTop:I
iget v7, p0, Lcom/glympse/android/controls/GTimerView;->_padBottom:I
add-int/2addr v3, v7
add-int/2addr v3, v6
move v10, v3
move v3, v1
move v1, v10
goto :goto_5a
:cond_7e
move v10, v3
move v3, v1
move v1, v10
goto :goto_5a
.end method
.method protected onSizeChanged(IIII)V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->computeLayout()V
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->isClickable()Z
move-result v2
if-nez v2, :cond_9
:goto_8
return v0
:cond_9
invoke-static {p1}, Lcom/glympse/android/controls/Reflection$_MotionEvent;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v2
iget-object v3, p0, Lcom/glympse/android/controls/GTimerView;->_gestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
if-eqz v3, :cond_25
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getParent()Landroid/view/ViewParent;
move-result-object v0
:goto_19
if-eqz v0, :cond_23
invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v0
goto :goto_19
:cond_23
move v0, v1
goto :goto_8
:cond_25
const/4 v3, 0x3
if-eq v3, v2, :cond_2a
if-ne v1, v2, :cond_66
:cond_2a
iget-wide v2, p0, Lcom/glympse/android/controls/GTimerView;->_rotation:D
invoke-direct {p0, v2, v3}, Lcom/glympse/android/controls/GTimerView;->getTick(D)Lcom/glympse/android/controls/GTimerView$Tick;
move-result-object v2
if-eqz v2, :cond_56
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->stopCountdown()V
#getter for: Lcom/glympse/android/controls/GTimerView$Tick;->_duration:I
invoke-static {v2}, Lcom/glympse/android/controls/GTimerView$Tick;->access$400(Lcom/glympse/android/controls/GTimerView$Tick;)I
move-result v2
invoke-direct {p0, v2, v1}, Lcom/glympse/android/controls/GTimerView;->setDuration(IZ)Z
move-result v2
if-eqz v2, :cond_42
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->invalidate()V
:cond_42
iget-boolean v2, p0, Lcom/glympse/android/controls/GTimerView;->_userModified:Z
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
if-eqz v2, :cond_52
iget-object v2, p0, Lcom/glympse/android/controls/GTimerView;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
const/4 v3, 0x0
iput-object v3, p0, Lcom/glympse/android/controls/GTimerView;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
invoke-interface {v2, p0}, Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;->onUserActionComplete(Lcom/glympse/android/controls/GTimerView;)V
:cond_52
iput-boolean v0, p0, Lcom/glympse/android/controls/GTimerView;->_userModified:Z
:goto_54
:cond_54
move v0, v1
goto :goto_8
:cond_56
const-wide/16 v2, 0x0
iget v0, p0, Lcom/glympse/android/controls/GTimerView;->_slideRatio:F
float-to-double v4, v0
cmpl-double v0, v2, v4
if-eqz v0, :cond_54
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/controls/GTimerView;->_slideRatio:F
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->invalidate()V
goto :goto_54
:cond_66
move v0, v1
goto :goto_8
.end method
.method public setDurationMode(I)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/controls/GTimerView;->_modifyMode:Z
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->stopCountdown()V
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/GTimerView;->setDuration(IZ)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->invalidate()V
:cond_10
return-void
.end method
.method public setFillDrawable(I)V
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/controls/GTimerView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_gFillDrawable:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public setMinimumHeight(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/controls/GTimerView;->_minHeight:I
invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V
return-void
.end method
.method public setMinimumWidth(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/controls/GTimerView;->_minWidth:I
invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V
return-void
.end method
.method public setModifyMode(J)V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/controls/GTimerView;->_modifyMode:Z
iput-wide p1, p0, Lcom/glympse/android/controls/GTimerView;->_expireTime:J
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->timerAction()V
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->startTimerIfNeeded()V
return-void
.end method
.method public setOnDurationChangedListener(Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
return-void
.end method
.method public setOnExpireTimeChangedListener(Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
if-eqz v0, :cond_9
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->startTimerIfNeeded()V
:cond_9
return-void
.end method
.method public setOnUserActionCompleteListener(Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
return-void
.end method
.method public setPadding(IIII)V
.registers 5
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V
invoke-direct {p0}, Lcom/glympse/android/controls/GTimerView;->computeLayout()V
return-void
.end method
.method public setTickColorPrimary(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/controls/GTimerView;->_tickColorPrimary:I
return-void
.end method
.method public setTimeProvider(Lcom/glympse/android/controls/GTimerView$TimeProvider;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView;->_timeProvider:Lcom/glympse/android/controls/GTimerView$TimeProvider;
return-void
.end method
.method public setTypefaces(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView;->_normalTypeface:Landroid/graphics/Typeface;
iput-object p2, p0, Lcom/glympse/android/controls/GTimerView;->_boldTypeface:Landroid/graphics/Typeface;
return-void
.end method