.class public abstract Lcom/pinguo/album/opengles/UploadedTexture;
.super Lcom/pinguo/album/opengles/BasicTexture;
.source "UploadedTexture.java"
.field private static final TAG:Ljava/lang/String; = "Texture"
.field private static final UPLOAD_LIMIT:I = 0x64
.field private static sBorderKey:Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
.field private static sBorderLines:Ljava/util/HashMap;
.field private static sUploadedCount:I
.field protected mBitmap:Landroid/graphics/Bitmap;
.field private mBorder:I
.field private mContentValid:Z
.field private mIsUploading:Z
.field private mOpaque:Z
.field private mThrottled:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/pinguo/album/opengles/UploadedTexture;->sBorderLines:Ljava/util/HashMap;
new-instance v0, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;-><init>(Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;)V
sput-object v0, Lcom/pinguo/album/opengles/UploadedTexture;->sBorderKey:Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
return-void
.end method
.method protected constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>(Z)V
return-void
.end method
.method protected constructor <init>(Z)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, v0, v1, v1}, Lcom/pinguo/album/opengles/BasicTexture;-><init>(Lcom/pinguo/album/opengles/GLESCanvas;II)V
iput-boolean v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
iput-boolean v1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mIsUploading:Z
iput-boolean v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mOpaque:Z
iput-boolean v1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mThrottled:Z
if-eqz p1, :cond_15
invoke-virtual {p0, v2}, Lcom/pinguo/album/opengles/UploadedTexture;->setBorder(Z)V
iput v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
:cond_15
return-void
.end method
.method private freeBitmap()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_5
invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V
iget-object v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
return-void
:cond_11
const/4 v0, 0x0
goto :goto_5
.end method
.method private getBitmap()Landroid/graphics/Bitmap;
.registers 5
iget-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_2a
invoke-virtual {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
iget v3, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
mul-int/lit8 v3, v3, 0x2
add-int v1, v2, v3
iget-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
iget v3, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
mul-int/lit8 v3, v3, 0x2
add-int v0, v2, v3
iget v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mWidth:I
const/4 v3, -0x1
if-ne v2, v3, :cond_2a
invoke-virtual {p0, v1, v0}, Lcom/pinguo/album/opengles/UploadedTexture;->setSize(II)V
:cond_2a
iget-object v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
return-object v2
.end method
.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
.registers 7
const/4 v3, 0x1
sget-object v1, Lcom/pinguo/album/opengles/UploadedTexture;->sBorderKey:Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
iput-boolean p0, v1, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->vertical:Z
iput-object p1, v1, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;
iput p2, v1, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->length:I
sget-object v2, Lcom/pinguo/album/opengles/UploadedTexture;->sBorderLines:Ljava/util/HashMap;
invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-nez v0, :cond_22
if-eqz p0, :cond_23
invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_19
sget-object v2, Lcom/pinguo/album/opengles/UploadedTexture;->sBorderLines:Ljava/util/HashMap;
invoke-virtual {v1}, Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;->clone()Lcom/pinguo/album/opengles/UploadedTexture$BorderKey;
move-result-object v3
invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_22
return-object v0
:cond_23
invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_19
.end method
.method public static resetUploadLimit()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/pinguo/album/opengles/UploadedTexture;->sUploadedCount:I
return-void
.end method
.method public static uploadLimitReached()Z
.registers 2
sget v0, Lcom/pinguo/album/opengles/UploadedTexture;->sUploadedCount:I
const/16 v1, 0x64
if-le v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private uploadToCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 25
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_112
invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v2
if-nez v2, :cond_112
:try_start_c
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I
move-result v17
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
move-result v16
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
mul-int/lit8 v2, v2, 0x2
add-int v22, v17, v2
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
mul-int/lit8 v2, v2, 0x2
add-int v19, v16, v2
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getTextureWidth()I
move-result v21
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getTextureHeight()I
move-result v20
move/from16 v0, v17
move/from16 v1, v21
if-gt v0, v1, :cond_73
move/from16 v0, v16
move/from16 v1, v20
if-gt v0, v1, :cond_73
const/4 v2, 0x1
:goto_39
invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/opengles/GLESCanvas;->getGLId()Lcom/pinguo/album/opengles/GLId;
move-result-object v2
invoke-interface {v2}, Lcom/pinguo/album/opengles/GLId;->generateTexture()I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mId:I
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-interface {v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V
move/from16 v0, v17
move/from16 v1, v21
if-ne v0, v1, :cond_75
move/from16 v0, v16
move/from16 v1, v20
if-ne v0, v1, :cond_75
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-interface {v0, v1, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->initializeTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/Bitmap;)V
:cond_62
:try_end_62
.catchall {:try_start_c .. :try_end_62} :catchall_10d
:goto_62
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/opengles/UploadedTexture;->freeBitmap()V
invoke-virtual/range {p0 .. p1}, Lcom/pinguo/album/opengles/UploadedTexture;->setAssociatedCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V
const/4 v2, 0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mState:I
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
return-void
:cond_73
const/4 v2, 0x0
goto :goto_39
:try_start_75
:cond_75
invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I
move-result v7
invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I
move-result v8
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v18
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-interface {v0, v1, v7, v8}, Lcom/pinguo/album/opengles/GLESCanvas;->initializeTextureSize(Lcom/pinguo/album/opengles/BasicTexture;II)V
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
move-object/from16 v2, p1
move-object/from16 v3, p0
invoke-interface/range {v2 .. v8}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
if-lez v2, :cond_c5
const/4 v2, 0x1
move-object/from16 v0, v18
move/from16 v1, v20
invoke-static {v2, v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
move-result-object v13
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v9, p1
move-object/from16 v10, p0
move v14, v7
move v15, v8
invoke-interface/range {v9 .. v15}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
const/4 v2, 0x0
move-object/from16 v0, v18
move/from16 v1, v21
invoke-static {v2, v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
move-result-object v13
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v9, p1
move-object/from16 v10, p0
move v14, v7
move v15, v8
invoke-interface/range {v9 .. v15}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
:cond_c5
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
add-int v2, v2, v17
move/from16 v0, v21
if-ge v2, v0, :cond_e8
const/4 v2, 0x1
move-object/from16 v0, v18
move/from16 v1, v20
invoke-static {v2, v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
move-result-object v13
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
add-int v11, v2, v17
const/4 v12, 0x0
move-object/from16 v9, p1
move-object/from16 v10, p0
move v14, v7
move v15, v8
invoke-interface/range {v9 .. v15}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
:cond_e8
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
add-int v2, v2, v16
move/from16 v0, v20
if-ge v2, v0, :cond_62
const/4 v2, 0x0
move-object/from16 v0, v18
move/from16 v1, v21
invoke-static {v2, v0, v1}, Lcom/pinguo/album/opengles/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
move-result-object v13
const/4 v11, 0x0
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
add-int v12, v2, v16
move-object/from16 v9, p1
move-object/from16 v10, p0
move v14, v7
move v15, v8
invoke-interface/range {v9 .. v15}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
:try_end_10b
.catchall {:try_start_75 .. :try_end_10b} :catchall_10d
goto/16 :goto_62
:catchall_10d
move-exception v2
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/opengles/UploadedTexture;->freeBitmap()V
throw v2
:cond_112
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/album/opengles/UploadedTexture;->mState:I
new-instance v2, Ljava/lang/RuntimeException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Texture load fail, no bitmap:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public getHeight()I
.registers 3
iget v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mWidth:I
const/4 v1, -0x1
if-ne v0, v1, :cond_8
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;
:cond_8
iget v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mHeight:I
return v0
.end method
.method protected getTarget()I
.registers 2
const/16 v0, 0xde1
return v0
.end method
.method public getWidth()I
.registers 3
iget v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mWidth:I
const/4 v1, -0x1
if-ne v0, v1, :cond_8
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;
:cond_8
iget v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mWidth:I
return v0
.end method
.method protected invalidateContent()V
.registers 3
const/4 v1, -0x1
iget-object v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_8
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->freeBitmap()V
:cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
iput v1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mWidth:I
iput v1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mHeight:I
return-void
.end method
.method public isContentValid()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->isLoaded()Z
move-result v0
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isOpaque()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mOpaque:Z
return v0
.end method
.method public isUploading()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mIsUploading:Z
return v0
.end method
.method protected onBind(Lcom/pinguo/album/opengles/GLESCanvas;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/opengles/UploadedTexture;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
invoke-virtual {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->isContentValid()Z
move-result v0
return v0
.end method
.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method
.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method
.method public recycle()V
.registers 2
invoke-super {p0}, Lcom/pinguo/album/opengles/BasicTexture;->recycle()V
iget-object v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->freeBitmap()V
:cond_a
return-void
.end method
.method public setIsUploading(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mIsUploading:Z
return-void
.end method
.method public setOpaque(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mOpaque:Z
return-void
.end method
.method protected setThrottled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mThrottled:Z
return-void
.end method
.method public updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 9
invoke-virtual {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->isLoaded()Z
move-result v0
if-nez v0, :cond_19
iget-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mThrottled:Z
if-eqz v0, :cond_15
sget v0, Lcom/pinguo/album/opengles/UploadedTexture;->sUploadedCount:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/pinguo/album/opengles/UploadedTexture;->sUploadedCount:I
const/16 v1, 0x64
if-le v0, v1, :cond_15
:goto_14
:cond_14
return-void
:cond_15
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/UploadedTexture;->uploadToCanvas(Lcom/pinguo/album/opengles/GLESCanvas;)V
goto :goto_14
:cond_19
iget-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
if-nez v0, :cond_14
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v4
invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I
move-result v5
invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I
move-result v6
iget v2, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
iget v3, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mBorder:I
move-object v0, p1
move-object v1, p0
invoke-interface/range {v0 .. v6}, Lcom/pinguo/album/opengles/GLESCanvas;->texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;->freeBitmap()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/opengles/UploadedTexture;->mContentValid:Z
goto :goto_14
.end method