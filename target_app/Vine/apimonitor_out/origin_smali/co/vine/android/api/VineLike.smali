.class public Lco/vine/android/api/VineLike;
.super Ljava/lang/Object;
.source "VineLike.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public created:J

.field public likeId:J

.field public location:Ljava/lang/String;

.field public postId:J

.field public user:Lco/vine/android/api/VineUser;

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineLike$1;

    invoke-direct {v0}, Lco/vine/android/api/VineLike$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineLike;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->postId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->created:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLike;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineLike;->verified:I

    const-class v0, Lco/vine/android/api/VineUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineUser;

    iput-object v0, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineLike;
    .registers 4

    new-instance v0, Lco/vine/android/api/VineLike;

    invoke-direct {v0}, Lco/vine/android/api/VineLike;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->postId:J

    const/16 v1, 0x1c

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->created:J

    const/16 v1, 0x1b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->likeId:J

    const/16 v1, 0x1d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lco/vine/android/api/VineLike;->userId:J

    const/16 v1, 0x21

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lco/vine/android/api/VineLike;->verified:I

    return-object v0
.end method


# virtual methods
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

    check-cast v0, Lco/vine/android/api/VineLike;

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->created:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    :cond_20
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->likeId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->likeId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    move v1, v2

    goto :goto_4

    :cond_2a
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->postId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->postId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_34

    move v1, v2

    goto :goto_4

    :cond_34
    iget-wide v3, p0, Lco/vine/android/api/VineLike;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLike;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3e

    move v1, v2

    goto :goto_4

    :cond_3e
    iget v3, p0, Lco/vine/android/api/VineLike;->verified:I

    iget v4, v0, Lco/vine/android/api/VineLike;->verified:I

    if-eq v3, v4, :cond_46

    move v1, v2

    goto :goto_4

    :cond_46
    iget-object v3, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_54
    move v1, v2

    goto :goto_4

    :cond_56
    iget-object v3, v0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_54

    :cond_5a
    iget-object v3, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    :cond_68
    move v1, v2

    goto :goto_4

    :cond_6a
    iget-object v3, v0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-nez v3, :cond_68

    :cond_6e
    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    :cond_7c
    move v1, v2

    goto :goto_4

    :cond_7e
    iget-object v3, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-nez v3, :cond_7c

    :cond_82
    iget-object v3, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_90
    move v1, v2

    goto/16 :goto_4

    :cond_93
    iget-object v3, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_90
.end method

.method public hashCode()I
    .registers 9

    const/16 v7, 0x20

    const/4 v2, 0x0

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->postId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->postId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_24
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_32
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->created:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->created:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->likeId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->likeId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLike;->userId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLike;->userId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineLike;->verified:I

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_67

    iget-object v2, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v2}, Lco/vine/android/api/VineUser;->hashCode()I

    move-result v2

    :cond_67
    add-int v0, v1, v2

    return v0

    :cond_6a
    move v1, v2

    goto :goto_16

    :cond_6c
    move v1, v2

    goto :goto_24

    :cond_6e
    move v1, v2

    goto :goto_32
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lco/vine/android/api/VineLike;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lco/vine/android/api/VineLike;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineLike;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lco/vine/android/api/VineLike;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
