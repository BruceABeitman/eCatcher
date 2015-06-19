.class public Lco/vine/android/api/VineEverydayNotification;
.super Lco/vine/android/api/VineNotification;
.source "VineEverydayNotification.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final FOLLOWING:I = 0x1
.field public static final FOLLOW_REQUESTED:I = 0x2
.field public static final PRIVATE:I = 0x4
.field public static final TYPE_ADDRESS_BOOK_FRIEND_JOINED:Ljava/lang/String; = "address book friend joined"
.field public static final TYPE_COMMENTED:Ljava/lang/String; = "commented"
.field public static final TYPE_COMMENT_MENTION:Ljava/lang/String; = "mentioned comment"
.field public static final TYPE_COUNT:Ljava/lang/String; = "count"
.field public static final TYPE_FOLLOWED:Ljava/lang/String; = "followed"
.field public static final TYPE_FOLLOW_APPROVED:Ljava/lang/String; = "follow approved"
.field public static final TYPE_GROUP_COMMENTED:Ljava/lang/String; = "grouped comment"
.field public static final TYPE_LIKED:Ljava/lang/String; = "liked"
.field public static final TYPE_MENTION:Ljava/lang/String; = "mentioned"
.field public static final TYPE_POST_MENTION:Ljava/lang/String; = "mentioned post"
.field public static final TYPE_REVINED:Ljava/lang/String; = "reposted"
.field public static final TYPE_TWITTER_FRIEND_JOINED:Ljava/lang/String; = "twitter friend joined"
.field public anchor:J
.field public followStatus:I
.field public isNew:Z
.field public milestone:Lco/vine/android/api/VineMilestone;
.field public post:Lco/vine/android/api/VinePost;
.field public type:Ljava/lang/String;
.field public user:Lco/vine/android/api/VineUser;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineEverydayNotification$1;
invoke-direct {v0}, Lco/vine/android/api/VineEverydayNotification$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineEverydayNotification;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v2, 0x1
invoke-direct {p0}, Lco/vine/android/api/VineNotification;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->comment:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VineEverydayNotification;->notificationId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePost;
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineMilestone;
iput-object v1, p0, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
if-ne v1, v2, :cond_54
move v1, v2
:goto_4b
iput-boolean v1, p0, Lco/vine/android/api/VineEverydayNotification;->isNew:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v1
iput-wide v1, p0, Lco/vine/android/api/VineEverydayNotification;->anchor:J
return-void
:cond_54
const/4 v1, 0x0
goto :goto_4b
.end method
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lco/vine/android/api/VinePost;Lco/vine/android/api/VineUser;Ljava/util/ArrayList;Lco/vine/android/api/VineMilestone;JZJ)V
.registers 14
invoke-direct {p0}, Lco/vine/android/api/VineNotification;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VineEverydayNotification;->comment:Ljava/lang/String;
iput-wide p2, p0, Lco/vine/android/api/VineEverydayNotification;->notificationId:J
iput-object p4, p0, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;
iput-object p7, p0, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;
iput-object p6, p0, Lco/vine/android/api/VineEverydayNotification;->user:Lco/vine/android/api/VineUser;
iput-object p5, p0, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;
iput-object p8, p0, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;
iput-wide p9, p0, Lco/vine/android/api/VineEverydayNotification;->createdAt:J
iput-boolean p11, p0, Lco/vine/android/api/VineEverydayNotification;->isNew:Z
iput-wide p12, p0, Lco/vine/android/api/VineEverydayNotification;->anchor:J
return-void
.end method
.method public static isLocked(I)Z
.registers 3
const/4 v0, 0x1
and-int/lit8 v1, p0, 0x4
if-lt v1, v0, :cond_e
and-int/lit8 v1, p0, 0x2
if-ge v1, v0, :cond_d
and-int/lit8 v1, p0, 0x1
if-ge v1, v0, :cond_e
:goto_d
:cond_d
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
.method public setFollowRequested()V
.registers 2
iget v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
return-void
.end method
.method public setFollowing()V
.registers 2
iget v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
return-void
.end method
.method public setPrivate()V
.registers 2
iget v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->comment:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/api/VineEverydayNotification;->notificationId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget v0, p0, Lco/vine/android/api/VineEverydayNotification;->followStatus:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-boolean v0, p0, Lco/vine/android/api/VineEverydayNotification;->isNew:Z
if-eqz v0, :cond_36
const/4 v0, 0x1
:goto_2d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineEverydayNotification;->anchor:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
:cond_36
const/4 v0, 0x0
goto :goto_2d
.end method