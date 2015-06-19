.class final Lcom/twidroid/ui/StringUrlSpan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/ui/StringUrlSpan;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twidroid/ui/StringUrlSpan;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/ui/StringUrlSpan;

    invoke-direct {v2, v0, v1}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(I)[Lcom/twidroid/ui/StringUrlSpan;
    .registers 3

    new-array v0, p1, [Lcom/twidroid/ui/StringUrlSpan;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/StringUrlSpan$1;->a(Landroid/os/Parcel;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/StringUrlSpan$1;->a(I)[Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    return-object v0
.end method
