.class public final Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostCommentsLikesQuery"
.end annotation


# static fields
.field public static final INDEX_AVATAR_URL:I = 0xf

.field public static final INDEX_COMMENT:I = 0x23

.field public static final INDEX_COMMENTS_COUNT:I = 0x1a

.field public static final INDEX_COMMENT_ENTITIES:I = 0x2b

.field public static final INDEX_COMMENT_ID:I = 0x22

.field public static final INDEX_COMMENT_IS_LAST:I = 0x2a

.field public static final INDEX_COMMENT_USER_AVATAR_URL:I = 0x24

.field public static final INDEX_COMMENT_USER_LOCATION:I = 0x27

.field public static final INDEX_COMMENT_USER_TIMESTAMP:I = 0x26

.field public static final INDEX_COMMENT_USER_USERNAME:I = 0x28

.field public static final INDEX_COMMENT_USER_USER_ID:I = 0x25

.field public static final INDEX_COMMENT_USER_VERIFIED:I = 0x29

.field public static final INDEX_DESCRIPTION:I = 0x8

.field public static final INDEX_ENTITIES:I = 0x15

.field public static final INDEX_FOURSQUARE_VENUE_ID:I = 0x9

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0xe

.field public static final INDEX_LIKES_COUNT:I = 0x18

.field public static final INDEX_LIKE_ID:I = 0x1b

.field public static final INDEX_LIKE_USER_AVATAR_URL:I = 0x1c

.field public static final INDEX_LIKE_USER_LOCATION:I = 0x1f

.field public static final INDEX_LIKE_USER_TIMESTAMP:I = 0x1e

.field public static final INDEX_LIKE_USER_USERNAME:I = 0x20

.field public static final INDEX_LIKE_USER_USER_ID:I = 0x1d

.field public static final INDEX_LIKE_USER_VERIFIED:I = 0x21

.field public static final INDEX_LOCATION:I = 0x12

.field public static final INDEX_LOOPS:I = 0x2d

.field public static final INDEX_METADATA_FLAGS:I = 0xa

.field public static final INDEX_MY_REPOST_ID:I = 0x2

.field public static final INDEX_ON_FIRE:I = 0x2f

.field public static final INDEX_POST_FLAGS:I = 0xb

.field public static final INDEX_POST_ID:I = 0x1

.field public static final INDEX_POST_LAST_REFRESH:I = 0x30

.field public static final INDEX_REPOSTER_ID:I = 0x17

.field public static final INDEX_REPOST_DATA:I = 0x16

.field public static final INDEX_REVINERS_COUNT:I = 0x19

.field public static final INDEX_SHARE_URL:I = 0x5

.field public static final INDEX_SORT_ID:I = 0x31

.field public static final INDEX_TAG:I = 0xd

.field public static final INDEX_TAGS:I = 0x3

.field public static final INDEX_THUMBNAIL_URL:I = 0x4

.field public static final INDEX_TIMESTAMP:I = 0x11

.field public static final INDEX_TYPE:I = 0xc

.field public static final INDEX_USERNAME:I = 0x13

.field public static final INDEX_USER_BACKGROUND_COLOR:I = 0x2c

.field public static final INDEX_USER_ID:I = 0x10

.field public static final INDEX_VELOCITY:I = 0x2e

.field public static final INDEX_VENUE_DATA:I = 0x14

.field public static final INDEX_VIDEO_LOW_URL:I = 0x6

.field public static final INDEX_VIDEO_URL:I = 0x7

.field public static final LOOKUP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x2b

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "post_id"

    aput-object v1, v0, v5

    const-string v1, "my_repost_id"

    aput-object v1, v0, v6

    const-string v1, "tags"

    aput-object v1, v0, v7

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

    const-string v2, "like_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "like_user_avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "like_user_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "like_user_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "like_user_location"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "like_user_username"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "like_user_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "comment_id"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "comment_user_avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "comment_user_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "comment_user_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "comment_user_location"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "comment_user_username"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "comment_user_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "comment_is_last"

    aput-object v2, v0, v1

    const-string v1, "comment_entities"

    aput-object v1, v0, v3

    const/16 v1, 0x2c

    const-string v2, "user_background_color"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "loops"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "velocity"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "on_fire"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "last_refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "sort_id"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "post_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "my_repost_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "tags"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "thumbnail_url"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "share_url"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "video_low_uRL"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "video_url"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "description"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "foursquare_venue_id"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "metadata_flags"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "post_flags"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "post_type"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "tag"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "sort_id"

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "is_last"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "avatar_url"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "location"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "username"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "venue_data"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "entities"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "repost_data"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "reposter_id"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "likes_count"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "reviners_count"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comments_count"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_id"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_avatar_url"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_user_id"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_timestamp"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_location"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_username"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "like_user_verified"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_id"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_avatar_url"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_user_id"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_timestamp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_location"

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_username"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_user_verified"

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_is_last"

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "comment_entities"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "user_background_color"

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "loops"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "velocity"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "on_fire"

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    const-string v1, "last_refresh"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
