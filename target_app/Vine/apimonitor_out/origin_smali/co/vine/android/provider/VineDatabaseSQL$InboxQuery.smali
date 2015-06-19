.class public final Lco/vine/android/provider/VineDatabaseSQL$InboxQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InboxQuery"
.end annotation


# static fields
.field public static final INBOX_FOLLOWING_FLAG:I = 0xb

.field public static final INDEX_AVATAR_URL:I = 0xc

.field public static final INDEX_CONVERSATION_ROW_ID:I = 0x1

.field public static final INDEX_ERROR:I = 0xf

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_HIDDEN:I = 0x5

.field public static final INDEX_IS_LAST:I = 0x7

.field public static final INDEX_LAST_MESSAGE_ROW_ID:I = 0x6

.field public static final INDEX_NETWORK_TYPE:I = 0x3

.field public static final INDEX_PROFILE_BACKGROUND:I = 0xd

.field public static final INDEX_RECIPIENTS_COUNT:I = 0xe

.field public static final INDEX_TIMESTAMP:I = 0x2

.field public static final INDEX_UNREAD_COUNT:I = 0x4

.field public static final INDEX_USERNAME:I = 0x8

.field public static final INDEX_USER_ID:I = 0xa

.field public static final INDEX_USER_ROW_ID:I = 0x9

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "conversation_row_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unread_message_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_message"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_row_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "following_flag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "avatar_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "profile_background"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "recipients_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "error_reason"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$InboxQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
