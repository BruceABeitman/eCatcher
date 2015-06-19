.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"
.field private static final EDGE_STEP:F = 0.02f
.field private static final PORTRAIT_FACELIFT:Ljava/lang/String; = "Portrait_FaceLift"
.field private static final PORTRAIT_SKIN:Ljava/lang/String; = "Portrait_Skin"
.field private static final PORTRAIT_SKIN_TEXTURE:Ljava/lang/String; = "Effect=Portrait_SkinTexture"
.field private static final SKIN_CHANGE:I = 0x8
.field private static final SKIN_INIT:I = 0x7
.field private static final SKIN_REINIT:I = 0x9
.field private static final SKIN_STRONG_DEFAULT:F = 0.3f
.field private static final STRONG_STEP:F = 0.05f
.field private static final WHITE_LEVEL_STEP:F = 0.05f
.field private mChildEffect:Ljava/lang/String;
.field private mInitFaceLiftParams:Ljava/lang/String;
.field private mInitSkinParams:Ljava/lang/String;
.field private mLastEdge:F
.field private mLastStrong:F
.field private mLastWhiteLevel:F
.field private mParams:Ljava/lang/String;
.field private mThinFaceAnalyer:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const-string/jumbo v0, "Effect=Portrait_FaceLift|Effect=Portrait_Skin"
const/4 v1, 0x0
invoke-direct {p0, v0, v2, v2, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
.registers 7
invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
const v0, 0x3e99999a
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
const-string/jumbo v0, "leftEdgeStrong=0;rightEdgeStrong=0;eyeStrong=0"
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitFaceLiftParams:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "whiteLevel="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ";Strong="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
return-void
.end method
.method private getEdge(F)F
.registers 4
const v1, 0x3ca3d70a
div-float v0, p1, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v1
return v0
.end method
.method private getStrong(F)F
.registers 4
const v1, 0x3d4ccccd
div-float v0, p1, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v1
return v0
.end method
.method private getWhiteLevel(F)F
.registers 4
const v1, 0x3d4ccccd
div-float v0, p1, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v1
return v0
.end method
.method public changeForFaceLiftEdge(F)Z
.registers 5
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getEdge(F)F
move-result v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastEdge:F
cmpl-float v1, v1, v0
if-nez v1, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastEdge:F
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mThinFaceAnalyer:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
const/high16 v2, 0x42c8
mul-float/2addr v2, v0
float-to-int v2, v2
int-to-float v2, v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->setThinFaceLevel(F)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mThinFaceAnalyer:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->execCalc()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mParams:Ljava/lang/String;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mParams:Ljava/lang/String;
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitFaceLiftParams:Ljava/lang/String;
const-string/jumbo v1, "Portrait_FaceLift"
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mChildEffect:Ljava/lang/String;
const/16 v1, 0x8
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
const/4 v1, 0x1
goto :goto_b
.end method
.method public changeForSkinStrong(F)Z
.registers 5
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getStrong(F)F
move-result v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
cmpl-float v1, v1, v0
if-nez v1, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Strong="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mParams:Ljava/lang/String;
const-string/jumbo v1, "Portrait_Skin"
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mChildEffect:Ljava/lang/String;
const/16 v1, 0x8
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
const/4 v1, 0x1
goto :goto_b
.end method
.method public changeForSkinWhiteLevel(F)Z
.registers 5
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getWhiteLevel(F)F
move-result v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
cmpl-float v1, v1, v0
if-nez v1, :cond_c
const/4 v1, 0x0
:goto_b
return v1
:cond_c
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "whiteLevel="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mParams:Ljava/lang/String;
const-string/jumbo v1, "Portrait_Skin"
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mChildEffect:Ljava/lang/String;
const/16 v1, 0x8
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
const/4 v1, 0x1
goto :goto_b
.end method
.method public clearIndex()V
.registers 2
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearIndex()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearImage(I)Z
return-void
.end method
.method public clearInitSkinParams()V
.registers 2
const-string/jumbo v0, "whiteLevel=0;Strong=0"
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
return-void
.end method
.method public getEdgeRate()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastEdge:F
return v0
.end method
.method public getInitFaceLiftParams()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitFaceLiftParams:Ljava/lang/String;
return-object v0
.end method
.method public getInitSkinParams()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "whiteLevel="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ";Strong="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
return-object v0
.end method
.method public getStrongRate()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
return v0
.end method
.method public getWhiteLevelRate()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
return v0
.end method
.method public initSkin()V
.registers 3
const/4 v0, 0x7
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "whiteLevel="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastWhiteLevel:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ";Strong="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mLastStrong:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
return-void
.end method
.method public initSkin(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->initSkin()V
return-void
.end method
.method public makeSkinPhoto()Landroid/graphics/Bitmap;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public makeSkinPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 8
const/4 v2, 0x0
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->init()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearIndex()V
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture(Landroid/graphics/Bitmap;)Z
move-result v1
if-nez v1, :cond_e
:goto_d
:cond_d
return-object v2
:cond_e
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I
move-result-object v2
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I
move-result v3
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I
move-result v4
sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
goto :goto_d
.end method
.method public makeSkinPhotoToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 8
const/4 v2, 0x0
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->init()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearIndex()V
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture(Landroid/graphics/Bitmap;)Z
move-result v1
if-nez v1, :cond_e
:goto_d
:cond_d
return-object v2
:cond_e
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I
move-result-object v2
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I
move-result v3
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I
move-result v4
sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
goto :goto_d
.end method
.method public makeSkinPhotoToJpg(Ljava/lang/String;Ljava/lang/String;I)Z
.registers 8
const/4 v2, 0x0
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->init()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearIndex()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture()Z
move-result v1
if-nez v1, :cond_10
:goto_f
:cond_f
return v2
:cond_10
const/16 v3, 0x64
invoke-virtual {p0, p2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2JpegFile(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_f
const/4 v2, 0x1
goto :goto_f
.end method
.method public makeSkinPhotoToPng(Ljava/lang/String;Ljava/lang/String;I)Z
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->init()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearIndex()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture()Z
move-result v1
if-nez v1, :cond_11
:goto_10
:cond_10
return v2
:cond_11
invoke-virtual {p0, p2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2PngFile(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_10
move v2, v3
goto :goto_10
.end method
.method public rendererAction()V
.registers 9
const/4 v7, 0x0
const/4 v1, 0x0
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
const/4 v2, 0x7
if-ne v0, v2, :cond_2e
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->init()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearIndex()V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture()Z
move-result v6
if-nez v6, :cond_14
:cond_13
:goto_13
return-void
:cond_14
iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowWidth:I
iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowHeight:I
move-object v0, p0
move v2, v1
move v3, v1
invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Screen(IIIII)Z
move-result v0
if-nez v0, :cond_28
const-string/jumbo v0, "getMakedImage2Screen failed"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_13
:cond_28
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
invoke-interface {v0, v7, v7}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
goto :goto_13
:cond_2e
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
const/16 v2, 0x8
if-ne v0, v2, :cond_66
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mChildEffect:Ljava/lang/String;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mParams:Ljava/lang/String;
invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_45
const-string/jumbo v0, "face change setEffectParams is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_13
:cond_45
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->make()Z
move-result v0
if-nez v0, :cond_52
const-string/jumbo v0, "change make is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_13
:cond_52
iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowWidth:I
iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowHeight:I
move-object v0, p0
move v2, v1
move v3, v1
invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Screen(IIIII)Z
move-result v0
if-nez v0, :cond_13
const-string/jumbo v0, "getMakedImage2Screen failed"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_13
:cond_66
const/16 v0, 0x9
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mActionType:I
if-eq v0, v1, :cond_13
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererAction()V
goto :goto_13
.end method
.method public setEditThinFaceAnalyer(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mThinFaceAnalyer:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
return-void
.end method
.method public setInitFaceLiftParams(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitFaceLiftParams:Ljava/lang/String;
return-void
.end method
.method public setInitSkinParams(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
return-void
.end method
.method public setPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
return-void
.end method
.method protected setPersonalValue(Z)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public setShowWidthAndShowHeight(II)V
.registers 3
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowWidth:I
iput p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mShowHeight:I
return-void
.end method
.method public setSkinTexture()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSkinTexture(Landroid/graphics/Bitmap;)Z
move-result v0
return v0
.end method
.method public setSkinTexture(Landroid/graphics/Bitmap;)Z
.registers 13
const/4 v8, 0x1
const/4 v1, 0x0
const-string/jumbo v0, "Effect=Portrait_SkinTexture"
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEffect(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const-string/jumbo v0, "skin Portrait_SkinTexture setEffect  is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:cond_11
:goto_11
return v1
:cond_12
if-eqz p1, :cond_2d
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I
move-result-object v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-virtual {p0, v1, v0, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setImageFromARGB(I[III)Z
move-result v0
if-nez v0, :cond_68
const-string/jumbo v0, "setSkinTexture setImageFromARGB  is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_11
:cond_2d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setImageFromPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_68
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setSkinTexture setImageFromPath  is fail:"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_68
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setSkinTexture setSupportImageFromPNGPath  is fail:"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_11
:cond_68
const/4 v4, 0x0
const/16 v7, 0x190
move-object v0, p0
move v2, v1
move v3, v1
move v5, v1
move v6, v1
invoke-virtual/range {v0 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
move-result v0
if-nez v0, :cond_7d
const-string/jumbo v0, "setSkinTexture rotateMirror is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_11
:cond_7d
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->make()Z
move-result v0
if-nez v0, :cond_8a
const-string/jumbo v0, "setSkinTexture make is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_11
:cond_8a
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
move-result-object v10
if-eqz v10, :cond_11
invoke-virtual {v10}, Lus/pinguo/androidsdk/PGColorBuffer;->getColorBuffer()[I
move-result-object v0
invoke-virtual {v10}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageWidth()I
move-result v2
invoke-virtual {v10}, Lus/pinguo/androidsdk/PGColorBuffer;->getImageHeight()I
move-result v3
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v9
invoke-virtual {p0, v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearImage(I)Z
invoke-static {v9}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I
move-result-object v0
invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-virtual {p0, v8, v0, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setImageFromARGB(I[III)Z
move-result v0
if-nez v0, :cond_bf
const-string/jumbo v0, "setSkinTexture 1 setImageFromARGB is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_bf
invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearImage(I)Z
if-eqz p1, :cond_e1
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I
move-result-object v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-virtual {p0, v1, v0, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setImageFromARGB(I[III)Z
move-result v0
if-nez v0, :cond_11d
const-string/jumbo v0, "setSkinTexture setImageFromARGB  is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_e1
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setImageFromPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_11d
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setSkinTexture setImageFromPath  is fail:"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_11d
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setSkinTexture setSupportImageFromPNGPath  is fail:"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_11d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mEffect:Ljava/lang/String;
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEffect(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12d
const-string/jumbo v0, "setSkinTexture setEffect is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_12d
const-string/jumbo v0, "Portrait_FaceLift"
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitFaceLiftParams:Ljava/lang/String;
invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_140
const-string/jumbo v0, "setSkinTexture  PORTRAIT_FACELIFT setEffectParams is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_140
const-string/jumbo v0, "Portrait_Skin"
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->mInitSkinParams:Ljava/lang/String;
invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_153
const-string/jumbo v0, "setSkinTexture PORTRAIT_SKIN setEffectParams is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_153
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->make()Z
move-result v0
if-nez v0, :cond_161
const-string/jumbo v0, "change make is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto/16 :goto_11
:cond_161
move v1, v8
goto/16 :goto_11
.end method