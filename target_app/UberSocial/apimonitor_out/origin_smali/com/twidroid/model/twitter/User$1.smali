.class final Lcom/twidroid/model/twitter/User$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/model/twitter/User;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twidroid/model/twitter/User;
    .registers 4

    new-instance v0, Lcom/twidroid/model/twitter/User;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twidroid/model/twitter/User;-><init>(Landroid/os/Parcel;Lcom/twidroid/model/twitter/User$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/twidroid/model/twitter/User;
    .registers 3

    new-array v0, p1, [Lcom/twidroid/model/twitter/User;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/User$1;->a(Landroid/os/Parcel;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/User$1;->a(I)[Lcom/twidroid/model/twitter/User;

    move-result-object v0

    return-object v0
.end method
