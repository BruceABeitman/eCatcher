.class Lcom/facebook/katana/service/api/FacebookUser$1;
.super Ljava/lang/Object;
.source "FacebookUser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookUser;
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
        "Lcom/facebook/katana/service/api/FacebookUser;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/katana/service/api/FacebookUser;
    .registers 3

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/api/FacebookUser$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/katana/service/api/FacebookUser;
    .registers 3

    new-array v0, p1, [Lcom/facebook/katana/service/api/FacebookUser;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/api/FacebookUser$1;->newArray(I)[Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v0

    return-object v0
.end method
