.class public final Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagesQuery"
.end annotation


# static fields
.field public static final INDEX_CONVERSATION_ROW_ID:I = 0x1

.field public static final INDEX_DELETED:I = 0xe

.field public static final INDEX_EPHEMERAL:I = 0xc

.field public static final INDEX_ERROR_CODE:I = 0x11

.field public static final INDEX_ERROR_REASON:I = 0x12

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0x8

.field public static final INDEX_LOCAL_START_TIME:I = 0xd

.field public static final INDEX_MAX_LOOPS:I = 0xa

.field public static final INDEX_MESSAGE:I = 0x5

.field public static final INDEX_MESSAGE_ID:I = 0x2

.field public static final INDEX_POST_ID:I = 0xf

.field public static final INDEX_THUMBNAIL_URL:I = 0x7

.field public static final INDEX_TIMESTAMP:I = 0x4

.field public static final INDEX_UPLOAD_PATH:I = 0x10

.field public static final INDEX_USER_ID:I = 0x3

.field public static final INDEX_VANISHED:I = 0x9

.field public static final INDEX_VANISHED_DATE:I = 0xb

.field public static final INDEX_VIDEO_URL:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x13

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

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
