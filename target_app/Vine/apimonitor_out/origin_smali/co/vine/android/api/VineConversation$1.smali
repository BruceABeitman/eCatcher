.class final Lco/vine/android/api/VineConversation$1;
.super Ljava/lang/Object;
.source "VineConversation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineConversation;
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
        "Lco/vine/android/api/VineConversation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineConversation;
    .registers 3

    new-instance v0, Lco/vine/android/api/VineConversation;

    invoke-direct {v0, p1}, Lco/vine/android/api/VineConversation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineConversation$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineConversation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/api/VineConversation;
    .registers 3

    new-array v0, p1, [Lco/vine/android/api/VineConversation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineConversation$1;->newArray(I)[Lco/vine/android/api/VineConversation;

    move-result-object v0

    return-object v0
.end method
