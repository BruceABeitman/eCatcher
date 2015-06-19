.class public Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
.field private final mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
.field private mArtistsString:Ljava/lang/String;
.field private final mInCollection:Z
.field private final mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
.field private final mIsUnavailable:Z
.field private final mName:Ljava/lang/String;
.field private final mRank:I
.field private final mUri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtistsString:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
sget-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
sget-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
const-class v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-nez v0, :cond_52
move v0, v1
:goto_3e
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-nez v0, :cond_54
:goto_4c
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->buildArtistsString()V
return-void
:cond_52
move v0, v2
goto :goto_3e
:cond_54
move v1, v2
goto :goto_4c
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;ZIZ)V
.registers 10
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
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtistsString:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
iput-boolean p6, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
iput p7, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
iput-boolean p8, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->buildArtistsString()V
return-void
.end method
.method private buildArtistsString()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
array-length v0, v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
array-length v0, v0
new-array v1, v0, [Ljava/lang/String;
const/4 v0, 0x0
:goto_f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
array-length v2, v2
if-ge v0, v2, :cond_21
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_21
const-string v0, ", "
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtistsString:Ljava/lang/String;
:cond_29
return-void
.end method
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
:goto_4
:cond_4
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
check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
iget v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_41
:cond_3b
move v0, v1
goto :goto_4
:cond_3d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
if-nez v2, :cond_3b
:cond_41
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4d
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
if-eqz v2, :cond_69
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6d
:cond_67
move v0, v1
goto :goto_4
:cond_69
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
if-nez v2, :cond_67
:cond_6d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
if-eqz v2, :cond_7d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_7b
move v0, v1
goto :goto_4
:cond_7d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_7b
.end method
.method public getAlbum()Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
return-object v0
.end method
.method public getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
return-object v0
.end method
.method public getArtistsString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtistsString:Ljava/lang/String;
return-object v0
.end method
.method public getInCollection()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
return v0
.end method
.method public getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
return-object v0
.end method
.method public getRank()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
return v0
.end method
.method public getTrackName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTrackUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_c
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_18
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_25
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_32
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->hashCode()I
move-result v0
:goto_3f
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
if-eqz v0, :cond_5f
move v0, v2
:goto_47
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
if-eqz v3, :cond_61
:goto_53
add-int/2addr v0, v2
return v0
:cond_55
move v0, v1
goto :goto_c
:cond_57
move v0, v1
goto :goto_18
:cond_59
move v0, v1
goto :goto_25
:cond_5b
move v0, v1
goto :goto_32
:cond_5d
move v0, v1
goto :goto_3f
:cond_5f
move v0, v1
goto :goto_47
:cond_61
move v2, v1
goto :goto_53
.end method
.method public isUnavailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mUri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInfluencers:[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mInCollection:Z
if-eqz v0, :cond_30
move v0, v1
:goto_20
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mRank:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->mIsUnavailable:Z
if-eqz v0, :cond_32
:goto_2c
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V
return-void
:cond_30
move v0, v2
goto :goto_20
:cond_32
move v1, v2
goto :goto_2c
.end method