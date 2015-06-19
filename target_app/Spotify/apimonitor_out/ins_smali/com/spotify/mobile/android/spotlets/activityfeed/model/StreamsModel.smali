.class public Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mCount:I
.field private mIncludeRequestingUser:Z
.field private mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(IZ[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p2, :cond_7
add-int/lit8 p1, p1, 0x1
:cond_7
iput p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
if-nez p3, :cond_10
const/4 v0, 0x0
new-array p3, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
:cond_10
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
const-class v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;-><init>(Landroid/os/Parcel;)V
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
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
iget v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
return v0
.end method
.method public getIncludeRequestingUser()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
return v0
.end method
.method public getStreamers()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
if-eqz v0, :cond_19
const/4 v0, 0x1
:goto_a
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-eqz v2, :cond_17
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v1
:cond_17
add-int/2addr v0, v1
return v0
:cond_19
move v0, v1
goto :goto_a
.end method
.method public listCount()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
array-length v1, v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getIncludeRequestingUser()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_a
add-int/2addr v0, v1
return v0
:cond_c
const/4 v0, 0x0
goto :goto_a
.end method
.method public setIncludeRequestingUser(Z)V
.registers 4
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
if-eq v0, p1, :cond_e
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
iget v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
if-eqz p1, :cond_f
const/4 v0, 0x1
:goto_b
add-int/2addr v0, v1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
:cond_e
return-void
:cond_f
const/4 v0, -0x1
goto :goto_b
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mCount:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mIncludeRequestingUser:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->mStreamers:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
return-void
.end method