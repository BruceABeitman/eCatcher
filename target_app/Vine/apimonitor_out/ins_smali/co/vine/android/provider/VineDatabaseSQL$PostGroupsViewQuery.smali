.class public final Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"
.field public static final INDEX_AVATAR_URL:I = 0xf
.field public static final INDEX_COMMENTS_COUNT:I = 0x1a
.field public static final INDEX_DESCRIPTION:I = 0x8
.field public static final INDEX_ENTITIES:I = 0x15
.field public static final INDEX_FOURSQUARE_VENUE_ID:I = 0x9
.field public static final INDEX_ID:I = 0x0
.field public static final INDEX_IS_LAST:I = 0xe
.field public static final INDEX_LAST_REFRESH:I = 0x1f
.field public static final INDEX_LIKES_COUNT:I = 0x18
.field public static final INDEX_LOCATION:I = 0x12
.field public static final INDEX_LOOPS:I = 0x1c
.field public static final INDEX_METADATA_FLAGS:I = 0xa
.field public static final INDEX_MY_REPOST_ID:I = 0x2
.field public static final INDEX_ON_FIRE:I = 0x1e
.field public static final INDEX_POST_FLAGS:I = 0xb
.field public static final INDEX_POST_ID:I = 0x1
.field public static final INDEX_REPOSTER_ID:I = 0x17
.field public static final INDEX_REPOST_DATA:I = 0x16
.field public static final INDEX_REVINERS_COUNT:I = 0x19
.field public static final INDEX_SHARE_URL:I = 0x5
.field public static final INDEX_SORT_ID:I = 0x20
.field public static final INDEX_TAG:I = 0xd
.field public static final INDEX_TAGS:I = 0x3
.field public static final INDEX_THUMBNAIL_URL:I = 0x4
.field public static final INDEX_TIMESTAMP:I = 0x11
.field public static final INDEX_TYPE:I = 0xc
.field public static final INDEX_USERNAME:I = 0x13
.field public static final INDEX_USER_BACKGROUND_COLOR:I = 0x1b
.field public static final INDEX_USER_ID:I = 0x10
.field public static final INDEX_VELOCITY:I = 0x1d
.field public static final INDEX_VENUE_DATA:I = 0x14
.field public static final INDEX_VIDEO_LOW_URL:I = 0x6
.field public static final INDEX_VIDEO_URL:I = 0x7
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x21
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "post_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "my_repost_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "tags"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "thumbnail_url"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "share_url"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "video_low_uRL"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "video_url"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "description"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "foursquare_venue_id"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "metadata_flags"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "post_flags"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "post_type"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "tag"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "is_last"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "avatar_url"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "user_id"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "timestamp"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "location"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "username"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "venue_data"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "entities"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "repost_data"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, "reposter_id"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string v2, "likes_count"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string v2, "reviners_count"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string v2, "comments_count"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string v2, "user_background_color"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string v2, "loops"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string v2, "velocity"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string v2, "on_fire"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string v2, "last_refresh"
aput-object v2, v0, v1
const/16 v1, 0x20
const-string v2, "sort_id"
aput-object v2, v0, v1
sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method