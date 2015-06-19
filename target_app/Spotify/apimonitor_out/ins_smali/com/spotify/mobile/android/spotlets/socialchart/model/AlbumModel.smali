.class public Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mImageUri:Ljava/lang/String;
.field private final mName:Ljava/lang/String;
.field private final mUri:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
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
check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_29
:cond_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
if-nez v2, :cond_23
:cond_29
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
if-eqz v2, :cond_39
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3d
:cond_37
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
if-nez v2, :cond_37
:cond_3d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
if-eqz v2, :cond_4d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_4b
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_4b
.end method
.method public getImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
if-eqz v2, :cond_24
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_24
add-int/2addr v0, v1
return v0
:cond_26
move v0, v1
goto :goto_b
:cond_28
move v0, v1
goto :goto_17
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mUri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->mImageUri:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method