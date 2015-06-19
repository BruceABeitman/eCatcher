.class public Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
.field public final followerCount:I
.field public final name:Ljava/lang/String;
.field public final uri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->uri:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->followerCount:I
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;I)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->uri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
iput p4, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->followerCount:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->uri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->followerCount:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method