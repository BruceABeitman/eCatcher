.class public Lco/vine/android/api/VineChannel;
.super Ljava/lang/Object;
.source "VineChannel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lco/vine/android/api/VineChannel;",
        ">;"
    }
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public channelId:J

.field public created:J

.field public fontColor:Ljava/lang/String;

.field public iconFullUrl:Ljava/lang/String;

.field public isLast:Z

.field public lastUsedTimestamp:J

.field public retinaIconFullUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineChannel;->channelId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineChannel;->created:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3d

    :goto_2e
    iput-boolean v0, p0, Lco/vine/android/api/VineChannel;->isLast:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineChannel;
    .registers 5

    const/4 v1, 0x1

    new-instance v0, Lco/vine/android/api/VineChannel;

    invoke-direct {v0}, Lco/vine/android/api/VineChannel;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lco/vine/android/api/VineChannel;->channelId:J

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lco/vine/android/api/VineChannel;->created:J

    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_49

    :goto_36
    iput-boolean v1, v0, Lco/vine/android/api/VineChannel;->isLast:Z

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    return-object v0

    :cond_49
    const/4 v1, 0x0

    goto :goto_36
.end method


# virtual methods
.method public compareTo(Lco/vine/android/api/VineChannel;)I
    .registers 5

    iget-wide v0, p1, Lco/vine/android/api/VineChannel;->channelId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lco/vine/android/api/VineChannel;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lco/vine/android/api/VineChannel;

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineChannel;->compareTo(Lco/vine/android/api/VineChannel;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lco/vine/android/api/VineChannel;

    iget-boolean v3, p0, Lco/vine/android/api/VineChannel;->isLast:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineChannel;->isLast:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->channelId:J

    iget-wide v5, v0, Lco/vine/android/api/VineChannel;->channelId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_4

    :cond_28
    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VineChannel;->created:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_32

    move v1, v2

    goto :goto_4

    :cond_32
    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    iget-wide v5, v0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    move v1, v2

    goto :goto_4

    :cond_3c
    iget-object v3, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    :cond_4a
    move v1, v2

    goto :goto_4

    :cond_4c
    iget-object v3, v0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    if-nez v3, :cond_4a

    :cond_50
    iget-object v3, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_5e
    move v1, v2

    goto :goto_4

    :cond_60
    iget-object v3, v0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    if-nez v3, :cond_5e

    :cond_64
    iget-object v3, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    :cond_72
    move v1, v2

    goto :goto_4

    :cond_74
    iget-object v3, v0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    if-nez v3, :cond_72

    :cond_78
    iget-object v3, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    if-eqz v3, :cond_89

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    :cond_86
    move v1, v2

    goto/16 :goto_4

    :cond_89
    iget-object v3, v0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    if-nez v3, :cond_86

    :cond_8d
    iget-object v3, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_9b
    move v1, v2

    goto/16 :goto_4

    :cond_9e
    iget-object v3, v0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_9b
.end method

.method public hashCode()I
    .registers 9

    const/16 v7, 0x20

    const/4 v2, 0x0

    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->channelId:J

    iget-wide v5, p0, Lco/vine/android/api/VineChannel;->channelId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->created:J

    iget-wide v5, p0, Lco/vine/android/api/VineChannel;->created:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    iget-wide v5, p0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lco/vine/android/api/VineChannel;->isLast:Z

    if-eqz v1, :cond_70

    const/4 v1, 0x1

    :goto_27
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_35
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_43
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5f
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    if-eqz v3, :cond_6d

    iget-object v2, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_6d
    add-int v0, v1, v2

    return v0

    :cond_70
    move v1, v2

    goto :goto_27

    :cond_72
    move v1, v2

    goto :goto_35

    :cond_74
    move v1, v2

    goto :goto_43

    :cond_76
    move v1, v2

    goto :goto_51

    :cond_78
    move v1, v2

    goto :goto_5f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lco/vine/android/api/VineChannel;->channelId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineChannel;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineChannel;->lastUsedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lco/vine/android/api/VineChannel;->isLast:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_23
.end method
