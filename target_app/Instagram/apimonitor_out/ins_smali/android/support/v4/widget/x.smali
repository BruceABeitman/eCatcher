.class public final Landroid/support/v4/widget/x;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"
.field private static final v:Landroid/view/animation/Interpolator;
.field private a:I
.field private b:I
.field private c:I
.field private d:[F
.field private e:[F
.field private f:[F
.field private g:[F
.field private h:[I
.field private i:[I
.field private j:[I
.field private k:I
.field private l:Landroid/view/VelocityTracker;
.field private m:F
.field private n:F
.field private o:I
.field private p:I
.field private q:Landroid/support/v4/widget/j;
.field private final r:Landroid/support/v4/widget/z;
.field private s:Landroid/view/View;
.field private t:Z
.field private final u:Landroid/view/ViewGroup;
.field private final w:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/widget/y;
invoke-direct {v0}, Landroid/support/v4/widget/y;-><init>()V
sput-object v0, Landroid/support/v4/widget/x;->v:Landroid/view/animation/Interpolator;
return-void
.end method
.method private static a(F)F
.registers 5
const/high16 v0, 0x3f00
sub-float v0, p0, v0
float-to-double v0, v0
const-wide v2, 0x3fde28c7460698c7L
mul-double/2addr v0, v2
double-to-float v0, v0
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
double-to-float v0, v0
return v0
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
.registers 8
const/high16 v3, 0x3f80
if-nez p1, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I
move-result v0
div-int/lit8 v1, v0, 0x2
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v2
int-to-float v2, v2
int-to-float v0, v0
div-float v0, v2, v0
invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F
move-result v0
int-to-float v2, v1
int-to-float v1, v1
invoke-static {v0}, Landroid/support/v4/widget/x;->a(F)F
move-result v0
mul-float/2addr v0, v1
add-float/2addr v0, v2
invoke-static {p2}, Ljava/lang/Math;->abs(I)I
move-result v1
if-lez v1, :cond_3e
const/high16 v2, 0x447a
int-to-float v1, v1
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
mul-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
mul-int/lit8 v0, v0, 0x4
:goto_37
const/16 v1, 0x258
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_5
:cond_3e
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v0
int-to-float v0, v0
int-to-float v1, p3
div-float/2addr v0, v1
add-float/2addr v0, v3
const/high16 v1, 0x4380
mul-float/2addr v0, v1
float-to-int v0, v0
goto :goto_37
.end method
.method private a(Landroid/view/View;IIII)I
.registers 14
iget v0, p0, Landroid/support/v4/widget/x;->n:F
float-to-int v0, v0
iget v1, p0, Landroid/support/v4/widget/x;->m:F
float-to-int v1, v1
invoke-static {p4, v0, v1}, Landroid/support/v4/widget/x;->b(III)I
move-result v2
iget v0, p0, Landroid/support/v4/widget/x;->n:F
float-to-int v0, v0
iget v1, p0, Landroid/support/v4/widget/x;->m:F
float-to-int v1, v1
invoke-static {p5, v0, v1}, Landroid/support/v4/widget/x;->b(III)I
move-result v3
invoke-static {p2}, Ljava/lang/Math;->abs(I)I
move-result v0
invoke-static {p3}, Ljava/lang/Math;->abs(I)I
move-result v4
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v1
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
add-int v6, v1, v5
add-int v7, v0, v4
if-eqz v2, :cond_4b
int-to-float v0, v1
int-to-float v1, v6
div-float/2addr v0, v1
move v1, v0
:goto_2e
if-eqz v3, :cond_50
int-to-float v0, v5
int-to-float v4, v6
div-float/2addr v0, v4
:goto_33
iget-object v4, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v4, p1}, Landroid/support/v4/widget/z;->c(Landroid/view/View;)I
move-result v4
invoke-direct {p0, p2, v2, v4}, Landroid/support/v4/widget/x;->a(III)I
move-result v2
iget-object v4, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
const/4 v4, 0x0
invoke-direct {p0, p3, v3, v4}, Landroid/support/v4/widget/x;->a(III)I
move-result v3
int-to-float v2, v2
mul-float/2addr v1, v2
int-to-float v2, v3
mul-float/2addr v0, v2
add-float/2addr v0, v1
float-to-int v0, v0
return v0
:cond_4b
int-to-float v0, v0
int-to-float v1, v7
div-float/2addr v0, v1
move v1, v0
goto :goto_2e
:cond_50
int-to-float v0, v4
int-to-float v4, v7
div-float/2addr v0, v4
goto :goto_33
.end method
.method private a(FFI)V
.registers 7
invoke-direct {p0, p3}, Landroid/support/v4/widget/x;->c(I)V
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
iget-object v1, p0, Landroid/support/v4/widget/x;->f:[F
aput p1, v1, p3
aput p1, v0, p3
iget-object v0, p0, Landroid/support/v4/widget/x;->e:[F
iget-object v1, p0, Landroid/support/v4/widget/x;->g:[F
aput p2, v1, p3
aput p2, v0, p3
iget-object v0, p0, Landroid/support/v4/widget/x;->h:[I
float-to-int v1, p1
float-to-int v2, p2
invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/x;->f(II)I
move-result v1
aput v1, v0, p3
iget v0, p0, Landroid/support/v4/widget/x;->k:I
const/4 v1, 0x1
shl-int/2addr v1, p3
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/x;->k:I
return-void
.end method
.method private a(FFII)Z
.registers 9
const/4 v0, 0x0
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v1
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v2
iget-object v3, p0, Landroid/support/v4/widget/x;->h:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-ne v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/x;->p:I
and-int/2addr v3, p4
if-eqz v3, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/x;->j:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/x;->i:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/x;->b:I
int-to-float v3, v3
cmpg-float v3, v1, v3
if-gtz v3, :cond_32
iget v3, p0, Landroid/support/v4/widget/x;->b:I
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
iget-object v2, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
:cond_3b
iget-object v2, p0, Landroid/support/v4/widget/x;->i:[I
aget v2, v2, p3
and-int/2addr v2, p4
if-nez v2, :cond_31
iget v2, p0, Landroid/support/v4/widget/x;->b:I
int-to-float v2, v2
cmpl-float v1, v1, v2
if-lez v1, :cond_31
const/4 v0, 0x1
goto :goto_31
.end method
.method private a(IIII)Z
.registers 15
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v7
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v6
sub-int v2, p1, v7
sub-int v3, p2, v6
if-nez v2, :cond_1e
if-nez v3, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v1}, Landroid/support/v4/widget/j;->g()V
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->e(I)V
:goto_1d
return v0
:cond_1e
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
move-object v0, p0
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/x;->a(Landroid/view/View;IIII)I
move-result v9
iget-object v4, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
move v5, v7
move v7, v2
move v8, v3
invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/j;->a(IIIII)V
const/4 v0, 0x2
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->e(I)V
const/4 v0, 0x1
goto :goto_1d
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
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/z;->c(Landroid/view/View;)I
move-result v0
if-lez v0, :cond_1f
move v0, v1
:goto_e
iget-object v3, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
if-eqz v0, :cond_4
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v3, p0, Landroid/support/v4/widget/x;->b:I
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
.method private b(F)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iput-boolean v3, p0, Landroid/support/v4/widget/x;->t:Z
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/z;->a(Landroid/view/View;F)V
iput-boolean v2, p0, Landroid/support/v4/widget/x;->t:Z
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-ne v0, v3, :cond_14
invoke-direct {p0, v2}, Landroid/support/v4/widget/x;->e(I)V
:cond_14
return-void
.end method
.method private b(FFI)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/x;->a(FFII)Z
move-result v2
if-eqz v2, :cond_33
:goto_8
const/4 v1, 0x4
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/x;->a(FFII)Z
move-result v1
if-eqz v1, :cond_11
or-int/lit8 v0, v0, 0x4
:cond_11
const/4 v1, 0x2
invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/x;->a(FFII)Z
move-result v1
if-eqz v1, :cond_1a
or-int/lit8 v0, v0, 0x2
:cond_1a
const/16 v1, 0x8
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/x;->a(FFII)Z
move-result v1
if-eqz v1, :cond_24
or-int/lit8 v0, v0, 0x8
:cond_24
if-eqz v0, :cond_32
iget-object v1, p0, Landroid/support/v4/widget/x;->i:[I
aget v2, v1, p3
or-int/2addr v2, v0
aput v2, v1, p3
iget-object v1, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/z;->a(II)V
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
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->e:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->f:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->g:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->h:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->i:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/x;->j:[I
aput v2, v0, p1
iget v0, p0, Landroid/support/v4/widget/x;->k:I
const/4 v1, 0x1
shl-int/2addr v1, p1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/x;->k:I
goto :goto_6
.end method
.method private b(Landroid/view/View;I)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
if-ne p1, v1, :cond_a
iget v1, p0, Landroid/support/v4/widget/x;->c:I
if-ne v1, p2, :cond_a
:goto_9
return v0
:cond_a
if-eqz p1, :cond_1a
iget-object v1, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v1, p1}, Landroid/support/v4/widget/z;->a(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_1a
iput p2, p0, Landroid/support/v4/widget/x;->c:I
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/x;->a(Landroid/view/View;I)V
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
.method private c(I)V
.registers 12
const/4 v9, 0x0
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
array-length v0, v0
if-gt v0, p1, :cond_70
:cond_a
add-int/lit8 v0, p1, 0x1
new-array v0, v0, [F
add-int/lit8 v1, p1, 0x1
new-array v1, v1, [F
add-int/lit8 v2, p1, 0x1
new-array v2, v2, [F
add-int/lit8 v3, p1, 0x1
new-array v3, v3, [F
add-int/lit8 v4, p1, 0x1
new-array v4, v4, [I
add-int/lit8 v5, p1, 0x1
new-array v5, v5, [I
add-int/lit8 v6, p1, 0x1
new-array v6, v6, [I
iget-object v7, p0, Landroid/support/v4/widget/x;->d:[F
if-eqz v7, :cond_62
iget-object v7, p0, Landroid/support/v4/widget/x;->d:[F
iget-object v8, p0, Landroid/support/v4/widget/x;->d:[F
array-length v8, v8
invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->e:[F
iget-object v8, p0, Landroid/support/v4/widget/x;->e:[F
array-length v8, v8
invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->f:[F
iget-object v8, p0, Landroid/support/v4/widget/x;->f:[F
array-length v8, v8
invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->g:[F
iget-object v8, p0, Landroid/support/v4/widget/x;->g:[F
array-length v8, v8
invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->h:[I
iget-object v8, p0, Landroid/support/v4/widget/x;->h:[I
array-length v8, v8
invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->i:[I
iget-object v8, p0, Landroid/support/v4/widget/x;->i:[I
array-length v8, v8
invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/x;->j:[I
iget-object v8, p0, Landroid/support/v4/widget/x;->j:[I
array-length v8, v8
invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_62
iput-object v0, p0, Landroid/support/v4/widget/x;->d:[F
iput-object v1, p0, Landroid/support/v4/widget/x;->e:[F
iput-object v2, p0, Landroid/support/v4/widget/x;->f:[F
iput-object v3, p0, Landroid/support/v4/widget/x;->g:[F
iput-object v4, p0, Landroid/support/v4/widget/x;->h:[I
iput-object v5, p0, Landroid/support/v4/widget/x;->i:[I
iput-object v6, p0, Landroid/support/v4/widget/x;->j:[I
:cond_70
return-void
.end method
.method private c(III)V
.registers 8
iget-object v0, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v1
if-eqz p2, :cond_1d
iget-object v2, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v3, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v2, v3, p1}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)I
move-result p1
iget-object v2, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
sub-int v0, p1, v0
invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_1d
if-eqz p3, :cond_2d
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v2, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/z;->d(Landroid/view/View;)I
move-result v0
iget-object v2, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
sub-int/2addr v0, v1
invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_2d
if-nez p2, :cond_31
if-eqz p3, :cond_38
:cond_31
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/z;->a(Landroid/view/View;I)V
:cond_38
return-void
.end method
.method private c(Landroid/view/MotionEvent;)V
.registers 8
invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_1e
invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v3
invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/x;->f:[F
aput v3, v5, v2
iget-object v3, p0, Landroid/support/v4/widget/x;->g:[F
aput v4, v3, v2
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1e
return-void
.end method
.method private c(II)Z
.registers 7
const/4 v0, 0x0
invoke-direct {p0, p2}, Landroid/support/v4/widget/x;->d(I)Z
move-result v1
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
iget-object v1, p0, Landroid/support/v4/widget/x;->f:[F
aget v1, v1, p2
iget-object v2, p0, Landroid/support/v4/widget/x;->d:[F
aget v2, v2, p2
sub-float/2addr v1, v2
iget-object v2, p0, Landroid/support/v4/widget/x;->g:[F
aget v2, v2, p2
iget-object v3, p0, Landroid/support/v4/widget/x;->e:[F
aget v3, v3, p2
sub-float/2addr v2, v3
mul-float/2addr v1, v1
mul-float/2addr v2, v2
add-float/2addr v1, v2
iget v2, p0, Landroid/support/v4/widget/x;->b:I
iget v3, p0, Landroid/support/v4/widget/x;->b:I
mul-int/2addr v2, v3
int-to-float v2, v2
cmpl-float v1, v1, v2
if-lez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method private d(I)Z
.registers 5
const/4 v0, 0x1
iget v1, p0, Landroid/support/v4/widget/x;->k:I
shl-int v2, v0, p1
and-int/2addr v1, v2
if-eqz v1, :cond_9
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private d(II)Z
.registers 4
invoke-direct {p0, p2}, Landroid/support/v4/widget/x;->d(I)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/widget/x;->h:[I
aget v0, v0, p2
and-int/2addr v0, p1
if-eqz v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method private e(I)V
.registers 3
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-eq v0, p1, :cond_10
iput p1, p0, Landroid/support/v4/widget/x;->a:I
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/z;->a(I)V
if-nez p1, :cond_10
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
:cond_10
return-void
.end method
.method private e(II)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-static {v0, p1, p2}, Landroid/support/v4/widget/x;->b(Landroid/view/View;II)Z
move-result v0
return v0
.end method
.method private f(II)I
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/x;->o:I
add-int/2addr v1, v2
if-ge p1, v1, :cond_d
const/4 v0, 0x1
:cond_d
iget-object v1, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/x;->o:I
add-int/2addr v1, v2
if-ge p2, v1, :cond_1a
or-int/lit8 v0, v0, 0x4
:cond_1a
iget-object v1, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/x;->o:I
sub-int/2addr v1, v2
if-le p1, v1, :cond_27
or-int/lit8 v0, v0, 0x2
:cond_27
iget-object v1, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/x;->o:I
sub-int/2addr v1, v2
if-le p2, v1, :cond_34
or-int/lit8 v0, v0, 0x8
:cond_34
return v0
.end method
.method private i()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v4/widget/x;->d:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/x;->e:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/x;->f:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/x;->g:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/x;->h:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/x;->i:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/x;->j:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iput v2, p0, Landroid/support/v4/widget/x;->k:I
goto :goto_6
.end method
.method private j()V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
const/16 v1, 0x3e8
iget v2, p0, Landroid/support/v4/widget/x;->m:F
invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
iget v1, p0, Landroid/support/v4/widget/x;->c:I
invoke-static {v0, v1}, Landroid/support/v4/view/af;->a(Landroid/view/VelocityTracker;I)F
move-result v0
iget v1, p0, Landroid/support/v4/widget/x;->n:F
iget v2, p0, Landroid/support/v4/widget/x;->m:F
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/x;->a(FFF)F
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
iget v2, p0, Landroid/support/v4/widget/x;->c:I
invoke-static {v1, v2}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F
move-result v1
iget v2, p0, Landroid/support/v4/widget/x;->n:F
iget v3, p0, Landroid/support/v4/widget/x;->m:F
invoke-static {v1, v2, v3}, Landroid/support/v4/widget/x;->a(FFF)F
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->b(F)V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/x;->a:I
return v0
.end method
.method public final a(Landroid/view/View;I)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
if-eq v0, v1, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
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
iput-object p1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
iput p2, p0, Landroid/support/v4/widget/x;->c:I
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/z;->b(Landroid/view/View;)V
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->e(I)V
return-void
.end method
.method public final a(I)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/x;->h:[I
array-length v2, v1
move v1, v0
:goto_5
if-ge v1, v2, :cond_e
invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/x;->d(II)Z
move-result v3
if-eqz v3, :cond_f
const/4 v0, 0x1
:cond_e
return v0
:cond_f
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method public final a(II)Z
.registers 6
iget-boolean v0, p0, Landroid/support/v4/widget/x;->t:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
iget v1, p0, Landroid/support/v4/widget/x;->c:I
invoke-static {v0, v1}, Landroid/support/v4/view/af;->a(Landroid/view/VelocityTracker;I)F
move-result v0
float-to-int v0, v0
iget-object v1, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
iget v2, p0, Landroid/support/v4/widget/x;->c:I
invoke-static {v1, v2}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F
move-result v1
float-to-int v1, v1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/x;->a(IIII)Z
move-result v0
return v0
.end method
.method public final a(Landroid/view/MotionEvent;)Z
.registers 11
const/4 v6, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I
move-result v3
if-nez v2, :cond_10
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
:cond_10
iget-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
if-nez v4, :cond_1a
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v4
iput-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
:cond_1a
iget-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v2, :pswitch_data_e2
:goto_22
:cond_22
:pswitch_22
iget v2, p0, Landroid/support/v4/widget/x;->a:I
if-ne v2, v0, :cond_de
:goto_26
return v0
:pswitch_27
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v4
invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/x;->a(FFI)V
float-to-int v2, v2
float-to-int v3, v3
invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
if-ne v2, v3, :cond_47
iget v3, p0, Landroid/support/v4/widget/x;->a:I
if-ne v3, v6, :cond_47
invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
:cond_47
iget-object v2, p0, Landroid/support/v4/widget/x;->h:[I
aget v2, v2, v4
iget v3, p0, Landroid/support/v4/widget/x;->p:I
and-int/2addr v2, v3
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget v3, p0, Landroid/support/v4/widget/x;->p:I
invoke-virtual {v2}, Landroid/support/v4/widget/z;->b()V
goto :goto_22
:pswitch_58
invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v3}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v4
invoke-static {p1, v3}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v3
invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/x;->a(FFI)V
iget v5, p0, Landroid/support/v4/widget/x;->a:I
if-nez v5, :cond_7c
iget-object v3, p0, Landroid/support/v4/widget/x;->h:[I
aget v2, v3, v2
iget v3, p0, Landroid/support/v4/widget/x;->p:I
and-int/2addr v2, v3
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget v3, p0, Landroid/support/v4/widget/x;->p:I
invoke-virtual {v2}, Landroid/support/v4/widget/z;->b()V
goto :goto_22
:cond_7c
iget v5, p0, Landroid/support/v4/widget/x;->a:I
if-ne v5, v6, :cond_22
float-to-int v4, v4
float-to-int v3, v3
invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
if-ne v3, v4, :cond_22
invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
goto :goto_22
:pswitch_8e
invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I
move-result v3
move v2, v1
:goto_93
if-ge v2, v3, :cond_cb
invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v4
invoke-static {p1, v2}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v5
invoke-static {p1, v2}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v6
iget-object v7, p0, Landroid/support/v4/widget/x;->d:[F
aget v7, v7, v4
sub-float v7, v5, v7
iget-object v8, p0, Landroid/support/v4/widget/x;->e:[F
aget v8, v8, v4
sub-float v8, v6, v8
invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/x;->b(FFI)V
iget v8, p0, Landroid/support/v4/widget/x;->a:I
if-eq v8, v0, :cond_cb
float-to-int v5, v5
float-to-int v6, v6
invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v5
if-eqz v5, :cond_c8
invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/x;->a(Landroid/view/View;F)Z
move-result v6
if-eqz v6, :cond_c8
invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
move-result v4
if-nez v4, :cond_cb
:cond_c8
add-int/lit8 v2, v2, 0x1
goto :goto_93
:cond_cb
invoke-direct {p0, p1}, Landroid/support/v4/widget/x;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:pswitch_d0
invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-direct {p0, v2}, Landroid/support/v4/widget/x;->b(I)V
goto/16 :goto_22
:pswitch_d9
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
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
iput-object p1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/x;->c:I
invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/x;->a(IIII)Z
move-result v0
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/x;->o:I
return v0
.end method
.method public final b(II)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_34
iget-object v0, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
iget-object v2, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
invoke-static {v1}, Landroid/support/v4/widget/z;->b(I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
if-lt p1, v2, :cond_30
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v2
if-ge p1, v2, :cond_30
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v2
if-lt p2, v2, :cond_30
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v2
if-ge p2, v2, :cond_30
:goto_2f
return-object v0
:cond_30
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_34
const/4 v0, 0x0
goto :goto_2f
.end method
.method public final b(Landroid/view/MotionEvent;)V
.registers 10
const/4 v1, -0x1
const/4 v0, 0x0
const/4 v7, 0x1
invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I
move-result v3
if-nez v2, :cond_10
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
:cond_10
iget-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
if-nez v4, :cond_1a
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v4
iput-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
:cond_1a
iget-object v4, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v2, :pswitch_data_15a
:pswitch_22
:goto_22
:cond_22
return-void
:pswitch_23
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v0
float-to-int v3, v1
float-to-int v4, v2
invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v3
invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/x;->a(FFI)V
invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
iget-object v1, p0, Landroid/support/v4/widget/x;->h:[I
aget v0, v1, v0
iget v1, p0, Landroid/support/v4/widget/x;->p:I
and-int/2addr v0, v1
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget v1, p0, Landroid/support/v4/widget/x;->p:I
invoke-virtual {v0}, Landroid/support/v4/widget/z;->b()V
goto :goto_22
:pswitch_4c
invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v3}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v1
invoke-static {p1, v3}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v2
invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/x;->a(FFI)V
iget v3, p0, Landroid/support/v4/widget/x;->a:I
if-nez v3, :cond_79
float-to-int v1, v1
float-to-int v2, v2
invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v1
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
iget-object v1, p0, Landroid/support/v4/widget/x;->h:[I
aget v0, v1, v0
iget v1, p0, Landroid/support/v4/widget/x;->p:I
and-int/2addr v0, v1
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget v1, p0, Landroid/support/v4/widget/x;->p:I
invoke-virtual {v0}, Landroid/support/v4/widget/z;->b()V
goto :goto_22
:cond_79
float-to-int v1, v1
float-to-int v2, v2
invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/x;->e(II)Z
move-result v1
if-eqz v1, :cond_22
iget-object v1, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
goto :goto_22
:pswitch_87
iget v1, p0, Landroid/support/v4/widget/x;->a:I
if-ne v1, v7, :cond_bd
iget v0, p0, Landroid/support/v4/widget/x;->c:I
invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v1
invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v0
iget-object v2, p0, Landroid/support/v4/widget/x;->f:[F
iget v3, p0, Landroid/support/v4/widget/x;->c:I
aget v2, v2, v3
sub-float/2addr v1, v2
float-to-int v1, v1
iget-object v2, p0, Landroid/support/v4/widget/x;->g:[F
iget v3, p0, Landroid/support/v4/widget/x;->c:I
aget v2, v2, v3
sub-float/2addr v0, v2
float-to-int v0, v0
iget-object v2, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
add-int/2addr v2, v1
iget-object v3, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
invoke-direct {p0, v2, v1, v0}, Landroid/support/v4/widget/x;->c(III)V
invoke-direct {p0, p1}, Landroid/support/v4/widget/x;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:cond_bd
invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I
move-result v1
:goto_c1
if-ge v0, v1, :cond_f7
invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v3
invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/x;->d:[F
aget v5, v5, v2
sub-float v5, v3, v5
iget-object v6, p0, Landroid/support/v4/widget/x;->e:[F
aget v6, v6, v2
sub-float v6, v4, v6
invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/x;->b(FFI)V
iget v6, p0, Landroid/support/v4/widget/x;->a:I
if-eq v6, v7, :cond_f7
float-to-int v3, v3
float-to-int v4, v4
invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v3
invoke-direct {p0, v3, v5}, Landroid/support/v4/widget/x;->a(Landroid/view/View;F)Z
move-result v4
if-eqz v4, :cond_f4
invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
move-result v2
if-nez v2, :cond_f7
:cond_f4
add-int/lit8 v0, v0, 0x1
goto :goto_c1
:cond_f7
invoke-direct {p0, p1}, Landroid/support/v4/widget/x;->c(Landroid/view/MotionEvent;)V
goto/16 :goto_22
:pswitch_fc
invoke-static {p1, v3}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v2
iget v3, p0, Landroid/support/v4/widget/x;->a:I
if-ne v3, v7, :cond_137
iget v3, p0, Landroid/support/v4/widget/x;->c:I
if-ne v2, v3, :cond_137
invoke-static {p1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;)I
move-result v3
:goto_10c
if-ge v0, v3, :cond_158
invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I
move-result v4
iget v5, p0, Landroid/support/v4/widget/x;->c:I
if-eq v4, v5, :cond_13c
invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F
move-result v5
invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F
move-result v6
float-to-int v5, v5
float-to-int v6, v6
invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/x;->b(II)Landroid/view/View;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
if-ne v5, v6, :cond_13c
iget-object v5, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/x;->b(Landroid/view/View;I)Z
move-result v4
if-eqz v4, :cond_13c
iget v0, p0, Landroid/support/v4/widget/x;->c:I
:goto_132
if-ne v0, v1, :cond_137
invoke-direct {p0}, Landroid/support/v4/widget/x;->j()V
:cond_137
invoke-direct {p0, v2}, Landroid/support/v4/widget/x;->b(I)V
goto/16 :goto_22
:cond_13c
add-int/lit8 v0, v0, 0x1
goto :goto_10c
:pswitch_13f
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-ne v0, v7, :cond_146
invoke-direct {p0}, Landroid/support/v4/widget/x;->j()V
:cond_146
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
goto/16 :goto_22
:pswitch_14b
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-ne v0, v7, :cond_153
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->b(F)V
:cond_153
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
goto/16 :goto_22
:cond_158
move v0, v1
goto :goto_132
:pswitch_data_15a
.packed-switch 0x0
:pswitch_23
:pswitch_13f
:pswitch_87
:pswitch_14b
:pswitch_22
:pswitch_4c
:pswitch_fc
.end packed-switch
.end method
.method public final c()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
return-object v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/x;->b:I
return v0
.end method
.method public final e()V
.registers 2
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/x;->c:I
invoke-direct {p0}, Landroid/support/v4/widget/x;->i()V
iget-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/x;->l:Landroid/view/VelocityTracker;
:cond_12
return-void
.end method
.method public final f()V
.registers 4
invoke-virtual {p0}, Landroid/support/v4/widget/x;->e()V
iget v0, p0, Landroid/support/v4/widget/x;->a:I
const/4 v1, 0x2
if-ne v0, v1, :cond_29
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()I
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->c()I
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->g()V
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()I
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()I
iget-object v1, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v2, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/z;->a(Landroid/view/View;I)V
:cond_29
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/widget/x;->e(I)V
return-void
.end method
.method public final g()Z
.registers 8
const/4 v6, 0x2
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-ne v0, v6, :cond_66
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->f()Z
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v1}, Landroid/support/v4/widget/j;->b()I
move-result v1
iget-object v2, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v2}, Landroid/support/v4/widget/j;->c()I
move-result v2
iget-object v3, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
sub-int v3, v1, v3
iget-object v4, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
sub-int v4, v2, v4
if-eqz v3, :cond_2e
iget-object v5, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V
:cond_2e
if-eqz v4, :cond_35
iget-object v5, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v5, v4}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_35
if-nez v3, :cond_39
if-eqz v4, :cond_40
:cond_39
iget-object v3, p0, Landroid/support/v4/widget/x;->r:Landroid/support/v4/widget/z;
iget-object v4, p0, Landroid/support/v4/widget/x;->s:Landroid/view/View;
invoke-virtual {v3, v4, v1}, Landroid/support/v4/widget/z;->a(Landroid/view/View;I)V
:cond_40
if-eqz v0, :cond_5d
iget-object v3, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v3}, Landroid/support/v4/widget/j;->d()I
move-result v3
if-ne v1, v3, :cond_5d
iget-object v1, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v1}, Landroid/support/v4/widget/j;->e()I
move-result v1
if-ne v2, v1, :cond_5d
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->g()V
iget-object v0, p0, Landroid/support/v4/widget/x;->q:Landroid/support/v4/widget/j;
invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z
move-result v0
:cond_5d
if-nez v0, :cond_66
iget-object v0, p0, Landroid/support/v4/widget/x;->u:Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v4/widget/x;->w:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
:cond_66
iget v0, p0, Landroid/support/v4/widget/x;->a:I
if-ne v0, v6, :cond_6c
const/4 v0, 0x1
:goto_6b
return v0
:cond_6c
const/4 v0, 0x0
goto :goto_6b
.end method
.method public final h()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/x;->d:[F
array-length v2, v1
move v1, v0
:goto_5
if-ge v1, v2, :cond_f
const/4 v3, 0x3
invoke-direct {p0, v3, v1}, Landroid/support/v4/widget/x;->c(II)Z
move-result v3
if-eqz v3, :cond_10
const/4 v0, 0x1
:cond_f
return v0
:cond_10
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method