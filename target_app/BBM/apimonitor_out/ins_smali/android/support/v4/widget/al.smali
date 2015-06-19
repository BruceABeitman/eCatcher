.class public final Landroid/support/v4/widget/al;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"
.field private static final v:Landroid/view/animation/Interpolator;
.field  a:I
.field  b:I
.field  c:[F
.field  d:[F
.field  e:[F
.field  f:[F
.field  g:I
.field  h:F
.field  i:I
.field  j:I
.field  k:Landroid/view/View;
.field private l:I
.field private m:[I
.field private n:[I
.field private o:[I
.field private p:Landroid/view/VelocityTracker;
.field private q:F
.field private r:Landroid/support/v4/widget/n;
.field private final s:Landroid/support/v4/widget/ao;
.field private t:Z
.field private final u:Landroid/view/ViewGroup;
.field private final w:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/widget/am;
invoke-direct {v0}, Landroid/support/v4/widget/am;-><init>()V
sput-object v0, Landroid/support/v4/widget/al;->v:Landroid/view/animation/Interpolator;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ao;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/al;->l:I
new-instance v0, Landroid/support/v4/widget/an;
invoke-direct {v0, p0}, Landroid/support/v4/widget/an;-><init>(Landroid/support/v4/widget/al;)V
iput-object v0, p0, Landroid/support/v4/widget/al;->w:Ljava/lang/Runnable;
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parent view may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
if-nez p3, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Callback may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iput-object p2, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
iput-object p3, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
const/high16 v2, 0x41a0
mul-float/2addr v1, v2
const/high16 v2, 0x3f00
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/widget/al;->i:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v1
iput v1, p0, Landroid/support/v4/widget/al;->b:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v1
int-to-float v1, v1
iput v1, p0, Landroid/support/v4/widget/al;->q:F
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v0
int-to-float v0, v0
iput v0, p0, Landroid/support/v4/widget/al;->h:F
sget-object v0, Landroid/support/v4/widget/al;->v:Landroid/view/animation/Interpolator;
invoke-static {p1, v0}, Landroid/support/v4/widget/n;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/n;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
return-void
.end method
.method private static a(FFF)F
.registers 6
const/4 v0, 0x0
invoke-static {p0}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpg-float v2, v1, p1
if-gez v2, :cond_b
move p2, v0
:cond_a
:goto_a
return p2
:cond_b
cmpl-float v1, v1, p2
if-lez v1, :cond_15
cmpl-float v0, p0, v0
if-gtz v0, :cond_a
neg-float p2, p2
goto :goto_a
:cond_15
move p2, p0
goto :goto_a
.end method
.method private a(III)I
.registers 12
const/high16 v7, 0x3f80
if-nez p1, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I
move-result v0
div-int/lit8 v1, v0, 0x2
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v2
int-to-float v2, v2
int-to-float v0, v0
div-float v0, v2, v0
invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F
move-result v0
int-to-float v2, v1
int-to-float v1, v1
const/high16 v3, 0x3f00
sub-float/2addr v0, v3
float-to-double v3, v0
const-wide v5, 0x3fde28c7460698c7L
mul-double/2addr v3, v5
double-to-float v0, v3
float-to-double v3, v0
invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D
move-result-wide v3
double-to-float v0, v3
mul-float/2addr v0, v1
add-float/2addr v0, v2
invoke-static {p2}, Ljava/lang/Math;->abs(I)I
move-result v1
if-lez v1, :cond_4b
const/high16 v2, 0x447a
int-to-float v1, v1
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
mul-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
mul-int/lit8 v0, v0, 0x4
:goto_44
const/16 v1, 0x258
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_5
:cond_4b
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v0
int-to-float v0, v0
int-to-float v1, p3
div-float/2addr v0, v1
add-float/2addr v0, v7
const/high16 v1, 0x4380
mul-float/2addr v0, v1
float-to-int v0, v0
goto :goto_44
.end method
.method public static a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ao;)Landroid/support/v4/widget/al;
.registers 6
new-instance v0, Landroid/support/v4/widget/al;
invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0, p2}, Landroid/support/v4/widget/al;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ao;)V
iget v1, v0, Landroid/support/v4/widget/al;->b:I
int-to-float v1, v1
const/high16 v2, 0x3f80
div-float/2addr v2, p1
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/support/v4/widget/al;->b:I
return-object v0
.end method
.method private a(F)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iput-boolean v3, p0, Landroid/support/v4/widget/al;->t:Z
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;F)V
iput-boolean v2, p0, Landroid/support/v4/widget/al;->t:Z
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-ne v0, v3, :cond_14
invoke-virtual {p0, v2}, Landroid/support/v4/widget/al;->a(I)V
:cond_14
return-void
.end method
.method private a(FFI)V
.registers 15
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v4/widget/al;->c:[F
if-eqz v2, :cond_b
iget-object v2, p0, Landroid/support/v4/widget/al;->c:[F
array-length v2, v2
if-gt v2, p3, :cond_71
:cond_b
add-int/lit8 v2, p3, 0x1
new-array v2, v2, [F
add-int/lit8 v3, p3, 0x1
new-array v3, v3, [F
add-int/lit8 v4, p3, 0x1
new-array v4, v4, [F
add-int/lit8 v5, p3, 0x1
new-array v5, v5, [F
add-int/lit8 v6, p3, 0x1
new-array v6, v6, [I
add-int/lit8 v7, p3, 0x1
new-array v7, v7, [I
add-int/lit8 v8, p3, 0x1
new-array v8, v8, [I
iget-object v9, p0, Landroid/support/v4/widget/al;->c:[F
if-eqz v9, :cond_63
iget-object v9, p0, Landroid/support/v4/widget/al;->c:[F
iget-object v10, p0, Landroid/support/v4/widget/al;->c:[F
array-length v10, v10
invoke-static {v9, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->d:[F
iget-object v10, p0, Landroid/support/v4/widget/al;->d:[F
array-length v10, v10
invoke-static {v9, v0, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->e:[F
iget-object v10, p0, Landroid/support/v4/widget/al;->e:[F
array-length v10, v10
invoke-static {v9, v0, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->f:[F
iget-object v10, p0, Landroid/support/v4/widget/al;->f:[F
array-length v10, v10
invoke-static {v9, v0, v5, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->m:[I
iget-object v10, p0, Landroid/support/v4/widget/al;->m:[I
array-length v10, v10
invoke-static {v9, v0, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->n:[I
iget-object v10, p0, Landroid/support/v4/widget/al;->n:[I
array-length v10, v10
invoke-static {v9, v0, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Landroid/support/v4/widget/al;->o:[I
iget-object v10, p0, Landroid/support/v4/widget/al;->o:[I
array-length v10, v10
invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_63
iput-object v2, p0, Landroid/support/v4/widget/al;->c:[F
iput-object v3, p0, Landroid/support/v4/widget/al;->d:[F
iput-object v4, p0, Landroid/support/v4/widget/al;->e:[F
iput-object v5, p0, Landroid/support/v4/widget/al;->f:[F
iput-object v6, p0, Landroid/support/v4/widget/al;->m:[I
iput-object v7, p0, Landroid/support/v4/widget/al;->n:[I
iput-object v8, p0, Landroid/support/v4/widget/al;->o:[I
:cond_71
iget-object v2, p0, Landroid/support/v4/widget/al;->c:[F
iget-object v3, p0, Landroid/support/v4/widget/al;->e:[F
aput p1, v3, p3
aput p1, v2, p3
iget-object v2, p0, Landroid/support/v4/widget/al;->d:[F
iget-object v3, p0, Landroid/support/v4/widget/al;->f:[F
aput p2, v3, p3
aput p2, v2, p3
iget-object v2, p0, Landroid/support/v4/widget/al;->m:[I
float-to-int v3, p1
float-to-int v4, p2
iget-object v5, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I
move-result v5
iget v6, p0, Landroid/support/v4/widget/al;->i:I
add-int/2addr v5, v6
if-ge v3, v5, :cond_91
move v0, v1
:cond_91
iget-object v5, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I
move-result v5
iget v6, p0, Landroid/support/v4/widget/al;->i:I
add-int/2addr v5, v6
if-ge v4, v5, :cond_9e
or-int/lit8 v0, v0, 0x4
:cond_9e
iget-object v5, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I
move-result v5
iget v6, p0, Landroid/support/v4/widget/al;->i:I
sub-int/2addr v5, v6
if-le v3, v5, :cond_ab
or-int/lit8 v0, v0, 0x2
:cond_ab
iget-object v3, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I
move-result v3
iget v5, p0, Landroid/support/v4/widget/al;->i:I
sub-int/2addr v3, v5
if-le v4, v3, :cond_b8
or-int/lit8 v0, v0, 0x8
:cond_b8
aput v0, v2, p3
iget v0, p0, Landroid/support/v4/widget/al;->g:I
shl-int/2addr v1, p3
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/al;->g:I
return-void
.end method
.method private a(FFII)Z
.registers 9
const/4 v0, 0x0
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v1
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v2
iget-object v3, p0, Landroid/support/v4/widget/al;->m:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-ne v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/al;->j:I
and-int/2addr v3, p4
if-eqz v3, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/al;->o:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/al;->n:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/al;->b:I
int-to-float v3, v3
cmpg-float v3, v1, v3
if-gtz v3, :cond_32
iget v3, p0, Landroid/support/v4/widget/al;->b:I
int-to-float v3, v3
cmpg-float v3, v2, v3
if-gtz v3, :cond_32
:goto_31
:cond_31
return v0
:cond_32
const/high16 v3, 0x3f00
mul-float/2addr v2, v3
cmpg-float v2, v1, v2
if-gez v2, :cond_3b
iget-object v2, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
:cond_3b
iget-object v2, p0, Landroid/support/v4/widget/al;->n:[I
aget v2, v2, p3
and-int/2addr v2, p4
if-nez v2, :cond_31
iget v2, p0, Landroid/support/v4/widget/al;->b:I
int-to-float v2, v2
cmpl-float v1, v1, v2
if-lez v1, :cond_31
const/4 v0, 0x1
goto :goto_31
.end method
.method private a(IIII)Z
.registers 19
iget-object v1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v3
iget-object v1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v4
sub-int v5, p1, v3
sub-int v6, p2, v4
if-nez v5, :cond_1f
if-nez v6, :cond_1f
iget-object v1, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/support/v4/widget/al;->a(I)V
const/4 v1, 0x0
:goto_1e
return v1
:cond_1f
iget-object v7, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
iget v1, p0, Landroid/support/v4/widget/al;->h:F
float-to-int v1, v1
iget v2, p0, Landroid/support/v4/widget/al;->q:F
float-to-int v2, v2
move/from16 v0, p3
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/al;->b(III)I
move-result v8
iget v1, p0, Landroid/support/v4/widget/al;->h:F
float-to-int v1, v1
iget v2, p0, Landroid/support/v4/widget/al;->q:F
float-to-int v2, v2
move/from16 v0, p4
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/al;->b(III)I
move-result v9
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v1
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v10
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v11
add-int v12, v2, v11
add-int v13, v1, v10
if-eqz v8, :cond_7e
int-to-float v1, v2
int-to-float v2, v12
div-float/2addr v1, v2
move v2, v1
:goto_53
if-eqz v9, :cond_83
int-to-float v1, v11
int-to-float v10, v12
div-float/2addr v1, v10
:goto_58
iget-object v10, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v10, v7}, Landroid/support/v4/widget/ao;->c(Landroid/view/View;)I
move-result v7
invoke-direct {p0, v5, v8, v7}, Landroid/support/v4/widget/al;->a(III)I
move-result v7
iget-object v8, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
const/4 v8, 0x0
invoke-direct {p0, v6, v9, v8}, Landroid/support/v4/widget/al;->a(III)I
move-result v8
int-to-float v7, v7
mul-float/2addr v2, v7
int-to-float v7, v8
mul-float/2addr v1, v7
add-float/2addr v1, v2
float-to-int v7, v1
iget-object v2, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
sget-object v1, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;
iget-object v2, v2, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;
invoke-interface/range {v1 .. v7}, Landroid/support/v4/widget/o;->a(Ljava/lang/Object;IIIII)V
const/4 v1, 0x2
invoke-virtual {p0, v1}, Landroid/support/v4/widget/al;->a(I)V
const/4 v1, 0x1
goto :goto_1e
:cond_7e
int-to-float v1, v1
int-to-float v2, v13
div-float/2addr v1, v2
move v2, v1
goto :goto_53
:cond_83
int-to-float v1, v10
int-to-float v10, v13
div-float/2addr v1, v10
goto :goto_58
.end method
.method private a(Landroid/view/View;F)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v2
:cond_5
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/ao;->c(Landroid/view/View;)I
move-result v0
if-lez v0, :cond_1f
move v0, v1
:goto_e
iget-object v3, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
if-eqz v0, :cond_4
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v3, p0, Landroid/support/v4/widget/al;->b:I
int-to-float v3, v3
cmpl-float v0, v0, v3
if-lez v0, :cond_4
move v2, v1
goto :goto_4
:cond_1f
move v0, v2
goto :goto_e
.end method
.method private static b(III)I
.registers 4
invoke-static {p0}, Ljava/lang/Math;->abs(I)I
move-result v0
if-ge v0, p1, :cond_8
const/4 p2, 0x0
:cond_7
:goto_7
return p2
:cond_8
if-le v0, p2, :cond_e
if-gtz p0, :cond_7
neg-int p2, p2
goto :goto_7
:cond_e
move p2, p0
goto :goto_7
.end method
.method private b(FFI)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/al;->a(FFII)Z
move-result v2
if-eqz v2, :cond_33
:goto_8
const/4 v1, 0x4
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/al;->a(FFII)Z
move-result v1
if-eqz v1, :cond_11
or-int/lit8 v0, v0, 0x4
:cond_11
const/4 v1, 0x2
invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/al;->a(FFII)Z
move-result v1
if-eqz v1, :cond_1a
or-int/lit8 v0, v0, 0x2
:cond_1a
const/16 v1, 0x8
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/al;->a(FFII)Z
move-result v1
if-eqz v1, :cond_24
or-int/lit8 v0, v0, 0x8
:cond_24
if-eqz v0, :cond_32
iget-object v1, p0, Landroid/support/v4/widget/al;->n:[I
aget v2, v1, p3
or-int/2addr v2, v0
aput v2, v1, p3
iget-object v1, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ao;->a(II)V
:cond_32
return-void
:cond_33
move v0, v1
goto :goto_8
.end method
.method private b(I)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/al;->c:[F
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v4/widget/al;->c:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->d:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->e:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->f:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->m:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->n:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/al;->o:[I
aput v2, v0, p1
iget v0, p0, Landroid/support/v4/widget/al;->g:I
const/4 v1, 0x1
shl-int/2addr v1, p1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/al;->g:I
goto :goto_6
.end method
.method private b(Landroid/view/View;I)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
if-ne p1, v1, :cond_a
iget v1, p0, Landroid/support/v4/widget/al;->l:I
if-ne v1, p2, :cond_a
:goto_9
return v0
:cond_a
if-eqz p1, :cond_1a
iget-object v1, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v1, p1}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_1a
iput p2, p0, Landroid/support/v4/widget/al;->l:I
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/al;->a(Landroid/view/View;I)V
goto :goto_9
:cond_1a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b(Landroid/view/View;II)Z
.registers 5
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Landroid/view/View;->getLeft()I
move-result v1
if-lt p1, v1, :cond_3
invoke-virtual {p0}, Landroid/view/View;->getRight()I
move-result v1
if-ge p1, v1, :cond_3
invoke-virtual {p0}, Landroid/view/View;->getTop()I
move-result v1
if-lt p2, v1, :cond_3
invoke-virtual {p0}, Landroid/view/View;->getBottom()I
move-result v1
if-ge p2, v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method
.method private c(Landroid/view/MotionEvent;)V
.registers 8
invoke-static {p1}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;)I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_1e
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v3
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/al;->e:[F
aput v3, v5, v2
iget-object v3, p0, Landroid/support/v4/widget/al;->f:[F
aput v4, v3, v2
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1e
return-void
.end method
.method private d()V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
const/16 v1, 0x3e8
iget v2, p0, Landroid/support/v4/widget/al;->q:F
invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
iget v1, p0, Landroid/support/v4/widget/al;->l:I
invoke-static {v0, v1}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F
move-result v0
iget v1, p0, Landroid/support/v4/widget/al;->h:F
iget v2, p0, Landroid/support/v4/widget/al;->q:F
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/al;->a(FFF)F
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
iget v2, p0, Landroid/support/v4/widget/al;->l:I
invoke-static {v1, v2}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F
move-result v1
iget v2, p0, Landroid/support/v4/widget/al;->h:F
iget v3, p0, Landroid/support/v4/widget/al;->q:F
invoke-static {v1, v2, v3}, Landroid/support/v4/widget/al;->a(FFF)F
invoke-direct {p0, v0}, Landroid/support/v4/widget/al;->a(F)V
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/al;->l:I
iget-object v0, p0, Landroid/support/v4/widget/al;->c:[F
if-eqz v0, :cond_2e
iget-object v0, p0, Landroid/support/v4/widget/al;->c:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/al;->d:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/al;->e:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/al;->f:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/al;->m:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/al;->n:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/al;->o:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iput v2, p0, Landroid/support/v4/widget/al;->g:I
:cond_2e
iget-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
if-eqz v0, :cond_3a
iget-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
:cond_3a
return-void
.end method
.method final a(I)V
.registers 3
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-eq v0, p1, :cond_10
iput p1, p0, Landroid/support/v4/widget/al;->a:I
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/ao;->a(I)V
if-nez p1, :cond_10
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
:cond_10
return-void
.end method
.method public final a(Landroid/view/View;I)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
if-eq v0, v1, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iput-object p1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
iput p2, p0, Landroid/support/v4/widget/al;->l:I
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/ao;->b(Landroid/view/View;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/widget/al;->a(I)V
return-void
.end method
.method public final a(II)Z
.registers 6
iget-boolean v0, p0, Landroid/support/v4/widget/al;->t:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
iget v1, p0, Landroid/support/v4/widget/al;->l:I
invoke-static {v0, v1}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F
move-result v0
float-to-int v0, v0
iget-object v1, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
iget v2, p0, Landroid/support/v4/widget/al;->l:I
invoke-static {v1, v2}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F
move-result v1
float-to-int v1, v1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/al;->a(IIII)Z
move-result v0
return v0
.end method
.method public final a(Landroid/view/MotionEvent;)Z
.registers 11
const/4 v6, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p1}, Landroid/support/v4/view/ab;->a(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;)I
move-result v3
if-nez v2, :cond_10
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
:cond_10
iget-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
if-nez v4, :cond_1a
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v4
iput-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
:cond_1a
iget-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v2, :pswitch_data_e2
:goto_22
:cond_22
:pswitch_22
iget v2, p0, Landroid/support/v4/widget/al;->a:I
if-ne v2, v0, :cond_de
:goto_26
return v0
:pswitch_27
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
invoke-static {p1, v1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v4
invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/al;->a(FFI)V
float-to-int v2, v2
float-to-int v3, v3
invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
if-ne v2, v3, :cond_47
iget v3, p0, Landroid/support/v4/widget/al;->a:I
if-ne v3, v6, :cond_47
invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
:cond_47
iget-object v2, p0, Landroid/support/v4/widget/al;->m:[I
aget v2, v2, v4
iget v3, p0, Landroid/support/v4/widget/al;->j:I
and-int/2addr v2, v3
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget v3, p0, Landroid/support/v4/widget/al;->j:I
invoke-virtual {v2}, Landroid/support/v4/widget/ao;->c()V
goto :goto_22
:pswitch_58
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v4
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v3
invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/al;->a(FFI)V
iget v5, p0, Landroid/support/v4/widget/al;->a:I
if-nez v5, :cond_7c
iget-object v3, p0, Landroid/support/v4/widget/al;->m:[I
aget v2, v3, v2
iget v3, p0, Landroid/support/v4/widget/al;->j:I
and-int/2addr v2, v3
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget v3, p0, Landroid/support/v4/widget/al;->j:I
invoke-virtual {v2}, Landroid/support/v4/widget/ao;->c()V
goto :goto_22
:cond_7c
iget v5, p0, Landroid/support/v4/widget/al;->a:I
if-ne v5, v6, :cond_22
float-to-int v4, v4
float-to-int v3, v3
invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
if-ne v3, v4, :cond_22
invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
goto :goto_22
:pswitch_8e
invoke-static {p1}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;)I
move-result v3
move v2, v1
:goto_93
if-ge v2, v3, :cond_cb
invoke-static {p1, v2}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v4
invoke-static {p1, v2}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v5
invoke-static {p1, v2}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v6
iget-object v7, p0, Landroid/support/v4/widget/al;->c:[F
aget v7, v7, v4
sub-float v7, v5, v7
iget-object v8, p0, Landroid/support/v4/widget/al;->d:[F
aget v8, v8, v4
sub-float v8, v6, v8
invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/al;->b(FFI)V
iget v8, p0, Landroid/support/v4/widget/al;->a:I
if-eq v8, v0, :cond_cb
float-to-int v5, v5
float-to-int v6, v6
invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v5
if-eqz v5, :cond_c8
invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/al;->a(Landroid/view/View;F)Z
move-result v6
if-eqz v6, :cond_c8
invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
move-result v4
if-nez v4, :cond_cb
:cond_c8
add-int/lit8 v2, v2, 0x1
goto :goto_93
:cond_cb
invoke-direct {p0, p1}, Landroid/support/v4/widget/al;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:pswitch_d0
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-direct {p0, v2}, Landroid/support/v4/widget/al;->b(I)V
goto/16 :goto_22
:pswitch_d9
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
goto/16 :goto_22
:cond_de
move v0, v1
goto/16 :goto_26
nop
:pswitch_data_e2
.packed-switch 0x0
:pswitch_27
:pswitch_d9
:pswitch_8e
:pswitch_d9
:pswitch_22
:pswitch_58
:pswitch_d0
.end packed-switch
.end method
.method public final a(Landroid/view/View;II)Z
.registers 6
const/4 v1, 0x0
iput-object p1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/al;->l:I
invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/al;->a(IIII)Z
move-result v0
return v0
.end method
.method public final b(II)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_30
iget-object v0, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
iget-object v2, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
if-lt p1, v2, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
if-ge p1, v2, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v2
if-lt p2, v2, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v2
if-ge p2, v2, :cond_2c
:goto_2b
return-object v0
:cond_2c
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_30
const/4 v0, 0x0
goto :goto_2b
.end method
.method public final b()V
.registers 4
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
iget v0, p0, Landroid/support/v4/widget/al;->a:I
const/4 v1, 0x2
if-ne v0, v1, :cond_29
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v0}, Landroid/support/v4/widget/n;->a()I
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v0}, Landroid/support/v4/widget/n;->b()I
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v0}, Landroid/support/v4/widget/n;->c()V
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v0}, Landroid/support/v4/widget/n;->a()I
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v1}, Landroid/support/v4/widget/n;->b()I
iget-object v1, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v2, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;I)V
:cond_29
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/al;->a(I)V
return-void
.end method
.method public final b(Landroid/view/MotionEvent;)V
.registers 10
const/4 v1, -0x1
const/4 v0, 0x0
const/4 v7, 0x1
invoke-static {p1}, Landroid/support/v4/view/ab;->a(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;)I
move-result v3
if-nez v2, :cond_10
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
:cond_10
iget-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
if-nez v4, :cond_1a
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v4
iput-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
:cond_1a
iget-object v4, p0, Landroid/support/v4/widget/al;->p:Landroid/view/VelocityTracker;
invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v2, :pswitch_data_192
:pswitch_22
:cond_22
:goto_22
return-void
:pswitch_23
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v0
float-to-int v3, v1
float-to-int v4, v2
invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v3
invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/al;->a(FFI)V
invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
iget-object v1, p0, Landroid/support/v4/widget/al;->m:[I
aget v0, v1, v0
iget v1, p0, Landroid/support/v4/widget/al;->j:I
and-int/2addr v0, v1
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget v1, p0, Landroid/support/v4/widget/al;->j:I
invoke-virtual {v0}, Landroid/support/v4/widget/ao;->c()V
goto :goto_22
:pswitch_4c
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v1
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v2
invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/al;->a(FFI)V
iget v3, p0, Landroid/support/v4/widget/al;->a:I
if-nez v3, :cond_79
float-to-int v1, v1
float-to-int v2, v2
invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v1
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
iget-object v1, p0, Landroid/support/v4/widget/al;->m:[I
aget v0, v1, v0
iget v1, p0, Landroid/support/v4/widget/al;->j:I
and-int/2addr v0, v1
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget v1, p0, Landroid/support/v4/widget/al;->j:I
invoke-virtual {v0}, Landroid/support/v4/widget/ao;->c()V
goto :goto_22
:cond_79
float-to-int v1, v1
float-to-int v2, v2
iget-object v3, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-static {v3, v1, v2}, Landroid/support/v4/widget/al;->b(Landroid/view/View;II)Z
move-result v1
if-eqz v1, :cond_22
iget-object v1, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
goto :goto_22
:pswitch_89
iget v1, p0, Landroid/support/v4/widget/al;->a:I
if-ne v1, v7, :cond_f4
iget v0, p0, Landroid/support/v4/widget/al;->l:I
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v1
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v0
iget-object v2, p0, Landroid/support/v4/widget/al;->e:[F
iget v3, p0, Landroid/support/v4/widget/al;->l:I
aget v2, v2, v3
sub-float/2addr v1, v2
float-to-int v1, v1
iget-object v2, p0, Landroid/support/v4/widget/al;->f:[F
iget v3, p0, Landroid/support/v4/widget/al;->l:I
aget v2, v2, v3
sub-float/2addr v0, v2
float-to-int v2, v0
iget-object v0, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
add-int/2addr v0, v1
iget-object v3, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
iget-object v3, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget-object v4, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
if-eqz v1, :cond_d4
iget-object v5, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v6, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v5, v6, v0}, Landroid/support/v4/widget/ao;->b(Landroid/view/View;I)I
move-result v0
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
sub-int v3, v0, v3
invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_d4
if-eqz v2, :cond_e4
iget-object v3, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v3, v5}, Landroid/support/v4/widget/ao;->d(Landroid/view/View;)I
move-result v3
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
sub-int/2addr v3, v4
invoke-virtual {v5, v3}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_e4
if-nez v1, :cond_e8
if-eqz v2, :cond_ef
:cond_e8
iget-object v1, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v2, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;I)V
:cond_ef
invoke-direct {p0, p1}, Landroid/support/v4/widget/al;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:cond_f4
invoke-static {p1}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;)I
move-result v1
:goto_f8
if-ge v0, v1, :cond_12e
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v3
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/al;->c:[F
aget v5, v5, v2
sub-float v5, v3, v5
iget-object v6, p0, Landroid/support/v4/widget/al;->d:[F
aget v6, v6, v2
sub-float v6, v4, v6
invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/al;->b(FFI)V
iget v6, p0, Landroid/support/v4/widget/al;->a:I
if-eq v6, v7, :cond_12e
float-to-int v3, v3
float-to-int v4, v4
invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v3
invoke-direct {p0, v3, v5}, Landroid/support/v4/widget/al;->a(Landroid/view/View;F)Z
move-result v4
if-eqz v4, :cond_12b
invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
move-result v2
if-nez v2, :cond_12e
:cond_12b
add-int/lit8 v0, v0, 0x1
goto :goto_f8
:cond_12e
invoke-direct {p0, p1}, Landroid/support/v4/widget/al;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:pswitch_133
invoke-static {p1, v3}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v2
iget v3, p0, Landroid/support/v4/widget/al;->a:I
if-ne v3, v7, :cond_16e
iget v3, p0, Landroid/support/v4/widget/al;->l:I
if-ne v2, v3, :cond_16e
invoke-static {p1}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;)I
move-result v3
:goto_143
if-ge v0, v3, :cond_18f
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->b(Landroid/view/MotionEvent;I)I
move-result v4
iget v5, p0, Landroid/support/v4/widget/al;->l:I
if-eq v4, v5, :cond_173
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->c(Landroid/view/MotionEvent;I)F
move-result v5
invoke-static {p1, v0}, Landroid/support/v4/view/ab;->d(Landroid/view/MotionEvent;I)F
move-result v6
float-to-int v5, v5
float-to-int v6, v6
invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
if-ne v5, v6, :cond_173
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/al;->b(Landroid/view/View;I)Z
move-result v4
if-eqz v4, :cond_173
iget v0, p0, Landroid/support/v4/widget/al;->l:I
:goto_169
if-ne v0, v1, :cond_16e
invoke-direct {p0}, Landroid/support/v4/widget/al;->d()V
:cond_16e
invoke-direct {p0, v2}, Landroid/support/v4/widget/al;->b(I)V
goto/16 :goto_22
:cond_173
add-int/lit8 v0, v0, 0x1
goto :goto_143
:pswitch_176
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-ne v0, v7, :cond_17d
invoke-direct {p0}, Landroid/support/v4/widget/al;->d()V
:cond_17d
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
goto/16 :goto_22
:pswitch_182
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-ne v0, v7, :cond_18a
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/widget/al;->a(F)V
:cond_18a
invoke-virtual {p0}, Landroid/support/v4/widget/al;->a()V
goto/16 :goto_22
:cond_18f
move v0, v1
goto :goto_169
nop
:pswitch_data_192
.packed-switch 0x0
:pswitch_23
:pswitch_176
:pswitch_89
:pswitch_182
:pswitch_22
:pswitch_4c
:pswitch_133
.end packed-switch
.end method
.method public final c()Z
.registers 8
const/4 v6, 0x2
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-ne v0, v6, :cond_76
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
sget-object v1, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;
iget-object v0, v0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;
invoke-interface {v1, v0}, Landroid/support/v4/widget/o;->d(Ljava/lang/Object;)Z
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v1}, Landroid/support/v4/widget/n;->a()I
move-result v1
iget-object v2, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v2}, Landroid/support/v4/widget/n;->b()I
move-result v2
iget-object v3, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
sub-int v3, v1, v3
iget-object v4, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
sub-int v4, v2, v4
if-eqz v3, :cond_32
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_32
if-eqz v4, :cond_39
iget-object v5, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v5, v4}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_39
if-nez v3, :cond_3d
if-eqz v4, :cond_44
:cond_3d
iget-object v3, p0, Landroid/support/v4/widget/al;->s:Landroid/support/v4/widget/ao;
iget-object v4, p0, Landroid/support/v4/widget/al;->k:Landroid/view/View;
invoke-virtual {v3, v4, v1}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;I)V
:cond_44
if-eqz v0, :cond_6d
iget-object v3, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
sget-object v4, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;
iget-object v3, v3, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;
invoke-interface {v4, v3}, Landroid/support/v4/widget/o;->f(Ljava/lang/Object;)I
move-result v3
if-ne v1, v3, :cond_6d
iget-object v1, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
sget-object v3, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;
iget-object v1, v1, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;
invoke-interface {v3, v1}, Landroid/support/v4/widget/o;->g(Ljava/lang/Object;)I
move-result v1
if-ne v2, v1, :cond_6d
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
invoke-virtual {v0}, Landroid/support/v4/widget/n;->c()V
iget-object v0, p0, Landroid/support/v4/widget/al;->r:Landroid/support/v4/widget/n;
sget-object v1, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/o;
iget-object v0, v0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;
invoke-interface {v1, v0}, Landroid/support/v4/widget/o;->a(Ljava/lang/Object;)Z
move-result v0
:cond_6d
if-nez v0, :cond_76
iget-object v0, p0, Landroid/support/v4/widget/al;->u:Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v4/widget/al;->w:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
:cond_76
iget v0, p0, Landroid/support/v4/widget/al;->a:I
if-ne v0, v6, :cond_7c
const/4 v0, 0x1
:goto_7b
return v0
:cond_7c
const/4 v0, 0x0
goto :goto_7b
.end method