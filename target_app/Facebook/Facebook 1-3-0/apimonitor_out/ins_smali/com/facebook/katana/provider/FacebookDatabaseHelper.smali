.class public Lcom/facebook/katana/provider/FacebookDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FacebookDatabaseHelper.java"
.field private static final DATABASE_NAME:Ljava/lang/String; = "fb.db"
.field private static final DATABASE_VERSION:I = 0x36
.field private static final DATABASE_VERSION_BEFORE_BIRTHDAYS:I = 0x32
.field private static final DATABASE_VERSION_BEFORE_EVENTS:I = 0x31
.field private static final DATABASE_VERSION_BEFORE_EVENTS_DB_FIX:I = 0x33
.field private static final DATABASE_VERSION_BEFORE_FACEBOOK:I = 0x2d
.field private static final DATABASE_VERSION_BEFORE_FNLN:I = 0x30
.field private static final DATABASE_VERSION_BEFORE_KEY_VALUE:I = 0x35
.field private static final DATABASE_VERSION_BEFORE_LOGGING:I = 0x34
.field private static final DATABASE_VERSION_BEFORE_MESSAGING:I = 0x2e
.field static final DROP_TABLE_PREFIX:Ljava/lang/String; = "DROP TABLE IF EXISTS "
.field static final DROP_VIEW_PREFIX:Ljava/lang/String; = "DROP VIEW IF EXISTS "
.field private static mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
.field private static recreateEventsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateFriendsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateKeyValueTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateLoggingTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateMailboxTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateNotificationsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreatePhotosTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateUserStatusTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private static recreateUserValuesTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.field private final mContext:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$1;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$1;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateUserValuesTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$2;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$2;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateNotificationsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$3;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$3;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateUserStatusTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$4;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$4;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateMailboxTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$5;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$5;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateFriendsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$6;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$6;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreatePhotosTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$7;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateEventsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$8;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$8;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateLoggingTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
new-instance v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper$9;
invoke-direct {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$9;-><init>()V
sput-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateKeyValueTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
const-string v0, "fb.db"
const/4 v1, 0x0
const/16 v2, 0x36
invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
iput-object p1, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mContext:Landroid/content/Context;
return-void
.end method
.method public static clearPrivateData(Landroid/content/Context;)V
.registers 4
const/4 v2, 0x0
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->clearUserValues(Landroid/content/Context;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->THREADS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->MESSAGES_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/katana/util/FileUtils;->deleteFilesInDirectory(Ljava/lang/String;)V
return-void
.end method
.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;
.registers 3
const-class v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
if-eqz v1, :cond_b
sget-object v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_15
:goto_9
monitor-exit v0
return-object v1
:cond_b
:try_start_b
new-instance v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;
invoke-direct {v1, p0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;-><init>(Landroid/content/Context;)V
sput-object v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
sget-object v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;
:try_end_14
.catchall {:try_start_b .. :try_end_14} :catchall_15
goto :goto_9
:catchall_15
move-exception v1
monitor-exit v0
throw v1
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/provider/FacebookDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateUserValuesTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateNotificationsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateUserStatusTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateMailboxTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateFriendsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreatePhotosTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateEventsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateLoggingTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateKeyValueTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
const-string v1, " - Lcom/facebook/katana/provider/FacebookDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 8
const/16 v2, 0x2d
if-gt p2, v2, :cond_15
invoke-virtual {p0, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_7
iget-object v2, p0, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/katana/util/FileUtils;->deleteFilesInDirectory(Ljava/lang/String;)V
return-void
:cond_15
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
const/16 v2, 0x2e
if-gt p2, v2, :cond_23
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateMailboxTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_23
const/16 v2, 0x30
if-gt p2, v2, :cond_36
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateFriendsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateMailboxTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateUserStatusTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_36
const/16 v2, 0x31
if-gt p2, v2, :cond_3f
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateEventsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_3f
const/16 v2, 0x32
if-gt p2, v2, :cond_48
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateFriendsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_48
const/16 v2, 0x33
if-gt p2, v2, :cond_51
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateEventsTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_51
const/16 v2, 0x34
if-gt p2, v2, :cond_5a
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateLoggingTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_5a
const/16 v2, 0x35
if-gt p2, v2, :cond_63
sget-object v2, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->recreateKeyValueTables:Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_63
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_67
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_7
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
invoke-interface {v1, p1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;)V
goto :goto_67
.end method