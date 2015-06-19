.class public Lco/vine/android/api/VineLogin;
.super Ljava/lang/Object;
.source "VineLogin.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineLogin;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGIN_TYPE_EMAIL:I = 0x1

.field public static final LOGIN_TYPE_TWITTER:I = 0x2


# instance fields
.field public edition:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public loginType:I

.field public name:Ljava/lang/String;

.field public twitterSecret:Ljava/lang/String;

.field public twitterToken:Ljava/lang/String;

.field public twitterUserId:J

.field public twitterUsername:Ljava/lang/String;

.field public userId:J

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineLogin$1;

    invoke-direct {v0}, Lco/vine/android/api/VineLogin$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineLogin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    iput-wide p3, p0, Lco/vine/android/api/VineLogin;->userId:J

    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    iput-object p5, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iput-wide p5, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    const/4 v0, 0x2

    iput v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    iput-object p7, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

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

    check-cast v0, Lco/vine/android/api/VineLogin;

    iget v3, p0, Lco/vine/android/api/VineLogin;->loginType:I

    iget v4, v0, Lco/vine/android/api/VineLogin;->loginType:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_4

    :cond_28
    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineLogin;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_32

    move v1, v2

    goto :goto_4

    :cond_32
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_40
    move v1, v2

    goto :goto_4

    :cond_42
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-nez v3, :cond_40

    :cond_46
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_54
    move v1, v2

    goto :goto_4

    :cond_56
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-nez v3, :cond_54

    :cond_5a
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    :cond_68
    move v1, v2

    goto :goto_4

    :cond_6a
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-nez v3, :cond_68

    :cond_6e
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    :cond_7c
    move v1, v2

    goto :goto_4

    :cond_7e
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-nez v3, :cond_7c

    :cond_82
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    :cond_90
    move v1, v2

    goto/16 :goto_4

    :cond_93
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-nez v3, :cond_90

    :cond_97
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    :cond_a5
    move v1, v2

    goto/16 :goto_4

    :cond_a8
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-nez v3, :cond_a5

    :cond_ac
    iget-object v3, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_ba
    move v1, v2

    goto/16 :goto_4

    :cond_bd
    iget-object v3, v0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_ba
.end method

.method public hashCode()I
    .registers 9

    const/16 v7, 0x20

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    if-eqz v2, :cond_80

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    if-eqz v2, :cond_82

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_51
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->userId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLogin;->userId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    iget-wide v5, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineLogin;->loginType:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    if-eqz v3, :cond_7b

    iget-object v1, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7b
    add-int v0, v2, v1

    return v0

    :cond_7e
    move v0, v1

    goto :goto_d

    :cond_80
    move v2, v1

    goto :goto_19

    :cond_82
    move v2, v1

    goto :goto_27

    :cond_84
    move v2, v1

    goto :goto_35

    :cond_86
    move v2, v1

    goto :goto_43

    :cond_88
    move v2, v1

    goto :goto_51
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lco/vine/android/api/VineLogin;->loginType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineLogin;->edition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
