.class public Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mNextpagePath:Ljava/lang/String;
.field private mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Ljava/lang/String;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_8
const/4 v0, 0x0
new-array p1, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
:cond_8
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
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
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
:cond_1b
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
if-nez v2, :cond_1b
:cond_21
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getNextPagePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
return-object v0
.end method
.method public getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_b
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
if-eqz v2, :cond_17
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_17
add-int/2addr v0, v1
return v0
:cond_19
move v0, v1
goto :goto_b
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
array-length v0, v0
if-nez v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public merge(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v0
array-length v0, v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
array-length v1, v1
add-int/2addr v0, v1
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v2
array-length v2, v2
invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v2
array-length v2, v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
move-result-object v3
array-length v3, v3
invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
return-void
.end method
.method public replaceStory(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
array-length v0, v0
if-ge p2, v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
aput-object p1, v0, p2
:cond_9
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mStories:[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->mNextpagePath:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method