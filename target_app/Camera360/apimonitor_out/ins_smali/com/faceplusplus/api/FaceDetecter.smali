.class public Lcom/faceplusplus/api/FaceDetecter;
.super Ljava/lang/Object;
.source "FaceDetecter.java"
.field private apikey:Ljava/lang/String;
.field private apisecret:Ljava/lang/String;
.field private bitmap:Landroid/graphics/Bitmap;
.field private faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
.field private isTracking:Z
.field private mDTHandle:I
.field private mDTResult:I
.field private mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/faceplusplus/api/FaceDetecter;->isTracking:Z
const-string/jumbo v0, "jsia8vbx8de5yvak46vdwqe5i9cx32b3"
iput-object v0, p0, Lcom/faceplusplus/api/FaceDetecter;->apisecret:Ljava/lang/String;
new-instance v0, Lcom/faceplusplus/api/FaceDetecter$Logger;
invoke-direct {v0, p0}, Lcom/faceplusplus/api/FaceDetecter$Logger;-><init>(Lcom/faceplusplus/api/FaceDetecter;)V
iput-object v0, p0, Lcom/faceplusplus/api/FaceDetecter;->mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
return-void
.end method
.method static synthetic access$0(Lcom/faceplusplus/api/FaceDetecter;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/faceplusplus/api/FaceDetecter;->apikey:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/faceplusplus/api/FaceDetecter;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/faceplusplus/api/FaceDetecter;->apisecret:Ljava/lang/String;
return-object v0
.end method
.method public findFaces(Landroid/graphics/Bitmap;)[Lcom/faceplusplus/api/FaceDetecter$Face;
.registers 10
const/4 v1, 0x0
iput-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
iput-object p1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
if-eqz v2, :cond_d
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
if-nez v2, :cond_e
:goto_d
:cond_d
return-object v1
:cond_e
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iget v3, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
invoke-static {v2, v3, p1}, Lcom/faceplusplus/api/Native;->detectFaceFromBitmap(IILandroid/graphics/Bitmap;)[F
move-result-object v7
iget-object v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
iget-boolean v3, p0, Lcom/faceplusplus/api/FaceDetecter;->isTracking:Z
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Lcom/faceplusplus/api/FaceDetecter$Logger;->updateCount(ZZ)V
if-eqz v7, :cond_d
array-length v2, v7
rem-int/lit8 v2, v2, 0x5
if-nez v2, :cond_d
array-length v1, v7
div-int/lit8 v1, v1, 0x5
new-array v1, v1, [Lcom/faceplusplus/api/FaceDetecter$Face;
iput-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
const/4 v6, 0x0
:goto_2d
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
array-length v1, v1
if-lt v6, v1, :cond_35
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
goto :goto_d
:cond_35
new-instance v0, Lcom/faceplusplus/api/FaceDetecter$Face;
invoke-direct {v0}, Lcom/faceplusplus/api/FaceDetecter$Face;-><init>()V
mul-int/lit8 v1, v6, 0x5
add-int/lit8 v1, v1, 0x4
aget v1, v7, v1
float-to-int v1, v1
mul-int/lit8 v2, v6, 0x5
aget v2, v7, v2
mul-int/lit8 v3, v6, 0x5
add-int/lit8 v3, v3, 0x1
aget v3, v7, v3
mul-int/lit8 v4, v6, 0x5
add-int/lit8 v4, v4, 0x2
aget v4, v7, v4
mul-int/lit8 v5, v6, 0x5
add-int/lit8 v5, v5, 0x3
aget v5, v7, v5
invoke-virtual/range {v0 .. v5}, Lcom/faceplusplus/api/FaceDetecter$Face;->initial(IFFFF)V
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
aput-object v0, v1, v6
add-int/lit8 v6, v6, 0x1
goto :goto_2d
.end method
.method public findFaces([BII)[Lcom/faceplusplus/api/FaceDetecter$Face;
.registers 13
const/4 v6, 0x0
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
if-eqz v1, :cond_9
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
if-nez v1, :cond_a
:cond_9
return-object v6
:cond_a
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
invoke-static {v1, v2, p1, p2, p3}, Lcom/faceplusplus/api/Native;->detectFaceFromGraybyte(II[BII)[F
move-result-object v8
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
iget-boolean v2, p0, Lcom/faceplusplus/api/FaceDetecter;->isTracking:Z
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Lcom/faceplusplus/api/FaceDetecter$Logger;->updateCount(ZZ)V
if-eqz v8, :cond_9
array-length v1, v8
rem-int/lit8 v1, v1, 0x5
if-nez v1, :cond_9
array-length v1, v8
div-int/lit8 v1, v1, 0x5
new-array v6, v1, [Lcom/faceplusplus/api/FaceDetecter$Face;
const/4 v7, 0x0
:goto_27
array-length v1, v6
if-ge v7, v1, :cond_9
new-instance v0, Lcom/faceplusplus/api/FaceDetecter$Face;
invoke-direct {v0}, Lcom/faceplusplus/api/FaceDetecter$Face;-><init>()V
mul-int/lit8 v1, v7, 0x5
add-int/lit8 v1, v1, 0x4
aget v1, v8, v1
float-to-int v1, v1
mul-int/lit8 v2, v7, 0x5
aget v2, v8, v2
mul-int/lit8 v3, v7, 0x5
add-int/lit8 v3, v3, 0x1
aget v3, v8, v3
mul-int/lit8 v4, v7, 0x5
add-int/lit8 v4, v4, 0x2
aget v4, v8, v4
mul-int/lit8 v5, v7, 0x5
add-int/lit8 v5, v5, 0x3
aget v5, v8, v5
invoke-virtual/range {v0 .. v5}, Lcom/faceplusplus/api/FaceDetecter$Face;->initial(IFFFF)V
aput-object v0, v6, v7
add-int/lit8 v7, v7, 0x1
goto :goto_27
.end method
.method public getImageByteArray()[B
.registers 6
const/high16 v3, 0x4416
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iget-object v2, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
if-le v1, v2, :cond_47
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
int-to-float v1, v1
div-float v0, v1, v3
:goto_1f
const/high16 v1, 0x3f80
cmpl-float v1, v0, v1
if-lez v1, :cond_40
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v0
float-to-int v2, v2
iget-object v3, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
int-to-float v3, v3
div-float/2addr v3, v0
float-to-int v3, v3
const/4 v4, 0x1
invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
:cond_40
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/faceplusplus/api/Utils;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B
move-result-object v1
goto :goto_7
:cond_47
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
int-to-float v1, v1
div-float v0, v1, v3
goto :goto_1f
.end method
.method public getResultJsonString()Ljava/lang/String;
.registers 12
iget-object v5, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
if-eqz v5, :cond_8
iget-object v5, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
if-nez v5, :cond_a
:cond_8
const/4 v5, 0x0
:goto_9
return-object v5
:cond_a
iget-object v5, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iget-object v5, p0, Lcom/faceplusplus/api/FaceDetecter;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v6, p0, Lcom/faceplusplus/api/FaceDetecter;->faceinfo:[Lcom/faceplusplus/api/FaceDetecter$Face;
array-length v7, v6
const/4 v5, 0x0
:goto_1f
if-lt v5, v7, :cond_26
invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_9
:cond_26
aget-object v0, v6, v5
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
int-to-float v8, v4
iget v9, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->left:F
mul-float/2addr v8, v9
float-to-int v8, v8
invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
int-to-float v8, v2
iget v9, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->top:F
mul-float/2addr v8, v9
float-to-int v8, v8
invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
int-to-float v8, v4
iget v9, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->right:F
iget v10, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->left:F
sub-float/2addr v9, v10
mul-float/2addr v8, v9
float-to-int v8, v8
invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
int-to-float v8, v2
iget v9, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->bottom:F
iget v10, v0, Lcom/faceplusplus/api/FaceDetecter$Face;->top:F
sub-float/2addr v9, v10
mul-float/2addr v8, v9
float-to-int v8, v8
invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v5, v5, 0x1
goto :goto_1f
.end method
.method public init(Landroid/content/Context;Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x0
iput-object p2, p0, Lcom/faceplusplus/api/FaceDetecter;->apikey:Ljava/lang/String;
const-string/jumbo v2, "faceppapi"
invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string/jumbo v2, "offlineapi"
invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
iget-object v2, p0, Lcom/faceplusplus/api/FaceDetecter;->apikey:Ljava/lang/String;
invoke-static {v2}, Lcom/faceplusplus/api/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/faceplusplus/api/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/faceplusplus/api/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v2}, Lcom/faceplusplus/api/Native;->init(Landroid/content/Context;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_24
:cond_23
:goto_23
return v1
:cond_24
iget-object v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
invoke-virtual {v2, p1}, Lcom/faceplusplus/api/FaceDetecter$Logger;->syncLog(Landroid/content/Context;)V
invoke-static {}, Lcom/faceplusplus/api/Native;->createDTHandle()I
move-result v2
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
if-eqz v2, :cond_23
invoke-static {}, Lcom/faceplusplus/api/Native;->createDTResult()I
move-result v2
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
if-nez v2, :cond_45
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iget v3, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
invoke-static {p1, v2, v3}, Lcom/faceplusplus/api/Native;->release(Landroid/content/Context;II)I
goto :goto_23
:cond_45
const/4 v1, 0x1
goto :goto_23
.end method
.method public release(Landroid/content/Context;)Z
.registers 5
const/4 v2, 0x0
iget v0, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
invoke-static {p1, v0, v1}, Lcom/faceplusplus/api/Native;->release(Landroid/content/Context;II)I
iget-object v0, p0, Lcom/faceplusplus/api/FaceDetecter;->mLogger:Lcom/faceplusplus/api/FaceDetecter$Logger;
invoke-virtual {v0, p1}, Lcom/faceplusplus/api/FaceDetecter$Logger;->saveLog(Landroid/content/Context;)V
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
const/4 v0, 0x1
return v0
.end method
.method public setHighAccuracy(Z)I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTResult:I
invoke-static {v1, p1}, Lcom/faceplusplus/api/Native;->setHighAccuracy(IZ)I
move-result v0
return v0
.end method
.method public setMinFaceSize(I)I
.registers 3
iget v0, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
invoke-static {v0, p1}, Lcom/faceplusplus/api/Native;->setMinFaceSize(II)I
move-result v0
return v0
.end method
.method public setTrackingMode(Z)I
.registers 4
iput-boolean p1, p0, Lcom/faceplusplus/api/FaceDetecter;->isTracking:Z
const/4 v0, 0x0
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter;->mDTHandle:I
invoke-static {v1, p1}, Lcom/faceplusplus/api/Native;->setTrackingMode(IZ)I
move-result v0
return v0
.end method