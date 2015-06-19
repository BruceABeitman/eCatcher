.class public Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final PLAYLISTS_ABTEST_NAME:Ljava/lang/String; = "NTX_artist_published_playlists_position"
.field public static final TOP_TRACKS_LIMIT:I = 0x5
.field public final abTests:Ljava/util/HashMap;
.field public final biography:Lcom/google/common/base/Optional;
.field public final gallery:Lcom/google/common/base/Optional;
.field public final headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
.field public final info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
.field public final latestRelease:Lcom/google/common/base/Optional;
.field public final merchandise:Lcom/google/common/base/Optional;
.field public final playlists:Ljava/util/List;
.field public final relatedArtists:Ljava/util/List;
.field public final releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
.field public final topTracks:Ljava/util/List;
.field public final upcomingConcerts:Ljava/util/List;
.field public final uri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;Lcom/google/common/base/Optional;Ljava/util/List;Ljava/util/List;Lcom/google/common/base/Optional;Ljava/util/List;Lcom/google/common/base/Optional;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;Lcom/google/common/base/Optional;Ljava/util/List;Ljava/util/HashMap;)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
iput-object p9, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
iput-object p10, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iput-object p11, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
iput-object p12, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
iput-object p13, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
.registers 19
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
invoke-static {p4}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
const-string v1, "tracks"
invoke-static {v1, p5}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
const-string v1, "concerts"
invoke-static {v1, p6}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
if-nez p7, :cond_7c
const/4 v1, 0x0
:goto_22
invoke-static {v1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
const-string v1, "artists"
invoke-static {v1, p8}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
if-nez p9, :cond_85
const/4 v1, 0x0
:goto_33
invoke-static {v1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
iput-object p10, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
invoke-static/range {p11 .. p11}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
const-string v1, "playlists"
move-object/from16 v0, p12
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
if-eqz p13, :cond_8e
invoke-virtual/range {p13 .. p13}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v1
if-nez v1, :cond_8e
const-string v1, "tests"
move-object/from16 v0, p13
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_68
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_8e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
iget-object v4, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ABTest;->name:Ljava/lang/String;
invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_68
:cond_7c
const-string v1, "items"
invoke-virtual {p7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_22
:cond_85
const-string v1, "text"
invoke-virtual {p9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
goto :goto_33
:cond_8e
return-void
.end method
.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
.registers 3
invoke-static {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private findTopTrack(Ljava/lang/String;)Lcom/google/common/base/Optional;
.registers 6
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
move-object v1, v0
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;
iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_26
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
:goto_23
move-object v1, v0
goto :goto_b
:cond_25
return-object v1
:cond_26
move-object v0, v1
goto :goto_23
.end method
.method private static readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method
.method private static readNullableList(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/List;
.registers 3
if-nez p1, :cond_7
invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_14
invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;
move-result-object v0
goto :goto_6
:cond_14
invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
goto :goto_6
.end method
.method private static readNullableList(Ljava/util/List;)Ljava/util/List;
.registers 2
if-nez p0, :cond_7
invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
goto :goto_6
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public findTopTrackIndex(Ljava/lang/String;)I
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
const/4 v1, 0x0
:goto_d
if-ge v1, v2, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;->uri:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
move v0, v1
:goto_20
return v0
:cond_21
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_24
const/4 v0, -0x1
goto :goto_20
.end method
.method public getReleases(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
.registers 5
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$2;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_34
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown release type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_20
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->albums:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
:goto_24
return-object v0
:pswitch_25
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->singles:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
goto :goto_24
:pswitch_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->appearsOn:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
goto :goto_24
:pswitch_2f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;->compilations:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
goto :goto_24
:pswitch_data_34
.packed-switch 0x1
:pswitch_20
:pswitch_25
:pswitch_2a
:pswitch_2f
.end packed-switch
.end method
.method public hasReleasesOfType(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->getReleases(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;
move-result-object v0
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public reorderTopTracks(Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
.registers 16
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/i;
iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/i;->a:Ljava/lang/String;
invoke-direct {p0, v2}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->findTopTrack(Ljava/lang/String;)Lcom/google/common/base/Optional;
move-result-object v2
invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z
move-result v3
if-eqz v3, :cond_29
invoke-virtual {v2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_29
new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;
iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/i;->a:Ljava/lang/String;
const/4 v4, -0x1
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/i;->b:Ljava/lang/String;
invoke-direct {v2, v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Track;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_37
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
iget-object v9, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
iget-object v10, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
iget-object v11, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
iget-object v12, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
iget-object v13, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
invoke-direct/range {v0 .. v13}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;Lcom/google/common/base/Optional;Ljava/util/List;Ljava/util/List;Lcom/google/common/base/Optional;Ljava/util/List;Lcom/google/common/base/Optional;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;Lcom/google/common/base/Optional;Ljava/util/List;Ljava/util/HashMap;)V
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->headerImage:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$HeaderImage;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Parcelable;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->upcomingConcerts:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->merchandise:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->biography:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->releases:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Releases;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->latestRelease:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Parcelable;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->abTests:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
return-void
.end method