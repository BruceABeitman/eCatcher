.class public final Lco/vine/android/provider/VineDatabaseSQL$ConversationMessageUsersQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"
.field public static final INDEX_AUTHOR_AVATAR:I = 0x1c
.field public static final INDEX_AUTHOR_USER_ID:I = 0x1a
.field public static final INDEX_AUTHOR_USER_NAME:I = 0x1b
.field public static final INDEX_CONVERSATION_ID:I = 0x13
.field public static final INDEX_CONVERSATION_ROW_ID:I = 0x1
.field public static final INDEX_DELETED:I = 0xe
.field public static final INDEX_EPHEMERAL:I = 0xc
.field public static final INDEX_ERROR_CODE:I = 0x11
.field public static final INDEX_ERROR_MESSAGE:I = 0x12
.field public static final INDEX_HIDDEN:I = 0x16
.field public static final INDEX_ID:I = 0x0
.field public static final INDEX_IS_LAST:I = 0x8
.field public static final INDEX_LOCAL_START_TIME:I = 0xd
.field public static final INDEX_MAX_LOOPS:I = 0xa
.field public static final INDEX_MESSAGE:I = 0x5
.field public static final INDEX_MESSAGE_ID:I = 0x2
.field public static final INDEX_NETWORK_TYPE:I = 0x14
.field public static final INDEX_POST_DESCRIPTION:I = 0x1e
.field public static final INDEX_POST_ENTITIES:I = 0x1d
.field public static final INDEX_POST_ID:I = 0xf
.field public static final INDEX_POST_SHARE_URL:I = 0x1f
.field public static final INDEX_SENDER_AVATAR_URL:I = 0x18
.field public static final INDEX_SENDER_PROFILE_BACKGROUND:I = 0x19
.field public static final INDEX_SENDER_USER_NAME:I = 0x17
.field public static final INDEX_THUMBNAIL_URL:I = 0x7
.field public static final INDEX_TIMESTAMP:I = 0x4
.field public static final INDEX_UNREAD_COUNT:I = 0x15
.field public static final INDEX_UPLOAD_PATH:I = 0x10
.field public static final INDEX_USER_ID:I = 0x3
.field public static final INDEX_VANISHED:I = 0x9
.field public static final INDEX_VANISHED_DATE:I = 0xb
.field public static final INDEX_VIDEO_URL:I = 0x6
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x20
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "conversation_row_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "message_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "user_row_id"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "timestamp"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "message"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "video_url"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "thumbnail_url"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_last"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "vanished"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "max_loops"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "vanished_date"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "ephemeral"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "local_start_time"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "deleted"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "post_id"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "upload_path"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "error_code"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "error_reason"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "conversation_id"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "network_type"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "unread_message_count"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "is_hidden"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, "sender_user_name"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string v2, "sender_avatar"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string v2, "sender_profile_background"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string v2, "author_user_id"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string v2, "author_user_name"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string v2, "author_avatar"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string v2, "post_entities"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string v2, "post_description"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string v2, "post_share_url"
aput-object v2, v0, v1
sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$ConversationMessageUsersQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method