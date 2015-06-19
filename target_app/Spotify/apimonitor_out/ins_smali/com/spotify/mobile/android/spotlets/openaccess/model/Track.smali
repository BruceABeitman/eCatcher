.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mArtistString:Ljava/lang/String;
.field private final mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
.field private final mId:Ljava/lang/String;
.field private mIsCurrentTrack:Z
.field private mIsPlaying:Z
.field private final mName:Ljava/lang/String;
.field private final mPreviewUrl:Ljava/lang/String;
.field private mProgress:F
.field private final mType:Ljava/lang/String;
.field private final mUri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtistString:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mType:Ljava/lang/String;
const/4 v0, 0x0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->buildArtistString()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mUri:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mPreviewUrl:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;Ljava/lang/String;Ljava/lang/String;)V
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
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtistString:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mId:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mType:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mUri:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mPreviewUrl:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->buildArtistString()V
return-void
.end method
.method private buildArtistString()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
array-length v0, v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
:goto_1c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
array-length v2, v2
if-ge v0, v2, :cond_34
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_34
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtistString:Ljava/lang/String;
goto :goto_9
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getArtistString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtistString:Ljava/lang/String;
return-object v0
.end method
.method public getArtists()[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getPreviewUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mPreviewUrl:Ljava/lang/String;
return-object v0
.end method
.method public getProgress()F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mProgress:F
return v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mType:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public isCurrentTrack()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mIsCurrentTrack:Z
return v0
.end method
.method public isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mIsPlaying:Z
return v0
.end method
.method public setIsCurrentTrack(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mIsCurrentTrack:Z
return-void
.end method
.method public setIsPlaying(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mIsPlaying:Z
return-void
.end method
.method public setProgress(F)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mProgress:F
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mType:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mArtists:[Lcom/spotify/mobile/android/spotlets/openaccess/model/SimpleArtist;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mUri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->mPreviewUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method