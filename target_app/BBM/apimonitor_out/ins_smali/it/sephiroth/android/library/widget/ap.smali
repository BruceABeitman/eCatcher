.class final Lit/sephiroth/android/library/widget/ap;
.super Ljava/lang/Object;
.source "OverScroller.java"
.field private static p:F
.field private static final q:[F
.field private static final r:[F
.field  a:F
.field  b:J
.field  c:I
.field  d:F
.field  e:I
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:F
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.field private o:F
.method static constructor <clinit>()V
.registers 15
const v14, 0x3e333333
const/4 v4, 0x0
const-wide v12, 0x3ee4f8b588e368f1L
const/16 v11, 0x64
const/high16 v1, 0x3f80
const-wide v2, 0x3fe8f5c28f5c28f6L
invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D
move-result-wide v2
const-wide v5, 0x3feccccccccccccdL
invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D
move-result-wide v5
div-double/2addr v2, v5
double-to-float v0, v2
sput v0, Lit/sephiroth/android/library/widget/ap;->p:F
const/16 v0, 0x65
new-array v0, v0, [F
sput-object v0, Lit/sephiroth/android/library/widget/ap;->q:[F
const/16 v0, 0x65
new-array v0, v0, [F
sput-object v0, Lit/sephiroth/android/library/widget/ap;->r:[F
const/4 v0, 0x0
move v5, v0
move v2, v4
:goto_32
if-ge v5, v11, :cond_b8
int-to-float v0, v5
const/high16 v3, 0x42c8
div-float v6, v0, v3
move v0, v1
move v3, v2
:goto_3b
sub-float v2, v0, v3
const/high16 v7, 0x4000
div-float/2addr v2, v7
add-float/2addr v2, v3
const/high16 v7, 0x4040
mul-float/2addr v7, v2
sub-float v8, v1, v2
mul-float/2addr v7, v8
sub-float v8, v1, v2
mul-float/2addr v8, v14
const v9, 0x3eb33334
mul-float/2addr v9, v2
add-float/2addr v8, v9
mul-float/2addr v8, v7
mul-float v9, v2, v2
mul-float/2addr v9, v2
add-float/2addr v8, v9
sub-float v9, v8, v6
invoke-static {v9}, Ljava/lang/Math;->abs(F)F
move-result v9
float-to-double v9, v9
cmpg-double v9, v9, v12
if-ltz v9, :cond_67
cmpl-float v7, v8, v6
if-lez v7, :cond_65
move v0, v2
goto :goto_3b
:cond_65
move v3, v2
goto :goto_3b
:cond_67
sget-object v0, Lit/sephiroth/android/library/widget/ap;->q:[F
sub-float v8, v1, v2
const/high16 v9, 0x3f00
mul-float/2addr v8, v9
add-float/2addr v8, v2
mul-float/2addr v7, v8
mul-float v8, v2, v2
mul-float/2addr v2, v8
add-float/2addr v2, v7
aput v2, v0, v5
move v0, v1
:goto_77
sub-float v2, v0, v4
const/high16 v7, 0x4000
div-float/2addr v2, v7
add-float/2addr v2, v4
const/high16 v7, 0x4040
mul-float/2addr v7, v2
sub-float v8, v1, v2
mul-float/2addr v7, v8
sub-float v8, v1, v2
const/high16 v9, 0x3f00
mul-float/2addr v8, v9
add-float/2addr v8, v2
mul-float/2addr v8, v7
mul-float v9, v2, v2
mul-float/2addr v9, v2
add-float/2addr v8, v9
sub-float v9, v8, v6
invoke-static {v9}, Ljava/lang/Math;->abs(F)F
move-result v9
float-to-double v9, v9
cmpg-double v9, v9, v12
if-ltz v9, :cond_a1
cmpl-float v7, v8, v6
if-lez v7, :cond_9f
move v0, v2
goto :goto_77
:cond_9f
move v4, v2
goto :goto_77
:cond_a1
sget-object v0, Lit/sephiroth/android/library/widget/ap;->r:[F
sub-float v6, v1, v2
mul-float/2addr v6, v14
const v8, 0x3eb33334
mul-float/2addr v8, v2
add-float/2addr v6, v8
mul-float/2addr v6, v7
mul-float v7, v2, v2
mul-float/2addr v2, v7
add-float/2addr v2, v6
aput v2, v0, v5
add-int/lit8 v0, v5, 0x1
move v5, v0
move v2, v3
goto/16 :goto_32
:cond_b8
sget-object v0, Lit/sephiroth/android/library/widget/ap;->q:[F
sget-object v2, Lit/sephiroth/android/library/widget/ap;->r:[F
aput v1, v2, v11
aput v1, v0, v11
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->d:F
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->e:I
const/4 v0, 0x1
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4320
mul-float/2addr v0, v1
const v1, 0x43c10b3d
mul-float/2addr v0, v1
const v1, 0x3f570a3d
mul-float/2addr v0, v1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->o:F
return-void
.end method
.method private a(II)V
.registers 10
const/4 v0, 0x0
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
const/4 v0, 0x1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->e:I
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iput p2, p0, Lit/sephiroth/android/library/widget/ap;->h:I
sub-int v0, p1, p2
invoke-static {v0}, Lit/sephiroth/android/library/widget/ap;->b(I)F
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->j:F
neg-int v1, v0
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->c:I
const-wide v1, 0x408f400000000000L
const-wide/high16 v3, -0x4000
int-to-double v5, v0
mul-double/2addr v3, v5
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
float-to-double v5, v0
div-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v3
mul-double v0, v1, v3
double-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
return-void
.end method
.method static synthetic a(Lit/sephiroth/android/library/widget/ap;)Z
.registers 2
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
return v0
.end method
.method private static b(I)F
.registers 2
if-lez p0, :cond_5
const/high16 v0, -0x3b06
:goto_4
return v0
:cond_5
const/high16 v0, 0x44fa
goto :goto_4
.end method
.method static synthetic b(Lit/sephiroth/android/library/widget/ap;)I
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->g:I
return v0
.end method
.method private b(III)V
.registers 10
const/high16 v4, 0x42c8
sub-int v0, p2, p1
sub-int v1, p3, p1
int-to-float v1, v1
int-to-float v0, v0
div-float v0, v1, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
mul-float v1, v4, v0
float-to-int v1, v1
const/16 v2, 0x64
if-ge v1, v2, :cond_33
int-to-float v2, v1
div-float/2addr v2, v4
add-int/lit8 v3, v1, 0x1
int-to-float v3, v3
div-float/2addr v3, v4
sget-object v4, Lit/sephiroth/android/library/widget/ap;->r:[F
aget v4, v4, v1
sget-object v5, Lit/sephiroth/android/library/widget/ap;->r:[F
add-int/lit8 v1, v1, 0x1
aget v1, v5, v1
sub-float/2addr v0, v2
sub-float v2, v3, v2
div-float/2addr v0, v2
sub-float/2addr v1, v4
mul-float/2addr v0, v1
add-float/2addr v0, v4
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->k:I
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
:cond_33
return-void
.end method
.method private c(I)D
.registers 5
const v0, 0x3eb33333
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-float v1, v1
mul-float/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->d:F
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->o:F
mul-float/2addr v1, v2
div-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D
move-result-wide v0
return-wide v0
.end method
.method static synthetic c(Lit/sephiroth/android/library/widget/ap;)F
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->a:F
return v0
.end method
.method private d(I)D
.registers 10
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ap;->c(I)D
move-result-wide v0
sget v2, Lit/sephiroth/android/library/widget/ap;->p:F
float-to-double v2, v2
const-wide/high16 v4, 0x3ff0
sub-double/2addr v2, v4
iget v4, p0, Lit/sephiroth/android/library/widget/ap;->d:F
iget v5, p0, Lit/sephiroth/android/library/widget/ap;->o:F
mul-float/2addr v4, v5
float-to-double v4, v4
sget v6, Lit/sephiroth/android/library/widget/ap;->p:F
float-to-double v6, v6
div-double v2, v6, v2
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D
move-result-wide v0
mul-double/2addr v0, v4
return-wide v0
.end method
.method static synthetic d(Lit/sephiroth/android/library/widget/ap;)I
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->f:I
return v0
.end method
.method private d()V
.registers 5
const/high16 v3, 0x4000
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->i:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
mul-int/2addr v0, v1
int-to-float v0, v0
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->j:F
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
mul-float/2addr v1, v3
div-float/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
invoke-static {v1}, Ljava/lang/Math;->signum(F)F
move-result v1
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->c:I
int-to-float v2, v2
cmpl-float v2, v0, v2
if-lez v2, :cond_31
neg-float v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
mul-float/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
mul-float/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->c:I
int-to-float v1, v1
mul-float/2addr v1, v3
div-float/2addr v0, v1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->c:I
int-to-float v0, v0
:cond_31
float-to-int v1, v0
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->c:I
const/4 v1, 0x2
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->e:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->i:I
if-lez v2, :cond_4f
:goto_3d
float-to-int v0, v0
add-int/2addr v0, v1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
const/high16 v0, 0x447a
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
mul-float/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->j:F
div-float/2addr v0, v1
float-to-int v0, v0
neg-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
return-void
:cond_4f
neg-float v0, v0
goto :goto_3d
.end method
.method static synthetic e(Lit/sephiroth/android/library/widget/ap;)I
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
return v0
.end method
.method static synthetic f(Lit/sephiroth/android/library/widget/ap;)I
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
return v0
.end method
.method static synthetic g(Lit/sephiroth/android/library/widget/ap;)J
.registers 3
iget-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
return-wide v0
.end method
.method final a()V
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->g:I
const/4 v0, 0x1
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
return-void
.end method
.method final a(F)V
.registers 5
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->f:I
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v1, p1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->g:I
return-void
.end method
.method final a(III)V
.registers 7
const/4 v2, 0x0
iput-boolean v2, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
add-int v0, p1, p2
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iput p3, p0, Lit/sephiroth/android/library/widget/ap;->k:I
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->i:I
return-void
.end method
.method final a(IIII)V
.registers 13
const/4 v1, 0x0
const/4 v0, 0x1
if-le p1, p2, :cond_10
if-ge p1, p3, :cond_10
const-string v1, "OverScroller"
const-string v2, "startAfterEdge called from a valid position"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
:goto_f
return-void
:cond_10
if-le p1, p3, :cond_6d
move v4, v0
:goto_13
if-eqz v4, :cond_6f
move v2, p3
:goto_16
sub-int v3, p1, v2
mul-int v5, v3, p4
if-ltz v5, :cond_71
:goto_1c
if-eqz v0, :cond_75
if-nez p4, :cond_73
sub-int v0, p1, v2
:goto_22
invoke-static {v0}, Lit/sephiroth/android/library/widget/ap;->b(I)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
neg-int v0, p4
int-to-float v0, v0
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->j:F
div-float/2addr v0, v1
mul-int v1, p4, p4
int-to-float v1, v1
const/high16 v3, 0x4000
div-float/2addr v1, v3
iget v3, p0, Lit/sephiroth/android/library/widget/ap;->j:F
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
div-float/2addr v1, v3
sub-int v3, v2, p1
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
int-to-float v3, v3
const-wide/high16 v4, 0x4000
add-float/2addr v1, v3
float-to-double v6, v1
mul-double v3, v4, v6
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->j:F
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
float-to-double v5, v1
div-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v3
double-to-float v1, v3
iget-wide v3, p0, Lit/sephiroth/android/library/widget/ap;->b:J
const/high16 v5, 0x447a
sub-float v0, v1, v0
mul-float/2addr v0, v5
float-to-int v0, v0
int-to-long v5, v0
sub-long/2addr v3, v5
iput-wide v3, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
neg-float v0, v0
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->i:I
invoke-direct {p0}, Lit/sephiroth/android/library/widget/ap;->d()V
goto :goto_f
:cond_6d
move v4, v1
goto :goto_13
:cond_6f
move v2, p2
goto :goto_16
:cond_71
move v0, v1
goto :goto_1c
:cond_73
move v0, p4
goto :goto_22
:cond_75
invoke-direct {p0, p4}, Lit/sephiroth/android/library/widget/ap;->d(I)D
move-result-wide v0
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
int-to-double v5, v3
cmpl-double v0, v0, v5
if-lez v0, :cond_96
if-eqz v4, :cond_92
move v3, p2
:goto_85
if-eqz v4, :cond_94
move v4, p1
:goto_88
iget v5, p0, Lit/sephiroth/android/library/widget/ap;->c:I
move-object v0, p0
move v1, p1
move v2, p4
invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ap;->a(IIIII)V
goto/16 :goto_f
:cond_92
move v3, p1
goto :goto_85
:cond_94
move v4, p3
goto :goto_88
:cond_96
invoke-direct {p0, p1, v2}, Lit/sephiroth/android/library/widget/ap;->a(II)V
goto/16 :goto_f
.end method
.method final a(IIIII)V
.registers 12
const/4 v2, 0x0
iput p5, p0, Lit/sephiroth/android/library/widget/ap;->c:I
iput-boolean v2, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
iput p2, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v0, p2
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->a:F
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->l:I
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->k:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->g:I
if-gt p1, p4, :cond_1c
if-ge p1, p3, :cond_20
:cond_1c
invoke-virtual {p0, p1, p3, p4, p2}, Lit/sephiroth/android/library/widget/ap;->a(IIII)V
:goto_1f
:cond_1f
return-void
:cond_20
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->e:I
const-wide/16 v0, 0x0
if-eqz p2, :cond_44
invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ap;->c(I)D
move-result-wide v0
sget v2, Lit/sephiroth/android/library/widget/ap;->p:F
float-to-double v2, v2
const-wide/high16 v4, 0x3ff0
sub-double/2addr v2, v4
const-wide v4, 0x408f400000000000L
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D
move-result-wide v0
mul-double/2addr v0, v4
double-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->l:I
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ap;->d(I)D
move-result-wide v0
:cond_44
int-to-float v2, p2
invoke-static {v2}, Ljava/lang/Math;->signum(F)F
move-result v2
float-to-double v2, v2
mul-double/2addr v0, v2
double-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->m:I
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->m:I
add-int/2addr v0, p1
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
if-ge v0, p3, :cond_60
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->h:I
invoke-direct {p0, v0, v1, p3}, Lit/sephiroth/android/library/widget/ap;->b(III)V
iput p3, p0, Lit/sephiroth/android/library/widget/ap;->h:I
:cond_60
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
if-le v0, p4, :cond_1f
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->h:I
invoke-direct {p0, v0, v1, p4}, Lit/sephiroth/android/library/widget/ap;->b(III)V
iput p4, p0, Lit/sephiroth/android/library/widget/ap;->h:I
goto :goto_1f
.end method
.method final a(I)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iput p1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->k:I
if-gez p1, :cond_1c
invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/ap;->a(II)V
:cond_17
:goto_17
iget-boolean v2, p0, Lit/sephiroth/android/library/widget/ap;->n:Z
if-nez v2, :cond_22
:goto_1b
return v0
:cond_1c
if-lez p1, :cond_17
invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/ap;->a(II)V
goto :goto_17
:cond_22
move v0, v1
goto :goto_1b
.end method
.method final b()Z
.registers 5
const/4 v0, 0x0
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->e:I
packed-switch v1, :pswitch_data_3e
:goto_6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ap;->c()Z
const/4 v0, 0x1
:cond_a
:pswitch_a
return v0
:pswitch_b
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->k:I
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->l:I
if-ge v1, v2, :cond_a
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->f:I
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->a:F
float-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->i:I
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->i:I
invoke-static {v0}, Lit/sephiroth/android/library/widget/ap;->b(I)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->j:F
iget-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->k:I
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
invoke-direct {p0}, Lit/sephiroth/android/library/widget/ap;->d()V
goto :goto_6
:pswitch_2e
iget-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->k:I
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lit/sephiroth/android/library/widget/ap;->b:J
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->h:I
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->f:I
invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/ap;->a(II)V
goto :goto_6
:pswitch_data_3e
.packed-switch 0x0
:pswitch_b
:pswitch_a
:pswitch_2e
.end packed-switch
.end method
.method final c()Z
.registers 9
const/high16 v7, 0x447a
const/high16 v6, 0x4000
const/high16 v5, 0x42c8
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lit/sephiroth/android/library/widget/ap;->b:J
sub-long v2, v0, v2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->k:I
int-to-long v0, v0
cmp-long v0, v2, v0
if-lez v0, :cond_17
const/4 v0, 0x0
:goto_16
return v0
:cond_17
const-wide/16 v0, 0x0
iget v4, p0, Lit/sephiroth/android/library/widget/ap;->e:I
packed-switch v4, :pswitch_data_a6
:goto_1e
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->f:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
add-int/2addr v0, v2
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->g:I
const/4 v0, 0x1
goto :goto_16
:pswitch_2a
long-to-float v0, v2
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->l:I
int-to-float v1, v1
div-float v2, v0, v1
mul-float v0, v5, v2
float-to-int v3, v0
const/high16 v1, 0x3f80
const/4 v0, 0x0
const/16 v4, 0x64
if-ge v3, v4, :cond_53
int-to-float v0, v3
div-float v1, v0, v5
add-int/lit8 v0, v3, 0x1
int-to-float v0, v0
div-float/2addr v0, v5
sget-object v4, Lit/sephiroth/android/library/widget/ap;->q:[F
aget v4, v4, v3
sget-object v5, Lit/sephiroth/android/library/widget/ap;->q:[F
add-int/lit8 v3, v3, 0x1
aget v3, v5, v3
sub-float/2addr v3, v4
sub-float/2addr v0, v1
div-float v0, v3, v0
sub-float v1, v2, v1
mul-float/2addr v1, v0
add-float/2addr v1, v4
:cond_53
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->m:I
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-double v1, v1
iget v3, p0, Lit/sephiroth/android/library/widget/ap;->m:I
int-to-float v3, v3
mul-float/2addr v0, v3
iget v3, p0, Lit/sephiroth/android/library/widget/ap;->l:I
int-to-float v3, v3
div-float/2addr v0, v3
mul-float/2addr v0, v7
iput v0, p0, Lit/sephiroth/android/library/widget/ap;->a:F
move-wide v0, v1
goto :goto_1e
:pswitch_65
long-to-float v0, v2
div-float/2addr v0, v7
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->j:F
mul-float/2addr v2, v0
add-float/2addr v1, v2
iput v1, p0, Lit/sephiroth/android/library/widget/ap;->a:F
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v1, v1
mul-float/2addr v1, v0
iget v2, p0, Lit/sephiroth/android/library/widget/ap;->j:F
mul-float/2addr v2, v0
mul-float/2addr v0, v2
div-float/2addr v0, v6
add-float/2addr v0, v1
float-to-double v0, v0
goto :goto_1e
:pswitch_7c
long-to-float v0, v2
iget v1, p0, Lit/sephiroth/android/library/widget/ap;->k:I
int-to-float v1, v1
div-float v2, v0, v1
mul-float v3, v2, v2
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->i:I
int-to-float v0, v0
invoke-static {v0}, Ljava/lang/Math;->signum(F)F
move-result v4
iget v0, p0, Lit/sephiroth/android/library/widget/ap;->c:I
int-to-float v0, v0
mul-float/2addr v0, v4
const/high16 v1, 0x4040
mul-float/2addr v1, v3
mul-float v5, v6, v2
mul-float/2addr v5, v3
sub-float/2addr v1, v5
mul-float/2addr v0, v1
float-to-double v0, v0
iget v5, p0, Lit/sephiroth/android/library/widget/ap;->c:I
int-to-float v5, v5
mul-float/2addr v4, v5
const/high16 v5, 0x40c0
mul-float/2addr v4, v5
neg-float v2, v2
add-float/2addr v2, v3
mul-float/2addr v2, v4
iput v2, p0, Lit/sephiroth/android/library/widget/ap;->a:F
goto/16 :goto_1e
:pswitch_data_a6
.packed-switch 0x0
:pswitch_2a
:pswitch_7c
:pswitch_65
.end packed-switch
.end method