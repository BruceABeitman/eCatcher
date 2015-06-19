.class public Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public static final EMPTY_GALLERY:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
.field public final images:Ljava/util/List;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;-><init>(Ljava/util/List;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->EMPTY_GALLERY:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->CREATOR:Landroid/os/Parcelable$Creator;
#calls: Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readImmutableList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->access$300(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->images:Ljava/util/List;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/util/List;)V
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#calls: Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/util/List;)Ljava/util/List;
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->access$100(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->images:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->images:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
return-void
.end method