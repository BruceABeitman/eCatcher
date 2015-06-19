.class public Lco/vine/android/api/TwitterUser;
.super Ljava/lang/Object;
.source "TwitterUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultProfileImage:Z

.field public description:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public screenName:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/TwitterUser$1;

    invoke-direct {v0}, Lco/vine/android/api/TwitterUser$1;-><init>()V

    sput-object v0, Lco/vine/android/api/TwitterUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_37

    :goto_2e
    iput-boolean v0, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/TwitterUser;->userId:J

    return-void

    :cond_37
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    iput-object p5, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    iput-object p6, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    iput-boolean p7, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    iput-wide p8, p0, Lco/vine/android/api/TwitterUser;->userId:J

    return-void
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

    check-cast v0, Lco/vine/android/api/TwitterUser;

    iget-boolean v3, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    iget-boolean v4, v0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget-wide v3, p0, Lco/vine/android/api/TwitterUser;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/TwitterUser;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_4

    :cond_28
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_36
    move v1, v2

    goto :goto_4

    :cond_38
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-nez v3, :cond_36

    :cond_3c
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    :cond_4a
    move v1, v2

    goto :goto_4

    :cond_4c
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-nez v3, :cond_4a

    :cond_50
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_5e
    move v1, v2

    goto :goto_4

    :cond_60
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-nez v3, :cond_5e

    :cond_64
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    :cond_72
    move v1, v2

    goto :goto_4

    :cond_74
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-nez v3, :cond_72

    :cond_78
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_89

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    :cond_86
    move v1, v2

    goto/16 :goto_4

    :cond_89
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-nez v3, :cond_86

    :cond_8d
    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_9b
    move v1, v2

    goto/16 :goto_4

    :cond_9e
    iget-object v3, v0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_9b
.end method

.method public hashCode()I
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_41
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_72

    iget-object v2, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4f
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eqz v3, :cond_58

    const/4 v1, 0x1

    :cond_58
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/TwitterUser;->userId:J

    iget-wide v4, p0, Lco/vine/android/api/TwitterUser;->userId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0

    :cond_68
    move v0, v1

    goto :goto_b

    :cond_6a
    move v2, v1

    goto :goto_17

    :cond_6c
    move v2, v1

    goto :goto_25

    :cond_6e
    move v2, v1

    goto :goto_33

    :cond_70
    move v2, v1

    goto :goto_41

    :cond_72
    move v2, v1

    goto :goto_4f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lco/vine/android/api/TwitterUser;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_23
.end method
