.class public Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.field private mDescription:Ljava/lang/String;
.field private mId:Ljava/lang/String;
.field private mIsPlaying:Ljava/lang/Boolean;
.field private mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
.field private mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
.field private mTimestamp:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mIsPlaying:Ljava/lang/Boolean;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
const-class v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
const-class v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;Ljava/lang/String;JLcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;)V
.registers 9
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
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mIsPlaying:Ljava/lang/Boolean;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-nez p3, :cond_12
const-string p3, ""
:cond_12
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
iput-wide p4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
iget-wide v4, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
cmp-long v2, v2, v4
if-eqz v2, :cond_17
move v0, v1
goto :goto_4
:cond_17
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2b
:cond_25
move v0, v1
goto :goto_4
:cond_27
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-nez v2, :cond_25
:cond_2b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3f
:cond_39
move v0, v1
goto :goto_4
:cond_3b
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
if-nez v2, :cond_39
:cond_3f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
if-eqz v2, :cond_4f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_53
:cond_4d
move v0, v1
goto :goto_4
:cond_4f
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
if-nez v2, :cond_4d
:cond_53
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
if-eqz v2, :cond_63
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_67
:cond_61
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
if-nez v2, :cond_61
:cond_67
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
if-eqz v2, :cond_77
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_75
move v0, v1
goto :goto_4
:cond_77
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
if-eqz v2, :cond_4
goto :goto_75
.end method
.method public getAuthor()Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getIsPlaying()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mIsPlaying:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
return-object v0
.end method
.method public getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
return-object v0
.end method
.method public getTimestamp()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
return-wide v0
.end method
.method public hashCode()I
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->hashCode()I
move-result v0
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_24
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
iget-wide v4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
const/16 v6, 0x20
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->hashCode()I
move-result v0
:goto_3d
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
if-eqz v2, :cond_4a
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->hashCode()I
move-result v1
:cond_4a
add-int/2addr v0, v1
return v0
:cond_4c
move v0, v1
goto :goto_b
:cond_4e
move v0, v1
goto :goto_17
:cond_50
move v0, v1
goto :goto_24
:cond_52
move v0, v1
goto :goto_3d
.end method
.method public setIsPlaying(Z)V
.registers 3
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mIsPlaying:Ljava/lang/Boolean;
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mAuthor:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mDescription:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mTimestamp:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mResource:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->mStreams:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method