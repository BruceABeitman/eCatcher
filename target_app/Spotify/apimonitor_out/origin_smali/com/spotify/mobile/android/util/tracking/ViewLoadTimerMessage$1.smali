.class final Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;

    return-object v0
.end method
