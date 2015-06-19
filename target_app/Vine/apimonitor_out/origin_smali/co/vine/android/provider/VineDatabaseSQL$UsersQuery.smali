.class public final Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsersQuery"
.end annotation


# static fields
.field public static final INDEX_ACCEPT_OOM_CONVERSATIONS:I = 0x12

.field public static final INDEX_AVATAR_URL:I = 0x2

.field public static final INDEX_BLOCKED:I = 0x3

.field public static final INDEX_BLOCKING:I = 0x4

.field public static final INDEX_DESCRIPTION:I = 0x5

.field public static final INDEX_EXPLICIT:I = 0x7

.field public static final INDEX_FOLLOWER_COUNT:I = 0x8

.field public static final INDEX_FOLLOWING_COUNT:I = 0x9

.field public static final INDEX_FOLLOW_STATUS:I = 0xf

.field public static final INDEX_FRIENDSHIP:I = 0xa

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0x11

.field public static final INDEX_LAST_SECTION_REFRESH:I = 0x17

.field public static final INDEX_LIKE_COUNT:I = 0xb

.field public static final INDEX_LOCATION:I = 0x6

.field public static final INDEX_LOOP_COUNT:I = 0x19

.field public static final INDEX_ORDER:I = 0x10

.field public static final INDEX_POST_COUNT:I = 0xc

.field public static final INDEX_PROFILE_BACKGROUND:I = 0x13

.field public static final INDEX_SECTION_INDEX:I = 0x14

.field public static final INDEX_SECTION_TITLE:I = 0x16

.field public static final INDEX_SECTION_TYPE:I = 0x15

.field public static final INDEX_TYPE:I = 0x18

.field public static final INDEX_USERNAME:I = 0xd

.field public static final INDEX_USER_ID:I = 0x1

.field public static final INDEX_VERIFIED:I = 0xe

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "blocking"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "explicit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "follower_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "following_count"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "following_flag"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "like_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "post_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "follow_status"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "order_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "accepts_oon_conversations"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "profile_background"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "section_index"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "section_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "section_title"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "last_section_refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "loop_count"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVineRecipient(Landroid/database/Cursor;)Lco/vine/android/api/VineRecipient;
    .registers 8

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/16 v3, 0x13

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromUser(Ljava/lang/String;JIJ)Lco/vine/android/api/VineRecipient;

    move-result-object v6

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lco/vine/android/api/VineRecipient;->avatarUrl:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lco/vine/android/api/VineRecipient;->lastFriendRefresh:J

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lco/vine/android/api/VineRecipient;->sectionTitle:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lco/vine/android/api/VineRecipient;->friendIndex:J

    iget-wide v0, v6, Lco/vine/android/api/VineRecipient;->friendIndex:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v6, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    return-object v6
.end method
