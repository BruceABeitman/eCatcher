.class public Lco/vine/android/api/VineError;
.super Ljava/lang/Object;
.source "VineError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineError$VineKnownErrors;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:Ljava/lang/String;

.field public final errorCode:I

.field public final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineError$1;

    invoke-direct {v0}, Lco/vine/android/api/VineError$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/api/VineError;->errorCode:I

    iput-object p2, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/VineError;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineError;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineError;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lco/vine/android/api/VineError;->errorCode:I

    check-cast p1, Lco/vine/android/api/VineError;

    iget v3, p1, Lco/vine/android/api/VineError;->errorCode:I

    if-ne v2, v3, :cond_19

    :goto_17
    move v1, v0

    goto :goto_4

    :cond_19
    move v0, v1

    goto :goto_17

    :cond_1b
    instance-of v2, p1, Lco/vine/android/api/VineError$VineKnownErrors;

    if-eqz v2, :cond_4

    iget v2, p0, Lco/vine/android/api/VineError;->errorCode:I

    check-cast p1, Lco/vine/android/api/VineError$VineKnownErrors;

    iget v3, p1, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    if-ne v2, v3, :cond_29

    :goto_27
    move v1, v0

    goto :goto_4

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    iget v1, p0, Lco/vine/android/api/VineError;->errorCode:I

    invoke-static {v1}, Lco/vine/android/api/VineError$VineKnownErrors;->valueOf(I)Lco/vine/android/api/VineError$VineKnownErrors;

    move-result-object v0

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

    if-eq v0, v1, :cond_f

    invoke-virtual {v0, p1}, Lco/vine/android/api/VineError$VineKnownErrors;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    goto :goto_e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lco/vine/android/api/VineError;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineError;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
