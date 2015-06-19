.class public Lco/vine/android/service/VineServiceCallback;
.super Ljava/lang/Object;
.source "VineServiceCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/service/VineServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResponder:Lco/vine/android/service/VineServiceResponder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/service/VineServiceCallback$1;

    invoke-direct {v0}, Lco/vine/android/service/VineServiceCallback$1;-><init>()V

    sput-object v0, Lco/vine/android/service/VineServiceCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/VineServiceResponder;

    iput-object v0, p0, Lco/vine/android/service/VineServiceCallback;->mResponder:Lco/vine/android/service/VineServiceResponder;

    return-void
.end method

.method public constructor <init>(Lco/vine/android/service/VineServiceResponder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/service/VineServiceCallback;->mResponder:Lco/vine/android/service/VineServiceResponder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResponder()Lco/vine/android/service/VineServiceResponder;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineServiceCallback;->mResponder:Lco/vine/android/service/VineServiceResponder;

    return-object v0
.end method

.method public onServiceResponse(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lco/vine/android/service/VineServiceCallback;->mResponder:Lco/vine/android/service/VineServiceResponder;

    const-string v1, "action_code"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "resp_code"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "reason_phrase"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lco/vine/android/service/VineServiceResponder;->onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/service/VineServiceCallback;->mResponder:Lco/vine/android/service/VineServiceResponder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
