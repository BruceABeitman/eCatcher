.class public Landroid/support/v8/renderscript/Allocation;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Allocation.java"
.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2
.field public static final USAGE_IO_INPUT:I = 0x20
.field public static final USAGE_IO_OUTPUT:I = 0x40
.field public static final USAGE_SCRIPT:I = 0x1
.field public static final USAGE_SHARED:I = 0x80
.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
.field  mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;
.field  mBitmap:Landroid/graphics/Bitmap;
.field  mConstrainedFace:Z
.field  mConstrainedLOD:Z
.field  mConstrainedY:Z
.field  mConstrainedZ:Z
.field  mCurrentCount:I
.field  mCurrentDimX:I
.field  mCurrentDimY:I
.field  mCurrentDimZ:I
.field  mReadAllowed:Z
.field  mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
.field  mSelectedLOD:I
.field  mSelectedY:I
.field  mSelectedZ:I
.field  mType:Landroid/support/v8/renderscript/Type;
.field  mUsage:I
.field  mWriteAllowed:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sput-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
sget-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
return-void
.end method
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
.registers 7
const/4 v0, 0x1
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mReadAllowed:Z
iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z
sget-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;
iput-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
and-int/lit16 v0, p4, -0xe4
if-eqz v0, :cond_18
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Unknown usage specified."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
and-int/lit8 v0, p4, 0x20
if-eqz v0, :cond_2b
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z
and-int/lit8 v0, p4, -0x24
if-eqz v0, :cond_2b
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Invalid usage combination."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iput-object p3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iput p4, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I
if-eqz p3, :cond_34
invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->updateCacheInfo(Landroid/support/v8/renderscript/Type;)V
:cond_34
return-void
.end method
.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
.registers 4
sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
const/4 v1, 0x2
invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 14
const/4 v8, 0x0
const/4 v7, 0x1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
rem-int/lit8 v9, v6, 0x6
if-eqz v9, :cond_19
new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v8, "Cubemap height must be multiple of 6"
invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_19
div-int/lit8 v9, v6, 0x6
if-eq v9, v1, :cond_25
new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v8, "Only square cube map faces supported"
invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_25
add-int/lit8 v9, v1, -0x1
and-int/2addr v9, v1
if-nez v9, :cond_35
move v3, v7
:goto_2b
if-nez v3, :cond_37
new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v8, "Only power of 2 cube faces supported"
invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_35
move v3, v8
goto :goto_2b
:cond_37
invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
move-result-object v0
new-instance v5, Landroid/support/v8/renderscript/Type$Builder;
invoke-direct {v5, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
invoke-virtual {v5, v1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v5, v1}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;
sget-object v9, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;
if-ne p2, v9, :cond_83
:goto_4d
invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;
move-result-object v4
invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v7
iget v8, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I
invoke-virtual {p0, v7, v8, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
move-result v2
if-nez v2, :cond_85
new-instance v7, Landroid/support/v8/renderscript/RSRuntimeException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Load failed for bitmap "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " element "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v7
:cond_83
move v7, v8
goto :goto_4d
:cond_85
new-instance v7, Landroid/support/v8/renderscript/Allocation;
invoke-direct {v7, v2, p0, v4, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
return-object v7
.end method
.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
.registers 16
sget-object v7, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
const/4 v8, 0x2
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 10
const/4 v0, 0x0
return-object v0
.end method
.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
.registers 4
sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
const/16 v1, 0x83
invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 14
const/4 v9, 0x0
sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v6, :cond_d
move-object v4, p0
check-cast v4, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {v4, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v6
if-nez v6, :cond_3e
and-int/lit16 v6, p3, 0x80
if-eqz v6, :cond_22
new-instance v6, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."
invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_22
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v3
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v6, 0x0
invoke-virtual {v1, p1, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-static {p0, v3, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
goto :goto_c
:cond_3e
invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
move-result-object v5
sget-object v6, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
if-ne p2, v6, :cond_75
invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v6
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z
move-result v6
if-eqz v6, :cond_75
const/16 v6, 0x83
if-ne p3, v6, :cond_75
invoke-virtual {v5, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v6
iget v7, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I
invoke-virtual {p0, v6, v7, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
move-result v2
if-nez v2, :cond_6c
new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v7, "Load failed."
invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v6
:cond_6c
new-instance v0, Landroid/support/v8/renderscript/Allocation;
invoke-direct {v0, v2, p0, v5, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
invoke-direct {v0, p1}, Landroid/support/v8/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
goto :goto_c
:cond_75
invoke-virtual {v5, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v6
iget v7, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I
invoke-virtual {p0, v6, v7, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
move-result v2
if-nez v2, :cond_89
new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v7, "Load failed."
invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v6
:cond_89
new-instance v0, Landroid/support/v8/renderscript/Allocation;
invoke-direct {v0, v2, p0, v5, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
goto/16 :goto_c
.end method
.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/support/v8/renderscript/Allocation;
.registers 5
sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
const/4 v1, 0x3
invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 9
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
and-int/lit16 v2, p4, 0xe0
if-eqz v2, :cond_f
new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v3, "Unsupported usage specified."
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_f
invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {p0, v1, p3, p4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
return-object v0
.end method
.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
.registers 8
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
const/4 v1, 0x0
:try_start_4
const-string v3, "UTF-8"
invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v3
array-length v4, v1
invoke-static {p0, v3, v4, p2}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17
return-object v0
:catch_17
move-exception v2
new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v4, "Could not convert string to utf-8."
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
.registers 11
sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v4, :cond_c
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
move-result-object v4
:goto_b
return-object v4
:cond_c
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
new-instance v0, Landroid/support/v8/renderscript/Type$Builder;
invoke-direct {v0, p0, p1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v4
sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
iget v5, v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I
const/4 v6, 0x0
invoke-virtual {p0, v4, v5, p3, v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I
move-result v1
if-nez v1, :cond_32
new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v5, "Allocation creation failed."
invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v4
:cond_32
new-instance v4, Landroid/support/v8/renderscript/Allocation;
invoke-direct {v4, v1, p0, v3, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
goto :goto_b
.end method
.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
.registers 4
sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;
.registers 4
sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
invoke-static {p0, p1, v0, p2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
return-object v0
.end method
.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
.registers 9
sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v2, :cond_c
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-static {v1, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v2
:goto_b
return-object v2
:cond_c
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v2
if-nez v2, :cond_1d
new-instance v2, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v3, "Bad Type"
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1d
invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v2
iget v3, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I
const/4 v4, 0x0
invoke-virtual {p0, v2, v3, p3, v4}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I
move-result v0
if-nez v0, :cond_32
new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;
const-string v3, "Allocation creation failed."
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:cond_32
new-instance v2, Landroid/support/v8/renderscript/Allocation;
invoke-direct {v2, v0, p0, p1, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
goto :goto_b
.end method
.method private data1DChecks(IIII)V
.registers 8
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
if-gez p1, :cond_f
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Offset must be >= 0."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
const/4 v0, 0x1
if-ge p2, v0, :cond_1a
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Count must be >= 1."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
add-int v0, p1, p2
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
if-le v0, v1, :cond_55
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overflow, Available count "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", got "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " at offset "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_55
if-ge p3, p4, :cond_5f
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Array too small for allocation type."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5f
return-void
.end method
.method static elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
.registers 6
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;
if-ne v0, v1, :cond_d
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v1
:goto_c
return-object v1
:cond_d
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;
if-ne v0, v1, :cond_16
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v1
goto :goto_c
:cond_16
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
if-ne v0, v1, :cond_1f
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v1
goto :goto_c
:cond_1f
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
if-ne v0, v1, :cond_28
invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v1
goto :goto_c
:cond_28
new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Bad bitmap type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private getIDSafe()I
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v0
goto :goto_c
.end method
.method private setBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
.registers 6
invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
move-result-object v0
new-instance v1, Landroid/support/v8/renderscript/Type$Builder;
invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;
sget-object v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;
if-ne p2, v2, :cond_24
const/4 v2, 0x1
:goto_1c
invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;
move-result-object v2
return-object v2
:cond_24
const/4 v2, 0x0
goto :goto_1c
.end method
.method private updateCacheInfo(Landroid/support/v8/renderscript/Type;)V
.registers 5
const/4 v2, 0x1
invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getX()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getY()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getZ()I
move-result v0
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-le v0, v2, :cond_22
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
mul-int/2addr v0, v1
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
:cond_22
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-le v0, v2, :cond_2d
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
mul-int/2addr v0, v1
iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
:cond_2d
return-void
.end method
.method private validate2DRange(IIII)V
.registers 7
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
if-ltz p1, :cond_9
if-gez p2, :cond_11
:cond_9
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Offset cannot be negative."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
if-ltz p4, :cond_15
if-gez p3, :cond_1d
:cond_15
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Height or width cannot be negative."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
add-int v0, p1, p3
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
if-gt v0, v1, :cond_29
add-int v0, p2, p4
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-le v0, v1, :cond_4
:cond_29
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Updated region larger than allocation."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validate3DRange(IIIIII)V
.registers 9
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
if-ltz p1, :cond_b
if-ltz p2, :cond_b
if-gez p3, :cond_13
:cond_b
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Offset cannot be negative."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
if-ltz p5, :cond_19
if-ltz p4, :cond_19
if-gez p6, :cond_21
:cond_19
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Height or width cannot be negative."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
add-int v0, p1, p4
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
if-gt v0, v1, :cond_33
add-int v0, p2, p5
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-gt v0, v1, :cond_33
add-int v0, p3, p6
iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-le v0, v1, :cond_4
:cond_33
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Updated region larger than allocation."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
.registers 6
const/4 v3, 0x2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
if-nez v0, :cond_f
new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v2, "Bitmap has an unsupported format for this operation"
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f
sget-object v1, Landroid/support/v8/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I
invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_1b4
:cond_1a
return-void
:pswitch_1b
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;
if-eq v1, v2, :cond_1a
new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Allocation kind is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " bytes, passed bitmap was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_78
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
if-ne v1, v2, :cond_91
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v1
const/4 v2, 0x4
if-eq v1, v2, :cond_1a
:cond_91
new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Allocation kind is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " bytes, passed bitmap was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_e2
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;
if-ne v1, v2, :cond_fa
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v1
if-eq v1, v3, :cond_1a
:cond_fa
new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Allocation kind is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " bytes, passed bitmap was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_14b
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;
if-ne v1, v2, :cond_163
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v1
if-eq v1, v3, :cond_1a
:cond_163
new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Allocation kind is "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " bytes, passed bitmap was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_data_1b4
.packed-switch 0x1
:pswitch_1b
:pswitch_78
:pswitch_e2
:pswitch_14b
.end packed-switch
.end method
.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
.registers 4
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
if-ne v0, v1, :cond_10
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
if-eq v0, v1, :cond_18
:cond_10
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Cannot update allocation from bitmap, sizes mismatch"
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return-void
.end method
.method private validateIsFloat32()V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;
if-ne v0, v1, :cond_b
return-void
:cond_b
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "32 bit float source does not match allocation type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validateIsInt16()V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_14
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;
if-ne v0, v1, :cond_15
:cond_14
return-void
:cond_15
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "16 bit integer source does not match allocation type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validateIsInt32()V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_14
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;
if-ne v0, v1, :cond_15
:cond_14
return-void
:cond_15
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "32 bit integer source does not match allocation type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validateIsInt8()V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_14
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;
if-ne v0, v1, :cond_15
:cond_14
return-void
:cond_15
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "8 bit integer source does not match allocation type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private validateIsObject()V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_32
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_32
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_32
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;
if-eq v0, v1, :cond_32
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;
if-ne v0, v1, :cond_33
:cond_32
return-void
:cond_33
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Object source does not match allocation type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
.registers 19
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
const/4 v4, 0x0
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v6, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
const/4 v8, 0x1
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v9
const/4 v11, 0x0
move-object/from16 v0, p3
iget v12, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p3
iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v13, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
move v3, p1
move/from16 v7, p2
move/from16 v10, p4
invoke-virtual/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V
return-void
.end method
.method public copy1DRangeFrom(II[B)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
return-void
.end method
.method public copy1DRangeFrom(II[F)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V
return-void
.end method
.method public copy1DRangeFrom(II[I)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
return-void
.end method
.method public copy1DRangeFrom(II[S)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[B)V
.registers 11
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v0
mul-int v6, v0, p2
array-length v0, p3
invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move v2, p1
move v4, p2
move-object v5, p3
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[F)V
.registers 11
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v0
mul-int v6, v0, p2
array-length v0, p3
mul-int/lit8 v0, v0, 0x4
invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move v2, p1
move v4, p2
move-object v5, p3
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[FI)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[I)V
.registers 11
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v0
mul-int v6, v0, p2
array-length v0, p3
mul-int/lit8 v0, v0, 0x4
invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move v2, p1
move v4, p2
move-object v5, p3
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[II)V
return-void
.end method
.method public copy1DRangeFromUnchecked(II[S)V
.registers 11
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v0
mul-int v6, v0, p2
array-length v0, p3
mul-int/lit8 v0, v0, 0x2
invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move v2, p1
move v4, p2
move-object v5, p3
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[SI)V
return-void
.end method
.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
.registers 22
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v6, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v0, p5
invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v9
move-object/from16 v0, p5
iget v12, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p5
iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v13, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
move v3, p1
move/from16 v4, p2
move/from16 v7, p3
move/from16 v8, p4
move/from16 v10, p6
move/from16 v11, p7
invoke-virtual/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V
return-void
.end method
.method public copy2DRangeFrom(IIII[B)V
.registers 6
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V
invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V
return-void
.end method
.method public copy2DRangeFrom(IIII[F)V
.registers 6
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V
invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V
return-void
.end method
.method public copy2DRangeFrom(IIII[I)V
.registers 6
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V
invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V
return-void
.end method
.method public copy2DRangeFrom(IIII[S)V
.registers 6
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V
invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V
return-void
.end method
.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
.registers 13
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
if-nez v0, :cond_27
invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v8
new-instance v7, Landroid/graphics/Canvas;
invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
invoke-virtual {v7, p3, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual {p0, p1, p2, v8}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
:goto_26
return-void
:cond_27
invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V
invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
move v2, p1
move v3, p2
move-object v6, p3
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
goto :goto_26
.end method
.method  copy2DRangeFromUnchecked(IIII[B)V
.registers 16
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
array-length v9, p5
move v2, p1
move v3, p2
move v6, p3
move v7, p4
move-object v8, p5
invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[BI)V
return-void
.end method
.method  copy2DRangeFromUnchecked(IIII[F)V
.registers 16
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
array-length v2, p5
mul-int/lit8 v9, v2, 0x4
move v2, p1
move v3, p2
move v6, p3
move v7, p4
move-object v8, p5
invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[FI)V
return-void
.end method
.method  copy2DRangeFromUnchecked(IIII[I)V
.registers 16
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
array-length v2, p5
mul-int/lit8 v9, v2, 0x4
move v2, p1
move v3, p2
move v6, p3
move v7, p4
move-object v8, p5
invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[II)V
return-void
.end method
.method  copy2DRangeFromUnchecked(IIII[S)V
.registers 16
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;
iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I
array-length v2, p5
mul-int/lit8 v9, v2, 0x2
move v2, p1
move v3, p2
move v6, p3
move v7, p4
move-object v8, p5
invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[SI)V
return-void
.end method
.method public copy3DRangeFrom(IIIIIILandroid/support/v8/renderscript/Allocation;III)V
.registers 26
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
move-object/from16 v0, p7
invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v10
move-object/from16 v0, p7
iget v14, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move/from16 v3, p1
move/from16 v4, p2
move/from16 v5, p3
move/from16 v7, p4
move/from16 v8, p5
move/from16 v9, p6
move/from16 v11, p8
move/from16 v12, p9
move/from16 v13, p10
invoke-virtual/range {v1 .. v14}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIIIIIIII)V
return-void
.end method
.method public copy3DRangeFrom(IIIIII[B)V
.registers 8
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V
invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V
return-void
.end method
.method public copy3DRangeFrom(IIIIII[F)V
.registers 8
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V
invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V
return-void
.end method
.method public copy3DRangeFrom(IIIIII[I)V
.registers 8
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V
invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V
return-void
.end method
.method public copy3DRangeFrom(IIIIII[S)V
.registers 8
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V
invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V
return-void
.end method
.method  copy3DRangeFromUnchecked(IIIIII[B)V
.registers 20
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p7
array-length v11, v0
move v3, p1
move v4, p2
move v5, p3
move/from16 v7, p4
move/from16 v8, p5
move/from16 v9, p6
move-object/from16 v10, p7
invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[BI)V
return-void
.end method
.method  copy3DRangeFromUnchecked(IIIIII[F)V
.registers 20
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p7
array-length v3, v0
mul-int/lit8 v11, v3, 0x4
move v3, p1
move v4, p2
move v5, p3
move/from16 v7, p4
move/from16 v8, p5
move/from16 v9, p6
move-object/from16 v10, p7
invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[FI)V
return-void
.end method
.method  copy3DRangeFromUnchecked(IIIIII[I)V
.registers 20
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p7
array-length v3, v0
mul-int/lit8 v11, v3, 0x4
move v3, p1
move v4, p2
move v5, p3
move/from16 v7, p4
move/from16 v8, p5
move/from16 v9, p6
move-object/from16 v10, p7
invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[II)V
return-void
.end method
.method  copy3DRangeFromUnchecked(IIIIII[S)V
.registers 20
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v2
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
move-object/from16 v0, p7
array-length v3, v0
mul-int/lit8 v11, v3, 0x2
move v3, p1
move v4, p2
move v5, p3
move/from16 v7, p4
move/from16 v8, p5
move/from16 v9, p6
move-object/from16 v10, p7
invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[SI)V
return-void
.end method
.method public copyFrom(Landroid/graphics/Bitmap;)V
.registers 8
const/4 v5, 0x0
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v2
if-nez v2, :cond_27
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v2, 0x0
invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
:goto_26
return-void
:cond_27
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v3
invoke-virtual {v2, v3, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
goto :goto_26
.end method
.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Type;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Types of allocations must match."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
move v6, v1
move v7, v1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
return-void
.end method
.method public copyFrom([B)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[B)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[B)V
goto :goto_17
.end method
.method public copyFrom([F)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[F)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[F)V
goto :goto_17
.end method
.method public copyFrom([I)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[I)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[I)V
goto :goto_17
.end method
.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
.registers 7
iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsObject()V
array-length v2, p1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
if-eq v2, v3, :cond_33
new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Array size mismatch, allocation sizeX = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", array length = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
array-length v4, p1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_33
array-length v2, p1
new-array v1, v2, [I
const/4 v0, 0x0
:goto_37
array-length v2, p1
if-ge v0, v2, :cond_47
aget-object v2, p1, v0
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v2
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_37
:cond_47
const/4 v2, 0x0
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v2, v3, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
return-void
.end method
.method public copyFrom([S)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[S)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[S)V
goto :goto_17
.end method
.method public copyFromUnchecked([B)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
goto :goto_17
.end method
.method public copyFromUnchecked([F)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V
goto :goto_17
.end method
.method public copyFromUnchecked([I)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
goto :goto_17
.end method
.method public copyFromUnchecked([S)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
if-lez v0, :cond_18
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I
move-object v0, p0
move v2, v1
move v3, v1
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V
:goto_17
return-void
:cond_18
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
if-lez v0, :cond_27
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I
iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I
move-object v0, p0
move v2, v1
move-object v5, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V
goto :goto_17
:cond_27
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I
invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V
goto :goto_17
.end method
.method public copyTo(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V
invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
return-void
.end method
.method public copyTo([B)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[B)V
return-void
.end method
.method public copyTo([F)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[F)V
return-void
.end method
.method public copyTo([I)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[I)V
return-void
.end method
.method public copyTo([S)V
.registers 4
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[S)V
return-void
.end method
.method public generateMipmaps()V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGenerateMipmaps(I)V
return-void
.end method
.method public getBytesSize()I
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I
move-result v0
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v1
mul-int/2addr v0, v1
return v0
.end method
.method public getElement()Landroid/support/v8/renderscript/Element;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;
move-result-object v0
return-object v0
.end method
.method public getType()Landroid/support/v8/renderscript/Type;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
return-object v0
.end method
.method public getUsage()I
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I
return v0
.end method
.method public ioReceive()V
.registers 3
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I
and-int/lit8 v0, v0, 0x20
if-nez v0, :cond_e
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Can only receive if IO_INPUT usage specified."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoReceive(I)V
return-void
.end method
.method public ioSend()V
.registers 3
iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I
and-int/lit8 v0, v0, 0x40
if-nez v0, :cond_e
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Can only send buffer if IO_OUTPUT usage specified."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoSend(I)V
return-void
.end method
.method public ioSendOutput()V
.registers 1
invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->ioSend()V
return-void
.end method
.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
.registers 12
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
array-length v0, v0
if-lt p2, v0, :cond_2d
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Component_number "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " out of range."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
if-gez p1, :cond_37
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Offset must be >= 0."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v5
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;
aget-object v0, v0, p2
invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v7
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I
aget v0, v0, p2
mul-int/2addr v7, v0
array-length v0, v5
if-eq v0, v7, :cond_7d
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Field packer sizelength "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, v5
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not match component size "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7d
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I
array-length v6, v5
move v2, p1
move v4, p2
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationElementData1D(IIII[BI)V
return-void
.end method
.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
.registers 9
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;
iget-object v3, v3, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;
invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I
move-result v2
invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B
move-result-object v1
array-length v3, v1
div-int v0, v3, v2
mul-int v3, v2, v0
array-length v4, v1
if-eq v3, v4, :cond_43
new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Field packer length "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
array-length v5, v1
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " not divisible by element size "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_43
invoke-virtual {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
return-void
.end method
.method public syncAll(I)V
.registers 4
packed-switch p1, :pswitch_data_1a
new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;
const-string v1, "Source must be exactly one usage type."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_b
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;
invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I
move-result v1
invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSyncAll(II)V
return-void
:pswitch_data_1a
.packed-switch 0x1
:pswitch_b
:pswitch_b
.end packed-switch
.end method