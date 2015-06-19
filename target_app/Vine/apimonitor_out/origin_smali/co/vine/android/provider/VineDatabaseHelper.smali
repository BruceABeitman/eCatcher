.class public Lco/vine/android/provider/VineDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VineDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;
    }
.end annotation


# static fields
.field public static final DATABASE_VERSION:I = 0x18

.field private static final DB_NAME:Ljava/lang/String; = "vine"

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final MAX_ACTIVITY_TABLE_SIZE:I = 0x1f4

.field private static final MAX_COMMENTS_TABLE_SIZE:I = 0x1388

.field private static final MAX_LIKES_TABLE_SIZE:I = 0x1388

.field private static final MAX_POST_TABLE_SIZE:I = 0x3e8

.field private static final MAX_USERS_TABLE_SIZE:I = 0x2710

.field public static final SCHEMA_VERSION:I = 0x1

.field private static final SEPARATOR:Ljava/lang/String; = "-"

.field public static final SETTINGS_NAME_SELECTION:Ljava/lang/String; = "name=?"

.field private static final TAG:Ljava/lang/String; = "VineDH"

.field private static final sHelperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/provider/VineDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "VineDH"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP VIEW IF EXISTS  user_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS  post_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS  post_comments_likes_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS users;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS comments;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS likes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS posts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS post_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS page_cursors;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tag_search_results;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tag_search_results;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS channels;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS notifications;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tag_recently_used;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS editions;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS messages;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS conversation_recipients;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS conversations;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_sections;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS message_users_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS inbox_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS conversation_recipients_users_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private fillChannelValues(Landroid/content/ContentValues;Lco/vine/android/api/VineChannel;)V
    .registers 6

    const-string v0, "channel_id"

    iget-wide v1, p2, Lco/vine/android/api/VineChannel;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "channel"

    iget-object v1, p2, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "background_color"

    iget-object v1, p2, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font_color"

    iget-object v1, p2, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineChannel;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "icon_full_url"

    iget-object v1, p2, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retina_icon_full_url"

    iget-object v1, p2, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillCommentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineComment;J)V
    .registers 8

    const-string v0, "comment_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineComment;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    iget-boolean v1, p2, Lco/vine/android/api/VineComment;->verified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p2, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_62
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "is_last"

    iget-boolean v1, p2, Lco/vine/android/api/VineComment;->isLast:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private fillConversationValues(Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;JJ)V
    .registers 11

    if-eqz p2, :cond_7

    const-string v0, "conversation_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    if-eqz p3, :cond_e

    const-string v0, "network_type"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    if-eqz p4, :cond_20

    const-string v1, "is_hidden"

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_20
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-lez v0, :cond_2f

    const-string v0, "unread_message_count"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2f
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_3e

    const-string v0, "last_message"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V
    .registers 8

    const-string v0, "like_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VineLike;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineLike;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fillMessageValues(Landroid/content/ContentValues;JLco/vine/android/api/VinePrivateMessage;)V
    .registers 8

    const-string v0, "conversation_row_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "message_id"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "user_row_id"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "message"

    iget-object v1, p4, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p4, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "video_url"

    iget-object v1, p4, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v0, p4, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "thumbnail_url"

    iget-object v1, p4, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string v0, "is_last"

    iget-boolean v1, p4, Lco/vine/android/api/VinePrivateMessage;->isLast:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "vanished"

    iget-boolean v1, p4, Lco/vine/android/api/VinePrivateMessage;->vanished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "max_loops"

    iget v1, p4, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "vanished_date"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "ephemeral"

    iget-boolean v1, p4, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "local_start_time"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "post_id"

    iget-wide v1, p4, Lco/vine/android/api/VinePrivateMessage;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "error_code"

    iget v1, p4, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "error_reason"

    iget-object v1, p4, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p4, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    const-string v0, "upload_path"

    iget-object v1, p4, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    return-void
.end method

