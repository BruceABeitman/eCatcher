.class public Lcom/spotify/mobile/android/model/TermsAndConditionsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/model/TermsAndConditionsModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/model/TermsAndConditionsModel$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1f

    :goto_a
    iput-boolean v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Terms version is empty"

    invoke-static {p4, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    :goto_12
    const-string v1, "client timestamp must be a valid epoch timestamp"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    iput-wide p2, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    iput-object p4, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    const-string v0, ""

    if-eqz p5, :cond_22

    move-object v0, p5

    :cond_22
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-wide v2, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    iget-wide v4, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v2, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    move v0, v1

    goto :goto_4

    :cond_33
    iget-object v2, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    iget-wide v3, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method
