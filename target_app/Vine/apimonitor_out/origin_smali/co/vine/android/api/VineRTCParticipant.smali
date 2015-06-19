.class public Lco/vine/android/api/VineRTCParticipant;
.super Ljava/lang/Object;
.source "VineRTCParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineRTCParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isConnected:Z

.field public isTyping:Z

.field public lastMessageId:J

.field public userId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineRTCParticipant$1;

    invoke-direct {v0}, Lco/vine/android/api/VineRTCParticipant$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineRTCParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JZZJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lco/vine/android/api/VineRTCParticipant;->userId:J

    iput-wide p5, p0, Lco/vine/android/api/VineRTCParticipant;->lastMessageId:J

    iput-boolean p3, p0, Lco/vine/android/api/VineRTCParticipant;->isConnected:Z

    iput-boolean p4, p0, Lco/vine/android/api/VineRTCParticipant;->isTyping:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/api/VineRTCParticipant;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/api/VineRTCParticipant;->lastMessageId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lco/vine/android/api/VineRTCParticipant;->isConnected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_25

    :goto_20
    iput-boolean v1, p0, Lco/vine/android/api/VineRTCParticipant;->isTyping:Z

    return-void

    :cond_23
    move v0, v2

    goto :goto_18

    :cond_25
    move v1, v2

    goto :goto_20
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lco/vine/android/api/VineRTCParticipant;->userId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lco/vine/android/api/VineRTCParticipant;->lastMessageId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lco/vine/android/api/VineRTCParticipant;->isConnected:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lco/vine/android/api/VineRTCParticipant;->isTyping:Z

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1c
    move v0, v2

    goto :goto_11

    :cond_1e
    move v1, v2

    goto :goto_18
.end method
