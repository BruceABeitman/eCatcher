.class public Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;
.super Ljava/lang/Object;
.source "IDPhotoMaker.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
const-class v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCropImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
.registers 13
const/4 v3, 0x0
const/high16 v10, 0x3f00
if-eqz p0, :cond_b
invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v8
if-eqz v8, :cond_c
:cond_b
:goto_b
return-object v3
:cond_c
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
if-lez v5, :cond_b
if-lez v2, :cond_b
if-ge v5, v2, :cond_46
int-to-float v8, v5
int-to-float v9, v2
div-float v0, v8, v9
cmpl-float v8, v0, p1
if-nez v8, :cond_24
move-object v3, p0
goto :goto_b
:cond_24
cmpg-float v8, v0, p1
if-gez v8, :cond_37
int-to-float v8, v5
div-float/2addr v8, p1
add-float/2addr v8, v10
float-to-int v1, v8
move v4, v5
const/4 v6, 0x0
sub-int v8, v2, v1
div-int/lit8 v7, v8, 0x2
invoke-static {p0, v6, v7, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_b
:cond_37
move v1, v2
int-to-float v8, v2
mul-float/2addr v8, p1
add-float/2addr v8, v10
float-to-int v4, v8
sub-int v8, v5, v4
div-int/lit8 v6, v8, 0x2
const/4 v7, 0x0
invoke-static {p0, v6, v7, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_b
:cond_46
int-to-float v8, v5
int-to-float v9, v2
div-float v0, v8, v9
cmpl-float v8, v0, p1
if-nez v8, :cond_50
move-object v3, p0
goto :goto_b
:cond_50
cmpl-float v8, v0, p1
if-lez v8, :cond_63
move v1, v2
int-to-float v8, v2
mul-float/2addr v8, p1
add-float/2addr v8, v10
float-to-int v4, v8
sub-int v8, v5, v4
div-int/lit8 v6, v8, 0x2
const/4 v7, 0x0
invoke-static {p0, v6, v7, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_b
:cond_63
int-to-float v8, v5
div-float/2addr v8, p1
add-float/2addr v8, v10
float-to-int v1, v8
move v4, v5
const/4 v6, 0x0
sub-int v8, v2, v1
div-int/lit8 v7, v8, 0x2
invoke-static {p0, v6, v7, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_b
.end method
.method public static getTargetBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 24
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
const/4 v4, 0x0
if-eqz p0, :cond_19
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v17
if-nez v17, :cond_19
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v17
if-eqz v17, :cond_19
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v17
if-nez v17, :cond_23
:cond_19
sget-object v17, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
const-string/jumbo v18, "Illegal input bitmap!"
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object v5, v4
:goto_22
return-object v5
:cond_23
move/from16 v0, p1
int-to-float v0, v0
move/from16 v17, v0
move/from16 v0, p2
int-to-float v0, v0
move/from16 v18, v0
div-float v11, v17, v18
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v16
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
move/from16 v0, v16
move/from16 v1, p1
if-ne v0, v1, :cond_68
move/from16 v0, p2
if-ne v2, v0, :cond_68
sget-object v17, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
const-string/jumbo v18, "Original bitmap match the require size"
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v4, p0
:goto_4b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
sget-object v17, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "consume time:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v19, v12, v14
invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object v5, v4
goto :goto_22
:cond_68
move/from16 v0, v16
move/from16 v1, p1
if-lt v0, v1, :cond_72
move/from16 v0, p2
if-ge v2, v0, :cond_a2
:cond_72
sget-object v17, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Illegal input bitmap size![w:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, "]x[h:"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, "]"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v4, p0
goto :goto_4b
:cond_a2
move/from16 v0, v16
int-to-float v0, v0
move/from16 v17, v0
int-to-float v0, v2
move/from16 v18, v0
div-float v8, v17, v18
cmpl-float v17, v8, v11
if-lez v17, :cond_102
move/from16 v9, p2
move/from16 v0, p2
int-to-float v0, v0
move/from16 v17, v0
mul-float v17, v17, v8
move/from16 v0, v17
float-to-int v10, v0
:goto_bc
if-le v9, v10, :cond_10f
move v3, v9
:goto_bf
const/16 v17, 0x0
move-object/from16 v0, p0
move/from16 v1, v17
invoke-static {v0, v3, v1}, Lcom/pinguo/lib/image/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v4
invoke-static {v4, v11}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->getCropImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
sget-object v17, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->TAG:Ljava/lang/String;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "outBitmap[w:"
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, "]x[h:"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, "]"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4b
:cond_102
move/from16 v10, p1
move/from16 v0, p1
int-to-float v0, v0
move/from16 v17, v0
div-float v17, v17, v8
move/from16 v0, v17
float-to-int v9, v0
goto :goto_bc
:cond_10f
move v3, v10
goto :goto_bf
.end method