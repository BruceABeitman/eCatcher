.class final Lcom/mixpanel/android/mpmetrics/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private final a:Lcom/mixpanel/android/mpmetrics/h;
.field private final b:Landroid/app/Activity;
.field private c:Landroid/graphics/Bitmap;
.field private d:I
.method public constructor <init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V
.registers 3
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->b:Landroid/app/Activity;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->a:Lcom/mixpanel/android/mpmetrics/h;
return-void
.end method
.method private varargs a()Ljava/lang/Void;
.registers 34
move-object/from16 v0, p0
iget-object v2, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
if-nez v2, :cond_12
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/mixpanel/android/mpmetrics/g;->d:I
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
const/4 v2, 0x0
:goto_11
return-object v2
:cond_12
:try_start_12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-object/from16 v0, p0
iget-object v2, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
const/4 v3, 0x1
const/4 v4, 0x1
const/4 v5, 0x1
invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lcom/mixpanel/android/mpmetrics/g;->d:I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
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
new-array v0, v4, [I
move-object/from16 v23, v0
new-array v0, v4, [I
move-object/from16 v24, v0
new-array v0, v4, [I
move-object/from16 v25, v0
invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I
move-result v4
new-array v0, v4, [I
move-object/from16 v26, v0
const v4, 0x1b900
new-array v0, v4, [I
move-object/from16 v27, v0
const/4 v4, 0x0
:goto_63
const v6, 0x1b900
if-ge v4, v6, :cond_6f
div-int/lit16 v6, v4, 0x1b9
aput v6, v27, v4
add-int/lit8 v4, v4, 0x1
goto :goto_63
:cond_6f
const/4 v6, 0x0
const/4 v14, 0x0
const/16 v4, 0x29
const/4 v7, 0x3
filled-new-array {v4, v7}, [I
move-result-object v4
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [[I
const/4 v7, 0x0
move/from16 v19, v6
move/from16 v20, v7
:goto_85
move/from16 v0, v20
if-ge v0, v9, :cond_1bf
const/4 v6, 0x0
const/16 v7, -0x14
move v8, v6
move v10, v6
move v11, v6
move v12, v6
move v13, v7
move/from16 v16, v6
move/from16 v17, v6
move/from16 v18, v6
move v7, v6
:goto_98
const/16 v15, 0x14
if-gt v13, v15, :cond_105
const/4 v15, 0x0
invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I
move-result v15
move/from16 v0, v21
invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I
move-result v15
add-int/2addr v15, v14
aget v15, v3, v15
add-int/lit8 v28, v13, 0x14
aget-object v28, v4, v28
const/16 v29, 0x0
const/high16 v30, 0xff
and-int v30, v30, v15
shr-int/lit8 v30, v30, 0x10
aput v30, v28, v29
const/16 v29, 0x1
const v30, 0xff00
and-int v30, v30, v15
shr-int/lit8 v30, v30, 0x8
aput v30, v28, v29
const/16 v29, 0x2
and-int/lit16 v15, v15, 0xff
aput v15, v28, v29
invoke-static {v13}, Ljava/lang/Math;->abs(I)I
move-result v15
rsub-int/lit8 v15, v15, 0x15
const/16 v29, 0x0
aget v29, v28, v29
mul-int v29, v29, v15
add-int v18, v18, v29
const/16 v29, 0x1
aget v29, v28, v29
mul-int v29, v29, v15
add-int v17, v17, v29
const/16 v29, 0x2
aget v29, v28, v29
mul-int v15, v15, v29
add-int v16, v16, v15
if-lez v13, :cond_f8
const/4 v15, 0x0
aget v15, v28, v15
add-int/2addr v8, v15
const/4 v15, 0x1
aget v15, v28, v15
add-int/2addr v7, v15
const/4 v15, 0x2
aget v15, v28, v15
add-int/2addr v6, v15
:goto_f5
add-int/lit8 v13, v13, 0x1
goto :goto_98
:cond_f8
const/4 v15, 0x0
aget v15, v28, v15
add-int/2addr v12, v15
const/4 v15, 0x1
aget v15, v28, v15
add-int/2addr v11, v15
const/4 v15, 0x2
aget v15, v28, v15
add-int/2addr v10, v15
goto :goto_f5
:cond_105
const/16 v13, 0x14
const/4 v15, 0x0
:goto_108
if-ge v15, v5, :cond_1b5
aget v28, v27, v18
aput v28, v23, v14
aget v28, v27, v17
aput v28, v24, v14
aget v28, v27, v16
aput v28, v25, v14
sub-int v18, v18, v12
sub-int v17, v17, v11
sub-int v16, v16, v10
add-int/lit8 v28, v13, -0x14
add-int/lit8 v28, v28, 0x29
rem-int/lit8 v28, v28, 0x29
aget-object v28, v4, v28
const/16 v29, 0x0
aget v29, v28, v29
sub-int v12, v12, v29
const/16 v29, 0x1
aget v29, v28, v29
sub-int v11, v11, v29
const/16 v29, 0x2
aget v29, v28, v29
sub-int v10, v10, v29
if-nez v20, :cond_146
add-int/lit8 v29, v15, 0x14
add-int/lit8 v29, v29, 0x1
move/from16 v0, v29
move/from16 v1, v21
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v29
aput v29, v26, v15
:cond_146
aget v29, v26, v15
add-int v29, v29, v19
aget v29, v3, v29
const/16 v30, 0x0
const/high16 v31, 0xff
and-int v31, v31, v29
shr-int/lit8 v31, v31, 0x10
aput v31, v28, v30
const/16 v30, 0x1
const v31, 0xff00
and-int v31, v31, v29
shr-int/lit8 v31, v31, 0x8
aput v31, v28, v30
const/16 v30, 0x2
move/from16 v0, v29
and-int/lit16 v0, v0, 0xff
move/from16 v29, v0
aput v29, v28, v30
const/16 v29, 0x0
aget v29, v28, v29
add-int v8, v8, v29
const/16 v29, 0x1
aget v29, v28, v29
add-int v7, v7, v29
const/16 v29, 0x2
aget v28, v28, v29
add-int v6, v6, v28
add-int v18, v18, v8
add-int v17, v17, v7
add-int v16, v16, v6
add-int/lit8 v13, v13, 0x1
rem-int/lit8 v13, v13, 0x29
rem-int/lit8 v28, v13, 0x29
aget-object v28, v4, v28
const/16 v29, 0x0
aget v29, v28, v29
add-int v12, v12, v29
const/16 v29, 0x1
aget v29, v28, v29
add-int v11, v11, v29
const/16 v29, 0x2
aget v29, v28, v29
add-int v10, v10, v29
const/16 v29, 0x0
aget v29, v28, v29
sub-int v8, v8, v29
const/16 v29, 0x1
aget v29, v28, v29
sub-int v7, v7, v29
const/16 v29, 0x2
aget v28, v28, v29
sub-int v6, v6, v28
add-int/lit8 v14, v14, 0x1
add-int/lit8 v15, v15, 0x1
goto/16 :goto_108
:cond_1b5
add-int v6, v19, v5
add-int/lit8 v7, v20, 0x1
move/from16 v19, v6
move/from16 v20, v7
goto/16 :goto_85
:cond_1bf
const/4 v15, 0x0
:goto_1c0
if-ge v15, v5, :cond_2fb
const/4 v7, 0x0
mul-int/lit8 v6, v5, -0x14
const/16 v8, -0x14
move v10, v7
move v11, v7
move v12, v7
move v13, v7
move v14, v8
move/from16 v16, v7
move/from16 v17, v7
move/from16 v18, v7
move v8, v7
:goto_1d3
const/16 v19, 0x14
move/from16 v0, v19
if-gt v14, v0, :cond_240
const/16 v19, 0x0
move/from16 v0, v19
invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I
move-result v19
add-int v19, v19, v15
add-int/lit8 v20, v14, 0x14
aget-object v20, v4, v20
const/16 v21, 0x0
aget v28, v23, v19
aput v28, v20, v21
const/16 v21, 0x1
aget v28, v24, v19
aput v28, v20, v21
const/16 v21, 0x2
aget v28, v25, v19
aput v28, v20, v21
invoke-static {v14}, Ljava/lang/Math;->abs(I)I
move-result v21
rsub-int/lit8 v21, v21, 0x15
aget v28, v23, v19
mul-int v28, v28, v21
add-int v18, v18, v28
aget v28, v24, v19
mul-int v28, v28, v21
add-int v17, v17, v28
aget v19, v25, v19
mul-int v19, v19, v21
add-int v16, v16, v19
if-lez v14, :cond_22d
const/16 v19, 0x0
aget v19, v20, v19
add-int v10, v10, v19
const/16 v19, 0x1
aget v19, v20, v19
add-int v8, v8, v19
const/16 v19, 0x2
aget v19, v20, v19
add-int v7, v7, v19
:goto_225
move/from16 v0, v22
if-ge v14, v0, :cond_22a
add-int/2addr v6, v5
:cond_22a
add-int/lit8 v14, v14, 0x1
goto :goto_1d3
:cond_22d
const/16 v19, 0x0
aget v19, v20, v19
add-int v13, v13, v19
const/16 v19, 0x1
aget v19, v20, v19
add-int v12, v12, v19
const/16 v19, 0x2
aget v19, v20, v19
add-int v11, v11, v19
goto :goto_225
:cond_240
const/16 v6, 0x14
const/4 v14, 0x0
move/from16 v19, v18
move/from16 v18, v17
move/from16 v17, v16
move/from16 v16, v14
move v14, v15
move/from16 v32, v13
move v13, v6
move v6, v7
move v7, v8
move v8, v10
move v10, v11
move v11, v12
move/from16 v12, v32
:goto_256
move/from16 v0, v16
if-ge v0, v9, :cond_2f7
const/high16 v20, -0x100
aget v21, v27, v19
shl-int/lit8 v21, v21, 0x10
or-int v20, v20, v21
aget v21, v27, v18
shl-int/lit8 v21, v21, 0x8
or-int v20, v20, v21
aget v21, v27, v17
or-int v20, v20, v21
aput v20, v3, v14
sub-int v19, v19, v12
sub-int v18, v18, v11
sub-int v17, v17, v10
add-int/lit8 v20, v13, -0x14
add-int/lit8 v20, v20, 0x29
rem-int/lit8 v20, v20, 0x29
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
if-nez v15, :cond_29a
add-int/lit8 v21, v16, 0x15
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I
move-result v21
mul-int v21, v21, v5
aput v21, v26, v16
:cond_29a
aget v21, v26, v16
add-int v21, v21, v15
const/16 v28, 0x0
aget v29, v23, v21
aput v29, v20, v28
const/16 v28, 0x1
aget v29, v24, v21
aput v29, v20, v28
const/16 v28, 0x2
aget v21, v25, v21
aput v21, v20, v28
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
add-int v18, v18, v7
add-int v17, v17, v6
add-int/lit8 v13, v13, 0x1
rem-int/lit8 v13, v13, 0x29
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
add-int/lit8 v16, v16, 0x1
goto/16 :goto_256
:cond_2f7
add-int/lit8 v15, v15, 0x1
goto/16 :goto_1c0
:cond_2fb
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move v8, v5
invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
new-instance v2, Landroid/graphics/Canvas;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/f;->a()I
move-result v3
sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
:goto_317
:try_end_317
.catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_317} :catch_31a
const/4 v2, 0x0
goto/16 :goto_11
:catch_31a
move-exception v2
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/mixpanel/android/mpmetrics/g;->d:I
const/4 v2, 0x0
move-object/from16 v0, p0
iput-object v2, v0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
goto :goto_317
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/g;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->a:Lcom/mixpanel/android/mpmetrics/h;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
iget v2, p0, Lcom/mixpanel/android/mpmetrics/g;->d:I
invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/h;->a(Landroid/graphics/Bitmap;I)V
return-void
.end method
.method protected final onPreExecute()V
.registers 8
const/4 v3, 0x1
const/4 v6, 0x0
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->b:Landroid/app/Activity;
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v2
invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {v1, v3}, Landroid/view/View;->buildDrawingCache(Z)V
invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v3
const/4 v0, 0x0
if-eqz v3, :cond_40
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
if-lez v4, :cond_40
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
if-lez v4, :cond_40
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
div-int/lit8 v4, v4, 0x2
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
div-int/lit8 v5, v5, 0x2
if-lez v4, :cond_40
if-lez v5, :cond_40
invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
:cond_40
if-nez v2, :cond_45
invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
:cond_45
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->c:Landroid/graphics/Bitmap;
return-void
.end method