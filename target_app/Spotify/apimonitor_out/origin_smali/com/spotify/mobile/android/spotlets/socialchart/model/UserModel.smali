.class public Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
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
            "Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInfluencerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfluencers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;",
            ">;"
        }
    .end annotation
.end field

.field public mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private mTracksUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    return-void
.end method

.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "tracks"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->buildTracksUriList()V

    return-void
.end method

.method private buildTracksUriList()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel$1;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;Lcom/google/common/base/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTracksUriList:Ljava/util/List;

    :cond_15
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
    check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getInfluencers()Ljava/util/Collection;
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mInfluencers:Ljava/util/Collection;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mInfluencers:Ljava/util/Collection;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mInfluencers:Ljava/util/Collection;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mInfluencers:Ljava/util/Collection;

    return-object v0
.end method

.method public getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    return-object v0
.end method

.method public getTracksUriList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTracksUriList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->mTrackModels:[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->buildTracksUriList()V

    return-void
.end method
