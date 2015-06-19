.class public Lco/vine/android/api/VineSingleNotification;
.super Lco/vine/android/api/VineNotification;
.source "VineSingleNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BaseConversationMessageNotification:I = 0x12

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConversationMessageTextNotification:I = 0x19

.field public static final FOLLOWING:I = 0x1

.field public static final FOLLOW_REQUESTED:I = 0x2

.field public static final PRIVATE:I = 0x4


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public conversationId:J

.field public conversationRowId:J

.field public followStatus:I

.field public final imageKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            ">;"
        }
    .end annotation
.end field

.field public messageCount:I

.field public notificationType:I

.field public postId:J

.field public recipientUserId:J

.field public thumbnailUrl:Ljava/lang/String;

.field public unreadMessageCount:J

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:Z

.field public final videoKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineSingleNotification$1;

    invoke-direct {v0}, Lco/vine/android/api/VineSingleNotification$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineSingleNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4

    invoke-direct {p0}, Lco/vine/android/api/VineNotification;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lco/vine/android/api/VineNotification;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->postId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->createdAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->conversationId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/api/VineSingleNotification;->unreadMessageCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_8d

    :goto_54
    iput-boolean v0, p0, Lco/vine/android/api/VineSingleNotification;->verified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->messageCount:I

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;

    const-class v1, Lco/vine/android/api/VineSingleNotification;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;

    const-class v1, Lco/vine/android/api/VineSingleNotification;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void

    :cond_8d
    const/4 v0, 0x0

    goto :goto_54
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZIJLjava/util/ArrayList;JJ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJZIJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lco/vine/android/api/VineNotification;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;

    iput-object p1, p0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineSingleNotification;->username:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/VineSingleNotification;->thumbnailUrl:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;

    iput-wide p5, p0, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    iput-wide p7, p0, Lco/vine/android/api/VineSingleNotification;->userId:J

    iput-wide p9, p0, Lco/vine/android/api/VineSingleNotification;->postId:J

    iput-wide p11, p0, Lco/vine/android/api/VineSingleNotification;->createdAt:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->conversationId:J

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->unreadMessageCount:J

    move/from16 v0, p13

    iput-boolean v0, p0, Lco/vine/android/api/VineSingleNotification;->verified:Z

    move/from16 v0, p14

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lco/vine/android/api/VineSingleNotification;->entities:Ljava/util/ArrayList;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->recipientUserId:J

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

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMessaging()Z
    .registers 3

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setFollowRequested()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    return-void
.end method

.method public setFollowing()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    return-void
.end method

.method public setPrivate()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->createdAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->conversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->unreadMessageCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lco/vine/android/api/VineSingleNotification;->verified:Z

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->followStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lco/vine/android/api/VineSingleNotification;->messageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    :cond_5e
    const/4 v0, 0x0

    goto :goto_37
.end method
