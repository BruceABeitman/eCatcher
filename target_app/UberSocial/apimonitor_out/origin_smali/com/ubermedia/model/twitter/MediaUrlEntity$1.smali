.class final Lcom/ubermedia/model/twitter/MediaUrlEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubermedia/model/twitter/MediaUrlEntity;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ubermedia/model/twitter/MediaUrlEntity;
    .registers 3

    new-instance v0, Lcom/ubermedia/model/twitter/MediaUrlEntity;

    invoke-direct {v0, p1}, Lcom/ubermedia/model/twitter/MediaUrlEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ubermedia/model/twitter/MediaUrlEntity;
    .registers 3

    new-array v0, p1, [Lcom/ubermedia/model/twitter/MediaUrlEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/model/twitter/MediaUrlEntity$1;->a(Landroid/os/Parcel;)Lcom/ubermedia/model/twitter/MediaUrlEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/model/twitter/MediaUrlEntity$1;->a(I)[Lcom/ubermedia/model/twitter/MediaUrlEntity;

    move-result-object v0

    return-object v0
.end method