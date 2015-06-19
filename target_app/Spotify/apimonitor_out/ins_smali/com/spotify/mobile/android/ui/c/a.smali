.class public final Lcom/spotify/mobile/android/ui/c/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/ak;
.field private a:Landroid/content/Context;
.field private b:F
.field private c:I
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/c/a;->a:Landroid/content/Context;
const/high16 v0, 0x3e80
iput v0, p0, Lcom/spotify/mobile/android/ui/c/a;->b:F
const/16 v0, 0xa
iput v0, p0, Lcom/spotify/mobile/android/ui/c/a;->c:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 37
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
int-to-float v2, v2
move-object/from16 v0, p0
iget v3, v0, Lcom/spotify/mobile/android/ui/c/a;->b:F
mul-float/2addr v2, v3
float-to-int v2, v2
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
int-to-float v3, v3
move-object/from16 v0, p0
iget v4, v0, Lcom/spotify/mobile/android/ui/c/a;->b:F
mul-float/2addr v3, v4
float-to-int v3, v3
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v4
invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
new-instance v3, Landroid/graphics/Canvas;
invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
move-object/from16 v0, p0
iget v4, v0, Lcom/spotify/mobile/android/ui/c/a;->b:F
move-object/from16 v0, p0
iget v5, v0, Lcom/spotify/mobile/android/ui/c/a;->b:F
invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
const/4 v5, 0x0
const/4 v6, 0x0
move-object/from16 v0, p1
invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
move-object/from16 v0, p0
iget v3, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
if-gtz v3, :cond_48
:goto_47
return-object v2
:cond_48
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
mul-int v3, v5, v9
new-array v3, v3, [I
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move v8, v5
invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
add-int/lit8 v21, v5, -0x1
add-int/lit8 v22, v9, -0x1
mul-int v4, v5, v9
move-object/from16 v0, p0
iget v6, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move-object/from16 v0, p0
iget v7, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
add-int/2addr v6, v7
add-int/lit8 v23, v6, 0x1
new-array v0, v4, [I
move-object/from16 v24, v0
new-array v0, v4, [I
move-object/from16 v25, v0
new-array v0, v4, [I
move-object/from16 v26, v0
invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I
move-result v4
new-array v0, v4, [I
move-object/from16 v27, v0
add-int/lit8 v4, v23, 0x1
shr-int/lit8 v4, v4, 0x1
mul-int v6, v4, v4
mul-int/lit16 v4, v6, 0x100
new-array v0, v4, [I
move-object/from16 v28, v0
const/4 v4, 0x0
:goto_8d
mul-int/lit16 v7, v6, 0x100
if-ge v4, v7, :cond_98
div-int v7, v4, v6
aput v7, v28, v4
add-int/lit8 v4, v4, 0x1
goto :goto_8d
:cond_98
const/4 v6, 0x0
const/4 v4, 0x3
move/from16 v0, v23
filled-new-array {v0, v4}, [I
move-result-object v4
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [[I
move-object/from16 v0, p0
iget v7, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
add-int/lit8 v29, v7, 0x1
const/4 v7, 0x0
move/from16 v19, v6
move/from16 v17, v6
move/from16 v20, v7
:goto_b5
move/from16 v0, v20
if-ge v0, v9, :cond_22f
const/4 v6, 0x0
move-object/from16 v0, p0
iget v7, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
neg-int v7, v7
move v8, v6
move v10, v6
move v11, v6
move v12, v6
move v13, v7
move v14, v6
move v15, v6
move/from16 v16, v6
move v7, v6
:goto_c9
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v18, v0
move/from16 v0, v18
if-gt v13, v0, :cond_158
const/16 v18, 0x0
move/from16 v0, v18
invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I
move-result v18
move/from16 v0, v21
move/from16 v1, v18
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v18
add-int v18, v18, v17
aget v18, v3, v18
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v30, v0
add-int v30, v30, v13
aget-object v30, v4, v30
const/16 v31, 0x0
const/high16 v32, 0xff
and-int v32, v32, v18
shr-int/lit8 v32, v32, 0x10
aput v32, v30, v31
const/16 v31, 0x1
const v32, 0xff00
and-int v32, v32, v18
shr-int/lit8 v32, v32, 0x8
aput v32, v30, v31
const/16 v31, 0x2
move/from16 v0, v18
and-int/lit16 v0, v0, 0xff
move/from16 v18, v0
aput v18, v30, v31
invoke-static {v13}, Ljava/lang/Math;->abs(I)I
move-result v18
sub-int v18, v29, v18
const/16 v31, 0x0
aget v31, v30, v31
mul-int v31, v31, v18
add-int v16, v16, v31
const/16 v31, 0x1
aget v31, v30, v31
mul-int v31, v31, v18
add-int v15, v15, v31
const/16 v31, 0x2
aget v31, v30, v31
mul-int v18, v18, v31
add-int v14, v14, v18
if-lez v13, :cond_145
const/16 v18, 0x0
aget v18, v30, v18
add-int v8, v8, v18
const/16 v18, 0x1
aget v18, v30, v18
add-int v7, v7, v18
const/16 v18, 0x2
aget v18, v30, v18
add-int v6, v6, v18
:goto_142
add-int/lit8 v13, v13, 0x1
goto :goto_c9
:cond_145
const/16 v18, 0x0
aget v18, v30, v18
add-int v12, v12, v18
const/16 v18, 0x1
aget v18, v30, v18
add-int v11, v11, v18
const/16 v18, 0x2
aget v18, v30, v18
add-int v10, v10, v18
goto :goto_142
:cond_158
move-object/from16 v0, p0
iget v13, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
const/16 v18, 0x0
move/from16 v34, v17
move/from16 v17, v15
move/from16 v15, v18
move/from16 v18, v16
move/from16 v16, v14
move/from16 v14, v34
:goto_16a
if-ge v15, v5, :cond_223
aget v30, v28, v18
aput v30, v24, v14
aget v30, v28, v17
aput v30, v25, v14
aget v30, v28, v16
aput v30, v26, v14
sub-int v18, v18, v12
sub-int v17, v17, v11
sub-int v16, v16, v10
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v30, v0
sub-int v30, v13, v30
add-int v30, v30, v23
rem-int v30, v30, v23
aget-object v30, v4, v30
const/16 v31, 0x0
aget v31, v30, v31
sub-int v12, v12, v31
const/16 v31, 0x1
aget v31, v30, v31
sub-int v11, v11, v31
const/16 v31, 0x2
aget v31, v30, v31
sub-int v10, v10, v31
if-nez v20, :cond_1b4
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v31, v0
add-int v31, v31, v15
add-int/lit8 v31, v31, 0x1
move/from16 v0, v31
move/from16 v1, v21
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v31
aput v31, v27, v15
:cond_1b4
aget v31, v27, v15
add-int v31, v31, v19
aget v31, v3, v31
const/16 v32, 0x0
const/high16 v33, 0xff
and-int v33, v33, v31
shr-int/lit8 v33, v33, 0x10
aput v33, v30, v32
const/16 v32, 0x1
const v33, 0xff00
and-int v33, v33, v31
shr-int/lit8 v33, v33, 0x8
aput v33, v30, v32
const/16 v32, 0x2
move/from16 v0, v31
and-int/lit16 v0, v0, 0xff
move/from16 v31, v0
aput v31, v30, v32
const/16 v31, 0x0
aget v31, v30, v31
add-int v8, v8, v31
const/16 v31, 0x1
aget v31, v30, v31
add-int v7, v7, v31
const/16 v31, 0x2
aget v30, v30, v31
add-int v6, v6, v30
add-int v18, v18, v8
add-int v17, v17, v7
add-int v16, v16, v6
add-int/lit8 v13, v13, 0x1
rem-int v13, v13, v23
rem-int v30, v13, v23
aget-object v30, v4, v30
const/16 v31, 0x0
aget v31, v30, v31
add-int v12, v12, v31
const/16 v31, 0x1
aget v31, v30, v31
add-int v11, v11, v31
const/16 v31, 0x2
aget v31, v30, v31
add-int v10, v10, v31
const/16 v31, 0x0
aget v31, v30, v31
sub-int v8, v8, v31
const/16 v31, 0x1
aget v31, v30, v31
sub-int v7, v7, v31
const/16 v31, 0x2
aget v30, v30, v31
sub-int v6, v6, v30
add-int/lit8 v14, v14, 0x1
add-int/lit8 v15, v15, 0x1
goto/16 :goto_16a
:cond_223
add-int v6, v19, v5
add-int/lit8 v7, v20, 0x1
move/from16 v19, v6
move/from16 v17, v14
move/from16 v20, v7
goto/16 :goto_b5
:cond_22f
const/16 v18, 0x0
:goto_231
move/from16 v0, v18
if-ge v0, v5, :cond_37f
const/4 v6, 0x0
move-object/from16 v0, p0
iget v7, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
neg-int v7, v7
mul-int/2addr v7, v5
move-object/from16 v0, p0
iget v8, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
neg-int v8, v8
move v10, v6
move v11, v6
move v12, v6
move v13, v7
move v14, v8
move v15, v6
move/from16 v16, v6
move/from16 v17, v6
move v7, v6
move v8, v6
:goto_24d
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v19, v0
move/from16 v0, v19
if-gt v14, v0, :cond_2c4
const/16 v19, 0x0
move/from16 v0, v19
invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I
move-result v19
add-int v19, v19, v18
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v20, v0
add-int v20, v20, v14
aget-object v20, v4, v20
const/16 v21, 0x0
aget v30, v24, v19
aput v30, v20, v21
const/16 v21, 0x1
aget v30, v25, v19
aput v30, v20, v21
const/16 v21, 0x2
aget v30, v26, v19
aput v30, v20, v21
invoke-static {v14}, Ljava/lang/Math;->abs(I)I
move-result v21
sub-int v21, v29, v21
aget v30, v24, v19
mul-int v30, v30, v21
add-int v17, v17, v30
aget v30, v25, v19
mul-int v30, v30, v21
add-int v16, v16, v30
aget v19, v26, v19
mul-int v19, v19, v21
add-int v15, v15, v19
if-lez v14, :cond_2b1
const/16 v19, 0x0
aget v19, v20, v19
add-int v8, v8, v19
const/16 v19, 0x1
aget v19, v20, v19
add-int v7, v7, v19
const/16 v19, 0x2
aget v19, v20, v19
add-int v6, v6, v19
:goto_2a9
move/from16 v0, v22
if-ge v14, v0, :cond_2ae
add-int/2addr v13, v5
:cond_2ae
add-int/lit8 v14, v14, 0x1
goto :goto_24d
:cond_2b1
const/16 v19, 0x0
aget v19, v20, v19
add-int v12, v12, v19
const/16 v19, 0x1
aget v19, v20, v19
add-int v11, v11, v19
const/16 v19, 0x2
aget v19, v20, v19
add-int v10, v10, v19
goto :goto_2a9
:cond_2c4
move-object/from16 v0, p0
iget v13, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
const/4 v14, 0x0
move/from16 v19, v17
move/from16 v17, v16
move/from16 v16, v15
move v15, v14
move/from16 v14, v18
:goto_2d2
if-ge v15, v9, :cond_37b
const/high16 v20, -0x100
aget v21, v3, v14
and-int v20, v20, v21
aget v21, v28, v19
shl-int/lit8 v21, v21, 0x10
or-int v20, v20, v21
aget v21, v28, v17
shl-int/lit8 v21, v21, 0x8
or-int v20, v20, v21
aget v21, v28, v16
or-int v20, v20, v21
aput v20, v3, v14
sub-int v19, v19, v12
sub-int v17, v17, v11
sub-int v16, v16, v10
move-object/from16 v0, p0
iget v0, v0, Lcom/spotify/mobile/android/ui/c/a;->c:I
move/from16 v20, v0
sub-int v20, v13, v20
add-int v20, v20, v23
rem-int v20, v20, v23
aget-object v20, v4, v20
const/16 v21, 0x0
aget v21, v20, v21
sub-int v12, v12, v21
const/16 v21, 0x1
aget v21, v20, v21
sub-int v11, v11, v21
const/16 v21, 0x2
aget v21, v20, v21
sub-int v10, v10, v21
if-nez v18, :cond_31e
add-int v21, v15, v29
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I
move-result v21
mul-int v21, v21, v5
aput v21, v27, v15
:cond_31e
aget v21, v27, v15
add-int v21, v21, v18
const/16 v30, 0x0
aget v31, v24, v21
aput v31, v20, v30
const/16 v30, 0x1
aget v31, v25, v21
aput v31, v20, v30
const/16 v30, 0x2
aget v21, v26, v21
aput v21, v20, v30
const/16 v21, 0x0
aget v21, v20, v21
add-int v8, v8, v21
const/16 v21, 0x1
aget v21, v20, v21
add-int v7, v7, v21
const/16 v21, 0x2
aget v20, v20, v21
add-int v6, v6, v20
add-int v19, v19, v8
add-int v17, v17, v7
add-int v16, v16, v6
add-int/lit8 v13, v13, 0x1
rem-int v13, v13, v23
aget-object v20, v4, v13
const/16 v21, 0x0
aget v21, v20, v21
add-int v12, v12, v21
const/16 v21, 0x1
aget v21, v20, v21
add-int v11, v11, v21
const/16 v21, 0x2
aget v21, v20, v21
add-int v10, v10, v21
const/16 v21, 0x0
aget v21, v20, v21
sub-int v8, v8, v21
const/16 v21, 0x1
aget v21, v20, v21
sub-int v7, v7, v21
const/16 v21, 0x2
aget v20, v20, v21
sub-int v6, v6, v20
add-int/2addr v14, v5
add-int/lit8 v15, v15, 0x1
goto/16 :goto_2d2
:cond_37b
add-int/lit8 v18, v18, 0x1
goto/16 :goto_231
:cond_37f
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move v8, v5
invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
goto/16 :goto_47
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "stackBlur()"
return-object v0
.end method