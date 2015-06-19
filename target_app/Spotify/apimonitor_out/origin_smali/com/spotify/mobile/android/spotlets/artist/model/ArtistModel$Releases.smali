.class public Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
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
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final albums:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

.field public final appearsOn:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

.field public final compilations:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

.field public final singles:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->albums:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->singles:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->appearsOn:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->compilations:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;)V
    .registers 7
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "albums"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "singles"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "appears_on"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "compilations"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->albums:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-direct {v0, p2, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->singles:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-direct {v0, p3, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->appearsOn:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-direct {v0, p4, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->compilations:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->albums:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->singles:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->appearsOn:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->compilations:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
