.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"
.field private mPGRect:Lus/pinguo/androidsdk/PGRect;
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
return-void
.end method
.method public setPGRect(FFFF)V
.registers 6
new-instance v0, Lus/pinguo/androidsdk/PGRect;
invoke-direct {v0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;->mPGRect:Lus/pinguo/androidsdk/PGRect;
return-void
.end method
.method protected setPersonalValue(Z)Z
.registers 11
const/4 v8, 0x1
const/4 v1, 0x0
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;->mPGRect:Lus/pinguo/androidsdk/PGRect;
move-object v0, p0
move v2, v1
move v3, v1
move v5, v1
move v6, v1
move v7, v1
invoke-virtual/range {v0 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
move-result v0
if-nez v0, :cond_17
const-string/jumbo v0, "crop is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:goto_16
return v1
:cond_17
move v1, v8
goto :goto_16
.end method