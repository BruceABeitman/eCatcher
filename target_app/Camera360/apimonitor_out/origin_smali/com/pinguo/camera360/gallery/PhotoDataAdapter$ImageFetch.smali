.class Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field imageBit:I

.field indexOffset:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;->indexOffset:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;->imageBit:I

    return-void
.end method
