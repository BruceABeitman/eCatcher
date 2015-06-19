.class final Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
    .registers 4

    new-instance v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;-><init>(Landroid/os/Parcel;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;->createFromParcel(Landroid/os/Parcel;)Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
    .registers 3

    new-array v0, p1, [Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;->newArray(I)[Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    move-result-object v0

    return-object v0
.end method
