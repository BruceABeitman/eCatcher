.class public Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClaimedByDisplayName:Ljava/lang/String;

.field private final mClaimedByUri:Ljava/lang/String;

.field private final mClaimedDate:Ljava/util/Date;

.field private final mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_27

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_18
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_18
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "code"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "claimed_date"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "claimed_by_display_name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "claimed_by_uri"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

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

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_2f
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4

    :cond_3b
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    if-nez v2, :cond_39

    goto :goto_2f
.end method

.method public getClaimedByDisplayName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "claimed_by_display_name"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getClaimedByUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "claimed_by_uri"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    return-object v0
.end method

.method public getClaimedDate()Ljava/util/Date;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "claimed_date"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_31
    add-int/2addr v0, v1

    return v0

    :cond_33
    move v0, v1

    goto :goto_b

    :cond_35
    move v0, v1

    goto :goto_17

    :cond_37
    move v0, v1

    goto :goto_24
.end method

.method public isClaimed()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->mClaimedByUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1d
    const-wide/16 v0, 0x0

    goto :goto_f
.end method
