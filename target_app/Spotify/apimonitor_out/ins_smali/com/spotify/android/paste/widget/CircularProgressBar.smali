.class public Lcom/spotify/android/paste/widget/CircularProgressBar;
.super Landroid/view/View;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private b:Z
.field private c:Landroid/graphics/Paint;
.field private d:I
.field private e:I
.field private final f:Landroid/graphics/RectF;
.field private g:F
.field private h:I
.field private i:Landroid/graphics/Paint;
.field private j:I
.field private k:F
.field private l:Landroid/graphics/Paint;
.field private m:F
.field private n:Landroid/graphics/Paint;
.field private o:Z
.field private final p:I
.field private q:I
.field private r:I
.field private s:F
.field private t:F
.field private u:F
.field private v:F
.field private w:Z
.field private final x:Landroid/graphics/RectF;
.field private y:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/spotify/android/paste/widget/CircularProgressBar;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/android/paste/widget/CircularProgressBar;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->l:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 10
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->b:Z
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
const/16 v0, 0xa
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
const/16 v0, 0x14
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->f:Landroid/graphics/RectF;
const v0, 0x3e99999a
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
iput v5, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->m:F
iput-boolean v3, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->o:Z
iput v3, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->q:I
iput v3, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->r:I
iput-boolean v3, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iput-boolean v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->y:Z
sget-object v0, Lcom/spotify/android/paste/e;->i:[I
invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x4
const v2, -0xff0001
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->c()V
const/4 v1, 0x5
const v2, -0xff01
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->b()V
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a()V
const/4 v1, 0x2
invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a(F)V
const/4 v1, 0x3
invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
invoke-direct {p0, v1}, Lcom/spotify/android/paste/widget/CircularProgressBar;->b(F)V
const/high16 v1, 0x4120
invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
float-to-int v1, v1
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
const/4 v1, 0x6
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->y:Z
const/4 v1, 0x7
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->o:Z
const/16 v1, 0x11
invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->p:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
mul-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a()V
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->b()V
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->c()V
iput-boolean v3, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->b:Z
return-void
.end method
.method private a()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->invalidate()V
return-void
.end method
.method private b()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->n:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->n:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->n:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->n:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->invalidate()V
return-void
.end method
.method private b(F)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->o:Z
iput p1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->m:F
return-void
.end method
.method private c()V
.registers 4
const/4 v2, 0x1
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->i:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->i:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->i:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->i:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->d:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->invalidate()V
return-void
.end method
.method public final a(F)V
.registers 5
const/4 v2, 0x0
const/high16 v1, 0x3f80
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
cmpl-float v0, p1, v0
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
cmpl-float v0, p1, v1
if-nez v0, :cond_1a
iput-boolean v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
:goto_12
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->b:Z
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->invalidate()V
goto :goto_9
:cond_1a
cmpl-float v0, p1, v1
if-ltz v0, :cond_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
:goto_21
rem-float v0, p1, v1
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
goto :goto_12
:cond_26
iput-boolean v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
goto :goto_21
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 13
const/4 v4, 0x0
const/high16 v2, 0x4387
const/high16 v10, 0x42b4
const-wide v8, 0x3ff6666666666666L
const/high16 v6, 0x43b4
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->s:F
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->t:F
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
mul-float v7, v6, v0
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
if-nez v0, :cond_26
iget-object v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->f:Landroid/graphics/RectF;
sub-float v0, v6, v7
neg-float v3, v0
iget-object v5, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->c:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
:cond_26
iget-object v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->f:Landroid/graphics/RectF;
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->w:Z
if-eqz v0, :cond_b4
move v3, v6
:goto_2d
iget-object v5, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->i:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->o:Z
if-eqz v0, :cond_64
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->m:F
mul-float/2addr v0, v6
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
sub-float/2addr v0, v10
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
float-to-double v0, v0
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v2, v2, 0x2
int-to-double v2, v2
mul-double/2addr v2, v8
add-double/2addr v0, v2
double-to-float v1, v0
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
float-to-double v3, v0
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v0, v0, 0x2
int-to-double v5, v0
mul-double/2addr v5, v8
sub-double/2addr v3, v5
double-to-float v3, v3
iget v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
iget-object v5, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->n:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_64
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->y:Z
if-eqz v0, :cond_b3
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
sub-float v0, v7, v10
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V
const/high16 v0, 0x4234
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v2, v2, 0x3
int-to-float v2, v2
sub-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->left:F
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v2, v2, 0x3
int-to-float v2, v2
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->right:F
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v2, v2, 0x3
int-to-float v2, v2
sub-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->top:F
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
div-int/lit8 v2, v2, 0x3
int-to-float v2, v2
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->bottom:F
iget-object v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->x:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->l:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_b3
return-void
:cond_b4
move v3, v7
goto/16 :goto_2d
.end method
.method protected onMeasure(II)V
.registers 15
const/4 v11, 0x0
const-wide/16 v9, 0x0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->getSuggestedMinimumHeight()I
move-result v0
invoke-static {v0, p2}, Lcom/spotify/android/paste/widget/CircularProgressBar;->getDefaultSize(II)I
move-result v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->getSuggestedMinimumWidth()I
move-result v1
invoke-static {v1, p1}, Lcom/spotify/android/paste/widget/CircularProgressBar;->getDefaultSize(II)I
move-result v1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-virtual {p0, v2, v0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->setMeasuredDimension(II)V
int-to-float v3, v2
const/high16 v4, 0x3f00
mul-float/2addr v3, v4
iget v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->e:I
int-to-float v4, v4
sub-float v4, v3, v4
iput v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
iget-object v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->f:Landroid/graphics/RectF;
iget v5, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
neg-float v5, v5
iget v6, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
neg-float v6, v6
iget v7, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
iget v8, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V
iget v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
float-to-double v4, v4
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
mul-double/2addr v4, v6
double-to-float v4, v4
iput v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->u:F
iget v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->g:F
float-to-double v4, v4
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v6
mul-double/2addr v4, v6
double-to-float v4, v4
iput v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->v:F
sub-int/2addr v1, v2
sub-int v2, v0, v2
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->p:I
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x10
if-lt v4, v5, :cond_5f
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->getLayoutDirection()I
move-result v0
iget v4, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->p:I
invoke-static {v4, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I
move-result v0
:cond_5f
and-int/lit8 v4, v0, 0x7
packed-switch v4, :pswitch_data_8a
:pswitch_64
div-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->q:I
:goto_68
and-int/lit8 v0, v0, 0x70
sparse-switch v0, :sswitch_data_94
div-int/lit8 v0, v2, 0x2
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->r:I
:goto_71
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->q:I
int-to-float v0, v0
add-float/2addr v0, v3
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->s:F
iget v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->r:I
int-to-float v0, v0
add-float/2addr v0, v3
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->t:F
return-void
:pswitch_7e
iput v11, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->q:I
goto :goto_68
:pswitch_81
iput v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->q:I
goto :goto_68
:sswitch_84
iput v11, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->r:I
goto :goto_71
:sswitch_87
iput v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->r:I
goto :goto_71
:pswitch_data_8a
.packed-switch 0x3
:pswitch_7e
:pswitch_64
:pswitch_81
.end packed-switch
:sswitch_data_94
.sparse-switch
0x30 -> :sswitch_84
0x50 -> :sswitch_87
.end sparse-switch
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/spotify/android/paste/widget/CircularProgressBar; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
instance-of v0, p1, Landroid/os/Bundle;
if-eqz v0, :cond_40
check-cast p1, Landroid/os/Bundle;
const-string v0, "progress"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F
move-result v0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a(F)V
const-string v0, "marker_progress"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F
move-result v0
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->b(F)V
const-string v0, "progress_color"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
if-eq v0, v1, :cond_27
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->c()V
:cond_27
const-string v0, "progress_background_color"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iget v1, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
if-eq v0, v1, :cond_36
iput v0, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
invoke-direct {p0}, Lcom/spotify/android/paste/widget/CircularProgressBar;->a()V
:cond_36
const-string v0, "saved_state"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_3f
const-string v1, " - Lcom/spotify/android/paste/widget/CircularProgressBar; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_40
invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
goto :goto_3f
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/spotify/android/paste/widget/CircularProgressBar; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "saved_state"
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "progress"
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->k:F
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
const-string v1, "marker_progress"
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->m:F
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
const-string v1, "progress_color"
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->h:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "progress_background_color"
iget v2, p0, Lcom/spotify/android/paste/widget/CircularProgressBar;->j:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
move-object v2, v0
const-string v1, " - Lcom/spotify/android/paste/widget/CircularProgressBar; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method