.class public Lcom/b/a/a/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/n;
.method public constructor <init>(Lcom/b/a/a/a/a/n;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(FF)D
.registers 13
const-wide/high16 v8, 0x3ff0
float-to-double v0, p1
float-to-double v2, p2
div-double v2, v8, v2
const-wide v4, 0x3ffe666666666666L
sub-double/2addr v2, v4
const-wide v4, 0x3feccccccccccccdL
float-to-double v6, p1
sub-double/2addr v4, v6
mul-double/2addr v2, v4
add-double/2addr v2, v8
div-double/2addr v0, v2
return-wide v0
.end method
.method static synthetic a(Lcom/b/a/a/a/a/p;FF)D
.registers 5
invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/a/p;->a(FF)D
move-result-wide v0
return-wide v0
.end method
.method private b(FF)D
.registers 9
const-wide/high16 v4, 0x3fe0
float-to-double v0, p1
sub-double/2addr v0, v4
float-to-double v2, p2
mul-double/2addr v0, v2
add-double/2addr v0, v4
return-wide v0
.end method
.method static synthetic b(Lcom/b/a/a/a/a/p;FF)D
.registers 5
invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/a/p;->b(FF)D
move-result-wide v0
return-wide v0
.end method
.method public a()Lcom/b/a/a/a/a/p;
.registers 2
new-instance v0, Lcom/b/a/a/a/a/p$15;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/p$15;-><init>(Lcom/b/a/a/a/a/p;)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$10;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$10;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a(FFF)Lcom/b/a/a/a/a/p;
.registers 5
new-instance v0, Lcom/b/a/a/a/a/p$1;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/b/a/a/a/a/p$1;-><init>(Lcom/b/a/a/a/a/p;FFF)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a(I)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$8;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$8;-><init>(Lcom/b/a/a/a/a/p;I)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a(III)Lcom/b/a/a/a/a/p;
.registers 5
new-instance v0, Lcom/b/a/a/a/a/p$9;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/p$9;-><init>(Lcom/b/a/a/a/a/p;)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a([F[F)Lcom/b/a/a/a/a/p;
.registers 4
new-instance v0, Lcom/b/a/a/a/a/p$3;
invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/a/a/p$3;-><init>(Lcom/b/a/a/a/a/p;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public a(Lcom/b/a/a/a/a/g;)V
.registers 10
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v0}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;)[I
move-result-object v1
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v0}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v0
iget-object v2, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v2}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v2
mul-int/2addr v2, v0
const/4 v0, 0x0
:goto_14
if-ge v0, v2, :cond_43
shl-int/lit8 v3, v0, 0x2
aget v4, v1, v3
add-int/lit8 v5, v3, 0x1
aget v5, v1, v5
add-int/lit8 v6, v3, 0x2
aget v6, v1, v6
add-int/lit8 v7, v3, 0x3
aget v7, v1, v7
invoke-virtual {p1, v4, v5, v6, v7}, Lcom/b/a/a/a/a/g;->a(IIII)Lcom/b/a/a/a/a/m;
move-result-object v4
iget v5, v4, Lcom/b/a/a/a/a/m;->a:I
aput v5, v1, v3
add-int/lit8 v5, v3, 0x1
iget v6, v4, Lcom/b/a/a/a/a/m;->b:I
aput v6, v1, v5
add-int/lit8 v5, v3, 0x2
iget v6, v4, Lcom/b/a/a/a/a/m;->c:I
aput v6, v1, v5
add-int/lit8 v3, v3, 0x3
iget v4, v4, Lcom/b/a/a/a/a/m;->d:I
aput v4, v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_43
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 15
const/4 v7, 0x2
const/4 v2, 0x1
const/4 v0, 0x0
const/4 v6, 0x3
iget-object v1, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;)[I
move-result-object v3
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v4, "simple"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a4
iget-object v1, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v1}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v1
iget-object v4, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v4}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v4
mul-int/2addr v1, v4
mul-int/lit8 v1, v1, 0x4
new-array v4, v1, [I
:goto_27
iget-object v1, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v1}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v1
if-ge v0, v1, :cond_9e
move v1, v2
:goto_30
iget-object v5, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v5}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v5
if-ge v1, v5, :cond_9b
iget-object v5, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v5}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v5
mul-int/2addr v5, v0
mul-int/lit8 v5, v5, 0x4
mul-int/lit8 v6, v1, 0x4
add-int/2addr v5, v6
iget-object v6, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v6}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v6
mul-int/2addr v6, v0
mul-int/lit8 v6, v6, 0x4
add-int/lit8 v7, v1, -0x1
mul-int/lit8 v7, v7, 0x4
add-int/2addr v6, v7
iget-object v7, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
aget v8, v3, v5
aget v9, v3, v6
sub-int/2addr v8, v9
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v8
invoke-virtual {v7, v8}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v7
aput v7, v4, v5
add-int/lit8 v7, v5, 0x1
iget-object v8, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
add-int/lit8 v9, v5, 0x1
aget v9, v3, v9
add-int/lit8 v10, v6, 0x1
aget v10, v3, v10
sub-int/2addr v9, v10
invoke-static {v9}, Ljava/lang/Math;->abs(I)I
move-result v9
invoke-virtual {v8, v9}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v8
aput v8, v4, v7
add-int/lit8 v7, v5, 0x2
iget-object v8, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
add-int/lit8 v9, v5, 0x2
aget v9, v3, v9
add-int/lit8 v6, v6, 0x2
aget v6, v3, v6
sub-int v6, v9, v6
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
invoke-virtual {v8, v6}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v6
aput v6, v4, v7
add-int/lit8 v5, v5, 0x3
const/16 v6, 0xff
aput v6, v4, v5
add-int/lit8 v1, v1, 0x1
goto :goto_30
:cond_9b
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_9e
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v0, v4}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
:goto_a3
:cond_a3
return-void
:cond_a4
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v4, "sobel"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_14e
new-array v1, v6, [[F
new-array v4, v6, [F
fill-array-data v4, :array_15c
aput-object v4, v1, v0
new-array v4, v6, [F
fill-array-data v4, :array_166
aput-object v4, v1, v2
new-array v4, v6, [F
fill-array-data v4, :array_170
aput-object v4, v1, v7
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v4
new-array v1, v6, [[F
new-array v5, v6, [F
fill-array-data v5, :array_17a
aput-object v5, v1, v0
new-array v5, v6, [F
fill-array-data v5, :array_184
aput-object v5, v1, v2
new-array v2, v6, [F
fill-array-data v2, :array_18e
aput-object v2, v1, v7
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v5
move v1, v0
:goto_e7
iget-object v2, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v2}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v2
if-ge v1, v2, :cond_147
move v2, v0
:goto_f0
iget-object v6, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v6}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v6
if-ge v2, v6, :cond_144
iget-object v6, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v6}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v6
mul-int/2addr v6, v1
mul-int/lit8 v6, v6, 0x4
mul-int/lit8 v7, v2, 0x4
add-int/2addr v6, v7
aget v7, v4, v6
aget v8, v5, v6
add-int/lit8 v9, v6, 0x1
aget v9, v4, v9
add-int/lit8 v10, v6, 0x1
aget v10, v5, v10
add-int/lit8 v11, v6, 0x2
aget v11, v4, v11
add-int/lit8 v12, v6, 0x2
aget v12, v5, v12
mul-int/2addr v7, v7
mul-int/2addr v8, v8
add-int/2addr v7, v8
int-to-double v7, v7
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
double-to-int v7, v7
aput v7, v3, v6
add-int/lit8 v7, v6, 0x1
mul-int v8, v9, v9
mul-int v9, v10, v10
add-int/2addr v8, v9
int-to-double v8, v8
invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
double-to-int v8, v8
aput v8, v3, v7
add-int/lit8 v6, v6, 0x2
mul-int v7, v11, v11
mul-int v8, v12, v12
add-int/2addr v7, v8
int-to-double v7, v7
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
double-to-int v7, v7
aput v7, v3, v6
add-int/lit8 v2, v2, 0x1
goto :goto_f0
:cond_144
add-int/lit8 v1, v1, 0x1
goto :goto_e7
:cond_147
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v0, v3}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
goto/16 :goto_a3
:cond_14e
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "canny"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a3
goto/16 :goto_a3
:array_166
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_184
.array-data 0x4
0x0t 0x0t 0x0t 0xc0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x40t
.end array-data
:array_170
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x40t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_15c
.array-data 0x4
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x0t 0xc0t
0x0t 0x0t 0x80t 0xbft
.end array-data
:array_18e
.array-data 0x4
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_17a
.array-data 0x4
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method public a([[F)[I
.registers 18
if-eqz p1, :cond_92
move-object/from16 v0, p1
array-length v1, v0
if-eqz v1, :cond_92
const/4 v1, 0x1
:goto_8
invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v1}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v2}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v2
mul-int/2addr v1, v2
mul-int/lit8 v1, v1, 0x4
new-array v8, v1, [I
move-object/from16 v0, p0
iget-object v1, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;)[I
move-result-object v9
move-object/from16 v0, p1
array-length v1, v0
div-int/lit8 v10, v1, 0x2
const/4 v1, 0x0
aget-object v1, p1, v1
array-length v1, v1
div-int/lit8 v11, v1, 0x2
const/4 v1, 0x0
:goto_34
move-object/from16 v0, p0
iget-object v2, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v2}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v2
if-ge v1, v2, :cond_f2
const/4 v2, 0x0
:goto_3f
move-object/from16 v0, p0
iget-object v3, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v3}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v3
if-ge v2, v3, :cond_ee
move-object/from16 v0, p0
iget-object v3, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v3}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v3
mul-int/2addr v3, v1
mul-int/lit8 v3, v3, 0x4
mul-int/lit8 v4, v2, 0x4
add-int v12, v3, v4
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
neg-int v6, v10
move v7, v6
:goto_5d
if-gt v7, v10, :cond_c2
neg-int v6, v11
:goto_60
if-gt v6, v11, :cond_be
add-int v13, v1, v7
if-ltz v13, :cond_8f
add-int v13, v1, v7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v14}, Lcom/b/a/a/a/a/n;->c(Lcom/b/a/a/a/a/n;)I
move-result v14
if-ge v13, v14, :cond_8f
add-int v13, v2, v6
if-ltz v13, :cond_8f
add-int v13, v2, v6
move-object/from16 v0, p0
iget-object v14, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v14}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v14
if-ge v13, v14, :cond_8f
add-int v13, v7, v10
aget-object v13, p1, v13
add-int v14, v6, v11
aget v13, v13, v14
const/4 v14, 0x0
cmpl-float v14, v13, v14
if-nez v14, :cond_95
:goto_8f
:cond_8f
add-int/lit8 v6, v6, 0x1
goto :goto_60
:cond_92
const/4 v1, 0x0
goto/16 :goto_8
:cond_95
add-int v14, v1, v7
move-object/from16 v0, p0
iget-object v15, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-static {v15}, Lcom/b/a/a/a/a/n;->b(Lcom/b/a/a/a/a/n;)I
move-result v15
mul-int/2addr v14, v15
mul-int/lit8 v14, v14, 0x4
add-int v15, v2, v6
mul-int/lit8 v15, v15, 0x4
add-int/2addr v14, v15
aget v15, v9, v14
int-to-float v15, v15
mul-float/2addr v15, v13
float-to-int v15, v15
add-int/2addr v5, v15
add-int/lit8 v15, v14, 0x1
aget v15, v9, v15
int-to-float v15, v15
mul-float/2addr v15, v13
float-to-int v15, v15
add-int/2addr v4, v15
add-int/lit8 v14, v14, 0x2
aget v14, v9, v14
int-to-float v14, v14
mul-float/2addr v13, v14
float-to-int v13, v13
add-int/2addr v3, v13
goto :goto_8f
:cond_be
add-int/lit8 v6, v7, 0x1
move v7, v6
goto :goto_5d
:cond_c2
move-object/from16 v0, p0
iget-object v6, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v6, v5}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v5
aput v5, v8, v12
add-int/lit8 v5, v12, 0x1
move-object/from16 v0, p0
iget-object v6, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v6, v4}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v4
aput v4, v8, v5
add-int/lit8 v4, v12, 0x2
move-object/from16 v0, p0
iget-object v5, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v5, v3}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v3
aput v3, v8, v4
add-int/lit8 v3, v12, 0x3
const/16 v4, 0xff
aput v4, v8, v3
add-int/lit8 v2, v2, 0x1
goto/16 :goto_3f
:cond_ee
add-int/lit8 v1, v1, 0x1
goto/16 :goto_34
:cond_f2
return-object v8
.end method
.method public b()Lcom/b/a/a/a/a/p;
.registers 2
new-instance v0, Lcom/b/a/a/a/a/p$2;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/p$2;-><init>(Lcom/b/a/a/a/a/p;)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public b(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$11;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$11;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public b(I)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$12;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$12;-><init>(Lcom/b/a/a/a/a/p;I)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public b(III)Lcom/b/a/a/a/a/p;
.registers 5
new-instance v0, Lcom/b/a/a/a/a/p$4;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/b/a/a/a/a/p$4;-><init>(Lcom/b/a/a/a/a/p;III)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public c()Lcom/b/a/a/a/a/p;
.registers 6
const/4 v4, 0x3
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
new-array v1, v4, [[F
const/4 v2, 0x0
new-array v3, v4, [F
fill-array-data v3, :array_26
aput-object v3, v1, v2
const/4 v2, 0x1
new-array v3, v4, [F
fill-array-data v3, :array_30
aput-object v3, v1, v2
const/4 v2, 0x2
new-array v3, v4, [F
fill-array-data v3, :array_3a
aput-object v3, v1, v2
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v1
invoke-static {v0, v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
return-object p0
nop
:array_26
.array-data 0x4
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_3a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_30
.array-data 0x4
0x0t 0x0t 0x80t 0xbft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method public c(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$13;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$13;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public d()Lcom/b/a/a/a/a/p;
.registers 2
new-instance v0, Lcom/b/a/a/a/a/p$5;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/p$5;-><init>(Lcom/b/a/a/a/a/p;)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public d(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$14;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$14;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public e()Lcom/b/a/a/a/a/p;
.registers 6
const/4 v4, 0x3
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
new-array v1, v4, [[F
const/4 v2, 0x0
new-array v3, v4, [F
fill-array-data v3, :array_26
aput-object v3, v1, v2
const/4 v2, 0x1
new-array v3, v4, [F
fill-array-data v3, :array_30
aput-object v3, v1, v2
const/4 v2, 0x2
new-array v3, v4, [F
fill-array-data v3, :array_3a
aput-object v3, v1, v2
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v1
invoke-static {v0, v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
return-object p0
nop
:array_26
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x40t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_3a
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x40t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_30
.array-data 0x4
0x0t 0x0t 0x0t 0x40t
0x0t 0x0t 0x0t 0x40t
0x0t 0x0t 0x0t 0x40t
.end array-data
.end method
.method public e(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$6;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$6;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public f()Lcom/b/a/a/a/a/p;
.registers 6
const/4 v4, 0x3
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
new-array v1, v4, [[F
const/4 v2, 0x0
new-array v3, v4, [F
fill-array-data v3, :array_26
aput-object v3, v1, v2
const/4 v2, 0x1
new-array v3, v4, [F
fill-array-data v3, :array_30
aput-object v3, v1, v2
const/4 v2, 0x2
new-array v3, v4, [F
fill-array-data v3, :array_3a
aput-object v3, v1, v2
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v1
invoke-static {v0, v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
return-object p0
nop
:array_26
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0xcdt 0xcct 0x4ct 0xbet
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_3a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0xcdt 0xcct 0x4ct 0xbet
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_30
.array-data 0x4
0xcdt 0xcct 0x4ct 0xbet
0x66t 0x66t 0xe6t 0x3ft
0xcdt 0xcct 0x4ct 0xbet
.end array-data
.end method
.method public f(F)Lcom/b/a/a/a/a/p;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/p$7;
invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/a/p$7;-><init>(Lcom/b/a/a/a/a/p;F)V
invoke-virtual {p0, v0}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/g;)V
return-object p0
.end method
.method public g()Lcom/b/a/a/a/a/p;
.registers 6
const/4 v4, 0x5
iget-object v0, p0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
new-array v1, v4, [[F
const/4 v2, 0x0
new-array v3, v4, [F
fill-array-data v3, :array_36
aput-object v3, v1, v2
const/4 v2, 0x1
new-array v3, v4, [F
fill-array-data v3, :array_44
aput-object v3, v1, v2
const/4 v2, 0x2
new-array v3, v4, [F
fill-array-data v3, :array_52
aput-object v3, v1, v2
const/4 v2, 0x3
new-array v3, v4, [F
fill-array-data v3, :array_60
aput-object v3, v1, v2
const/4 v2, 0x4
new-array v3, v4, [F
fill-array-data v3, :array_6e
aput-object v3, v1, v2
invoke-virtual {p0, v1}, Lcom/b/a/a/a/a/p;->a([[F)[I
move-result-object v1
invoke-static {v0, v1}, Lcom/b/a/a/a/a/n;->a(Lcom/b/a/a/a/a/n;[I)[I
return-object p0
nop
:array_60
.array-data 0x4
0x1t 0xft 0x70t 0x3ct
0x1t 0xft 0x70t 0x3dt
0x31t 0xct 0xc3t 0x3dt
0x1t 0xft 0x70t 0x3dt
0x1t 0xft 0x70t 0x3ct
.end array-data
:array_36
.array-data 0x4
0x1t 0xft 0x70t 0x3bt
0x1t 0xft 0x70t 0x3ct
0x21t 0xdt 0xd2t 0x3ct
0x1t 0xft 0x70t 0x3ct
0x1t 0xft 0x70t 0x3bt
.end array-data
:array_44
.array-data 0x4
0x1t 0xft 0x70t 0x3ct
0x1t 0xft 0x70t 0x3dt
0x31t 0xct 0xc3t 0x3dt
0x1t 0xft 0x70t 0x3dt
0x1t 0xft 0x70t 0x3ct
.end array-data
:array_52
.array-data 0x4
0x21t 0xdt 0xd2t 0x3ct
0x31t 0xct 0xc3t 0x3dt
0x9dt 0xc9t 0x19t 0x3et
0x31t 0xct 0xc3t 0x3dt
0x21t 0xdt 0xd2t 0x3ct
.end array-data
:array_6e
.array-data 0x4
0x1t 0xft 0x70t 0x3bt
0x1t 0xft 0x70t 0x3ct
0x21t 0xdt 0xd2t 0x3ct
0x1t 0xft 0x70t 0x3ct
0x1t 0xft 0x70t 0x3bt
.end array-data
.end method