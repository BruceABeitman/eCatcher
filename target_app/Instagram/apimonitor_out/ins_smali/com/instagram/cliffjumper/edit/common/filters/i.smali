.class public final Lcom/instagram/cliffjumper/edit/common/filters/i;
.super Ljava/lang/Object;
.source "IgSpline.java"
.field private a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
.field private b:I
.method private constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x2a
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
new-array v0, v0, [Lcom/instagram/cliffjumper/edit/common/filters/j;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
return-void
.end method
.method public constructor <init>([F)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
array-length v0, p1
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
new-array v0, v0, [Lcom/instagram/cliffjumper/edit/common/filters/j;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
move v0, v1
:goto_10
iget v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
if-ge v0, v2, :cond_3b
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
new-instance v3, Lcom/instagram/cliffjumper/edit/common/filters/j;
invoke-direct {v3, p0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/j;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/i;B)V
aput-object v3, v2, v0
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
aget-object v2, v2, v0
iget-object v2, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
mul-int/lit8 v3, v0, 0x2
aget v3, p1, v3
aput v3, v2, v1
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
aget-object v2, v2, v0
iget-object v2, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v3, 0x1
mul-int/lit8 v4, v0, 0x2
add-int/lit8 v4, v4, 0x1
aget v4, p1, v4
aput v4, v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_3b
return-void
.end method
.method private a()Lcom/instagram/cliffjumper/edit/common/filters/i;
.registers 8
const/16 v6, 0x2a
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/i;
invoke-direct {v1, v6}, Lcom/instagram/cliffjumper/edit/common/filters/i;-><init>(I)V
const/4 v0, 0x0
:goto_8
if-ge v0, v6, :cond_1d
int-to-float v2, v0
const/high16 v3, 0x4228
div-float/2addr v2, v3
iget-object v3, v1, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
iget v5, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
invoke-direct {p0, v4, v5, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a([Lcom/instagram/cliffjumper/edit/common/filters/j;IF)Lcom/instagram/cliffjumper/edit/common/filters/j;
move-result-object v2
aput-object v2, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1d
return-object v1
.end method
.method private a(Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;F)Lcom/instagram/cliffjumper/edit/common/filters/j;
.registers 15
mul-float v0, p5, p5
mul-float/2addr v0, p5
mul-float v1, p5, p5
new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/j;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/instagram/cliffjumper/edit/common/filters/j;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/i;B)V
iget-object v3, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v4, 0x0
const/high16 v5, -0x4100
mul-float/2addr v5, p5
const/high16 v6, 0x3f80
mul-float/2addr v6, v1
add-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float/2addr v6, v0
sub-float/2addr v5, v6
iget-object v6, p1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v7, 0x0
aget v6, v6, v7
mul-float/2addr v5, v6
const/high16 v6, 0x3f80
const/high16 v7, -0x3fe0
mul-float/2addr v7, v1
add-float/2addr v6, v7
const/high16 v7, 0x3fc0
mul-float/2addr v7, v0
add-float/2addr v6, v7
iget-object v7, p2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v8, 0x0
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float/2addr v6, p5
const/high16 v7, 0x4000
mul-float/2addr v7, v1
add-float/2addr v6, v7
const/high16 v7, -0x4040
mul-float/2addr v7, v0
add-float/2addr v6, v7
iget-object v7, p3, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v8, 0x0
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
const/high16 v6, -0x4100
mul-float/2addr v6, v1
const/high16 v7, 0x3f00
mul-float/2addr v7, v0
add-float/2addr v6, v7
iget-object v7, p4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v8, 0x0
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
aput v5, v3, v4
iget-object v3, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v4, 0x1
const/high16 v5, -0x4100
mul-float/2addr v5, p5
const/high16 v6, 0x3f80
mul-float/2addr v6, v1
add-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float/2addr v6, v0
sub-float/2addr v5, v6
iget-object v6, p1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v7, 0x1
aget v6, v6, v7
mul-float/2addr v5, v6
const/high16 v6, 0x3f80
const/high16 v7, -0x3fe0
mul-float/2addr v7, v1
add-float/2addr v6, v7
const/high16 v7, 0x3fc0
mul-float/2addr v7, v0
add-float/2addr v6, v7
iget-object v7, p2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v8, 0x1
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float/2addr v6, p5
const/high16 v7, 0x4000
mul-float/2addr v7, v1
add-float/2addr v6, v7
const/high16 v7, -0x4040
mul-float/2addr v7, v0
add-float/2addr v6, v7
iget-object v7, p3, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v8, 0x1
aget v7, v7, v8
mul-float/2addr v6, v7
add-float/2addr v5, v6
const/high16 v6, -0x4100
mul-float/2addr v1, v6
const/high16 v6, 0x3f00
mul-float/2addr v0, v6
add-float/2addr v0, v1
iget-object v1, p4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
const/4 v6, 0x1
aget v1, v1, v6
mul-float/2addr v0, v1
add-float/2addr v0, v5
aput v0, v3, v4
return-object v2
.end method
.method private a([Lcom/instagram/cliffjumper/edit/common/filters/j;IF)Lcom/instagram/cliffjumper/edit/common/filters/j;
.registers 14
const/4 v9, 0x1
const/4 v8, 0x0
add-int/lit8 v0, p2, -0x1
int-to-float v1, v0
mul-float/2addr v1, p3
float-to-int v3, v1
int-to-float v2, v3
sub-float v5, v1, v2
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/j;
invoke-direct {v1, p0, v8}, Lcom/instagram/cliffjumper/edit/common/filters/j;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/i;B)V
if-nez v3, :cond_8e
iget-object v2, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget-object v4, p1, v8
iget-object v4, v4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v4, v4, v8
aget-object v6, p1, v9
iget-object v6, v6, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v6, v6, v8
aget-object v7, p1, v8
iget-object v7, v7, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v7, v7, v8
sub-float/2addr v6, v7
sub-float/2addr v4, v6
aput v4, v2, v8
iget-object v2, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget-object v4, p1, v8
iget-object v4, v4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v4, v4, v9
aget-object v6, p1, v9
iget-object v6, v6, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v6, v6, v9
aget-object v7, p1, v8
iget-object v7, v7, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v7, v7, v9
sub-float/2addr v6, v7
sub-float/2addr v4, v6
aput v4, v2, v9
:goto_41
new-instance v4, Lcom/instagram/cliffjumper/edit/common/filters/j;
invoke-direct {v4, p0, v8}, Lcom/instagram/cliffjumper/edit/common/filters/j;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/i;B)V
add-int/lit8 v0, v0, -0x1
if-ne v3, v0, :cond_93
iget-object v0, v4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
add-int/lit8 v2, v3, 0x1
aget-object v2, p1, v2
iget-object v2, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v2, v2, v8
aget-object v6, p1, v3
iget-object v6, v6, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v6, v6, v8
add-int/lit8 v7, v3, 0x1
aget-object v7, p1, v7
iget-object v7, v7, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v7, v7, v8
sub-float/2addr v6, v7
sub-float/2addr v2, v6
aput v2, v0, v8
iget-object v0, v4, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
add-int/lit8 v2, v3, 0x1
aget-object v2, p1, v2
iget-object v2, v2, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v2, v2, v9
aget-object v6, p1, v3
iget-object v6, v6, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v6, v6, v9
add-int/lit8 v7, v3, 0x1
aget-object v7, p1, v7
iget-object v7, v7, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v7, v7, v9
sub-float/2addr v6, v7
sub-float/2addr v2, v6
aput v2, v0, v9
:goto_82
aget-object v2, p1, v3
add-int/lit8 v0, v3, 0x1
aget-object v3, p1, v0
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;Lcom/instagram/cliffjumper/edit/common/filters/j;F)Lcom/instagram/cliffjumper/edit/common/filters/j;
move-result-object v0
return-object v0
:cond_8e
add-int/lit8 v1, v3, -0x1
aget-object v1, p1, v1
goto :goto_41
:cond_93
add-int/lit8 v0, v3, 0x2
aget-object v4, p1, v0
goto :goto_82
.end method
.method private a(Ljava/nio/ByteBuffer;II)Ljava/nio/Buffer;
.registers 16
const/high16 v11, 0x437f
const/4 v4, 0x0
const/4 v10, 0x1
const/4 v6, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
aget-object v1, v0, v6
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
aget-object v0, v0, v10
move v5, v6
move v2, v6
:goto_f
const/16 v3, 0x100
if-ge v5, v3, :cond_6c
int-to-float v3, v5
div-float v7, v3, v11
iget-object v3, v0, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v3, v3, v6
cmpl-float v3, v7, v3
if-lez v3, :cond_30
iget v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->b:I
add-int/lit8 v3, v3, -0x2
if-ge v2, v3, :cond_30
add-int/lit8 v2, v2, 0x1
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
aget-object v1, v0, v2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/i;->a:[Lcom/instagram/cliffjumper/edit/common/filters/j;
add-int/lit8 v3, v2, 0x1
aget-object v0, v0, v3
:cond_30
iget-object v3, v0, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v3, v3, v6
iget-object v8, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v8, v8, v6
sub-float/2addr v3, v8
const v8, 0x33d6bf95
cmpl-float v8, v3, v8
if-lez v8, :cond_6d
iget-object v8, v0, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v8, v8, v10
iget-object v9, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v9, v9, v10
sub-float/2addr v8, v9
div-float v3, v8, v3
:goto_4b
iget-object v8, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v8, v8, v10
iget-object v9, v1, Lcom/instagram/cliffjumper/edit/common/filters/j;->a:[F
aget v9, v9, v6
sub-float/2addr v7, v9
mul-float/2addr v3, v7
add-float/2addr v3, v8
const/high16 v7, 0x3f80
invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F
move-result v3
invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
move-result v3
mul-float/2addr v3, v11
float-to-int v3, v3
int-to-byte v3, v3
add-int v7, p2, v5
invoke-virtual {p1, v7, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
add-int/lit8 v3, v5, 0x1
move v5, v3
goto :goto_f
:cond_6c
return-object p1
:cond_6d
move v3, v4
goto :goto_4b
.end method
.method public final a(Ljava/nio/ByteBuffer;I)V
.registers 5
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a()Lcom/instagram/cliffjumper/edit/common/filters/i;
move-result-object v0
const/16 v1, 0x100
invoke-direct {v0, p1, p2, v1}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/Buffer;
return-void
.end method