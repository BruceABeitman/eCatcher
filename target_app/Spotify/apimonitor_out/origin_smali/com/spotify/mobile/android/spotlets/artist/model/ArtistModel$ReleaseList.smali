.class public Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
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
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

.field public final releases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;"
        }
    .end annotation
.end field

.field public final totalCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;->CREATOR:Landroid/os/Parcelable$Creator;

    #calls: Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
    invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->access$300(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->totalCount:I

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->values()[Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->totalCount:I

    :goto_f
    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    return-void

    :cond_12
    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->releases:Ljava/util/List;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    iget v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->totalCount:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->totalCount:I

    goto :goto_f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasAllReleases()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->totalCount:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