.method private fillNotificationValues(Landroid/content/ContentValues;Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;)V
    .registers 7

    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_id"

    iget-wide v1, p2, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "notification_type"

    iget v1, p2, Lco/vine/android/api/VineSingleNotification;->notificationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "conversation_row_id"

    iget-wide v1, p2, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "message"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "foursquare_venue_id"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "metadata_flags"

    iget v1, p2, Lco/vine/android/api/VinePost;->metadataFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "post_flags"

    iget v1, p2, Lco/vine/android/api/VinePost;->postFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "post_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "my_repost_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->myRepostId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "share_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thumbnail_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video_url"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video_low_uRL"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "likes_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->likesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "reviners_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->revinersCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "comments_count"

    iget v1, p2, Lco/vine/android/api/VinePost;->commentsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "user_background_color"

    iget v1, p2, Lco/vine/android/api/VinePost;->userBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "tags"

    invoke-static {p2}, Lco/vine/android/api/VinePost;->getBytesFromTags(Lco/vine/android/api/VinePost;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "loops"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->loops:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "velocity"

    iget-wide v1, p2, Lco/vine/android/api/VinePost;->velocity:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "on_fire"

    iget-boolean v1, p2, Lco/vine/android/api/VinePost;->onFire:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    if-eqz v0, :cond_e6

    const-string v0, "venue_data"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_e6
    iget-object v0, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_f5

    const-string v0, "entities"

    iget-object v1, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-static {v1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_f5
    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V
    .registers 6

    const-string v0, "tag_id"

    iget-wide v1, p2, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "tag_name"

    iget-object v1, p2, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "last_used_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V
    .registers 9

    const/4 v3, -0x1

    const-string v0, "user_id"

    iget-wide v1, p2, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "avatar_url"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blocked"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "blocking"

    iget v1, p2, Lco/vine/android/api/VineUser;->blocking:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "description"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "location"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "explicit"

    iget v1, p2, Lco/vine/android/api/VineUser;->explicit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "follower_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "following_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p2, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "email_address"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iget-object v0, p2, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "phone_number"

    iget-object v1, p2, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    iget v0, p2, Lco/vine/android/api/VineUser;->following:I

    if-eq v0, v3, :cond_8c

    const-string v0, "following_flag"

    iget v1, p2, Lco/vine/android/api/VineUser;->following:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8c
    const-string v0, "like_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "post_count"

    iget v1, p2, Lco/vine/android/api/VineUser;->postCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "loop_count"

    iget-wide v1, p2, Lco/vine/android/api/VineUser;->loopCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "verified"

    iget v1, p2, Lco/vine/android/api/VineUser;->verified:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "follow_status"

    iget v1, p2, Lco/vine/android/api/VineUser;->followStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "last_refresh"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v0, p2, Lco/vine/android/api/VineUser;->profileBackground:I

    if-le v0, v3, :cond_db

    const-string v0, "profile_background"

    iget v1, p2, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_db
    const-string v1, "accepts_oon_conversations"

    iget-boolean v0, p2, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    if-eqz v0, :cond_ea

    const/4 v0, 0x1

    :goto_e2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_ea
    const/4 v0, 0x0

    goto :goto_e2
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
    .registers 5

    const-class v3, Lco/vine/android/provider/VineDatabaseHelper;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/provider/VineDatabaseHelper;

    if-nez v1, :cond_20

    new-instance v1, Lco/vine/android/provider/VineDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lco/vine/android/provider/VineDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lco/vine/android/provider/VineDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v3

    return-object v1

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getDatabaseName(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabasePath(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getLastChannelRowId()J
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "channels"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$ChannelsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "channel_id DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_28

    :try_start_16
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2b

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_24
    return-wide v1

    :cond_25
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_28
    const-wide/16 v1, 0x0

    goto :goto_24

    :catchall_2b
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastCommentRowId(J)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "comments"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$CommentsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "post_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "comment_id ASC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_32

    :try_start_20
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v1

    :cond_2f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v1, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastConversationId(I)J
    .registers 13

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v10, "last_message>0 AND network_type =? "

    const-string v1, "conversations"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "last_message>0 AND network_type =? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "last_message_timestamp ASC, _id DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_38

    :try_start_26
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_3b

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_34
    return-wide v1

    :cond_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_38
    const-wide/16 v1, 0x0

    goto :goto_34

    :catchall_3b
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastMessageRowId(J)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "conversation_row_id =? AND deleted != 1 "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "message_id ASC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_32

    :try_start_20
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v1

    :cond_2f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v1, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastPostRowId(ILjava/lang/String;)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_comments_likes_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "post_type=? AND tag=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const-string v7, "sort_id ASC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_35

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_38

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_31
    return-wide v1

    :cond_32
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_35
    const-wide/16 v1, 0x0

    goto :goto_31

    :catchall_38
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastTagRowId()J
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tag_search_results"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$TagsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_28

    :try_start_16
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2b

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_24
    return-wide v1

    :cond_25
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_28
    const-wide/16 v1, 0x0

    goto :goto_24

    :catchall_2b
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getLastUserRowId(ILjava/lang/String;Ljava/lang/String;)J
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_33

    const-string v3, "type=? AND tag=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object p2, v4, v6

    :goto_16
    const-string v1, "user_groups_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "1"

    move-object v6, v5

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_41

    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_44

    move-result-wide v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_32
    return-wide v1

    :cond_33
    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    goto :goto_16

    :cond_3e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_41
    const-wide/16 v1, 0x0

    goto :goto_32

    :catchall_44
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized mergePostGroups(Ljava/util/Collection;ILjava/lang/String;Lco/vine/android/util/LongSparseArray;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I",
            "Ljava/lang/String;",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_42

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergePostGroups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tagged by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VinePost;

    iget-wide v2, v14, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_61

    goto :goto_4b

    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_64
    :try_start_64
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "post_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "post_type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_9c

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_61

    move-result v2

    if-eqz v2, :cond_9c

    :cond_87
    const/4 v2, 0x0

    :try_start_88
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_122

    move-result v2

    if-nez v2, :cond_87

    :try_start_99
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9c
    const/4 v13, 0x0

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    if-lez v12, :cond_148

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_61

    :try_start_a6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "post_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VinePost;

    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "post_id"

    iget-wide v3, v14, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "repost_data"

    iget-object v3, v14, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    invoke-static {v3}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, v14, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    if-eqz v2, :cond_127

    const-string v2, "reposter_id"

    iget-object v3, v14, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    iget-wide v3, v3, Lco/vine/android/api/VineRepost;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_100
    if-eqz p4, :cond_111

    const-string v3, "sort_id"

    iget-wide v4, v14, Lco/vine/android/api/VinePost;->postId:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_111
    const-string v2, "post_groups"

    const-string v3, "post_id"

    invoke-virtual {v1, v2, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_118
    .catchall {:try_start_a6 .. :try_end_118} :catchall_12d

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_134

    const/4 v2, 0x1

    :goto_120
    add-int/2addr v13, v2

    goto :goto_c3

    :catchall_122
    move-exception v2

    :try_start_123
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_127
    .catchall {:try_start_123 .. :try_end_127} :catchall_61

    :cond_127
    :try_start_127
    const-string v2, "reposter_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_12d

    goto :goto_100

    :catchall_12d
    move-exception v2

    :try_start_12e
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_61

    :cond_134
    const/4 v2, 0x0

    goto :goto_120

    :cond_136
    :try_start_136
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_12d

    :try_start_139
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_148
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_8

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted new post groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_139 .. :try_end_170} :catchall_61

    goto/16 :goto_8
.end method

.method private declared-synchronized mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Lco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_42

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeUserGroups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tagged by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VineUser;

    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_61

    goto :goto_4b

    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_64
    :try_start_64
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p3, :cond_a2

    const-string v2, "user_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$UserGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "type=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_87
    .catchall {:try_start_64 .. :try_end_87} :catchall_61

    move-result-object v9

    :goto_88
    if-eqz v9, :cond_8

    :goto_8a
    :try_start_8a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_9d

    goto :goto_8a

    :catchall_9d
    move-exception v2

    :try_start_9e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_a2
    const-string v2, "user_groups"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$UserGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_88

    :cond_ba
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_dd

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting new user groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    if-lez v11, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_e6
    .catchall {:try_start_9e .. :try_end_e6} :catchall_61

    :try_start_e6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_fd

    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    if-eqz p5, :cond_153

    const/4 v13, 0x1

    :goto_100
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_108
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_171

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/api/VineUser;

    const-string v2, "g_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "user_id"

    iget-wide v3, v14, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v13, :cond_155

    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_155

    const-string v3, "order_id"

    iget-wide v4, v14, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_144
    :goto_144
    const-string v2, "user_groups"

    const-string v3, "user_id"

    invoke-virtual {v1, v2, v3, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14b
    .catchall {:try_start_e6 .. :try_end_14b} :catchall_14c

    goto :goto_108

    :catchall_14c
    move-exception v2

    :try_start_14d
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_153
    .catchall {:try_start_14d .. :try_end_153} :catchall_61

    :cond_153
    const/4 v13, 0x0

    goto :goto_100

    :cond_155
    if-eqz p4, :cond_144

    :try_start_157
    iget-wide v2, v14, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_144

    const-string v3, "tag"

    iget-wide v4, v14, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_144

    :cond_171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_174
    .catchall {:try_start_157 .. :try_end_174} :catchall_14c

    :try_start_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_183
    .catchall {:try_start_174 .. :try_end_183} :catchall_61

    goto/16 :goto_8
.end method

.method private mergetUserSection(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lco/vine/android/api/VineUser;JI)V
    .registers 17

    if-ltz p6, :cond_7d

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string v0, "section_type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1d

    const-string v0, "last_section_refresh"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1d
    iget-wide v0, p3, Lco/vine/android/api/VineUser;->friendIndex:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    const-string v0, "section_index"

    iget-wide v1, p3, Lco/vine/android/api/VineUser;->friendIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_30
    const-string v0, "user_id"

    iget-wide v1, p3, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "section_title"

    iget-object v1, p3, Lco/vine/android/api/VineUser;->sectionTitle:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "user_id=? AND section_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p3, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "user_sections"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "user_id=? AND section_type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7d

    :try_start_6d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "user_sections"

    const-string v1, "user_id=? AND section_type=?"

    invoke-virtual {p1, v0, p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_85

    :goto_7a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7d
    return-void

    :cond_7e
    :try_start_7e
    const-string v0, "user_sections"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_85

    goto :goto_7a

    :catchall_85
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private notifyByType(I)V
    .registers 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_30

    :pswitch_4
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_CHANNEL_POPULAR:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7

    :pswitch_10
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_CHANNEL_RECENT:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7

    :pswitch_18
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_ON_THE_RISE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7

    :pswitch_20
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7

    :pswitch_28
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7

    :pswitch_data_30
    .packed-switch 0x4
        :pswitch_18
        :pswitch_20
        :pswitch_28
        :pswitch_4
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method private notifyPostCommentsViewUris()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyVMUris()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$Messages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$ConversationRecipients;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private declared-synchronized removePostsFromGroup(I)I
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_53

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "post_groups"

    const-string v3, "post_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_49

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4e

    :cond_49
    :try_start_49
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_53

    monitor-exit p0

    return v1

    :catchall_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized removePostsFromGroupByPostId(IJ)I
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "post_type=? AND post_id=?"

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "post_groups"

    const-string v4, "post_type=? AND post_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    move-result v3

    monitor-exit p0

    return v3

    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized addFollow(JJJZ)I
    .registers 28

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "users"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "following_flag"

    aput-object v8, v5, v6

    const-string v6, "user_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_c5

    move-result-object v14

    if-eqz v14, :cond_bb

    :try_start_24
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b6

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lco/vine/android/Friendships;->setFriendship(II)I

    move-result v17

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "following_flag"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "users"

    const-string v5, "user_id=?"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    new-instance v19, Lco/vine/android/api/VineUser;

    invoke-direct/range {v19 .. v19}, Lco/vine/android/api/VineUser;-><init>()V

    move-wide/from16 v0, p1

    move-object/from16 v2, v19

    iput-wide v0, v2, Lco/vine/android/api/VineUser;->userId:J

    new-instance v9, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_7a

    new-instance v13, Lco/vine/android/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1, v4}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7a
    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Lco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)V

    if-eqz p7, :cond_91

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_91
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_af

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Followed user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_24 .. :try_end_af} :catchall_be

    :cond_af
    if-eqz v14, :cond_b4

    :try_start_b1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_c5

    :cond_b4
    :goto_b4
    monitor-exit p0

    return v18

    :cond_b6
    if-eqz v14, :cond_bb

    :try_start_b8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_bb
    const/16 v18, -0x1

    goto :goto_b4

    :catchall_be
    move-exception v4

    if-eqz v14, :cond_c4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c4
    throw v4
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized addLike(Lco/vine/android/api/VineLike;Z)I
    .registers 20

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineLike;->postId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_b5

    const/16 v16, 0x0

    const/4 v15, 0x0

    :try_start_16
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "posts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "metadata_flags"

    aput-object v6, v3, v4

    const-string v4, "post_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_ae

    move-result-object v12

    if-eqz v12, :cond_7a

    :try_start_2e
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_75

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    or-int/lit8 v14, v14, 0x8

    const-string v2, "metadata_flags"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "posts"

    const-string v3, "post_id=?"

    invoke-virtual {v1, v2, v13, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a4

    const/16 v16, 0x1

    :goto_55
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_75

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating like value in post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->postId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_2e .. :try_end_75} :catchall_a7

    :cond_75
    if-eqz v12, :cond_7a

    :try_start_77
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7a
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->postId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    move-result v15

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_ae

    :try_start_94
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p2, :cond_a2

    if-gtz v16, :cond_9f

    if-lez v15, :cond_a2

    :cond_9f
    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_b5

    :cond_a2
    monitor-exit p0

    return v16

    :cond_a4
    const/16 v16, 0x0

    goto :goto_55

    :catchall_a7
    move-exception v2

    if-eqz v12, :cond_ad

    :try_start_aa
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_ad
    throw v2
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception v2

    :try_start_af
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public amFollowingUser(J)Z
    .registers 15

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "following_flag"

    aput-object v3, v2, v11

    const-string v3, "_id =? "

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_35

    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_38

    move-result v1

    if-ne v1, v10, :cond_36

    move v9, v10

    :cond_30
    :goto_30
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_35
    return v9

    :cond_36
    move v9, v11

    goto :goto_30

    :catchall_38
    move-exception v1

    if-eqz v8, :cond_3e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v1
.end method

.method public declared-synchronized cleanTagSearchResults()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4a

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "tag_search_results"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_33

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag search result rows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_45

    :try_start_36
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v1, :cond_43

    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_4a

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v2

    :try_start_46
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanUp(J)I
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_68

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "posts"

    const-string v3, "last_refresh<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_59

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleanup performed, deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " posts with last_refresh less "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "than anchor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_63

    :cond_59
    :try_start_59
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v1, :cond_61

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_68

    :cond_61
    monitor-exit p0

    return v1

    :catchall_63
    move-exception v2

    :try_start_64
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanUserSearchResults()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_56

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "user_groups"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_3f

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user search result rows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_51

    :try_start_42
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v1, :cond_4f

    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_56

    :cond_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception v2

    :try_start_52
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearAllData()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "user_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "posts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "likes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "post_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "page_cursors"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "tag_search_results"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "channels"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "notifications"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "tag_recently_used"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversation_recipients"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    monitor-exit p0

    return-void

    :catchall_69
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearCachedData()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_77

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "user_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "posts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "likes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "post_groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "page_cursors"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "tag_search_results"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "channels"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "notifications"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "tag_recently_used"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversation_recipients"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_72

    :try_start_6d
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    monitor-exit p0

    return-void

    :catchall_72
    move-exception v1

    :try_start_73
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearCachedData(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->clearCachedData()V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearFileCache()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lco/vine/android/util/Util;->removeCache(Landroid/content/Context;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lco/vine/android/util/image/ImageUtils;->removeFiles(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized clearUnreadCount(J)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4c

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "unread_message_count"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "conversations"

    const-string v6, "_id=?"

    invoke-virtual {v0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_47

    :try_start_30
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v1, :cond_45

    iget-object v5, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v5, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_4c

    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v5

    :try_start_48
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized createConversationRowId(Ljava/util/HashSet;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;I)J"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4b

    move-result-object v11

    const-wide/16 v9, -0x1

    :try_start_7
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lco/vine/android/provider/VineDatabaseHelper;->fillConversationValues(Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;JJ)V

    const-string v0, "conversations"

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_46

    :try_start_30
    invoke-virtual {p0, v11}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-lez v0, :cond_44

    invoke-virtual {p0, v9, v10, p1}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversationRecipients(JLjava/util/Collection;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_4b

    :cond_44
    monitor-exit p0

    return-wide v9

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p0, v11}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createNewUserFromNonUserIdRecipientInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 42

    new-instance v2, Lco/vine/android/api/VineUser;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, ""

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    move-object/from16 v3, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p2

    invoke-direct/range {v2 .. v35}, Lco/vine/android/api/VineUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZIILjava/lang/String;ZZZJ)V

    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v36

    const-string v3, "users"

    const-string v4, "last_refresh"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    return-wide v3
.end method

.method public createPreMergeConversationIdAndRecipientsIfNecessary(Ljava/util/List;I)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;I)J"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VineRecipient;

    invoke-virtual {v3}, Lco/vine/android/api/VineRecipient;->isFromUser()Z

    move-result v7

    if-nez v7, :cond_42

    invoke-virtual {p0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForRecipient(Lco/vine/android/api/VineRecipient;)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gtz v7, :cond_35

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Lco/vine/android/api/VineRecipient;->isFromEmail()Z

    move-result v7

    if-eqz v7, :cond_3f

    iget-object v0, v3, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    :goto_2f
    iget-object v7, v3, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {p0, v7, v2, v0}, Lco/vine/android/provider/VineDatabaseHelper;->createNewUserFromNonUserIdRecipientInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    :cond_35
    iput-wide v4, v3, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3f
    iget-object v2, v3, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    goto :goto_2f

    :cond_42
    iget-wide v7, v3, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4c
    invoke-virtual {p0, v6, p2}, Lco/vine/android/provider/VineDatabaseHelper;->createConversationRowId(Ljava/util/HashSet;I)J

    move-result-wide v7

    return-wide v7
.end method

.method protected createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE  users (_id INTEGER PRIMARY KEY,user_id INT,avatar_url TEXT,blocked INT,blocking INT,hide_profile_reposts INT,description TEXT,location TEXT,explicit INT,follower_count INT,following_count INT,following_flag INT,like_count INT,post_count INT,username TEXT,email_address TEXT,phone_number TEXT,verified INT,follow_status INT,last_refresh INT,accepts_oon_conversations INT,profile_background INT, loop_count INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  settings (_id INTEGER PRIMARY KEY,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  user_sections (_id INTEGER PRIMARY KEY,user_id INT, section_type INT, section_index INT, section_title TEXT, last_section_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  user_groups (_id INTEGER PRIMARY KEY,type INT,tag TEXT,user_id INT,is_last INT,g_flags INT,order_id INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  comments (_id INTEGER PRIMARY KEY,comment_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,comment TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,entities BLOB,is_last INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW  user_groups_view AS SELECT user_groups._id AS _id,user_groups.type AS type,user_groups.tag AS tag,user_groups.user_id AS user_id,user_groups.is_last AS is_last,user_groups.g_flags AS g_flags,user_groups.order_id AS order_id,user.username AS username,user.user_id AS user_id,user.avatar_url AS avatar_url,user.blocked AS blocked,user.blocking AS blocking,user.description AS description,user.location AS location,user.explicit AS explicit,user.follower_count AS follower_count,user.following_count AS following_count,user.following_flag AS following_flag,user.like_count AS like_count,user.post_count AS post_count,user.follow_status AS follow_status,user.verified AS verified,user.accepts_oon_conversations AS accepts_oon_conversations,user.profile_background AS profile_background, user.loop_count AS loop_count, section.last_section_refresh AS last_section_refresh,section.section_index AS section_index,section.section_title AS section_title,section.section_type AS section_type FROM user_groups LEFT JOIN users AS user ON user_groups.user_id=user.user_id LEFT JOIN user_sections as section ON section.user_id=user.user_id ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  likes (_id INTEGER PRIMARY KEY,like_id INT UNIQUE NOT NULL,post_id INT NOT NULL,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,verified INT,last_refresh INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  posts (_id INTEGER PRIMARY KEY,post_id INT NOT NULL,my_repost_id INT,tags BLOB,thumbnail_url TEXT,share_url TEXT,video_low_uRL TEXT,video_url TEXT,description TEXT,foursquare_venue_id TEXT,metadata_flags INT,post_flags INT,avatar_url TEXT,user_id INT,username TEXT,timestamp INT,location TEXT,venue_data BLOB,entities BLOB,likes_count INT,reviners_count INT,comments_count INT,user_background_color INT,last_refresh INT,loops INT,velocity INT,on_fire INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  post_groups (_id INTEGER PRIMARY KEY,post_type INT,tag TEXT,post_id INT,is_last INT,repost_data BLOB,reposter_id INT,sort_id INT,g_flags INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW  post_groups_view AS SELECT post_groups._id AS _id,post_groups.post_type AS post_type,post_groups.tag AS tag,post_groups.post_id AS post_id,post_groups.is_last AS is_last,post_groups.g_flags AS g_flags,post_groups.sort_id AS sort_id,post_groups.repost_data AS repost_data,post_groups.reposter_id AS reposter_id,posts.username AS username,posts.avatar_url AS avatar_url,posts.thumbnail_url AS thumbnail_url,posts.metadata_flags AS metadata_flags,posts.user_id AS user_id,posts.my_repost_id AS my_repost_id,posts.timestamp AS timestamp,posts.location AS location,posts.tags AS tags,posts.share_url AS share_url,posts.video_low_uRL AS video_low_uRL,posts.video_url AS video_url,posts.video_low_uRL AS video_low_uRL,posts.description AS description,posts.foursquare_venue_id AS foursquare_venue_id,posts.post_flags AS post_flags,posts.venue_data AS venue_data,posts.entities AS entities,posts.likes_count AS likes_count,posts.reviners_count AS reviners_count,posts.comments_count AS comments_count,posts.user_background_color AS user_background_color,posts.loops AS loops,posts.velocity AS velocity,posts.on_fire AS on_fire,posts.last_refresh AS last_refresh FROM post_groups LEFT JOIN posts AS posts ON post_groups.post_id=posts.post_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW  post_comments_likes_view AS  SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.my_repost_id AS my_repost_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.metadata_flags AS metadata_flags,post_groups_view.post_flags AS post_flags,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.sort_id AS sort_id,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.venue_data AS venue_data,post_groups_view.entities AS entities,post_groups_view.repost_data AS repost_data,post_groups_view.reposter_id AS reposter_id,post_groups_view.likes_count AS likes_count,post_groups_view.reviners_count AS reviners_count,post_groups_view.comments_count AS comments_count,post_groups_view.user_background_color AS user_background_color,post_groups_view.loops AS loops,post_groups_view.velocity AS velocity,post_groups_view.on_fire AS on_fire,post_groups_view.last_refresh AS last_refresh,likes.like_id AS like_id,likes.avatar_url AS like_user_avatar_url,likes.user_id AS like_user_user_id,likes.timestamp AS like_user_timestamp,likes.location AS like_user_location,likes.username AS like_user_username,likes.verified AS like_user_verified,null  AS comment_id,null  AS comment,null  AS comment_user_avatar_url,null  AS comment_user_user_id,null  AS comment_user_timestamp,null  AS comment_user_location,null  AS comment_user_username,null  AS comment_user_verified,null  AS comment_is_last,null  AS comment_entities FROM post_groups_view LEFT JOIN likes ON post_groups_view.post_id = likes.post_id UNION SELECT post_groups_view._id AS _id,post_groups_view.post_id AS post_id,post_groups_view.my_repost_id AS my_repost_id,post_groups_view.tags AS tags,post_groups_view.thumbnail_url AS thumbnail_url,post_groups_view.share_url AS share_url,post_groups_view.video_low_uRL AS video_low_uRL,post_groups_view.video_url AS video_url,post_groups_view.description AS description,post_groups_view.foursquare_venue_id AS foursquare_venue_id,post_groups_view.metadata_flags AS metadata_flags,post_groups_view.post_flags AS post_flags,post_groups_view.post_type AS post_type,post_groups_view.tag AS tag,post_groups_view.sort_id AS sort_id,post_groups_view.is_last AS is_last,post_groups_view.avatar_url AS avatar_url,post_groups_view.user_id AS user_id,post_groups_view.timestamp AS timestamp,post_groups_view.location AS location,post_groups_view.username AS username,post_groups_view.venue_data AS venue_data,post_groups_view.entities AS entities,post_groups_view.repost_data AS repost_data,post_groups_view.reposter_id AS reposter_id,post_groups_view.likes_count AS likes_count,post_groups_view.reviners_count AS reviners_count,post_groups_view.comments_count AS comments_count,post_groups_view.user_background_color AS user_background_color,post_groups_view.loops AS loops,post_groups_view.velocity AS velocity,post_groups_view.on_fire AS on_fire,post_groups_view.last_refresh AS last_refresh,null  AS like_id,null  AS like_user_avatar_url,null  AS like_user_user_id,null  AS like_user_timestamp,null  AS like_user_location,null  AS like_user_username,null  AS like_user_verified,comments.comment_id AS comment_id,comments.comment AS comment,comments.avatar_url AS comment_user_avatar_url,comments.user_id AS comment_user_user_id,comments.timestamp AS comment_user_timestamp,comments.location AS comment_user_location,comments.username AS comment_user_username,comments.verified AS comment_user_verified,comments.is_last AS comment_is_last,comments.entities AS comment_entities FROM post_groups_view LEFT JOIN comments ON post_groups_view.post_id = comments.post_id "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  page_cursors (_id INTEGER PRIMARY KEY,type INT,tag TEXT,kind INT,next_page INT,previous_page INT,anchor TEXT,reversed INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  tag_search_results (_id INTEGER PRIMARY KEY,tag_id INT UNIQUE NOT NULL,tag_name TEXT NOT NULL,last_used_timestamp TEXT,is_last INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  channels (_id INTEGER PRIMARY KEY,channel_id INT UNIQUE NOT NULL,channel TEXT NOT NULL,timestamp INT,background_color TEXT,font_color TEXT,last_used_timestamp INT,is_last INT,icon_full_url TEXT,retina_icon_full_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  notifications (_id INTEGER PRIMARY KEY,notification_id INT UNIQUE NOT NULL,notification_type INT,message TEXT,cleared INT, conversation_row_id INT, avatar_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  tag_recently_used (_id INTEGER PRIMARY KEY,tag_id INT UNIQUE NOT NULL,tag_name TEXT NOT NULL,last_used_timestamp TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  editions (_id INTEGER PRIMARY KEY,edition_code TEXT,edition_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  messages (_id INTEGER PRIMARY KEY,conversation_row_id INT NOT NULL,message_id INT NOT NULL,user_row_id INT NOT NULL,timestamp INT,message TEXT,video_url TEXT,thumbnail_url TEXT, is_last INT,vanished INT,max_loops INT,vanished_date INT,ephemeral INT,local_start_time INT,deleted INT,post_id INT,upload_path TEXT,error_code INT,error_reason TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  conversations (_id INTEGER PRIMARY KEY,conversation_id INT NOT NULL,network_type INT NOT NULL, unread_message_count INT, is_hidden INT DEFAULT 0, last_message INT, last_message_timestamp INT, is_last INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW message_users_view AS SELECT m._id AS _id,m.conversation_row_id AS conversation_row_id,m.message_id AS message_id,m.user_row_id AS user_row_id,m.message AS message,m.timestamp AS timestamp,m.video_url AS video_url,m.thumbnail_url AS thumbnail_url,m.is_last AS is_last,m.vanished AS vanished,m.max_loops AS max_loops,m.vanished_date AS vanished_date,m.ephemeral AS ephemeral,m.local_start_time AS local_start_time,m.deleted AS deleted,m.post_id AS post_id,m.upload_path AS upload_path,m.error_code AS error_code,m.error_reason AS error_reason,c.conversation_id AS conversation_id,c.network_type AS network_type,c.is_hidden AS is_hidden,c.unread_message_count AS unread_message_count,user.username AS sender_user_name,user.avatar_url AS sender_avatar,user.profile_background AS sender_profile_background,post.user_id AS author_user_id,post.username AS author_user_name,post.avatar_url AS author_avatar,post.entities AS post_entities,post.description AS post_description,post.share_url AS post_share_url FROM messages AS  m LEFT JOIN users AS user ON m.user_row_id=user._id LEFT JOIN conversations AS c ON m.conversation_row_id=c._id LEFT JOIN (SELECT p.post_id, p.user_id, p.username, p.avatar_url, p.entities, p.description, p.share_url FROM messages AS m LEFT JOIN post_comments_likes_view AS p ON m.post_id=p.post_id GROUP BY p.post_id) AS post ON m.post_id=post.post_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE conversation_recipients (_id INTEGER PRIMARY KEY,conversation_row_id INT NOT NULL,user_row_id INT NOT NULL, UNIQUE (conversation_row_id,user_row_id) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW inbox_view AS SELECT cr._id AS _id,cr.conversation_row_id AS conversation_row_id,( SELECT COUNT(*) FROM conversation_recipients where conversation_row_id = cr.conversation_row_id group by conversation_row_id) AS recipients_count,m.timestamp AS timestamp,m.error_reason AS error_reason,c.network_type AS network_type,c.unread_message_count AS unread_message_count,c.is_hidden AS is_hidden,c.last_message AS last_message,c.is_last AS is_last,u.username AS username,u._id AS user_row_id,u.user_id AS user_id,u.following_flag AS following_flag,u.avatar_url AS avatar_url,u.profile_background AS profile_background FROM conversation_recipients AS cr JOIN users AS u ON cr.user_row_id= u._id JOIN messages AS m ON c.last_message=m._id JOIN conversations AS c ON c._id =cr.conversation_row_id GROUP BY cr.conversation_row_id ORDER BY timestamp DESC;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW  conversation_recipients_users_view AS SELECT conversation_recipients._id AS _id,conversation_recipients.conversation_row_id AS conversation_row_id,conversation_recipients.user_row_id AS user_row_id,user.username AS username,user.user_id AS user_id,user.phone_number AS phone_number,user.email_address AS email_address,user.profile_background AS profile_background FROM conversation_recipients LEFT JOIN users AS user ON conversation_recipients.user_row_id=user._id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized deleteComment(Ljava/lang/String;)I
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "comments"

    const-string v3, "comment_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_20

    iget-object v2, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    :cond_20
    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_3e

    if-lez v1, :cond_40

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting comment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_59

    :cond_3e
    :goto_3e
    monitor-exit p0

    return v1

    :cond_40
    :try_start_40
    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete comment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_59

    goto :goto_3e

    :catchall_59
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteConversation(JJ)V
    .registers 14

    const-wide/16 v7, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8c

    move-result-object v0

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    cmp-long v2, p1, v7

    if-lez v2, :cond_21

    const-string v2, "conversations"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :cond_21
    cmp-long v2, p3, v7

    if-lez v2, :cond_5e

    const-string v2, "conversations"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "messages"

    const-string v3, "conversation_row_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "conversation_recipients"

    const-string v3, "conversation_row_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_5e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_87

    :try_start_61
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_80

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted conversation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    if-lez v1, :cond_85

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyVMUris()V
    :try_end_85
    .catchall {:try_start_61 .. :try_end_85} :catchall_8c

    :cond_85
    monitor-exit p0

    return-void

    :catchall_87
    move-exception v2

    :try_start_88
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteMessage(J)V
    .registers 18

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v1, "messages"

    const-string v2, "message_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_row_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "is_last"

    aput-object v4, v2, v3

    const-string v3, "message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_7b

    move-result-object v8

    if-eqz v8, :cond_67

    :try_start_46
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6e

    const/4 v11, 0x1

    :goto_5a
    invoke-virtual {p0, v9, v10, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNumberVisibleMessagesInConversation(JLandroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    if-nez v1, :cond_70

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v10, v1}, Lco/vine/android/provider/VineDatabaseHelper;->setConversationHidden(JZ)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_76

    :cond_64
    :goto_64
    :try_start_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_67
    if-lez v13, :cond_6c

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyVMUris()V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_7b

    :cond_6c
    monitor-exit p0

    return-void

    :cond_6e
    const/4 v11, 0x0

    goto :goto_5a

    :cond_70
    if-eqz v11, :cond_64

    :try_start_72
    invoke-virtual {p0, v9, v10}, Lco/vine/android/provider/VineDatabaseHelper;->markLastMessage(J)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_64

    :catchall_76
    move-exception v1

    :try_start_77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deletePost(J)I
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7a

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "posts"

    const-string v4, "post_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2f

    const-string v3, "post_groups"

    const-string v4, "post_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_2f
    if-gtz v1, :cond_33

    if-lez v2, :cond_36

    :cond_33
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V

    :cond_36
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_54

    if-lez v2, :cond_5c

    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing the post: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_75

    :try_start_57
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_7a

    monitor-exit p0

    return v1

    :cond_5c
    :try_start_5c
    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t delete post: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_75

    goto :goto_54

    :catchall_75
    move-exception v3

    :try_start_76
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized deletePushNotifications(I)I
    .registers 9

    const/4 v2, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_40

    :goto_6
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_42

    const-string v5, "=?"

    :goto_15
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_4a

    move-result-object v0

    const/4 v1, 0x0

    :try_start_2e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "notifications"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_45

    :try_start_3b
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4a

    monitor-exit p0

    return v1

    :cond_40
    move v2, v5

    goto :goto_6

    :cond_42
    :try_start_42
    const-string v5, "<>?"

    goto :goto_15

    :catchall_45
    move-exception v5

    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public determineBestConversationRowIdForRecipient(Lco/vine/android/api/VineRecipient;)J
    .registers 6

    invoke-virtual {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForRecipient(Lco/vine/android/api/VineRecipient;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->determineBestConversationRowIdForUserRowId(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public determineBestConversationRowIdForUserRemoteId(J)J
    .registers 7

    invoke-virtual {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->determineBestConversationRowIdForUserRowId(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public determineBestConversationRowIdForUserRowId(J)J
    .registers 17

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversation_recipients"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_row_id"

    aput-object v4, v2, v3

    const-string v3, "user_row_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v12, -0x1

    if-eqz v8, :cond_64

    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v1, "conversation_recipients"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "conversation_row_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_6b

    move-result-object v9

    if-eqz v9, :cond_25

    :try_start_4f
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    move-wide v12, v10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_72

    if-eqz v9, :cond_5f

    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6b

    :cond_5f
    if-eqz v8, :cond_64

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_64
    return-wide v12

    :cond_65
    if-eqz v9, :cond_25

    :try_start_67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_25

    :catchall_6b
    move-exception v1

    if-eqz v8, :cond_71

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v1

    :catchall_72
    move-exception v1

    if-eqz v9, :cond_78

    :try_start_75
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v1
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_6b
.end method

.method public determineOrCreateBestConversationRowIdForRecipients(Ljava/util/List;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;I)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->determineBestConversationRowIdForRecipient(Lco/vine/android/api/VineRecipient;)J

    move-result-wide v0

    :cond_14
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1e

    invoke-virtual {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->createPreMergeConversationIdAndRecipientsIfNecessary(Ljava/util/List;I)J

    move-result-wide v0

    :cond_1e
    return-wide v0
.end method

.method public declared-synchronized expireTimeline(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroup(I)I

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCommentsCount(J)I
    .registers 13

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "comments"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$CommentsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "post_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_2d

    move-result-object v8

    if-eqz v8, :cond_26

    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_28

    move-result v9

    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2d

    :cond_26
    monitor-exit p0

    return v9

    :catchall_28
    move-exception v1

    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConversationNetworkType(J)I
    .registers 16

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "_id =? "

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v12

    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "network_type"

    aput-object v1, v2, v12

    const-string v1, "conversations"

    const-string v3, "_id =? "

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_32

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_32
    :goto_32
    return v10

    :cond_33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_32
.end method

.method public getConversationRecipientsFromConversationRowId(J)Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversation_recipients"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_row_id"

    aput-object v4, v2, v3

    const-string v3, "conversation_row_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_7b

    :try_start_24
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_7c

    :cond_29
    :goto_29
    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v1, "users"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_6c

    move-result-object v9

    if-eqz v9, :cond_29

    :try_start_53
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    move-wide v5, v12

    invoke-static/range {v1 .. v6}, Lco/vine/android/api/VineRecipient;->fromUser(Ljava/lang/String;JIJ)Lco/vine/android/api/VineRecipient;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_72

    :cond_68
    :try_start_68
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_29

    :catchall_6c
    move-exception v1

    move-object v10, v11

    :goto_6e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_72
    move-exception v1

    :try_start_73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_6c

    :cond_77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    :cond_7b
    return-object v10

    :catchall_7c
    move-exception v1

    goto :goto_6e
.end method

.method public declared-synchronized getConversationRemoteId(J)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    const-string v3, "_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_38

    const-wide/16 v10, -0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3b

    :goto_36
    monitor-exit p0

    return-wide v10

    :cond_38
    const-wide/16 v10, -0x1

    goto :goto_36

    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConversationRowId(J)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "conversation_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_38

    const-wide/16 v10, -0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3b

    :goto_36
    monitor-exit p0

    return-wide v10

    :cond_38
    const-wide/16 v10, -0x1

    goto :goto_36

    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDisplayForUser(J)Ljava/lang/String;
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "username"

    aput-object v3, v2, v7

    const-string v3, "_id =? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_30

    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_31

    move-result-object v9

    :cond_2d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v9

    :catchall_31
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized getLastMessageIdInConversation(J)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "message_id"

    aput-object v4, v2, v3

    const-string v3, "conversation_row_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "message_id DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_37

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_34
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit p0

    return-wide v10

    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMessageFromMessageRow(J)Lco/vine/android/api/VinePrivateMessage;
    .registers 14

    const/4 v9, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_6
    const-string v1, "message_users_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$ConversationMessageUsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_39

    move-result-object v8

    if-eqz v8, :cond_2e

    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v10, Lco/vine/android/api/VinePrivateMessage;

    invoke-direct {v10, v8}, Lco/vine/android/api/VinePrivateMessage;-><init>(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_34

    move-object v9, v10

    :cond_2b
    :try_start_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    :cond_2e
    if-eqz v8, :cond_33

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v9

    :catchall_34
    move-exception v1

    :try_start_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v1

    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v1
.end method

.method public getMessagesForConversationRowId(J)Landroid/database/Cursor;
    .registers 11

    const/4 v5, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "message_users_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$ConversationMessageUsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "conversation_row_id=? AND error_code <> 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "message_id ASC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getMessagesThatWereViewed()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "message_users_view"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "conversation_id"

    aput-object v3, v2, v5

    const-string v3, "message_id"

    aput-object v3, v2, v6

    const-string v3, "local_start_time"

    aput-object v3, v2, v7

    const-string v3, "local_start_time!=0"

    const-string v7, "message_id DESC"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_53

    :goto_2c
    :try_start_2c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;-><init>(JJJ)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_4a

    goto :goto_2c

    :catch_4a
    move-exception v10

    :try_start_4b
    const-string v1, "Error while getting viewed messages."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_58

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_53
    :goto_53
    return-object v11

    :cond_54
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catchall_58
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getNewMessageId()J
    .registers 14

    const/4 v12, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "message_id"

    aput-object v4, v2, v12

    const-string v7, "message_id DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_2f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v10, v1, v3

    :cond_2c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-wide v10
.end method

.method public declared-synchronized getNextPageCursor(IILjava/lang/String;Z)I
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p4, :cond_49

    const-string v9, "previous_page"

    :goto_9
    if-nez p3, :cond_d

    const-string p3, ""

    :cond_d
    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_51

    move-result-object v8

    const/4 v10, -0x1

    if-eqz v8, :cond_47

    :try_start_39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_4c

    move-result v10

    :cond_44
    :try_start_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_51

    :cond_47
    monitor-exit p0

    return v10

    :cond_49
    :try_start_49
    const-string v9, "next_page"

    goto :goto_9

    :catchall_4c
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNotifications(I)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;"
        }
    .end annotation

    const/16 v2, 0x12

    const/4 v10, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-ne p1, v2, :cond_55

    :goto_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v10, :cond_57

    const-string v1, "=?"

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "notifications"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$NotificationsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "notification_id DESC"

    const-string v8, "10"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_5d

    :goto_43
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Lco/vine/android/api/VineSingleNotification;

    invoke-direct {v1, v9}, Lco/vine/android/api/VineSingleNotification;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_52

    goto :goto_43

    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_55
    move v10, v1

    goto :goto_7

    :cond_57
    :try_start_57
    const-string v1, "<>?"

    goto :goto_16

    :cond_5a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_52

    :cond_5d
    monitor-exit p0

    return-object v11
.end method

.method public getNumberVisibleMessagesInConversation(JLandroid/database/sqlite/SQLiteDatabase;)I
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v1, "messages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v3, "conversation_row_id =? AND deleted != 1"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_25

    :try_start_1e
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    move-result v9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_25
    return v9

    :catchall_26
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public declared-synchronized getOldestSortId(I)Landroid/database/Cursor;
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sort_id"

    aput-object v4, v2, v3

    const-string v3, "post_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "CAST (sort_id AS INTEGER) DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPageAnchor(IILjava/lang/String;)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "anchor"

    aput-object v4, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_4f

    move-result-object v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_48

    :try_start_34
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_45

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_4a

    move-result-wide v9

    :cond_45
    :try_start_45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4f

    :cond_48
    monitor-exit p0

    return-wide v9

    :catchall_4a
    move-exception v1

    :try_start_4b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPost(J)Lco/vine/android/api/VinePost;
    .registers 13

    const/4 v5, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "post_comments_likes_view"

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "post_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2e

    :try_start_1d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v8}, Lco/vine/android/api/VinePost;->from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_30

    move-result-object v9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2a
    return-object v9

    :cond_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2e
    move-object v9, v5

    goto :goto_2a

    :catchall_30
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized getPreviousPageCursor(IILjava/lang/String;Z)I
    .registers 17

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p4, :cond_4c

    const-string v9, "next_page"

    :goto_9
    if-nez p3, :cond_d

    const-string p3, ""

    :cond_d
    const-string v1, "page_cursors"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const-string v3, "kind=? AND type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_54

    move-result-object v8

    const/4 v11, -0x1

    if-eqz v8, :cond_4a

    :try_start_39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_4f

    move-result v11

    :cond_47
    :try_start_47
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    :cond_4a
    monitor-exit p0

    return v11

    :cond_4c
    :try_start_4c
    const-string v9, "previous_page"

    goto :goto_9

    :catchall_4f
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUserRemoteIdForUserRowId(J)J
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "user_id"

    aput-object v3, v2, v7

    const-string v3, "_id =? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_31

    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_32

    move-result-wide v9

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_31
    return-wide v9

    :catchall_32
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getUserRowIdForRecipient(Lco/vine/android/api/VineRecipient;)J
    .registers 14

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-wide v1, p1, Lco/vine/android/api/VineRecipient;->recipientId:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    iget-wide v10, p1, Lco/vine/android/api/VineRecipient;->recipientId:J

    :goto_d
    return-wide v10

    :cond_e
    invoke-virtual {p1}, Lco/vine/android/api/VineRecipient;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-wide v1, p1, Lco/vine/android/api/VineRecipient;->userId:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    iget-wide v1, p1, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-virtual {p0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J

    move-result-wide v10

    goto :goto_d

    :cond_21
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lco/vine/android/api/VineRecipient;->isFromEmail()Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v9, "email_address"

    :cond_2e
    :goto_2e
    if-eqz v9, :cond_80

    const-string v1, "users"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p1, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_80

    :try_start_65
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_83

    move-result-wide v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :cond_74
    invoke-virtual {p1}, Lco/vine/android/api/VineRecipient;->isFromPhone()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v9, "phone_number"

    goto :goto_2e

    :cond_7d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_80
    const-wide/16 v10, -0x1

    goto :goto_d

    :catchall_83
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getUserRowIdForUserRemoteId(J)J
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "user_id =? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_31

    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_32

    move-result-wide v9

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_31
    return-wide v9

    :catchall_32
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized markChannelLastUsedTimestamp(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "last_used_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "channels"

    const-string v3, "channel_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized markLastChannel()V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getLastChannelRowId()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6e

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_29

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest channel with row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_6e

    :try_start_3c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "channels"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "channels"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_71

    :try_start_62
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6e

    goto :goto_b

    :catchall_6e
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_71
    move-exception v4

    :try_start_72
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_6e
.end method

.method public declared-synchronized markLastComment(J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getLastCommentRowId(J)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_56

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_56

    :try_start_20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "comments"

    const-string v5, "is_last=1 AND post_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "comments"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_59

    :try_start_52
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_b

    :catchall_56
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_56
.end method

.method public declared-synchronized markLastConversation(I)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->getLastConversationId(I)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_58

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "is_last"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_58

    :try_start_20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "conversations"

    const-string v6, "is_last=1 AND network_type=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v5, "is_last"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "conversations"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_5b

    :try_start_54
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_b

    :catchall_58
    move-exception v5

    monitor-exit p0

    throw v5

    :catchall_5b
    move-exception v5

    :try_start_5c
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_58
.end method

.method public declared-synchronized markLastMessage(J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getLastMessageRowId(J)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_56

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_56

    :try_start_20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "messages"

    const-string v5, "is_last=1 AND conversation_row_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "messages"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_59

    :try_start_52
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_b

    :catchall_56
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_56
.end method

.method public declared-synchronized markLastPost(ILjava/lang/String;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->getLastPostRowId(ILjava/lang/String;)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_80

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_41

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest post of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_80

    :try_start_50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "post_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "post_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_83

    :try_start_79
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_80

    goto :goto_b

    :catchall_80
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_83
    move-exception v4

    :try_start_84
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_80
.end method

.method public declared-synchronized markLastTag()V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getLastTagRowId()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_71

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_29

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest tag with row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_71

    :try_start_3c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "tag_search_results"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tag_search_results"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6d
    .catchall {:try_start_3c .. :try_end_6d} :catchall_74

    :try_start_6d
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_b

    :catchall_71
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_74
    move-exception v4

    :try_start_75
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_71
.end method

.method public declared-synchronized markLastUser(ILjava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "order_id ASC"

    invoke-virtual {p0, p1, p2, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markLastUser(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/provider/VineDatabaseHelper;->getLastUserRowId(ILjava/lang/String;Ljava/lang/String;)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7b

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_33

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tagging the oldest user of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_7b

    :try_start_46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "user_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "user_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_7e

    :try_start_6f
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_7b

    goto :goto_b

    :catchall_7b
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_7e
    move-exception v4

    :try_start_7f
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_7b
.end method

.method public declared-synchronized mergeChannels(Ljava/util/Collection;II)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineChannel;",
            ">;II)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_8e

    :try_start_f
    const-string v0, "channels"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/api/VineChannel;

    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    invoke-direct {p0, v13, v9}, Lco/vine/android/provider/VineDatabaseHelper;->fillChannelValues(Landroid/content/ContentValues;Lco/vine/android/api/VineChannel;)V

    const-string v0, "channels"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    const/4 v0, 0x1

    :goto_3f
    add-int/2addr v12, v0

    goto :goto_1f

    :cond_41
    const/4 v0, 0x0

    goto :goto_3f

    :cond_43
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_89

    :try_start_46
    invoke-virtual {p0, v10}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_49
    if-gtz p2, :cond_4d

    if-lez p3, :cond_5b

    :cond_4d
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    :cond_5b
    if-lez v12, :cond_87

    sget-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v0, :cond_7f

    const-string v0, "VineDH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new channels."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_87
    .catchall {:try_start_46 .. :try_end_87} :catchall_8e

    :cond_87
    monitor-exit p0

    return v12

    :catchall_89
    move-exception v0

    :try_start_8a
    invoke-virtual {p0, v10}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeConversation(JLco/vine/android/api/VineConversation;IIIJ)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p8}, Lco/vine/android/provider/VineDatabaseHelper;->mergeMessages(JLco/vine/android/api/VineConversation;IIIJ)J

    move-result-wide v0

    iget-object v8, p3, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;

    if-eqz v8, :cond_3c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p3, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-lez v8, :cond_14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_14

    :catchall_36
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_39
    :try_start_39
    invoke-virtual {p0, v0, v1, v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversationRecipients(JLjava/util/Collection;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    :cond_3c
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized mergeConversationRecipients(JLjava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2
    sget-boolean v5, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v5, :cond_22

    const-string v5, "VineDH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeConversations, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_7b

    move-result-object v0

    :try_start_2c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "conversation_row_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v5, "user_row_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "conversation_recipients"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_62

    const/4 v5, 0x1

    :goto_60
    add-int/2addr v3, v5

    goto :goto_41

    :cond_62
    const/4 v5, 0x0

    goto :goto_60

    :cond_64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_67
    .catchall {:try_start_2c .. :try_end_67} :catchall_76

    :try_start_67
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6a
    if-lez v3, :cond_74

    iget-object v5, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_7b

    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception v5

    :try_start_77
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized mergeConversationWithLocalId(JJI)J
    .registers 17

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lco/vine/android/provider/VineDatabaseHelper;->fillConversationValues(Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;JJ)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_47

    :try_start_1c
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_3a

    const-string v0, "conversations"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    :cond_3a
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_42

    :try_start_3d
    invoke-virtual {p0, v9}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_47

    monitor-exit p0

    return-wide p1

    :catchall_42
    move-exception v0

    :try_start_43
    invoke-virtual {p0, v9}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeConversationWithRemoteId(JLjava/lang/Integer;Ljava/lang/Boolean;JJ)J
    .registers 28

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v18, "conversation_id=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_99

    :try_start_11
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "conversations"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "conversation_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_92

    move-result-object v15

    const-wide/16 v16, -0x1

    if-eqz v15, :cond_61

    :try_start_2c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v6 .. v14}, Lco/vine/android/provider/VineDatabaseHelper;->fillConversationValues(Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;JJ)V

    const-string v2, "conversations"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_9c

    move-result-wide v16

    :cond_5e
    :try_start_5e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_61
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_a1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v6 .. v14}, Lco/vine/android/provider/VineDatabaseHelper;->fillConversationValues(Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;JJ)V

    const-string v2, "conversations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_a1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert conversation."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_92
    .catchall {:try_start_5e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v2

    :try_start_93
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_9c
    move-exception v2

    :try_start_9d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_a1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_92

    :try_start_a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_99

    monitor-exit p0

    return-wide v16
.end method

.method public declared-synchronized mergeEditions(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "editions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_5f

    :try_start_16
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const-string v6, "edition_code"

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "edition_name"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v5, v3

    const-string v7, "editions"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v3, v5

    goto :goto_1f

    :cond_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_5a

    :try_start_4b
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4e
    if-lez v3, :cond_58

    iget-object v5, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$Editions;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_5f

    :cond_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception v5

    :try_start_5b
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized mergeInbox(JLco/vine/android/api/VineParsers$VinePagedInbox;IIJII)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p3

    iget-object v1, v0, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    move-object/from16 v0, p3

    iget-object v1, v0, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    move-object/from16 v0, p3

    iget-object v2, v0, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move/from16 v3, p9

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I

    :cond_1f
    move-object/from16 v0, p3

    iget-object v1, v0, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_27
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineConversation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v5, p8

    invoke-virtual/range {v1 .. v9}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversation(JLco/vine/android/api/VineConversation;IIIJ)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    goto :goto_27

    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_43
    if-gtz p4, :cond_4d

    if-gtz p5, :cond_4d

    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_5c

    :cond_4d
    const/4 v6, 0x6

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    move/from16 v7, p8

    move/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    :try_start_59
    invoke-virtual/range {v5 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_40

    :cond_5c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized mergeLikes(Ljava/util/Collection;JII)I
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;JII)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v31, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    new-instance v41, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lco/vine/android/api/VineLike;

    move-wide/from16 v0, p2

    move-object/from16 v2, v27

    iput-wide v0, v2, Lco/vine/android/api/VineLike;->postId:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Lco/vine/android/api/VineLike;->likeId:J

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v8, v9, v1}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_40
    :try_start_40
    const-string v6, "likes"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$LikesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3d

    move-result-object v21

    if-eqz v21, :cond_7a

    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/LongSparseArray;->removeKey(J)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lco/vine/android/api/VineLike;

    if-eqz v27, :cond_4f

    move-object/from16 v0, v41

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_4f .. :try_end_71} :catchall_72

    goto :goto_4f

    :catchall_72
    move-exception v6

    :try_start_73
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_77
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_7a
    invoke-virtual/range {v31 .. v31}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v6

    invoke-virtual/range {v41 .. v41}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v8

    add-int v39, v6, v8

    new-instance v12, Lco/vine/android/util/LongSparseArray;

    move/from16 v0, v39

    invoke-direct {v12, v0}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v31 .. v31}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v30

    const/16 v23, 0x0

    :goto_98
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_c9

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lco/vine/android/api/VineLike;

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_c6

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v8, v9, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c6
    add-int/lit8 v23, v23, 0x1

    goto :goto_98

    :cond_c9
    invoke-virtual/range {v41 .. v41}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v40

    const/16 v23, 0x0

    :goto_cf
    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_100

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lco/vine/android/api/VineLike;

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_fd

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iget-wide v8, v6, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v8, v9, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_fd
    add-int/lit8 v23, v23, 0x1

    goto :goto_cf

    :cond_100
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_114

    const/4 v8, 0x5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v6, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I

    :cond_114
    const/16 v32, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    if-lez v30, :cond_163

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_11f
    .catchall {:try_start_73 .. :try_end_11f} :catchall_3d

    :try_start_11f
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    const/16 v23, 0x0

    :goto_126
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_15b

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lco/vine/android/api/VineLike;

    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v27

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    const-string v6, "likes"

    const/4 v8, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v5, v6, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_159

    const/4 v6, 0x1

    :goto_154
    add-int v32, v32, v6

    add-int/lit8 v23, v23, 0x1

    goto :goto_126

    :cond_159
    const/4 v6, 0x0

    goto :goto_154

    :cond_15b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15e
    .catchall {:try_start_11f .. :try_end_15e} :catchall_1af

    :try_start_15e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_163
    const/16 v33, 0x0

    if-lez v40, :cond_1c0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_16a
    .catchall {:try_start_15e .. :try_end_16a} :catchall_3d

    :try_start_16a
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    const/16 v23, 0x0

    :goto_171
    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_1b8

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lco/vine/android/api/VineLike;

    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v27

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillLikeValues(Landroid/content/ContentValues;Lco/vine/android/api/VineLike;J)V

    const-string v6, "likes"

    const-string v8, "like_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v27

    iget-wide v13, v0, Lco/vine/android/api/VineLike;->likeId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, v42

    invoke-virtual {v5, v6, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_16a .. :try_end_1a6} :catchall_2a6

    move-result v6

    if-lez v6, :cond_1b6

    const/4 v6, 0x1

    :goto_1aa
    add-int v33, v33, v6

    add-int/lit8 v23, v23, 0x1

    goto :goto_171

    :catchall_1af
    move-exception v6

    :try_start_1b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_1b6
    .catchall {:try_start_1b0 .. :try_end_1b6} :catchall_3d

    :cond_1b6
    const/4 v6, 0x0

    goto :goto_1aa

    :cond_1b8
    :try_start_1b8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_2a6

    :try_start_1bb
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c0
    const/16 v22, 0x0

    if-lez v32, :cond_264

    const-string v14, "likes"

    sget-object v15, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d6
    .catchall {:try_start_1bb .. :try_end_1d6} :catchall_3d

    move-result-object v38

    if-eqz v38, :cond_264

    :try_start_1d9
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_261

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I
    :try_end_1e2
    .catchall {:try_start_1d9 .. :try_end_1e2} :catchall_2b9

    move-result v37

    const/16 v6, 0x1388

    move/from16 v0, v37

    if-le v0, v6, :cond_261

    :try_start_1e9
    const-string v6, "SELECT last_refresh FROM likes ORDER BY last_refresh DESC LIMIT 1 OFFSET 2500"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1f3
    .catchall {:try_start_1e9 .. :try_end_1f3} :catchall_2b2

    if-eqz v36, :cond_259

    :try_start_1f5
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_256

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    const-string v6, "likes"

    const-string v8, "last_refresh<?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_256

    const-string v6, "s"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Due to reaching maximum table size ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with a max of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " likes, all less than refresh time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_256
    .catchall {:try_start_1f5 .. :try_end_256} :catchall_2ad

    :cond_256
    :try_start_256
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_259
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25c
    .catchall {:try_start_256 .. :try_end_25c} :catchall_2b2

    :try_start_25c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_261
    .catchall {:try_start_25c .. :try_end_261} :catchall_2b9

    :cond_261
    :try_start_261
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    :cond_264
    if-gtz v32, :cond_26a

    if-gtz v33, :cond_26a

    if-lez v22, :cond_274

    :cond_26a
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lco/vine/android/provider/Vine$Likes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_274
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_2a4

    const-string v6, "VineDH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " likes and updated "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a4
    .catchall {:try_start_261 .. :try_end_2a4} :catchall_3d

    :cond_2a4
    monitor-exit p0

    return v32

    :catchall_2a6
    move-exception v6

    :try_start_2a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_2ad
    .catchall {:try_start_2a7 .. :try_end_2ad} :catchall_3d

    :catchall_2ad
    move-exception v6

    :try_start_2ae
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_2b2
    .catchall {:try_start_2ae .. :try_end_2b2} :catchall_2b2

    :catchall_2b2
    move-exception v6

    :try_start_2b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_2b9
    .catchall {:try_start_2b3 .. :try_end_2b9} :catchall_2b9

    :catchall_2b9
    move-exception v6

    :try_start_2ba
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_2be
    .catchall {:try_start_2ba .. :try_end_2be} :catchall_3d
.end method

.method public declared-synchronized mergeMessage(JLco/vine/android/api/VinePrivateMessage;)J
    .registers 27

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-wide/16 v13, -0x1

    const-wide/16 v18, -0x1

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillMessageValues(Landroid/content/ContentValues;JLco/vine/android/api/VinePrivateMessage;)V

    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-nez v5, :cond_94

    move-object/from16 v0, p3

    iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_94

    const-string v17, "message_id=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-wide v6, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$Messages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "message_id=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_94

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_91

    const/16 v5, 0xd

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object/from16 v0, p3

    iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J

    cmp-long v5, v15, v5

    if-lez v5, :cond_69

    const-string v5, "local_start_time"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_db

    :cond_69
    :try_start_69
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "messages"

    const-string v6, "message_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, v20

    invoke-virtual {v12, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8c
    .catchall {:try_start_69 .. :try_end_8c} :catchall_d4

    :try_start_8c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_91
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_94
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-nez v5, :cond_b2

    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-gtz v5, :cond_b2

    const-string v5, "deleted"

    const-string v6, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "messages"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    :cond_b2
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-gtz v5, :cond_be

    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-lez v5, :cond_d2

    :cond_be
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_d2
    .catchall {:try_start_8c .. :try_end_d2} :catchall_db

    :cond_d2
    monitor-exit p0

    return-wide v13

    :catchall_d4
    move-exception v5

    :try_start_d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized mergeMessageWithMessageRow(JJLco/vine/android/api/VinePrivateMessage;)J
    .registers 20

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-direct {p0, v8, v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillMessageValues(Landroid/content/ContentValues;JLco/vine/android/api/VinePrivateMessage;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_6e

    :try_start_15
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v9, "messages"

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    int-to-long v6, v9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_69

    :try_start_2e
    invoke-virtual {p0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-gtz v9, :cond_45

    const-string v9, "deleted"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "messages"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :cond_45
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_51

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_61

    :cond_51
    iget-object v9, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v9, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_6e

    :cond_61
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_71

    :goto_67
    monitor-exit p0

    return-wide v4

    :catchall_69
    move-exception v9

    :try_start_6a
    invoke-virtual {p0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v9
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_71
    move-wide v4, p1

    goto :goto_67
.end method

.method public declared-synchronized mergeMessages(JLco/vine/android/api/VineConversation;IIIJ)J
    .registers 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v37, Ljava/util/LinkedHashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v44, Ljava/util/LinkedHashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v45, Ljava/util/HashMap;

    invoke-direct/range {v45 .. v45}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p3

    iget-wide v6, v0, Lco/vine/android/api/VineConversation;->conversationId:J

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-wide v10, v0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J

    const-wide/16 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversationWithRemoteId(JLjava/lang/Integer;Ljava/lang/Boolean;JJ)J

    move-result-wide v30

    const-wide v38, 0x7fffffffffffffffL

    move-object/from16 v0, p3

    iget-object v5, v0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;

    if-eqz v5, :cond_ab

    move-object/from16 v0, p3

    iget-object v5, v0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_38
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lco/vine/android/api/VinePrivateMessage;

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    cmp-long v5, v9, v38

    if-gez v5, :cond_52

    move-object/from16 v0, v36

    iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    move-wide/from16 v38, v0

    :cond_52
    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J

    move-result-wide v46

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7d
    move-wide/from16 v0, v46

    move-object/from16 v2, v36

    iput-wide v0, v2, Lco/vine/android/api/VinePrivateMessage;->userId:J

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_93

    goto :goto_38

    :catchall_93
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_96
    :try_start_96
    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    goto :goto_7d

    :cond_ab
    sget-boolean v5, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v5, :cond_cb

    const-string v5, "VineDH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeMessages, count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v37 .. v37}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/16 v29, 0x1

    const-string v42, "conversation_row_id =? "

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v5

    const-string v9, "messages"

    sget-object v10, Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v11, "conversation_row_id =? "

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "message_id DESC"

    const-string v16, "1"

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    if-eqz v28, :cond_105

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_102

    const/4 v5, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v5, v38, v9

    if-gtz v5, :cond_144

    const/16 v29, 0x1

    :cond_102
    :goto_102
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_105
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v14, Lco/vine/android/provider/Vine$Messages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lco/vine/android/provider/VineDatabaseSQL$MessagesQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    if-eqz v32, :cond_14a

    :cond_119
    :goto_119
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_147

    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v36, :cond_119

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_119

    :cond_144
    const/16 v29, 0x0

    goto :goto_102

    :cond_147
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_14a
    const/16 v35, 0x0

    const/16 v43, 0x0

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v37}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21a

    sget-boolean v5, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v5, :cond_179

    const-string v5, "VineDH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserting new messages, count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v37 .. v37}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_179
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_17c
    .catchall {:try_start_96 .. :try_end_17c} :catchall_93

    :try_start_17c
    new-instance v48, Landroid/content/ContentValues;

    invoke-direct/range {v48 .. v48}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v37 .. v37}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_189
    :goto_189
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lco/vine/android/api/VinePrivateMessage;

    invoke-virtual/range {v48 .. v48}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, v30

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillMessageValues(Landroid/content/ContentValues;JLco/vine/android/api/VinePrivateMessage;)V

    const-string v5, "deleted"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "messages"

    const/4 v9, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v8, v5, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-wide/16 v9, 0x0

    cmp-long v5, v16, v9

    if-lez v5, :cond_1f1

    const/4 v5, 0x1

    :goto_1bf
    add-int v35, v35, v5

    move-object/from16 v0, v36

    iget-wide v9, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    move-object/from16 v0, p3

    iget-wide v13, v0, Lco/vine/android/api/VineConversation;->lastMessage:J

    cmp-long v5, v9, v13

    if-nez v5, :cond_1da

    move-object/from16 v0, v36

    iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->created:J

    move-wide/from16 v18, v0

    move-object/from16 v13, p0

    move-wide/from16 v14, v30

    invoke-virtual/range {v13 .. v19}, Lco/vine/android/provider/VineDatabaseHelper;->updateConversationWithLastMessage(JJJ)V

    :cond_1da
    move-object/from16 v0, v36

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    if-eqz v5, :cond_189

    move-object/from16 v0, v36

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e9
    .catchall {:try_start_17c .. :try_end_1e9} :catchall_1ea

    goto :goto_189

    :catchall_1ea
    move-exception v5

    :try_start_1eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_1f1
    .catchall {:try_start_1eb .. :try_end_1f1} :catchall_93

    :cond_1f1
    const/4 v5, 0x0

    goto :goto_1bf

    :cond_1f3
    const/16 v20, 0xc

    :try_start_1f5
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v40

    invoke-virtual/range {v18 .. v27}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20d
    .catchall {:try_start_1f5 .. :try_end_20d} :catchall_1ea

    :try_start_20d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v5}, Lco/vine/android/provider/VineDatabaseHelper;->setConversationHidden(JZ)V

    :cond_21a
    invoke-virtual/range {v44 .. v44}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2bf

    sget-boolean v5, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v5, :cond_240

    const-string v5, "VineDH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating existing messages, count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v44 .. v44}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_240
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_243
    .catchall {:try_start_20d .. :try_end_243} :catchall_93

    :try_start_243
    new-instance v48, Landroid/content/ContentValues;

    invoke-direct/range {v48 .. v48}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v44 .. v44}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_250
    :goto_250
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a0

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lco/vine/android/api/VinePrivateMessage;

    invoke-virtual/range {v48 .. v48}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, v30

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillMessageValues(Landroid/content/ContentValues;JLco/vine/android/api/VinePrivateMessage;)V

    const-string v5, "messages"

    const-string v9, "message_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget-wide v13, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    move-object/from16 v0, v48

    invoke-virtual {v8, v5, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_29e

    const/4 v5, 0x1

    :goto_285
    add-int v43, v43, v5

    move-object/from16 v0, v36

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    if-eqz v5, :cond_250

    move-object/from16 v0, v36

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_296
    .catchall {:try_start_243 .. :try_end_296} :catchall_297

    goto :goto_250

    :catchall_297
    move-exception v5

    :try_start_298
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
    :try_end_29e
    .catchall {:try_start_298 .. :try_end_29e} :catchall_93

    :cond_29e
    const/4 v5, 0x0

    goto :goto_285

    :cond_2a0
    const/16 v20, 0xc

    :try_start_2a2
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v40

    invoke-virtual/range {v18 .. v27}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2ba
    .catchall {:try_start_2a2 .. :try_end_2ba} :catchall_297

    :try_start_2ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2bf
    const/16 v33, 0x0

    if-eqz v29, :cond_30a

    const/16 v41, 0x1

    :goto_2c5
    if-gtz p5, :cond_2cf

    if-gtz p6, :cond_2cf

    const-wide/16 v9, 0x0

    cmp-long v5, p7, v9

    if-lez v5, :cond_2e4

    :cond_2cf
    const/16 v19, 0x7

    const/16 v20, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move/from16 v22, p5

    move/from16 v23, p6

    move-wide/from16 v24, p7

    invoke-virtual/range {v18 .. v26}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    :cond_2e4
    if-gtz v35, :cond_2ea

    if-gtz v43, :cond_2ea

    if-lez v33, :cond_308

    :cond_2ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lco/vine/android/provider/Vine$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_308
    .catchall {:try_start_2ba .. :try_end_308} :catchall_93

    :cond_308
    monitor-exit p0

    return-wide v30

    :cond_30a
    :try_start_30a
    const-string v5, "Deleting messages for conversation row id {}, non contiguous"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "messages"

    const-string v9, "conversation_row_id =? AND message_id <? AND message_id > ?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x2

    const-string v13, "0"

    aput-object v13, v10, v11

    invoke-virtual {v8, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_330
    .catchall {:try_start_30a .. :try_end_330} :catchall_93

    move-result v33

    const/16 v41, 0x4

    goto :goto_2c5
.end method

.method public declared-synchronized mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
    .registers 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I",
            "Ljava/lang/String;",
            "IIIJZ)",
            "Lco/vine/android/provider/DbResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v35, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    new-instance v51, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v51

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lco/vine/android/api/VinePost;

    move-object/from16 v0, v32

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->postId:J

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_1f

    :catchall_37
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_3a
    :try_start_3a
    invoke-static/range {p2 .. p2}, Lco/vine/android/util/Util;->isPopularTimeline(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    new-instance v41, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    const/4 v6, 0x1

    move/from16 v0, p4

    if-eq v0, v6, :cond_55

    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_81

    :cond_55
    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroup(I)I

    :goto_5e
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_62
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lco/vine/android/api/VinePost;

    move-object/from16 v0, v32

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->postId:J

    move/from16 v0, v47

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7, v10}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v47, v47, 0x1

    goto :goto_62

    :cond_81
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getOldestSortId(I)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_9b

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9b

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    goto :goto_5e

    :cond_9b
    const/16 v47, 0x1

    goto :goto_5e

    :cond_9e
    new-instance v41, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_ad
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lco/vine/android/api/VinePost;

    move-object/from16 v0, v32

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static/range {p2 .. p2}, Lco/vine/android/api/VineComparatorFactory;->get(I)Lco/vine/android/api/VineComparatorFactory$VineComparator;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lco/vine/android/api/VineComparatorFactory$VineComparator;->getOrderId(Ljava/lang/Object;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7, v10}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_ad

    :cond_d1
    const/16 v27, 0x1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17c

    invoke-static/range {p2 .. p2}, Lco/vine/android/util/Util;->isPopularTimeline(I)Z

    move-result v6

    if-nez v6, :cond_17c

    const-string v8, "post_type=? AND tag=?"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x1

    aput-object p3, v9, v6

    :goto_ee
    const-string v6, "post_groups_view"

    sget-object v7, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "sort_id DESC"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f9
    .catchall {:try_start_3a .. :try_end_f9} :catchall_37

    move-result-object v26

    if-eqz v26, :cond_118

    :try_start_fc
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_115

    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-lez v6, :cond_115

    const/4 v6, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_10e
    .catchall {:try_start_fc .. :try_end_10e} :catchall_18d

    move-result-wide v6

    cmp-long v6, p7, v6

    if-gez v6, :cond_18a

    const/16 v27, 0x1

    :cond_115
    :goto_115
    :try_start_115
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_118
    const-string v11, "posts"

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "post_id"

    aput-object v7, v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12d
    .catchall {:try_start_115 .. :try_end_12d} :catchall_37

    move-result-object v26

    if-eqz v26, :cond_15b

    :try_start_130
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_158

    :cond_136
    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    move-object/from16 v0, v35

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/LongSparseArray;->removeKey(J)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lco/vine/android/api/VinePost;

    if-eqz v42, :cond_152

    move-object/from16 v0, v51

    move-wide/from16 v1, v43

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_152
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_155
    .catchall {:try_start_130 .. :try_end_155} :catchall_192

    move-result v6

    if-nez v6, :cond_136

    :cond_158
    :try_start_158
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_15b
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_197

    invoke-virtual/range {v35 .. v35}, Lco/vine/android/util/LongSparseArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_197

    invoke-virtual/range {v51 .. v51}, Lco/vine/android/util/LongSparseArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_197

    const-string v6, "VineDH"

    const-string v7, "No new posts to merge or update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lco/vine/android/provider/DbResponse;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-direct {v6, v7, v10, v12}, Lco/vine/android/provider/DbResponse;-><init>(III)V
    :try_end_17a
    .catchall {:try_start_158 .. :try_end_17a} :catchall_37

    :goto_17a
    monitor-exit p0

    return-object v6

    :cond_17c
    :try_start_17c
    const-string v8, "post_type=?"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    goto/16 :goto_ee

    :cond_18a
    const/16 v27, 0x0

    goto :goto_115

    :catchall_18d
    move-exception v6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v6

    :catchall_192
    move-exception v6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_197
    new-instance v16, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v35 .. v35}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v46

    const/16 v30, 0x0

    :goto_1b1
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1e2

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lco/vine/android/api/VinePost;

    move-object/from16 v0, v53

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v6, :cond_1df

    move-object/from16 v0, v53

    iget-object v6, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v53

    iget-wide v6, v0, Lco/vine/android/api/VinePost;->userId:J

    move-object/from16 v0, v53

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v10}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1df
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b1

    :cond_1e2
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v35}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v46

    if-lez v46, :cond_296

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1fc
    .catchall {:try_start_17c .. :try_end_1fc} :catchall_37

    :try_start_1fc
    new-instance v52, Landroid/content/ContentValues;

    invoke-direct/range {v52 .. v52}, Landroid/content/ContentValues;-><init>()V

    const/16 v30, 0x0

    :goto_203
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_28e

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lco/vine/android/api/VinePost;

    invoke-virtual/range {v52 .. v52}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_288

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    :goto_222
    move-object/from16 v0, v42

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_28a

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    :goto_232
    move-object/from16 v0, v42

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v42

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    const-string v6, "posts"

    const/4 v7, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_28c

    const/4 v6, 0x1

    :goto_251
    add-int v36, v36, v6

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_284

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_284

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_284

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I

    :cond_284
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_203

    :cond_288
    const/4 v6, 0x0

    goto :goto_222

    :cond_28a
    const/4 v6, 0x0

    goto :goto_232

    :cond_28c
    const/4 v6, 0x0

    goto :goto_251

    :cond_28e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_291
    .catchall {:try_start_1fc .. :try_end_291} :catchall_338

    :try_start_291
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_296
    const/16 v37, 0x0

    invoke-virtual/range {v51 .. v51}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v46

    if-lez v46, :cond_34d

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a1
    .catchall {:try_start_291 .. :try_end_2a1} :catchall_37

    :try_start_2a1
    new-instance v52, Landroid/content/ContentValues;

    invoke-direct/range {v52 .. v52}, Landroid/content/ContentValues;-><init>()V

    const/16 v30, 0x0

    :goto_2a8
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_345

    move-object/from16 v0, v51

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lco/vine/android/api/VinePost;

    invoke-virtual/range {v52 .. v52}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_33f

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    :goto_2c7
    move-object/from16 v0, v42

    iput v6, v0, Lco/vine/android/api/VinePost;->likesCount:I

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_341

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget v6, v6, Lco/vine/android/api/VinePagedData;->count:I

    :goto_2d7
    move-object/from16 v0, v42

    iput v6, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v42

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillPostValues(Landroid/content/ContentValues;Lco/vine/android/api/VinePost;J)V

    const-string v6, "posts"

    const-string v7, "post_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, v42

    iget-wide v13, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    move-object/from16 v0, v52

    invoke-virtual {v5, v6, v0, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_343

    const/4 v6, 0x1

    :goto_301
    add-int v37, v37, v6

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    if-eqz v6, :cond_334

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_334

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v6, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_334

    move-object/from16 v0, v42

    iget-object v6, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v0, v6, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v19, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
    :try_end_334
    .catchall {:try_start_2a1 .. :try_end_334} :catchall_490

    :cond_334
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2a8

    :catchall_338
    move-exception v6

    :try_start_339
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_33f
    .catchall {:try_start_339 .. :try_end_33f} :catchall_37

    :cond_33f
    const/4 v6, 0x0

    goto :goto_2c7

    :cond_341
    const/4 v6, 0x0

    goto :goto_2d7

    :cond_343
    const/4 v6, 0x0

    goto :goto_301

    :cond_345
    :try_start_345
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_348
    .catchall {:try_start_345 .. :try_end_348} :catchall_490

    :try_start_348
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_34d
    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_383

    const-string v6, "VineDH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts, and updated "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with lastRefresh time "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v33

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_383
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-gtz v6, :cond_38d

    if-gtz p5, :cond_38d

    if-lez p6, :cond_3a0

    :cond_38d
    const/16 v18, 0x2

    const/16 v25, 0x0

    move-object/from16 v17, p0

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v21, p5

    move/from16 v22, p6

    move-wide/from16 v23, p7

    invoke-virtual/range {v17 .. v25}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    :cond_3a0
    if-eqz v27, :cond_497

    const/16 v45, 0x1

    :goto_3a4
    const/16 v28, 0x0

    if-lez v36, :cond_460

    if-eqz v27, :cond_460

    const-string v18, "posts"

    sget-object v19, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3bd
    .catchall {:try_start_348 .. :try_end_3bd} :catchall_37

    move-result-object v48

    if-eqz v48, :cond_460

    :try_start_3c0
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_45d

    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->getCount()I
    :try_end_3c9
    .catchall {:try_start_3c0 .. :try_end_3c9} :catchall_546

    move-result v46

    const/16 v6, 0x3e8

    move/from16 v0, v46

    if-le v0, v6, :cond_45d

    :try_start_3d0
    const-string v6, "SELECT last_refresh FROM posts ORDER BY last_refresh DESC LIMIT 1 OFFSET 500"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3da
    .catchall {:try_start_3d0 .. :try_end_3da} :catchall_53f

    if-eqz v40, :cond_455

    :try_start_3dc
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_452

    const/4 v6, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    const-string v6, "DELETE FROM post_groups WHERE post_id IN (SELECT post_id FROM posts WHERE last_refresh < ?);"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "posts"

    const-string v7, "last_refresh<?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v5, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_452

    const-string v6, "s"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Due to reaching maximum table size ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with a max of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "), deleted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts groups all less than last refresh id "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_452
    .catchall {:try_start_3dc .. :try_end_452} :catchall_53a

    :cond_452
    :try_start_452
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    :cond_455
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_458
    .catchall {:try_start_452 .. :try_end_458} :catchall_53f

    :try_start_458
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_45d
    .catchall {:try_start_458 .. :try_end_45d} :catchall_546

    :cond_45d
    :try_start_45d
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->close()V

    :cond_460
    if-gtz v36, :cond_466

    if-gtz v37, :cond_466

    if-lez v28, :cond_483

    :cond_466
    if-eqz p2, :cond_483

    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_47a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->mergePostGroups(Ljava/util/Collection;ILjava/lang/String;Lco/vine/android/util/LongSparseArray;)V

    :cond_47a
    if-eqz p9, :cond_483

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->notifyByType(I)V

    :cond_483
    new-instance v6, Lco/vine/android/provider/DbResponse;

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v45

    invoke-direct {v6, v0, v1, v2}, Lco/vine/android/provider/DbResponse;-><init>(III)V

    goto/16 :goto_17a

    :catchall_490
    move-exception v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    :cond_497
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_523

    const-string v49, "post_type=? AND tag=? AND post_id<?"

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v50, v6

    const/4 v6, 0x1

    aput-object p3, v50, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v50, v6

    :goto_4b5
    const-string v6, "posts"

    const-string v7, "post_id<?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v5, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    const-string v6, "post_groups"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    sget-boolean v6, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v6, :cond_51f

    const-string v6, "VineDH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non contiguous timeline detected, deleted "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " posts and "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " with id less than anchor: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " of type "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " and tag "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51f
    const/16 v45, 0x4

    goto/16 :goto_3a4

    :cond_523
    const-string v49, "post_type=? AND post_id<?"

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v50, v6

    const/4 v6, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v50, v6
    :try_end_538
    .catchall {:try_start_45d .. :try_end_538} :catchall_37

    goto/16 :goto_4b5

    :catchall_53a
    move-exception v6

    :try_start_53b
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_53f
    .catchall {:try_start_53b .. :try_end_53f} :catchall_53f

    :catchall_53f
    move-exception v6

    :try_start_540
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_546
    .catchall {:try_start_540 .. :try_end_546} :catchall_546

    :catchall_546
    move-exception v6

    :try_start_547
    invoke-interface/range {v48 .. v48}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_54b
    .catchall {:try_start_547 .. :try_end_54b} :catchall_37
.end method

.method public declared-synchronized mergePushNotification(Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/api/VineSingleNotification;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_83

    const/4 v11, 0x1

    :goto_8
    if-eqz v11, :cond_e

    :try_start_a
    iget-object v0, p1, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_e
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification_id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v11, :cond_85

    const-string v2, " AND notification_type=?"

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_88

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v6, p1, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    :goto_3f
    const-string v2, "notifications"

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$NotificationsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "notification_id DESC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_95

    move-result-object v9

    const/4 v10, 0x0

    :try_start_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_9f

    if-eqz v9, :cond_7b

    :try_start_51
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_78

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p2

    invoke-direct {p0, v13, p1, v0}, Lco/vine/android/provider/VineDatabaseHelper;->fillNotificationValues(Landroid/content/ContentValues;Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;)V

    const-string v2, "notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_98

    const/4 v2, 0x1

    :goto_6f
    add-int/2addr v10, v2

    if-lez v10, :cond_78

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->getNotifications(I)Ljava/util/ArrayList;
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_9a

    move-result-object v12

    :cond_78
    :try_start_78
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_9f

    :try_start_7e
    invoke-virtual {p0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_95

    monitor-exit p0

    return-object v12

    :cond_83
    const/4 v11, 0x0

    goto :goto_8

    :cond_85
    :try_start_85
    const-string v2, ""

    goto :goto_22

    :cond_88
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v6, p1, Lco/vine/android/api/VineSingleNotification;->notificationId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_95

    goto :goto_3f

    :catchall_95
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_98
    const/4 v2, 0x0

    goto :goto_6f

    :catchall_9a
    move-exception v2

    :try_start_9b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v2

    :try_start_a0
    invoke-virtual {p0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_95
.end method

.method public mergeRecipientsWithUsersAndRemoveUnusedRecipients(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineUser;

    move-object/from16 v0, v22

    iget-wide v3, v0, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conversation_recipients"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "user_row_id"

    aput-object v6, v4, v5

    const-string v5, "conversation_row_id =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6c

    const/4 v3, -0x1

    :try_start_4e
    invoke-interface {v11, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_51
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_69

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_64

    goto :goto_51

    :catchall_64
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_69
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_73
    :goto_73
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lco/vine/android/api/VineRecipient;

    if-eqz v19, :cond_73

    move-object/from16 v0, v19

    iget-wide v3, v0, Lco/vine/android/api/VineRecipient;->userId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_73

    move-object/from16 v0, v19

    iget-wide v3, v0, Lco/vine/android/api/VineRecipient;->recipientId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_73

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v19

    iget-wide v3, v0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/api/VineUser;

    if-eqz v22, :cond_73

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v13, v1, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    const-string v3, "users"

    const-string v4, "_id=? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    iget-wide v7, v0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, v19

    iget-wide v3, v0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_d7
    .catchall {:try_start_6c .. :try_end_d7} :catchall_d8

    goto :goto_73

    :catchall_d8
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    :cond_df
    :try_start_df
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_178

    :try_start_ed
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IN ("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_109
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    const-string v3, "?"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v20, v15

    add-int/lit8 v3, v21, -0x1

    if-eq v15, v3, :cond_129

    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_129
    add-int/lit8 v15, v15, 0x1

    goto :goto_109

    :cond_12c
    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v3, "users"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v3, "conversation_recipients"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_row_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v14, v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_173
    .catchall {:try_start_ed .. :try_end_173} :catchall_179

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_178
    return-void

    :catchall_179
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public declared-synchronized mergeSearchedTags(Ljava/util/Collection;II)I
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;II)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v15, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v21, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_1d

    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3a
    :try_start_3a
    const-string v4, "tag_search_results"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tag_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_37

    move-result-object v13

    if-eqz v13, :cond_7f

    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v4, "tag_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    if-eqz v18, :cond_4f

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_4f .. :try_end_76} :catchall_77

    goto :goto_4f

    :catchall_77
    move-exception v4

    :try_start_78
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_7c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7f
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cf

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_37

    :try_start_8c
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_99
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V

    const-string v4, "tag_search_results"

    const-string v5, "tag_id"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_c5

    const/4 v4, 0x1

    :goto_c2
    add-int v16, v16, v4

    goto :goto_99

    :cond_c5
    const/4 v4, 0x0

    goto :goto_c2

    :cond_c7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ca
    .catchall {:try_start_8c .. :try_end_ca} :catchall_11b

    :try_start_ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_cf
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12c

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_37

    :try_start_d8
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_124

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lco/vine/android/api/VineTag;

    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V

    const-string v4, "tag_search_results"

    const-string v5, "tag_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    iget-wide v8, v0, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_d8 .. :try_end_114} :catchall_17f

    move-result v4

    if-lez v4, :cond_122

    const/4 v4, 0x1

    :goto_118
    add-int v17, v17, v4

    goto :goto_e5

    :catchall_11b
    move-exception v4

    :try_start_11c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_37

    :cond_122
    const/4 v4, 0x0

    goto :goto_118

    :cond_124
    :try_start_124
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_17f

    :try_start_127
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_12c
    if-gtz v16, :cond_130

    if-lez v17, :cond_14d

    :cond_130
    if-gtz p2, :cond_134

    if-lez p3, :cond_143

    :cond_134
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    :cond_143
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_14d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_17d

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and updated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tags."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_127 .. :try_end_17d} :catchall_37

    :cond_17d
    monitor-exit p0

    return v16

    :catchall_17f
    move-exception v4

    :try_start_180
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_186
    .catchall {:try_start_180 .. :try_end_186} :catchall_37
.end method

.method public declared-synchronized mergeSuggestedTag(Lco/vine/android/api/VineTag;)Landroid/net/Uri;
    .registers 12

    const/4 v9, 0x1

    monitor-enter p0

    const/4 v7, 0x0

    :try_start_3
    const-string v3, "tag_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p1, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$TagsRecentlyUsed;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/VineDatabaseSQL$TagsRecentlyUsedQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_38

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_3a

    invoke-direct {p0, v8, p1}, Lco/vine/android/provider/VineDatabaseHelper;->fillTagValues(Landroid/content/ContentValues;Lco/vine/android/api/VineTag;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$TagsRecentlyUsed;->CONTENT_URI_PUT_TAG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    :cond_35
    :goto_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_63

    :cond_38
    monitor-exit p0

    return-object v7

    :cond_3a
    :try_start_3a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v3, "tag_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p1, Lco/vine/android/api/VineTag;->tagId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "last_used_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lco/vine/android/provider/Vine$TagsRecentlyUsed;->CONTENT_URI_UPDATE_RECENT_TAG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_63

    goto :goto_35

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mergeUserAndGetResultingRowId(Lco/vine/android/api/VineUser;)J
    .registers 15

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v11, p1, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "user_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p1, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_52

    :try_start_2f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "users"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_59

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_4e
    return-wide v9

    :cond_4f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_52
    const-string v1, "users"

    invoke-virtual {v0, v1, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    goto :goto_4e

    :catchall_59
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)I
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;JI)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;JI)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    :try_start_f
    invoke-virtual/range {v0 .. v10}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;JI)I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    :try_start_f
    invoke-virtual/range {v0 .. v10}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;JI)I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;JI)I
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lco/vine/android/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;JI)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v23, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    new-instance v31, Lco/vine/android/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineUser;

    iget-wide v4, v7, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v7}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_33

    goto :goto_1f

    :catchall_33
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_36
    :try_start_36
    const-string v4, "users"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "user_id"

    aput-object v9, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_33

    move-result-object v17

    if-eqz v17, :cond_74

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/LongSparseArray;->removeKey(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineUser;

    if-eqz v7, :cond_4b

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v7}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_4b .. :try_end_6b} :catchall_6c

    goto :goto_4b

    :catchall_6c
    move-exception v4

    :try_start_6d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_71
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_74
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual/range {v23 .. v23}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v29

    if-lez v29, :cond_ce

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_33

    :try_start_85
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/16 v19, 0x0

    :goto_8c
    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_c6

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineUser;

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v6, v7, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    const-string v4, "users"

    const-string v5, "user_id"

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    :goto_b5
    add-int v24, v24, v4

    move-object/from16 v4, p0

    move-object v5, v3

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v4 .. v10}, Lco/vine/android/provider/VineDatabaseHelper;->mergetUserSection(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lco/vine/android/api/VineUser;JI)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_8c

    :cond_c4
    const/4 v4, 0x0

    goto :goto_b5

    :cond_c6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c9
    .catchall {:try_start_85 .. :try_end_c9} :catchall_11e

    :try_start_c9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_ce
    invoke-virtual/range {v31 .. v31}, Lco/vine/android/util/LongSparseArray;->size()I

    move-result v29

    if-lez v29, :cond_12f

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d7
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_33

    :try_start_d7
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/16 v19, 0x0

    :goto_de
    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_127

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineUser;

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v6, v7, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->fillUserContentValues(Landroid/content/ContentValues;Lco/vine/android/api/VineUser;J)V

    const-string v4, "users"

    const-string v5, "user_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_125

    const/4 v4, 0x1

    :goto_10f
    add-int v25, v25, v4

    move-object/from16 v4, p0

    move-object v5, v3

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v4 .. v10}, Lco/vine/android/provider/VineDatabaseHelper;->mergetUserSection(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lco/vine/android/api/VineUser;JI)V
    :try_end_11b
    .catchall {:try_start_d7 .. :try_end_11b} :catchall_29b

    add-int/lit8 v19, v19, 0x1

    goto :goto_de

    :catchall_11e
    move-exception v4

    :try_start_11f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_125
    .catchall {:try_start_11f .. :try_end_125} :catchall_33

    :cond_125
    const/4 v4, 0x0

    goto :goto_10f

    :cond_127
    :try_start_127
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_29b

    :try_start_12a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_12f
    const/16 v18, 0x0

    if-lez v24, :cond_1dd

    const-string v9, "users"

    sget-object v10, Lco/vine/android/provider/VineDatabaseSQL$TableQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_140
    .catchall {:try_start_12a .. :try_end_140} :catchall_33

    move-result-object v30

    if-eqz v30, :cond_1dd

    :try_start_143
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1da

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->getCount()I
    :try_end_14c
    .catchall {:try_start_143 .. :try_end_14c} :catchall_2ae

    move-result v29

    const/16 v4, 0x2710

    move/from16 v0, v29

    if-le v0, v4, :cond_1da

    :try_start_153
    const-string v4, "SELECT last_refresh FROM users ORDER BY last_refresh DESC LIMIT 1 OFFSET 5000"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_15d
    .catchall {:try_start_153 .. :try_end_15d} :catchall_2a7

    if-eqz v28, :cond_1d2

    :try_start_15f
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1cf

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const-string v4, "DELETE FROM user_groups WHERE user_id IN (SELECT user_id FROM users WHERE last_refresh < ?);"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "users"

    const-string v5, "last_refresh<?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_1cf

    const-string v4, "s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Due to reaching maximum table size ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " with a max of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "), deleted "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " users, all less than last refresh of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catchall {:try_start_15f .. :try_end_1cf} :catchall_2a2

    :cond_1cf
    :try_start_1cf
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_1d2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d5
    .catchall {:try_start_1cf .. :try_end_1d5} :catchall_2a7

    :try_start_1d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1da
    .catchall {:try_start_1d5 .. :try_end_1da} :catchall_2ae

    :cond_1da
    :try_start_1da
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_1dd
    if-gtz v24, :cond_1e3

    if-gtz v25, :cond_1e3

    if-lez v18, :cond_25d

    :cond_1e3
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_20d

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserGroups(Ljava/util/Collection;ILjava/lang/String;Lco/vine/android/util/LongSparseArray;Lco/vine/android/util/LongSparseArray;)V

    if-gtz p4, :cond_1fb

    if-lez p5, :cond_20d

    :cond_1fb
    const/4 v9, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v8, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v16}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I

    :cond_20d
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_LIKERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_25d
    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_299

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " new users and updating "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " of type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_299
    .catchall {:try_start_1da .. :try_end_299} :catchall_33

    :cond_299
    monitor-exit p0

    return v24

    :catchall_29b
    move-exception v4

    :try_start_29c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_2a2
    .catchall {:try_start_29c .. :try_end_2a2} :catchall_33

    :catchall_2a2
    move-exception v4

    :try_start_2a3
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2a7
    .catchall {:try_start_2a3 .. :try_end_2a7} :catchall_2a7

    :catchall_2a7
    move-exception v4

    :try_start_2a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_2ae
    .catchall {:try_start_2a8 .. :try_end_2ae} :catchall_2ae

    :catchall_2ae
    move-exception v4

    :try_start_2af
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2b3
    .catchall {:try_start_2af .. :try_end_2b3} :catchall_33
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    sget-boolean v0, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v0, :cond_26

    const-string v0, "VineDH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-direct {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lco/vine/android/provider/VineDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public permaDeleteMessageFromRowId(J)V
    .registers 11

    const/4 v6, 0x1

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "deleted"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "messages"

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_29

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyVMUris()V

    :cond_29
    return-void
.end method

.method public declared-synchronized removeFollow(JZZ)I
    .registers 24

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const-string v3, "users"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "following_flag"

    aput-object v7, v4, v5

    const-string v5, "user_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_88

    move-result-object v13

    if-eqz v13, :cond_80

    :try_start_24
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7d

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x1

    invoke-static {v14, v3}, Lco/vine/android/Friendships;->unsetFriendship(II)I

    move-result v17

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "following_flag"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "users"

    const-string v4, "user_id=?"

    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    const/16 v16, 0x0

    if-eqz p3, :cond_5a

    const/4 v10, 0x1

    sget-object v12, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->removeUserWithType(JIZLandroid/net/Uri;)Z

    :cond_5a
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_78

    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unfollowed user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_24 .. :try_end_78} :catchall_83

    :cond_78
    :try_start_78
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_88

    :goto_7b
    monitor-exit p0

    return v18

    :cond_7d
    :try_start_7d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_80
    const/16 v18, -0x1

    goto :goto_7b

    :catchall_83
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeLike(JJZ)I
    .registers 19

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c6

    move-result-object v0

    const/4 v12, 0x0

    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "posts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "metadata_flags"

    aput-object v5, v2, v3

    const-string v3, "post_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_c1

    move-result-object v8

    if-eqz v8, :cond_6e

    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    and-int/lit8 v11, v11, -0x9

    const-string v1, "metadata_flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_60

    const-string v1, "VineDH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing like in post: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const-string v1, "posts"

    const-string v2, "post_id=?"

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_29 .. :try_end_67} :catchall_bc

    move-result v1

    if-lez v1, :cond_ba

    const/4 v12, 0x1

    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6e
    const-string v1, "likes"

    const-string v2, "post_id=? AND user_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroupByPostId(IJ)I

    move-result v1

    add-int/2addr v10, v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-boolean v1, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v1, :cond_ac

    const-string v1, "VineDH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted self like for post: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_6b .. :try_end_ac} :catchall_c1

    :cond_ac
    :try_start_ac
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p5, :cond_b8

    if-gtz v12, :cond_b5

    if-lez v10, :cond_b8

    :cond_b5
    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_c6

    :cond_b8
    monitor-exit p0

    return v12

    :cond_ba
    const/4 v12, 0x0

    goto :goto_6b

    :catchall_bc
    move-exception v1

    :try_start_bd
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception v1

    :try_start_c2
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeNotificationForConversation(J)V
    .registers 9

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "notifications"

    const-string v2, "conversation_row_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeNotificationsForNotificationId(I)V
    .registers 8

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "notifications"

    const-string v2, "notification_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized removePostsByReposterId(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "reposter_id=? AND post_type =?"

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "post_groups"

    const-string v5, "reposter_id=? AND post_type =?"

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_47

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posts with reposterId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-lez v1, :cond_61

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removePostsFromGroupByUser(JILjava/lang/String;)I
    .registers 23

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "post_groups_view"

    sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "user_id=? AND post_type=? AND tag=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_71

    if-eqz v10, :cond_48

    :try_start_2d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_33
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_6c

    move-result v3

    if-nez v3, :cond_33

    :cond_45
    :try_start_45
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_48
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v11, 0x0

    :goto_52
    move/from16 v0, v16

    if-ge v11, v0, :cond_74

    const-string v3, "?"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v16, -0x1

    if-ge v11, v3, :cond_69

    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_69

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    :catchall_6c
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_71
    .catchall {:try_start_45 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_74
    :try_start_74
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "post_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v4, "post_groups"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_117

    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due to unfollowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groups "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_74 .. :try_end_117} :catchall_123

    :cond_117
    :try_start_117
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v13, :cond_121

    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_121
    .catchall {:try_start_117 .. :try_end_121} :catchall_71

    :cond_121
    monitor-exit p0

    return v13

    :catchall_123
    move-exception v3

    :try_start_124
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_12a
    .catchall {:try_start_124 .. :try_end_12a} :catchall_71
.end method

.method public removeUserSectionsWithType(I)V
    .registers 8

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_sections"

    const-string v2, "section_type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized removeUserWithType(JIZLandroid/net/Uri;)Z
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "type=? AND user_id=?"

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v6, "user_groups"

    const-string v7, "type=? AND user_id=?"

    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_54

    if-eqz p4, :cond_2c

    iget-object v5, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    invoke-virtual {v5, p5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2c
    sget-boolean v5, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v5, :cond_52

    const-string v5, "VineDH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted user with userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_56

    :cond_52
    :goto_52
    monitor-exit p0

    return v4

    :cond_54
    move v4, v5

    goto :goto_52

    :catchall_56
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeUsersByGroup(I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "user_groups"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_3d

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " users of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized revine(Lco/vine/android/api/VineRepost;JZ)I
    .registers 25

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_184

    move-result-object v1

    const/16 v19, 0x0

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "posts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "metadata_flags"

    aput-object v6, v3, v4

    const-string v4, "post_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_17d

    move-result-object v14

    if-eqz v14, :cond_93

    :try_start_2d
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_90

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_90

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    or-int/lit8 v18, v18, 0x10

    const-string v2, "metadata_flags"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "my_repost_id"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->repostId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_82

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revined post "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    const-string v2, "posts"

    const-string v3, "post_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_2d .. :try_end_8b} :catchall_178

    move-result v2

    if-lez v2, :cond_174

    const/16 v19, 0x1

    :cond_90
    :goto_90
    :try_start_90
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_93
    const-string v7, "post_groups"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "repost_data"

    aput-object v3, v8, v2

    const-string v9, "post_id=? AND post_type=? AND tag=?"

    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x2

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c3
    .catchall {:try_start_90 .. :try_end_c3} :catchall_17d

    move-result-object v15

    if-eqz v15, :cond_163

    :try_start_c6
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1a3

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/api/VineRepost;

    if-eqz v16, :cond_187

    move-object/from16 v0, p1

    iget-wide v2, v0, Lco/vine/android/api/VineRepost;->repostId:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lco/vine/android/api/VineRepost;->repostId:J

    :goto_e7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "repost_data"

    invoke-static/range {v16 .. v16}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "sort_id"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->repostId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "post_groups"

    const-string v3, "post_id=? AND post_type=? AND tag=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v7, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_160

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated repost data for post "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-wide v6, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with repost id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-wide v6, v0, Lco/vine/android/api/VineRepost;->repostId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user timeline."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_c6 .. :try_end_160} :catchall_19e

    :cond_160
    :goto_160
    :try_start_160
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_163
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_166
    .catchall {:try_start_160 .. :try_end_166} :catchall_17d

    :try_start_166
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p4, :cond_172

    if-lez v19, :cond_172

    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_172
    .catchall {:try_start_166 .. :try_end_172} :catchall_184

    :cond_172
    monitor-exit p0

    return v19

    :cond_174
    const/16 v19, 0x0

    goto/16 :goto_90

    :catchall_178
    move-exception v2

    :try_start_179
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_17d
    .catchall {:try_start_179 .. :try_end_17d} :catchall_17d

    :catchall_17d
    move-exception v2

    :try_start_17e
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_184

    :catchall_184
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_187
    :try_start_187
    new-instance v16, Lco/vine/android/api/VineRepost;

    invoke-direct/range {v16 .. v16}, Lco/vine/android/api/VineRepost;-><init>()V

    move-object/from16 v0, p1

    iget-wide v2, v0, Lco/vine/android/api/VineRepost;->repostId:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lco/vine/android/api/VineRepost;->repostId:J

    move-object/from16 v0, p1

    iget-wide v2, v0, Lco/vine/android/api/VineRepost;->postId:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lco/vine/android/api/VineRepost;->postId:J
    :try_end_19c
    .catchall {:try_start_187 .. :try_end_19c} :catchall_19e

    goto/16 :goto_e7

    :catchall_19e
    move-exception v2

    :try_start_19f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_1a3
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_17d

    :cond_1a3
    :try_start_1a3
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "post_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "post_id"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "sort_id"

    move-object/from16 v0, p1

    iget-wide v3, v0, Lco/vine/android/api/VineRepost;->repostId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "tag"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "repost_data"

    invoke-static/range {p1 .. p1}, Lco/vine/android/util/Util;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "post_groups"

    const-string v3, "post_id"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    sget-boolean v2, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v2, :cond_160

    const-string v2, "VineDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted repost data for post "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineRepost;->postId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with repost id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineRepost;->repostId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user timeline."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_225
    .catchall {:try_start_1a3 .. :try_end_225} :catchall_19e

    goto/16 :goto_160
.end method

.method public safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_b} :catch_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_b} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_b} :catch_60
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_b} :catch_6e

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v2

    throw v2

    :catch_e
    move-exception v2

    const-wide/16 v0, -0x1

    :try_start_11
    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lco/vine/android/util/Util;->getCacheSize(Landroid/content/Context;)J
    :try_end_16
    .catch Lco/vine/android/VineLoggingException; {:try_start_11 .. :try_end_16} :catch_47

    move-result-wide v0

    :goto_17
    iget-object v4, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lco/vine/android/client/AppController;->clearFileCache(Landroid/content/Context;)V

    :try_start_1c
    new-instance v4, Lco/vine/android/VineLoggingException;

    invoke-direct {v4}, Lco/vine/android/VineLoggingException;-><init>()V

    const-string v5, "Db full, cleaned cache from {} to {}."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lco/vine/android/util/Util;->getCacheSize(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catch Lco/vine/android/VineLoggingException; {:try_start_1c .. :try_end_3d} :catch_4c

    :goto_3d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b

    :catch_47
    move-exception v3

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_17

    :catch_4c
    move-exception v3

    new-instance v4, Lco/vine/android/VineLoggingException;

    invoke-direct {v4}, Lco/vine/android/VineLoggingException;-><init>()V

    const-string v5, "Db full, cleaned cache from {} to unknown."

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :catch_60
    move-exception v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(code 1)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    throw v2

    :catch_6e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "already-closed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    throw v2
.end method

.method public declared-synchronized savePageCursor(IILjava/lang/String;IIJZ)I
    .registers 23

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez p3, :cond_9

    const-string p3, ""

    :cond_9
    const-string v12, "kind=? AND type=? AND tag=?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    const-string v3, "page_cursors"

    sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$PageCursorsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "kind=? AND type=? AND tag=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "kind"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "next_page"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "previous_page"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "anchor"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "reversed"

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_109

    const/4 v11, 0x0

    if-eqz v10, :cond_10c

    :try_start_71
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f1

    const-string v3, "page_cursors"

    const-string v4, "kind=? AND type=? AND tag=?"

    invoke-virtual {v2, v3, v13, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_71 .. :try_end_7f} :catchall_104

    move-result v3

    if-lez v3, :cond_ef

    const/4 v3, 0x1

    :goto_83
    add-int/2addr v11, v3

    :goto_84
    :try_start_84
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_87
    sget-boolean v3, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v3, :cond_ed

    if-lez v11, :cond_ed

    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved pagecursor of kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anchor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reverse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_84 .. :try_end_ed} :catchall_109

    :cond_ed
    monitor-exit p0

    return v11

    :cond_ef
    const/4 v3, 0x0

    goto :goto_83

    :cond_f1
    :try_start_f1
    const-string v3, "page_cursors"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_104

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_102

    const/4 v3, 0x1

    :goto_100
    add-int/2addr v11, v3

    goto :goto_84

    :cond_102
    const/4 v3, 0x0

    goto :goto_100

    :catchall_104
    move-exception v3

    :try_start_105
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_109
    .catchall {:try_start_105 .. :try_end_109} :catchall_109

    :catchall_109
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_10c
    :try_start_10c
    const-string v3, "page_cursors"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_109

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_11e

    const/4 v3, 0x1

    :goto_11b
    add-int/2addr v11, v3

    goto/16 :goto_87

    :cond_11e
    const/4 v3, 0x0

    goto :goto_11b
.end method

.method public declared-synchronized saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "settings"

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "name"

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "settings"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_42

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    :goto_2a
    monitor-exit p0

    return v1

    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_38

    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    :cond_38
    iget-object v1, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_42

    move v1, v2

    goto :goto_2a

    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setConversationHidden(JZ)V
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "is_hidden"

    if-eqz p3, :cond_54

    move v3, v4

    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "conversations"

    const-string v6, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v1, v3, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "VineDH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marked conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updated rows: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_54
    move v3, v5

    goto :goto_10
.end method

.method public setMessageError(JILjava/lang/String;)V
    .registers 13

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_34

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "error_reason"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "messages"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_34

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyVMUris()V

    :cond_34
    return-void
.end method

.method public setMessageError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "error_reason"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "messages"

    const-string v4, "upload_path=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_30

    invoke-direct {p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyVMUris()V

    :cond_30
    return-void
.end method

.method public setShouldHideProfileRevines(JZ)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "user_id=?"

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "hide_profile_reposts"

    if-eqz p3, :cond_36

    move v5, v6

    :goto_1a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_25
    const-string v5, "users"

    const-string v8, "user_id=?"

    invoke-virtual {v0, v5, v4, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_38

    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v3, :cond_3d

    :goto_35
    return v6

    :cond_36
    move v5, v7

    goto :goto_1a

    :catchall_38
    move-exception v5

    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    :cond_3d
    move v6, v7

    goto :goto_35
.end method

.method public shouldHideProfileRevines(J)Z
    .registers 16

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    const-string v10, "user_id=?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v12

    const-string v1, "users"

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "hide_profile_reposts"

    aput-object v3, v2, v12

    const-string v3, "user_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_35

    :try_start_24
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_38

    move-result v1

    if-lez v1, :cond_36

    move v9, v11

    :cond_32
    :goto_32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_35
    return v9

    :cond_36
    move v9, v12

    goto :goto_32

    :catchall_38
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized unRevine(JJZZ)I
    .registers 33

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1ad

    move-result-object v3

    const/16 v25, 0x0

    const/16 v18, 0x0

    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "posts"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "metadata_flags"

    aput-object v8, v5, v6

    const-string v6, "post_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_1a6

    move-result-object v16

    if-eqz v16, :cond_8b

    :try_start_2b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_88

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_88

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    and-int/lit8 v19, v19, -0x11

    const-string v4, "metadata_flags"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "my_repost_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_7a

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrevined post "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    const-string v4, "posts"

    const-string v5, "post_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_2b .. :try_end_83} :catchall_1a1

    move-result v4

    if-lez v4, :cond_19d

    const/16 v25, 0x1

    :cond_88
    :goto_88
    :try_start_88
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8b
    const-string v4, "post_groups"

    const-string v5, "post_id=? AND post_type=? AND tag=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_f3

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and post id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to unrevining."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    if-nez p5, :cond_135

    const-string v9, "posts"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user_id"

    aput-object v5, v10, v4

    const-string v11, "post_id=?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_112
    .catchall {:try_start_88 .. :try_end_112} :catchall_1a6

    move-result-object v16

    if-eqz v16, :cond_135

    :try_start_115
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_132

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->amFollowingUser(J)Z
    :try_end_131
    .catchall {:try_start_115 .. :try_end_131} :catchall_1b0

    move-result p5

    :cond_132
    :try_start_132
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_135
    if-nez p5, :cond_1b5

    const-string v4, "post_groups"

    const-string v5, "post_id=? AND post_type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int v18, v18, v4

    sget-boolean v4, Lco/vine/android/provider/VineDatabaseHelper;->LOGGABLE:Z

    if-eqz v4, :cond_18e

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and post id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to unrevining."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    :goto_18e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_191
    .catchall {:try_start_132 .. :try_end_191} :catchall_1a6

    :try_start_191
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz p6, :cond_19b

    invoke-direct/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->notifyPostCommentsViewUris()V
    :try_end_19b
    .catchall {:try_start_191 .. :try_end_19b} :catchall_1ad

    :cond_19b
    monitor-exit p0

    return v25

    :cond_19d
    const/16 v25, 0x0

    goto/16 :goto_88

    :catchall_1a1
    move-exception v4

    :try_start_1a2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_1a6
    .catchall {:try_start_1a2 .. :try_end_1a6} :catchall_1a6

    :catchall_1a6
    move-exception v4

    :try_start_1a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_1ad
    .catchall {:try_start_1a7 .. :try_end_1ad} :catchall_1ad

    :catchall_1ad
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_1b0
    move-exception v4

    :try_start_1b1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_1b5
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "repost_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v4, "post_groups"

    const-string v5, "post_id=? AND post_type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    const-string v4, "VineDH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " repost data for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and post id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to unrevining."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_214
    .catchall {:try_start_1b1 .. :try_end_214} :catchall_1a6

    goto/16 :goto_18e
.end method

.method public declared-synchronized updateConversationWithLastMessage(JJJ)V
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_51

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "last_message"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "last_message_timestamp"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "conversations"

    const-string v4, "_id=? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_4c

    :try_start_35
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lez v1, :cond_4a

    iget-object v3, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lco/vine/android/provider/VineDatabaseHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lco/vine/android/provider/Vine$Conversations;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_51

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v3

    :try_start_4d
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateMessageLoopStartTime(JJ)V
    .registers 15

    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    :try_start_a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "local_start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "messages"

    const-string v6, "message_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-boolean v5, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v5, :cond_41

    const-string v5, "Updated {} local start time to {} ? {}."

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-ne v1, v3, :cond_49

    :goto_3a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v6, v7, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_4b

    :try_start_44
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_50

    monitor-exit p0

    return-void

    :cond_49
    move v3, v4

    goto :goto_3a

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-virtual {p0, v0}, Lco/vine/android/provider/VineDatabaseHelper;->safeFinishTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public updateUserFollowingFlag(JZ)V
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "following_flag"

    if-eqz p3, :cond_27

    move v2, v3

    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "users"

    const-string v5, "user_id=?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_27
    move v2, v4

    goto :goto_10
.end method
