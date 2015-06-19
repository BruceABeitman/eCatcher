.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mArtistString:Ljava/lang/String;
.field private final mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
.field private final mId:Ljava/lang/String;
.field private final mImages:Ljava/util/List;
.field private final mName:Ljava/lang/String;
.field private final mTracks:Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
.field private final mType:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtistString:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mType:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mTracks:Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
const/4 v0, 0x0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->buildArtistString()V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;)V
.registers 8
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
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtistString:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mId:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mType:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mTracks:Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->buildArtistString()V
return-void
.end method
.method private buildArtistString()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
array-length v0, v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
:goto_1c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
array-length v2, v2
if-ge v0, v2, :cond_34
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_34
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtistString:Ljava/lang/String;
goto :goto_9
.end method
.method public containsImage()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getArtistString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtistString:Ljava/lang/String;
return-object v0
.end method
.method public getArtists()[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getLargestImage()Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
const-string v1, "Images array may not be empty"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mImages:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTracks()Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mTracks:Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mType:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->mType:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method