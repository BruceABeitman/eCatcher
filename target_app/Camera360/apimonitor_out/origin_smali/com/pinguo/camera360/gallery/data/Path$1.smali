.class Lcom/pinguo/camera360/gallery/data/Path$1;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/data/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pinguo/camera360/gallery/data/Path;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pinguo/camera360/gallery/data/Path;
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(Landroid/os/Parcel;Lcom/pinguo/camera360/gallery/data/Path;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/Path$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pinguo/camera360/gallery/data/Path;
    .registers 3

    new-array v0, p1, [Lcom/pinguo/camera360/gallery/data/Path;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/Path$1;->newArray(I)[Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    return-object v0
.end method
