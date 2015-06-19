.class public abstract Lcom/google/zxing/e/a/a;
.super Lcom/google/zxing/e/k;
.source "AbstractRSSReader.java"
.field public final a:[I
.field public final b:[I
.field public final c:[F
.field public final d:[F
.field public final e:[I
.field public final f:[I
.method public constructor <init>()V
.registers 3
const/4 v1, 0x4
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
new-array v0, v1, [I
iput-object v0, p0, Lcom/google/zxing/e/a/a;->a:[I
const/16 v0, 0x8
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/a/a;->b:[I
new-array v0, v1, [F
iput-object v0, p0, Lcom/google/zxing/e/a/a;->c:[F
new-array v0, v1, [F
iput-object v0, p0, Lcom/google/zxing/e/a/a;->d:[F
iget-object v0, p0, Lcom/google/zxing/e/a/a;->b:[I
array-length v0, v0
div-int/lit8 v0, v0, 0x2
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/a/a;->e:[I
iget-object v0, p0, Lcom/google/zxing/e/a/a;->b:[I
array-length v0, v0
div-int/lit8 v0, v0, 0x2
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/a/a;->f:[I
return-void
.end method
.method public static a([I)I
.registers 5
const/4 v0, 0x0
array-length v2, p0
move v1, v0
:goto_3
if-ge v0, v2, :cond_b
aget v3, p0, v0
add-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_b
return v1
.end method
.method public static a([I[[I)I
.registers 5
const/4 v0, 0x0
:goto_1
array-length v1, p1
if-ge v0, v1, :cond_14
aget-object v1, p1, v0
const/16 v2, 0x66
invoke-static {p0, v1, v2}, Lcom/google/zxing/e/a/a;->a([I[II)I
move-result v1
const/16 v2, 0x33
if-ge v1, v2, :cond_11
return v0
:cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method public static a([I[F)V
.registers 6
const/4 v2, 0x0
aget v1, p1, v2
const/4 v0, 0x1
:goto_4
array-length v3, p0
if-ge v0, v3, :cond_13
aget v3, p1, v0
cmpl-float v3, v3, v1
if-lez v3, :cond_10
aget v1, p1, v0
move v2, v0
:cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_13
aget v0, p0, v2
add-int/lit8 v0, v0, 0x1
aput v0, p0, v2
return-void
.end method
.method public static b([I[F)V
.registers 6
const/4 v2, 0x0
aget v1, p1, v2
const/4 v0, 0x1
:goto_4
array-length v3, p0
if-ge v0, v3, :cond_13
aget v3, p1, v0
cmpg-float v3, v3, v1
if-gez v3, :cond_10
aget v1, p1, v0
move v2, v0
:cond_10
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_13
aget v0, p0, v2
add-int/lit8 v0, v0, -0x1
aput v0, p0, v2
return-void
.end method
.method public static b([I)Z
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
aget v0, p0, v3
aget v1, p0, v2
add-int/2addr v0, v1
const/4 v1, 0x2
aget v1, p0, v1
add-int/2addr v1, v0
const/4 v4, 0x3
aget v4, p0, v4
add-int/2addr v1, v4
int-to-float v0, v0
int-to-float v1, v1
div-float/2addr v0, v1
const v1, 0x3f4aaaab
cmpl-float v1, v0, v1
if-ltz v1, :cond_3d
const v1, 0x3f649249
cmpg-float v0, v0, v1
if-gtz v0, :cond_3d
const v1, 0x7fffffff
const/high16 v4, -0x8000
array-length v6, p0
move v5, v3
:goto_27
if-ge v5, v6, :cond_35
aget v0, p0, v5
if-le v0, v4, :cond_2e
move v4, v0
:cond_2e
if-ge v0, v1, :cond_3f
:goto_30
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v0
goto :goto_27
:cond_35
mul-int/lit8 v0, v1, 0xa
if-ge v4, v0, :cond_3b
move v0, v2
:goto_3a
return v0
:cond_3b
move v0, v3
goto :goto_3a
:cond_3d
move v0, v3
goto :goto_3a
:cond_3f
move v0, v1
goto :goto_30
.end method