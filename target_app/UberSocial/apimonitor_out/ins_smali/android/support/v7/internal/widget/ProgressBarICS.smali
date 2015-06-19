.class public Landroid/support/v7/internal/widget/ProgressBarICS;
.super Landroid/view/View;
.source "SourceFile"
.field private static final f:I = 0x2710
.field private static final g:I = 0xc8
.field private static final h:[I
.field private A:Z
.field  a:I
.field  b:I
.field  c:I
.field  d:I
.field  e:Landroid/graphics/Bitmap;
.field private i:I
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.field private o:Z
.field private p:Landroid/view/animation/Transformation;
.field private q:Landroid/view/animation/AlphaAnimation;
.field private r:Landroid/graphics/drawable/Drawable;
.field private s:Landroid/graphics/drawable/Drawable;
.field private t:Landroid/graphics/drawable/Drawable;
.field private u:Z
.field private v:Landroid/view/animation/Interpolator;
.field private w:Landroid/support/v7/internal/widget/ad;
.field private x:J
.field private y:Z
.field private z:J
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xe
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Landroid/support/v7/internal/widget/ProgressBarICS;->h:[I
return-void
:array_a
.array-data 0x4
0x36t 0x1t 0x1t 0x1t
0x37t 0x1t 0x1t 0x1t
0x38t 0x1t 0x1t 0x1t
0x39t 0x1t 0x1t 0x1t
0x3at 0x1t 0x1t 0x1t
0x3bt 0x1t 0x1t 0x1t
0x3ct 0x1t 0x1t 0x1t
0x3dt 0x1t 0x1t 0x1t
0x3et 0x1t 0x1t 0x1t
0x3ft 0x1t 0x1t 0x1t
0x1ft 0x1t 0x1t 0x1t
0x40t 0x1t 0x1t 0x1t
0x20t 0x1t 0x1t 0x1t
0x41t 0x1t 0x1t 0x1t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 11
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
iput-wide v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->x:J
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->d()V
sget-object v2, Landroid/support/v7/internal/widget/ProgressBarICS;->h:[I
invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->u:Z
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
const/4 v3, 0x2
iget v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
const/4 v3, 0x3
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v3
const/4 v4, 0x4
iget-boolean v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
const/4 v4, 0x5
invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
if-eqz v4, :cond_54
invoke-direct {p0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_54
const/4 v4, 0x6
invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
if-eqz v4, :cond_62
invoke-direct {p0, v4, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_62
const/4 v4, 0x7
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->m:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->m:I
const/16 v4, 0x8
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->l:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->l:I
const/16 v4, 0x9
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->a:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->a:I
const/16 v4, 0xa
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->b:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->b:I
const/16 v4, 0xb
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->c:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->c:I
const/16 v4, 0xc
iget v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
const/16 v4, 0xd
const v5, 0x10a000b
invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
if-lez v4, :cond_ab
invoke-virtual {p0, p1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/content/Context;I)V
:cond_ab
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->u:Z
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
if-nez v2, :cond_b6
if-eqz v3, :cond_b7
:cond_b6
move v0, v1
:cond_b7
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
return-void
.end method
.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 8
const/16 v5, 0x2710
instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;
if-eqz v0, :cond_35
check-cast p1, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I
move-result v2
new-instance v0, Landroid/graphics/drawable/AnimationDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V
invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V
const/4 v1, 0x0
:goto_19
if-ge v1, v2, :cond_31
invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x1
invoke-direct {p0, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I
move-result v4
invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_31
invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z
move-object p1, v0
:cond_35
return-object p1
.end method
.method private a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
.registers 11
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;
if-eqz v0, :cond_41
check-cast p1, Landroid/graphics/drawable/LayerDrawable;
invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I
move-result v4
new-array v5, v4, [Landroid/graphics/drawable/Drawable;
move v3, v1
:goto_f
if-ge v3, v4, :cond_30
invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
move-result v0
invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
const v7, 0x102000d
if-eq v0, v7, :cond_23
const v7, 0x102000f
if-ne v0, v7, :cond_2e
:cond_23
move v0, v2
:goto_24
invoke-direct {p0, v6, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
move-result-object v0
aput-object v0, v5, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_f
:cond_2e
move v0, v1
goto :goto_24
:cond_30
new-instance v0, Landroid/graphics/drawable/LayerDrawable;
invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
:goto_35
if-ge v1, v4, :cond_72
invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
add-int/lit8 v1, v1, 0x1
goto :goto_35
:cond_41
instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_75
check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->e:Landroid/graphics/Bitmap;
if-nez v1, :cond_51
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->e:Landroid/graphics/Bitmap;
:cond_51
new-instance v1, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
move-result-object v3
invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
new-instance v3, Landroid/graphics/BitmapShader;
sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
if-eqz p2, :cond_73
new-instance v0, Landroid/graphics/drawable/ClipDrawable;
const/4 v3, 0x3
invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V
:goto_72
:cond_72
return-object v0
:cond_73
move-object v0, v1
goto :goto_72
:cond_75
move-object v0, p1
goto :goto_72
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ad;)Landroid/support/v7/internal/widget/ad;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
return-object p1
.end method
.method private a(II)V
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I
move-result v0
sub-int v0, p1, v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v2
sub-int v3, v0, v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I
move-result v0
sub-int v0, p2, v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v2
sub-int v2, v0, v2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_71
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
if-eqz v0, :cond_6c
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;
if-nez v0, :cond_6c
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
int-to-float v0, v0
int-to-float v4, v4
div-float/2addr v0, v4
int-to-float v4, p1
int-to-float v5, p2
div-float/2addr v4, v5
cmpl-float v5, v0, v4
if-eqz v5, :cond_6c
cmpl-float v4, v4, v0
if-lez v4, :cond_5b
int-to-float v3, p2
mul-float/2addr v0, v3
float-to-int v3, v0
sub-int v0, p1, v3
div-int/lit8 v0, v0, 0x2
add-int/2addr v3, v0
move v4, v3
move v3, v2
move v2, v1
:goto_4c
iget-object v5, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
invoke-virtual {v5, v0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:goto_51
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_5a
return-void
:cond_5b
int-to-float v2, p1
const/high16 v4, 0x3f80
div-float v0, v4, v0
mul-float/2addr v0, v2
float-to-int v2, v0
sub-int v0, p2, v2
div-int/lit8 v0, v0, 0x2
add-int/2addr v2, v0
move v4, v3
move v3, v2
move v2, v0
move v0, v1
goto :goto_4c
:cond_6c
move v0, v1
move v4, v3
move v3, v2
move v2, v1
goto :goto_4c
:cond_71
move v4, v3
move v3, v2
goto :goto_51
.end method
.method private declared-synchronized a(IIZ)V
.registers 8
monitor-enter p0
:try_start_1
iget-wide v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->x:J
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_15
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZZ)V
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_25
:goto_13
monitor-exit p0
return-void
:cond_15
:try_start_15
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
if-eqz v0, :cond_28
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/ad;->a(IIZ)V
:goto_21
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->post(Ljava/lang/Runnable;)Z
:try_end_24
.catchall {:try_start_15 .. :try_end_24} :catchall_25
goto :goto_13
:catchall_25
move-exception v0
monitor-exit p0
throw v0
:cond_28
:try_start_28
new-instance v0, Landroid/support/v7/internal/widget/ad;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
:try_end_2d
.catchall {:try_start_28 .. :try_end_2d} :catchall_25
goto :goto_21
.end method
.method private declared-synchronized a(IIZZ)V
.registers 10
monitor-enter p0
:try_start_1
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
if-lez v1, :cond_29
int-to-float v1, p2
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
int-to-float v2, v2
div-float/2addr v1, v2
move v3, v1
:goto_b
iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_2c
const/4 v1, 0x0
instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;
if-eqz v4, :cond_1c
move-object v0, v2
check-cast v0, Landroid/graphics/drawable/LayerDrawable;
move-object v1, v0
invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
:cond_1c
const v4, 0x461c4000
mul-float/2addr v3, v4
float-to-int v3, v3
if-eqz v1, :cond_24
move-object v2, v1
:cond_24
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
:goto_27
:try_end_27
.catchall {:try_start_1 .. :try_end_27} :catchall_30
monitor-exit p0
return-void
:cond_29
const/4 v1, 0x0
move v3, v1
goto :goto_b
:try_start_2c
:cond_2c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate()V
:try_end_2f
.catchall {:try_start_2c .. :try_end_2f} :catchall_30
goto :goto_27
:catchall_30
move-exception v1
monitor-exit p0
throw v1
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZZ)V
return-void
.end method
.method private d()V
.registers 5
const/16 v3, 0x30
const/16 v2, 0x18
const/4 v1, 0x0
const/16 v0, 0x64
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
iput v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
const/16 v0, 0xfa0
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->m:I
const/4 v0, 0x1
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->l:I
iput v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->a:I
iput v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->b:I
iput v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->c:I
iput v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
return-void
.end method
.method private e()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawableState()[I
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_15
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_26
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_26
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_26
return-void
.end method
.method public final declared-synchronized a(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
add-int/2addr v0, p1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(IZ)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1f
if-eqz v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:cond_7
if-gez p1, :cond_22
const/4 v0, 0x0
:goto_a
:try_start_a
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
if-le v0, v1, :cond_10
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
:cond_10
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
if-eq v0, v1, :cond_5
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
const v0, 0x102000d
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
invoke-direct {p0, v0, v1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZ)V
:try_end_1e
.catchall {:try_start_a .. :try_end_1e} :catchall_1f
goto :goto_5
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:cond_22
move v0, p1
goto :goto_a
.end method
.method public a(Landroid/content/Context;I)V
.registers 4
invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method public declared-synchronized a()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method  b()V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/Animatable;
if-eqz v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->y:Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
:goto_13
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
goto :goto_6
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->v:Landroid/view/animation/Interpolator;
if-nez v0, :cond_22
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->v:Landroid/view/animation/Interpolator;
:cond_22
new-instance v0, Landroid/view/animation/Transformation;
invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->p:Landroid/view/animation/Transformation;
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->l:I
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->m:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->v:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, -0x1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V
goto :goto_13
.end method
.method public final declared-synchronized b(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
add-int/2addr v0, p1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method  c()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->p:Landroid/view/animation/Transformation;
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
instance-of v0, v0, Landroid/graphics/drawable/Animatable;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/Animatable;
invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->y:Z
:cond_15
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
return-void
.end method
.method protected drawableStateChanged()V
.registers 1
invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->e()V
return-void
.end method
.method  getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
.registers 4
const/4 v2, 0x0
const/16 v0, 0x8
new-array v0, v0, [F
fill-array-data v0, :array_e
new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;
invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V
return-object v1
:array_e
.array-data 0x4
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getInterpolator()Landroid/view/animation/Interpolator;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->v:Landroid/view/animation/Interpolator;
return-object v0
.end method
.method public declared-synchronized getMax()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getProgress()I
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_b
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return v0
:try_start_8
:cond_8
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
:try_end_a
.catchall {:try_start_8 .. :try_end_a} :catchall_b
goto :goto_6
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public declared-synchronized getSecondaryProgress()I
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_b
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return v0
:try_start_8
:cond_8
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
:try_end_a
.catchall {:try_start_8 .. :try_end_a} :catchall_b
goto :goto_6
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->A:Z
if-nez v0, :cond_2f
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_30
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollX()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getScrollY()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v3
add-int/2addr v2, v3
iget v3, v0, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v1
iget v4, v0, Landroid/graphics/Rect;->top:I
add-int/2addr v4, v2
iget v5, v0, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v5
iget v0, v0, Landroid/graphics/Rect;->bottom:I
add-int/2addr v0, v2
invoke-virtual {p0, v3, v4, v1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->invalidate(IIII)V
:goto_2f
:cond_2f
return-void
:cond_30
invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_2f
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->b()V
:cond_a
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->c()V
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->w:Landroid/support/v7/internal/widget/ad;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_10
invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V
return-void
.end method
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
.registers 9
const-wide/16 v5, 0xc8
monitor-enter p0
:try_start_3
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_69
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v1
int-to-float v1, v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v2
int-to-float v2, v2
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getDrawingTime()J
move-result-wide v1
iget-object v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
if-eqz v3, :cond_53
iget-object v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->q:Landroid/view/animation/AlphaAnimation;
iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->p:Landroid/view/animation/Transformation;
invoke-virtual {v3, v1, v2, v4}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z
iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->p:Landroid/view/animation/Transformation;
invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F
:try_end_2e
.catchall {:try_start_3 .. :try_end_2e} :catchall_70
move-result v1
const/4 v2, 0x1
:try_start_30
iput-boolean v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->A:Z
const v2, 0x461c4000
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
:try_end_3a
.catchall {:try_start_30 .. :try_end_3a} :catchall_6b
const/4 v1, 0x0
:try_start_3b
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->A:Z
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iget-wide v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->z:J
sub-long/2addr v1, v3
cmp-long v1, v1, v5
if-ltz v1, :cond_53
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iput-wide v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->z:J
const-wide/16 v1, 0xc8
invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidateDelayed(J)V
:cond_53
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->y:Z
if-eqz v1, :cond_69
instance-of v1, v0, Landroid/graphics/drawable/Animatable;
if-eqz v1, :cond_69
check-cast v0, Landroid/graphics/drawable/Animatable;
invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->y:Z
:try_end_69
.catchall {:try_start_3b .. :try_end_69} :catchall_70
:cond_69
monitor-exit p0
return-void
:catchall_6b
move-exception v0
const/4 v1, 0x0
:try_start_6d
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->A:Z
throw v0
:catchall_70
:try_end_70
.catchall {:try_start_6d .. :try_end_70} :catchall_70
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized onMeasure(II)V
.registers 7
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_4d
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->a:I
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->b:I
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v1
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->c:I
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
:goto_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->e()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingRight()I
move-result v3
add-int/2addr v2, v3
add-int/2addr v1, v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingTop()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getPaddingBottom()I
move-result v3
add-int/2addr v2, v3
add-int/2addr v0, v2
invoke-static {v1, p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I
move-result v1
invoke-static {v0, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMeasuredDimension(II)V
:try_end_48
.catchall {:try_start_2 .. :try_end_48} :catchall_4a
monitor-exit p0
return-void
:catchall_4a
move-exception v0
monitor-exit p0
throw v0
:cond_4d
move v1, v0
goto :goto_26
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ProgressBarICS; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v0, p1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->a:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
iget v0, p1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->b:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->setSecondaryProgress(I)V
const-string v1, " - Landroid/support/v7/internal/widget/ProgressBarICS; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ProgressBarICS; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;
invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;-><init>(Landroid/os/Parcelable;)V
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
iput v0, v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->a:I
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
iput v0, v1, Landroid/support/v7/internal/widget/ProgressBarICS$SavedState;->b:I
move-object v2, v1
const-string v1, " - Landroid/support/v7/internal/widget/ProgressBarICS; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method protected onSizeChanged(IIII)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(II)V
return-void
.end method
.method protected onVisibilityChanged(Landroid/view/View;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz v0, :cond_11
const/16 v0, 0x8
if-eq p2, v0, :cond_e
const/4 v0, 0x4
if-ne p2, v0, :cond_12
:cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->c()V
:goto_11
:cond_11
return-void
:cond_12
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->b()V
goto :goto_11
.end method
.method public postInvalidate()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->u:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/view/View;->postInvalidate()V
:cond_7
return-void
.end method
.method public declared-synchronized setIndeterminate(Z)V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->o:Z
if-eqz v0, :cond_9
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-nez v0, :cond_18
:cond_9
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eq p1, v0, :cond_18
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz p1, :cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->b()V
:cond_18
:goto_18
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_22
monitor-exit p0
return-void
:try_start_1a
:cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->c()V
:try_end_21
.catchall {:try_start_1a .. :try_end_21} :catchall_22
goto :goto_18
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
if-eqz p1, :cond_5
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_5
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz v0, :cond_10
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
:cond_10
return-void
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->v:Landroid/view/animation/Interpolator;
return-void
.end method
.method public declared-synchronized setMax(I)V
.registers 5
const/4 v0, 0x0
monitor-enter p0
if-gez p1, :cond_5
move p1, v0
:try_start_5
:cond_5
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
if-eq p1, v0, :cond_1d
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
if-le v0, p1, :cond_14
iput p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
:cond_14
const v0, 0x102000d
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZ)V
:try_end_1d
.catchall {:try_start_5 .. :try_end_1d} :catchall_1f
:cond_1d
monitor-exit p0
return-void
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setProgress(I)V
.registers 3
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IZ)V
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_7
monitor-exit p0
return-void
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_4e
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
const/4 v0, 0x1
:goto_10
if-eqz p1, :cond_22
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
move-result v2
iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
if-ge v3, v2, :cond_22
iput v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->d:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->requestLayout()V
:cond_22
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-nez v2, :cond_2d
iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->t:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->postInvalidate()V
:cond_2d
if-eqz v0, :cond_4d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getHeight()I
move-result v2
invoke-direct {p0, v0, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(II)V
invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->e()V
const v0, 0x102000d
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->i:I
invoke-direct {p0, v0, v2, v1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZZ)V
const v0, 0x102000f
iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
invoke-direct {p0, v0, v2, v1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZZ)V
:cond_4d
return-void
:cond_4e
move v0, v1
goto :goto_10
.end method
.method public declared-synchronized setSecondaryProgress(I)V
.registers 5
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_20
if-eqz v1, :cond_8
:goto_6
:cond_6
monitor-exit p0
return-void
:cond_8
if-gez p1, :cond_23
:try_start_a
:goto_a
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
if-le v0, v1, :cond_10
iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->k:I
:cond_10
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
if-eq v0, v1, :cond_6
iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
const v0, 0x102000f
iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->j:I
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(IIZ)V
:try_end_1f
.catchall {:try_start_a .. :try_end_1f} :catchall_20
goto :goto_6
:catchall_20
move-exception v0
monitor-exit p0
throw v0
:cond_23
move v0, p1
goto :goto_a
.end method
.method public setVisibility(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-eq v0, p1, :cond_17
invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->n:Z
if-eqz v0, :cond_17
const/16 v0, 0x8
if-eq p1, v0, :cond_14
const/4 v0, 0x4
if-ne p1, v0, :cond_18
:cond_14
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->c()V
:cond_17
:goto_17
return-void
:cond_18
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->b()V
goto :goto_17
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->s:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarICS;->r:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_e
invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method