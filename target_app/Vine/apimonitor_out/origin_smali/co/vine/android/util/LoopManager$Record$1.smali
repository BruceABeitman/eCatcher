.class final Lco/vine/android/util/LoopManager$Record$1;
.super Ljava/lang/Object;
.source "LoopManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/LoopManager$Record;
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
        "Lco/vine/android/util/LoopManager$Record;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/util/LoopManager$Record;
    .registers 4

    new-instance v0, Lco/vine/android/util/LoopManager$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lco/vine/android/util/LoopManager$Record;-><init>(Landroid/os/Parcel;Lco/vine/android/util/LoopManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/util/LoopManager$Record$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/util/LoopManager$Record;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/util/LoopManager$Record;
    .registers 3

    new-array v0, p1, [Lco/vine/android/util/LoopManager$Record;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/util/LoopManager$Record$1;->newArray(I)[Lco/vine/android/util/LoopManager$Record;

    move-result-object v0

    return-object v0
.end method
