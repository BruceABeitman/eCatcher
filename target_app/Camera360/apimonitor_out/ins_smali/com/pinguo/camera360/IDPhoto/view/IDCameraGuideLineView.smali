.class public Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;
.super Landroid/view/View;
.source "IDCameraGuideLineView.java"
.field private static final EAR_TO_CENTER_RATE:F = 0.29f
.field private static final HEAD_RATE:F = 0.613f
.field private static final TAG:Ljava/lang/String;
.field private mEyeLineY:F
.field private mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
.field private mHead:Landroid/graphics/drawable/Drawable;
.field private mHeadImageShowHeight:I
.field private mHeadImageShowWidth:I
.field private mImageOriHeight:I
.field private mImageOriWidth:I
.field private mImageShowHeight:I
.field private mImageShowTop:I
.field private mImageShowWidth:I
.field private mIsShowEyeLine:Z
.field private mLastY:F
.field private mLinePaint:Landroid/graphics/Paint;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
const/4 v1, -0x1
invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, -0x1
invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->init()V
return-void
.end method
.method private dpToPixel(F)I
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, p1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method private drawGuideLine(Landroid/graphics/Canvas;)V
.registers 12
const/high16 v9, 0x4000
const v8, 0x3dcccccd
const/high16 v7, 0x3f80
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
div-int/lit8 v0, v0, 0x2
int-to-float v0, v0
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
neg-int v0, v0
div-int/lit8 v0, v0, 0x2
int-to-float v0, v0
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowHeight:I
sub-int/2addr v2, v3
int-to-float v2, v2
div-float/2addr v2, v9
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v3, v3
mul-float/2addr v3, v8
sub-float/2addr v2, v3
invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHead:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
int-to-float v0, v0
const v2, 0x3e947ae1
mul-float/2addr v0, v2
float-to-int v6, v0
neg-int v0, v6
int-to-float v0, v0
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-direct {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->dpToPixel(F)I
move-result v0
int-to-float v3, v0
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v4, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
int-to-float v0, v6
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-direct {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->dpToPixel(F)I
move-result v0
int-to-float v3, v0
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v4, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v0, v0
div-float/2addr v0, v9
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v2, v2
mul-float/2addr v2, v8
sub-float/2addr v0, v2
const/high16 v2, 0x4150
invoke-direct {p0, v2}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->dpToPixel(F)I
move-result v2
int-to-float v2, v2
sub-float/2addr v0, v2
invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
int-to-float v3, v0
invoke-direct {p0, v7}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->dpToPixel(F)I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method private init()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
const v1, -0x66001fb7
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLinePaint:Landroid/graphics/Paint;
const/high16 v1, 0x3f80
invoke-direct {p0, v1}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->dpToPixel(F)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->createDefault()Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020276
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHead:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method private measureGuideLineSize()V
.registers 9
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getMeasuredWidth()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getMeasuredHeight()I
move-result v0
int-to-float v4, v3
const v5, 0x3f1ced91
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHead:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
int-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
int-to-float v5, v5
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHead:Landroid/graphics/drawable/Drawable;
invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v6
int-to-float v6, v6
div-float/2addr v5, v6
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowHeight:I
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHead:Landroid/graphics/drawable/Drawable;
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowHeight:I
invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mImageOriWidth = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriWidth:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mImageOriHeight = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriHeight:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mHeadImageShowWidth = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowWidth:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mHeadImageShowHeight = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mHeadImageShowHeight:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "width = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "height = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
int-to-float v4, v3
int-to-float v5, v0
div-float v2, v4, v5
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriWidth:I
if-eqz v4, :cond_13d
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriHeight:I
if-eqz v4, :cond_13d
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriWidth:I
int-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriHeight:I
int-to-float v5, v5
div-float v1, v4, v5
cmpl-float v4, v1, v2
if-lez v4, :cond_133
iput v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
int-to-float v4, v4
div-float/2addr v4, v1
float-to-int v4, v4
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
:goto_d7
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mImageShowWidth = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mImageShowHeight = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
sub-int v4, v0, v4
div-int/lit8 v4, v4, 0x2
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowTop:I
sget-object v4, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mImageShowTop = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowTop:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v4, v4, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v5, v5
mul-float/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowTop:I
int-to-float v5, v5
add-float/2addr v4, v5
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mEyeLineY:F
return-void
:cond_133
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v4, v4
mul-float/2addr v4, v1
float-to-int v4, v4
iput v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
goto :goto_d7
:cond_13d
iput v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
goto :goto_d7
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 6
const/high16 v3, 0x4000
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getWidth()I
move-result v0
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowWidth:I
sub-int/2addr v0, v1
int-to-float v0, v0
div-float/2addr v0, v3
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->getHeight()I
move-result v1
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
sub-int/2addr v1, v2
int-to-float v1, v1
div-float/2addr v1, v3
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->drawGuideLine(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method protected onMeasure(II)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->measureGuideLineSize()V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
iget-boolean v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mIsShowEyeLine:Z
if-eqz v2, :cond_45
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
and-int/lit16 v2, v2, 0xff
packed-switch v2, :pswitch_data_48
:goto_d
:pswitch_d
const/4 v2, 0x1
:goto_e
return v2
:pswitch_f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
iput v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLastY:F
goto :goto_d
:pswitch_16
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLastY:F
sub-float v1, v0, v2
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mEyeLineY:F
add-float/2addr v2, v1
iput v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mEyeLineY:F
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mEyeLineY:F
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowTop:I
int-to-float v4, v4
sub-float/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v4, v4
div-float/2addr v3, v4
iput v3, v2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mFace:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mEyeLineY:F
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowTop:I
int-to-float v4, v4
sub-float/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageShowHeight:I
int-to-float v4, v4
div-float/2addr v3, v4
iput v3, v2, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mLastY:F
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->invalidate()V
goto :goto_d
:cond_45
const/4 v2, 0x0
goto :goto_e
nop
:pswitch_data_48
.packed-switch 0x0
:pswitch_f
:pswitch_d
:pswitch_16
.end packed-switch
.end method
.method public setImageSize(II)V
.registers 3
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriWidth:I
iput p2, p0, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->mImageOriHeight:I
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->requestLayout()V
return-void
.end method