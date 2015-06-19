.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;
.super Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditRotateRendererMethod"
.end annotation


# instance fields
.field private mMirrorX:Z

.field private mMirrorY:Z

.field private mRotate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public setMirrorX(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mMirrorX:Z

    return-void
.end method

.method public setMirrorY(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mMirrorY:Z

    return-void
.end method

.method protected setPersonalValue(Z)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mRotate:I

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_c

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mRotate:I

    if-nez v0, :cond_23

    :cond_c
    move v2, v1

    :goto_d
    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mRotate:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mMirrorX:Z

    iget-boolean v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mMirrorY:Z

    move-object v0, p0

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "rotateMirror is fail"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    :goto_22
    return v1

    :cond_23
    move v2, v8

    goto :goto_d

    :cond_25
    move v1, v8

    goto :goto_22
.end method

.method public setRotate(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->mRotate:I

    return-void
.end method
