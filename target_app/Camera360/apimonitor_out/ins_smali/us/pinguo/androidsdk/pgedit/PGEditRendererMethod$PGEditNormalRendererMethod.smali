.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"
.method public constructor <init>(IILandroid/graphics/Bitmap;)V
.registers 5
const-string/jumbo v0, "Effect=Normal"
invoke-direct {p0, v0, p1, p2, p3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;->changeEffect()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
return-void
.end method
.method protected setPersonalValue(Z)Z
.registers 3
const/4 v0, 0x1
return v0
.end method