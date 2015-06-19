.class final Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers$1;
.super Ljava/lang/Object;
.source "VinePrivateMessagePostResponseWithUsers.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
    .registers 3

    new-instance v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;

    invoke-direct {v0, p1}, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
    .registers 3

    new-array v0, p1, [Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers$1;->newArray(I)[Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;

    move-result-object v0

    return-object v0
.end method
