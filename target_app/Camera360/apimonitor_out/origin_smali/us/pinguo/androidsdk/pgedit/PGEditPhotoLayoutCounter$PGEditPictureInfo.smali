.class public Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
.super Ljava/lang/Object;
.source "PGEditPhotoLayoutCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditPictureInfo"
.end annotation


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->width:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->height:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->width:I

    return-void
.end method
