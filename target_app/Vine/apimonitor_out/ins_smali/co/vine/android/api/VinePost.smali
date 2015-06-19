.class public Lco/vine/android/api/VinePost;
.super Ljava/lang/Object;
.source "VinePost.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final FLAG_EXPLICIT:I = 0x4
.field public static final FLAG_LIKED:I = 0x8
.field public static final FLAG_POST_VERIFIED:I = 0x20
.field public static final FLAG_PRIVATE:I = 0x40
.field public static final FLAG_PROMOTED:I = 0x2
.field public static final FLAG_REVINED:I = 0x10
.field public static final FLAG_VERIFIED:I = 0x1
.field public avatarUrl:Ljava/lang/String;
.field public comments:Lco/vine/android/api/VinePagedData;
.field public commentsCount:I
.field public created:J
.field public description:Ljava/lang/String;
.field public descriptionSb:Landroid/text/SpannableStringBuilder;
.field public entities:Ljava/util/ArrayList;
.field public foursquareVenueId:Ljava/lang/String;
.field public isLast:Z
.field public lastRefresh:J
.field public likes:Lco/vine/android/api/VinePagedData;
.field public likesCount:I
.field public location:Ljava/lang/String;
.field public loops:J
.field public metadataFlags:I
.field public myRepostId:J
.field public onFire:Z
.field public orderId:Ljava/lang/String;
.field public postFlags:I
.field public postId:J
.field public repost:Lco/vine/android/api/VineRepost;
.field public revinersCount:I
.field public shareUrl:Ljava/lang/String;
.field public sharedVmSb:Landroid/text/SpannableStringBuilder;
.field public tag:Ljava/lang/String;
.field public tags:Ljava/util/ArrayList;
.field public thumbnailUrl:Ljava/lang/String;
.field public transientEntities:Ljava/util/ArrayList;
.field public user:Lco/vine/android/api/VineUser;
.field public userBackgroundColor:I
.field public userId:J
.field public username:Ljava/lang/String;
.field public velocity:D
.field public venueData:Lco/vine/android/api/VineVenue;
.field public videoLowURL:Ljava/lang/String;
.field public videoUrl:Ljava/lang/String;
.field public videoWebmURL:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VinePost$1;
invoke-direct {v0}, Lco/vine/android/api/VinePost$1;-><init>()V
sput-object v0, Lco/vine/android/api/VinePost;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 8
const/4 v3, 0x0
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->created:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
if-ne v1, v2, :cond_e0
move v1, v2
:goto_20
iput-boolean v1, p0, Lco/vine/android/api/VinePost;->isLast:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->postFlags:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->likesCount:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->revinersCount:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->commentsCount:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->userId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->postId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->myRepostId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePagedData;
iput-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePagedData;
iput-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
iput-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineVenue;
iput-object v1, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
iput-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineRepost;
iput-object v1, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
iput v1, p0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->loops:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
long-to-double v4, v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->velocity:D
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/api/VinePost;->lastRefresh:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
if-ne v1, v2, :cond_e3
:goto_dd
iput-boolean v2, p0, Lco/vine/android/api/VinePost;->onFire:Z
return-void
:cond_e0
move v1, v3
goto/16 :goto_20
:cond_e3
move v2, v3
goto :goto_dd
.end method
.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
new-instance v0, Lco/vine/android/api/VinePost;
invoke-direct {v0}, Lco/vine/android/api/VinePost;-><init>()V
invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->postId:J
const/16 v1, 0x31
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
const/16 v1, 0xd
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
const/4 v1, 0x2
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->myRepostId:J
const/4 v1, 0x5
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
const/4 v1, 0x7
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
const/4 v1, 0x6
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
const/16 v1, 0x8
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
const/16 v1, 0x9
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
const/16 v1, 0xa
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->metadataFlags:I
const/16 v1, 0xe
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v2, :cond_10f
move v1, v2
:goto_5a
iput-boolean v1, v0, Lco/vine/android/api/VinePost;->isLast:Z
const/16 v1, 0xb
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->postFlags:I
const/16 v1, 0x18
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->likesCount:I
const/16 v1, 0x19
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->revinersCount:I
const/16 v1, 0x1a
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->commentsCount:I
const/16 v1, 0x10
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->userId:J
const/16 v1, 0x11
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->created:J
const/16 v1, 0xf
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
const/16 v1, 0x12
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
const/16 v1, 0x13
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
const/4 v1, 0x4
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
const/16 v1, 0x2c
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
new-instance v1, Lco/vine/android/api/VinePagedData;
invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V
iput-object v1, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
new-instance v1, Lco/vine/android/api/VinePagedData;
invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V
iput-object v1, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
const/16 v1, 0x14
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineVenue;
iput-object v1, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
const/16 v1, 0x15
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
iput-object v1, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
const/16 v1, 0x16
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineRepost;
iput-object v1, v0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
const/16 v1, 0x2d
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->loops:J
const/16 v1, 0x2e
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
long-to-double v4, v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->velocity:D
const/16 v1, 0x30
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->lastRefresh:J
const/16 v1, 0x2f
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v2, :cond_112
:goto_10c
iput-boolean v2, v0, Lco/vine/android/api/VinePost;->onFire:Z
return-object v0
:cond_10f
move v1, v3
goto/16 :goto_5a
:cond_112
move v2, v3
goto :goto_10c
.end method
.method public static fromExplore(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
new-instance v0, Lco/vine/android/api/VinePost;
invoke-direct {v0}, Lco/vine/android/api/VinePost;-><init>()V
invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->postId:J
const/16 v1, 0x20
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
const/16 v1, 0xd
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
const/4 v1, 0x2
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->myRepostId:J
const/4 v1, 0x5
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
const/4 v1, 0x7
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
const/4 v1, 0x6
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
const/16 v1, 0x8
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
const/16 v1, 0x9
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
const/16 v1, 0xa
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->metadataFlags:I
const/16 v1, 0xe
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v2, :cond_10f
move v1, v2
:goto_5a
iput-boolean v1, v0, Lco/vine/android/api/VinePost;->isLast:Z
const/16 v1, 0xb
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->postFlags:I
const/16 v1, 0x18
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->likesCount:I
const/16 v1, 0x19
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->revinersCount:I
const/16 v1, 0x1a
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->commentsCount:I
const/16 v1, 0x10
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->userId:J
const/16 v1, 0x11
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->created:J
const/16 v1, 0xf
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
const/16 v1, 0x12
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
const/16 v1, 0x13
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
const/4 v1, 0x4
invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
new-instance v1, Lco/vine/android/api/VinePagedData;
invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V
iput-object v1, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
new-instance v1, Lco/vine/android/api/VinePagedData;
invoke-direct {v1}, Lco/vine/android/api/VinePagedData;-><init>()V
iput-object v1, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
const/16 v1, 0x14
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineVenue;
iput-object v1, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
const/16 v1, 0x15
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
iput-object v1, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
const/16 v1, 0x16
invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineRepost;
iput-object v1, v0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
const/16 v1, 0x1b
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
const/16 v1, 0x1c
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->loops:J
const/16 v1, 0x1d
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
long-to-double v4, v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->velocity:D
const/16 v1, 0x1f
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lco/vine/android/api/VinePost;->lastRefresh:J
const/16 v1, 0x1e
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v2, :cond_112
:goto_10c
iput-boolean v2, v0, Lco/vine/android/api/VinePost;->onFire:Z
return-object v0
:cond_10f
move v1, v3
goto/16 :goto_5a
:cond_112
move v2, v3
goto :goto_10c
.end method
.method public static getBytesFromTags(Lco/vine/android/api/VinePost;)[B
.registers 7
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v4, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
if-eqz v4, :cond_2b
iget-object v4, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_14
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/api/VineTag;
iget-wide v4, v3, Lco/vine/android/api/VineTag;->tagId:J
invoke-interface {v2, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-object v4, v3, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
invoke-interface {v2, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
goto :goto_14
:cond_2b
invoke-interface {v2}, Ljava/io/ObjectOutput;->flush()V
invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v4
return-object v4
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Lco/vine/android/api/VinePost;
iget-wide v3, p0, Lco/vine/android/api/VinePost;->postId:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->postId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_20
move v1, v2
goto :goto_4
:cond_20
iget-wide v3, p0, Lco/vine/android/api/VinePost;->myRepostId:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->myRepostId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_2a
move v1, v2
goto :goto_4
:cond_2a
iget v3, p0, Lco/vine/android/api/VinePost;->commentsCount:I
iget v4, v0, Lco/vine/android/api/VinePost;->commentsCount:I
if-eq v3, v4, :cond_32
move v1, v2
goto :goto_4
:cond_32
iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->created:J
cmp-long v3, v3, v5
if-eqz v3, :cond_3c
move v1, v2
goto :goto_4
:cond_3c
iget v3, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
iget v4, v0, Lco/vine/android/api/VinePost;->metadataFlags:I
if-eq v3, v4, :cond_44
move v1, v2
goto :goto_4
:cond_44
iget-boolean v3, p0, Lco/vine/android/api/VinePost;->isLast:Z
iget-boolean v4, v0, Lco/vine/android/api/VinePost;->isLast:Z
if-eq v3, v4, :cond_4c
move v1, v2
goto :goto_4
:cond_4c
iget v3, p0, Lco/vine/android/api/VinePost;->likesCount:I
iget v4, v0, Lco/vine/android/api/VinePost;->likesCount:I
if-eq v3, v4, :cond_54
move v1, v2
goto :goto_4
:cond_54
iget v3, p0, Lco/vine/android/api/VinePost;->revinersCount:I
iget v4, v0, Lco/vine/android/api/VinePost;->revinersCount:I
if-eq v3, v4, :cond_5c
move v1, v2
goto :goto_4
:cond_5c
iget v3, p0, Lco/vine/android/api/VinePost;->postFlags:I
iget v4, v0, Lco/vine/android/api/VinePost;->postFlags:I
if-eq v3, v4, :cond_64
move v1, v2
goto :goto_4
:cond_64
iget-wide v3, p0, Lco/vine/android/api/VinePost;->userId:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->userId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_6e
move v1, v2
goto :goto_4
:cond_6e
iget-object v3, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
if-eqz v3, :cond_7e
iget-object v3, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_82
:cond_7c
move v1, v2
goto :goto_4
:cond_7e
iget-object v3, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
if-nez v3, :cond_7c
:cond_82
iget-object v3, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
if-eqz v3, :cond_93
iget-object v3, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
iget-object v4, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_97
:cond_90
move v1, v2
goto/16 :goto_4
:cond_93
iget-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
if-nez v3, :cond_90
:cond_97
iget-object v3, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
if-eqz v3, :cond_a8
iget-object v3, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_ac
:cond_a5
move v1, v2
goto/16 :goto_4
:cond_a8
iget-object v3, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
if-nez v3, :cond_a5
:cond_ac
iget-object v3, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
if-eqz v3, :cond_bd
iget-object v3, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
iget-object v4, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_c1
:cond_ba
move v1, v2
goto/16 :goto_4
:cond_bd
iget-object v3, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
if-nez v3, :cond_ba
:cond_c1
iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
if-eqz v3, :cond_d2
iget-object v3, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_d6
:cond_cf
move v1, v2
goto/16 :goto_4
:cond_d2
iget-object v3, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
if-nez v3, :cond_cf
:cond_d6
iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
if-eqz v3, :cond_e7
iget-object v3, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
iget-object v4, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_eb
:cond_e4
move v1, v2
goto/16 :goto_4
:cond_e7
iget-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
if-nez v3, :cond_e4
:cond_eb
iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
if-eqz v3, :cond_fc
iget-object v3, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_100
:cond_f9
move v1, v2
goto/16 :goto_4
:cond_fc
iget-object v3, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
if-nez v3, :cond_f9
:cond_100
iget-object v3, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
if-eqz v3, :cond_111
iget-object v3, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_115
:cond_10e
move v1, v2
goto/16 :goto_4
:cond_111
iget-object v3, v0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
if-nez v3, :cond_10e
:cond_115
iget-object v3, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
if-eqz v3, :cond_126
iget-object v3, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_12a
:cond_123
move v1, v2
goto/16 :goto_4
:cond_126
iget-object v3, v0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
if-nez v3, :cond_123
:cond_12a
iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
if-eqz v3, :cond_13b
iget-object v3, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_13f
:cond_138
move v1, v2
goto/16 :goto_4
:cond_13b
iget-object v3, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
if-nez v3, :cond_138
:cond_13f
iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
if-eqz v3, :cond_150
iget-object v3, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
iget-object v4, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_154
:cond_14d
move v1, v2
goto/16 :goto_4
:cond_150
iget-object v3, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
if-nez v3, :cond_14d
:cond_154
iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
if-eqz v3, :cond_165
iget-object v3, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_169
:cond_162
move v1, v2
goto/16 :goto_4
:cond_165
iget-object v3, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
if-nez v3, :cond_162
:cond_169
iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
if-eqz v3, :cond_17a
iget-object v3, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
iget-object v4, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_17e
:cond_177
move v1, v2
goto/16 :goto_4
:cond_17a
iget-object v3, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
if-nez v3, :cond_177
:cond_17e
iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
if-eqz v3, :cond_18f
iget-object v3, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_193
:cond_18c
move v1, v2
goto/16 :goto_4
:cond_18f
iget-object v3, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
if-nez v3, :cond_18c
:cond_193
iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
if-eqz v3, :cond_1a4
iget-object v3, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
iget-object v4, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
invoke-virtual {v3, v4}, Lco/vine/android/api/VineVenue;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1a8
:cond_1a1
move v1, v2
goto/16 :goto_4
:cond_1a4
iget-object v3, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
if-nez v3, :cond_1a1
:cond_1a8
iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
if-eqz v3, :cond_1b9
iget-object v3, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1bd
:cond_1b6
move v1, v2
goto/16 :goto_4
:cond_1b9
iget-object v3, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
if-nez v3, :cond_1b6
:cond_1bd
iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
if-eqz v3, :cond_1ce
iget-object v3, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1d2
:cond_1cb
move v1, v2
goto/16 :goto_4
:cond_1ce
iget-object v3, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
if-nez v3, :cond_1cb
:cond_1d2
iget-object v3, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
if-eqz v3, :cond_1e3
iget-object v3, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
iget-object v4, v0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
invoke-virtual {v3, v4}, Lco/vine/android/api/VineRepost;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1e7
:cond_1e0
move v1, v2
goto/16 :goto_4
:cond_1e3
iget-object v3, v0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
if-nez v3, :cond_1e0
:cond_1e7
iget v3, p0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
iget v4, v0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
if-eq v3, v4, :cond_1f0
move v1, v2
goto/16 :goto_4
:cond_1f0
iget-wide v3, p0, Lco/vine/android/api/VinePost;->loops:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->loops:J
cmp-long v3, v3, v5
if-eqz v3, :cond_1fb
move v1, v2
goto/16 :goto_4
:cond_1fb
iget-wide v3, p0, Lco/vine/android/api/VinePost;->velocity:D
iget-wide v5, v0, Lco/vine/android/api/VinePost;->velocity:D
cmpl-double v3, v3, v5
if-eqz v3, :cond_206
move v1, v2
goto/16 :goto_4
:cond_206
iget-wide v3, p0, Lco/vine/android/api/VinePost;->lastRefresh:J
iget-wide v5, v0, Lco/vine/android/api/VinePost;->lastRefresh:J
cmp-long v3, v3, v5
if-eqz v3, :cond_211
move v1, v2
goto/16 :goto_4
:cond_211
iget-boolean v3, p0, Lco/vine/android/api/VinePost;->onFire:Z
iget-boolean v4, v0, Lco/vine/android/api/VinePost;->onFire:Z
if-eq v3, v4, :cond_4
move v1, v2
goto/16 :goto_4
.end method
.method public getVideoHighUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
if-nez v0, :cond_7
iget-object v0, p0, Lco/vine/android/api/VinePost;->videoWebmURL:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
goto :goto_6
.end method
.method public hashCode()I
.registers 10
const/4 v2, 0x1
const/16 v8, 0x20
const/4 v3, 0x0
iget-wide v4, p0, Lco/vine/android/api/VinePost;->created:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->created:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v0, v4
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v1, p0, Lco/vine/android/api/VinePost;->isLast:Z
if-eqz v1, :cond_181
move v1, v2
:goto_18
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->postFlags:I
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->userId:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->userId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->postId:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->postId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->myRepostId:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->myRepostId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->likesCount:I
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->revinersCount:I
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->commentsCount:I
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
if-eqz v1, :cond_184
iget-object v1, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_5f
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
if-eqz v1, :cond_187
iget-object v1, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_6d
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
if-eqz v1, :cond_18a
iget-object v1, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_7b
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
if-eqz v1, :cond_18d
iget-object v1, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_89
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
if-eqz v1, :cond_190
iget-object v1, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_97
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
if-eqz v1, :cond_193
iget-object v1, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_a5
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
if-eqz v1, :cond_196
iget-object v1, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_b3
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
if-eqz v1, :cond_199
iget-object v1, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_c1
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
if-eqz v1, :cond_19c
iget-object v1, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_cf
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
if-eqz v1, :cond_19f
iget-object v1, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_dd
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
if-eqz v1, :cond_1a2
iget-object v1, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_eb
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
if-eqz v1, :cond_1a5
iget-object v1, p0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I
move-result v1
:goto_f9
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
if-eqz v1, :cond_1a8
iget-object v1, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I
move-result v1
:goto_107
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
if-eqz v1, :cond_1ab
iget-object v1, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
:goto_115
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
if-eqz v1, :cond_1ae
iget-object v1, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
:goto_123
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
if-eqz v1, :cond_1b1
iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
invoke-virtual {v1}, Lco/vine/android/api/VineUser;->hashCode()I
move-result v1
:goto_131
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
if-eqz v1, :cond_1b4
iget-object v1, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
invoke-virtual {v1}, Lco/vine/android/api/VineVenue;->hashCode()I
move-result v1
:goto_13f
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
if-eqz v1, :cond_1b6
iget-object v1, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
invoke-virtual {v1}, Lco/vine/android/api/VineRepost;->hashCode()I
move-result v1
:goto_14d
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->loops:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->loops:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->velocity:D
const-wide v6, 0x40ac200000000000L
mul-double/2addr v4, v6
double-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePost;->lastRefresh:J
iget-wide v6, p0, Lco/vine/android/api/VinePost;->lastRefresh:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-boolean v4, p0, Lco/vine/android/api/VinePost;->onFire:Z
if-eqz v4, :cond_1b8
:goto_17e
add-int v0, v1, v2
return v0
:cond_181
move v1, v3
goto/16 :goto_18
:cond_184
move v1, v3
goto/16 :goto_5f
:cond_187
move v1, v3
goto/16 :goto_6d
:cond_18a
move v1, v3
goto/16 :goto_7b
:cond_18d
move v1, v3
goto/16 :goto_89
:cond_190
move v1, v3
goto/16 :goto_97
:cond_193
move v1, v3
goto/16 :goto_a5
:cond_196
move v1, v3
goto/16 :goto_b3
:cond_199
move v1, v3
goto/16 :goto_c1
:cond_19c
move v1, v3
goto/16 :goto_cf
:cond_19f
move v1, v3
goto/16 :goto_dd
:cond_1a2
move v1, v3
goto/16 :goto_eb
:cond_1a5
move v1, v3
goto/16 :goto_f9
:cond_1a8
move v1, v3
goto/16 :goto_107
:cond_1ab
move v1, v3
goto/16 :goto_115
:cond_1ae
move v1, v3
goto/16 :goto_123
:cond_1b1
move v1, v3
goto/16 :goto_131
:cond_1b4
move v1, v3
goto :goto_13f
:cond_1b6
move v1, v3
goto :goto_14d
:cond_1b8
move v2, v3
goto :goto_17e
.end method
.method public isExplicit()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isLiked()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isPrivate()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x40
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isPromoted()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isRevined()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isShareable()Z
.registers 2
iget-object v0, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isVerified()Z
.registers 2
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public setFlagExplicit(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x5
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagLiked(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x8
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x9
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagPostVerified(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x20
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x21
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagPrivate(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x40
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x41
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagPromoted(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x3
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagRevined(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x10
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x11
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public setFlagVerified(Z)V
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
:goto_8
return-void
:cond_9
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
goto :goto_8
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-wide v3, p0, Lco/vine/android/api/VinePost;->created:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lco/vine/android/api/VinePost;->metadataFlags:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VinePost;->isLast:Z
if-eqz v0, :cond_a8
move v0, v1
:goto_11
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePost;->postFlags:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePost;->likesCount:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePost;->revinersCount:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePost;->commentsCount:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->userId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->postId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->myRepostId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->tag:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget v0, p0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->loops:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->velocity:D
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V
iget-wide v3, p0, Lco/vine/android/api/VinePost;->lastRefresh:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lco/vine/android/api/VinePost;->onFire:Z
if-eqz v0, :cond_ab
:goto_a4
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_a8
move v0, v2
goto/16 :goto_11
:cond_ab
move v1, v2
goto :goto_a4
.end method