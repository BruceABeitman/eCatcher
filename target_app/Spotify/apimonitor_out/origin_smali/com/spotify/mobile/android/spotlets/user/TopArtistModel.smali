.class public Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
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
            "Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFollowersCount:I

.field private final mImageUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/user/TopArtistModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "image_url"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "followers_count"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    iput p4, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p0, p1, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public getFollowersCount()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "followers_count"
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image_url"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uri"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    add-int/2addr v0, v1

    return v0

    :cond_2b
    move v0, v1

    goto :goto_b

    :cond_2d
    move v0, v1

    goto :goto_17
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->mFollowersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
