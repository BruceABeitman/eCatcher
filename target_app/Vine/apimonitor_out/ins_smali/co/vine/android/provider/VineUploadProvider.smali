.class public Lco/vine/android/provider/VineUploadProvider;
.super Landroid/content/ContentProvider;
.source "VineUploadProvider.java"
.field private static final ALL_UPLOADS:I = 0x1
.field public static final AUTHORITY:Ljava/lang/String; = null
.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = null
.field private static final DELETE_ALL_UPLOADS:I = 0x5
.field private static final DELETE_UPLOAD:I = 0x4
.field private static final GET_LAST_PATH:I = 0x3
.field private static final LOGGABLE:Z = false
.field private static final PUT_HASH:I = 0x7
.field private static final PUT_MESSAGE_ROW_ID:I = 0xe
.field private static final PUT_NEW_UPLOAD:I = 0x6
.field private static final PUT_POST_INFO:I = 0xa
.field private static final PUT_STATUS:I = 0x8
.field private static final PUT_UPLOAD_TIME:I = 0xb
.field private static final PUT_URIS:I = 0x9
.field private static final PUT_VALUES:I = 0xc
.field private static final REFERENCE:I = 0xd
.field public static final SCHEME:Ljava/lang/String; = "content"
.field private static final TAG:Ljava/lang/String; = "VineUploadProvider"
.field private static final UPLOAD:I = 0x2
.field private static final sUriMatcher:Landroid/content/UriMatcher;
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
if-nez v0, :cond_10
const-string v0, "VineUploadProvider"
const/4 v2, 0x3
invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_bf
:cond_10
move v0, v1
:goto_11
sput-boolean v0, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
const-string v0, ".provider.VineUploadProvider"
invoke-static {v0}, Lco/vine/android/util/BuildUtil;->getAuthority(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "content://"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineUploadProvider;->CONTENT_AUTHORITY:Ljava/lang/String;
new-instance v0, Landroid/content/UriMatcher;
const/4 v2, -0x1
invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v2, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v3, "uploads/#"
invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/upload/#"
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/reference/#"
const/16 v3, 0xd
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/delete_upload"
const/4 v3, 0x4
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_new_upload"
const/4 v3, 0x6
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_hash"
const/4 v3, 0x7
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_status"
const/16 v3, 0x8
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_uris"
const/16 v3, 0x9
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_post_info"
const/16 v3, 0xa
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_upload_time"
const/16 v3, 0xb
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_values"
const/16 v3, 0xc
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "uploads/put_message_row_id"
const/16 v3, 0xe
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
:cond_bf
const/4 v0, 0x0
goto/16 :goto_11
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 11
const/4 v6, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-boolean v3, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v3, :cond_3a
const-string v3, "VineUploadProvider"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "QUERY: uri "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " -> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_3a
sget-object v3, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v1
packed-switch v1, :pswitch_data_64
:goto_43
if-lez v2, :cond_52
invoke-virtual {p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
sget-object v4, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_52
return v2
:pswitch_53
const-string v3, "uploads"
invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v2
goto :goto_43
:pswitch_5a
const-string v3, "uploads"
const-string v4, "1"
invoke-virtual {v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v2
goto :goto_43
nop
:pswitch_data_64
.packed-switch 0x4
:pswitch_53
:pswitch_5a
.end packed-switch
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 11
const/4 v7, 0x0
const-wide/16 v2, -0x1
invoke-virtual {p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-boolean v4, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v4, :cond_3b
const-string v4, "VineUploadProvider"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "QUERY: uri "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " -> "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
sget-object v6, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_3b
sget-object v4, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v1
packed-switch v1, :pswitch_data_7c
:cond_44
:goto_44
const-wide/16 v4, 0x0
cmp-long v4, v2, v4
if-ltz v4, :cond_57
invoke-virtual {p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_57
return-object v7
:pswitch_58
const-string v4, "uploads"
invoke-virtual {v0, v4, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v2
sget-boolean v4, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v4, :cond_44
const-string v4, "VineUploadProvider"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Upload inserted with rowId="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_44
nop
:pswitch_data_7c
.packed-switch 0x6
:pswitch_58
.end packed-switch
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lco/vine/android/provider/VineUploadProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lco/vine/android/provider/VineUploadProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 22
const/4 v6, 0x0
:try_start_1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_c
.catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_c} :catch_6d
move-result-object v2
:goto_d
new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
sget-boolean v3, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v3, :cond_42
const-string v3, "VineUploadProvider"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "QUERY: uri "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " -> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_42
sget-object v3, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v12
sparse-switch v12, :sswitch_data_134
const-string v3, "uploads"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
:goto_52
const/4 v7, 0x0
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v8, p5
:try_start_5b
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-interface {v10, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:goto_6c
:try_end_6c
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6c} :catch_109
return-object v10
:catch_6d
move-exception v11
const-string v3, "Failed to get a readable database on query."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v11, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
goto :goto_d
:sswitch_83
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v13
const-string v3, "uploads"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "owner_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
goto :goto_52
:sswitch_a3
const-string v3, "uploads"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v13
const-string v3, "path"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_d4
const-string p3, "path=? AND owner_id=?"
sget-object v3, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;
const/4 v4, 0x2
new-array v5, v4, [Ljava/lang/String;
const/4 v4, 0x0
aput-object v14, v5, v4
const/4 v4, 0x1
aput-object v13, v5, v4
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "_id ASC"
const-string v9, "1"
move-object/from16 v4, p3
invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
goto :goto_6c
:cond_d4
const/4 v10, 0x0
goto :goto_6c
:sswitch_d6
const-string v3, "uploads"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v13
const-string v3, "reference"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_106
const-string p3, "reference=? AND owner_id=?"
sget-object v3, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;
const/4 v4, 0x2
new-array v5, v4, [Ljava/lang/String;
const/4 v4, 0x0
aput-object v15, v5, v4
const/4 v4, 0x1
aput-object v13, v5, v4
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "_id ASC"
move-object/from16 v4, p3
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
goto/16 :goto_6c
:cond_106
const/4 v10, 0x0
goto/16 :goto_6c
:catch_109
move-exception v11
sget-boolean v3, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v3, :cond_12d
const-string v3, "Cannot execute {} {}  {} {} {} {}"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x2
aput-object p3, v4, v5
const/4 v5, 0x3
aput-object v6, v4, v5
const/4 v5, 0x4
aput-object p5, v4, v5
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_12d
new-instance v3, Ljava/lang/RuntimeException;
invoke-direct {v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v3
nop
:sswitch_data_134
.sparse-switch
0x1 -> :sswitch_83
0x2 -> :sswitch_a3
0xd -> :sswitch_d6
.end sparse-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 26
const/4 v11, 0x0
if-nez p2, :cond_8
new-instance p2, Landroid/content/ContentValues;
invoke-direct/range {p2 .. p2}, Landroid/content/ContentValues;-><init>()V
:cond_8
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v17
invoke-static/range {v17 .. v17}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v4
sget-boolean v17, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v17, :cond_48
const-string v17, "VineUploadProvider"
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
const-string v19, "QUERY: uri "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, " -> "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
sget-object v19, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_48
sget-object v17, Lco/vine/android/provider/VineUploadProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v7
packed-switch v7, :pswitch_data_248
:pswitch_55
const-string v13, "uploads"
:goto_57
:try_start_57
invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z
move-result v17
if-nez v17, :cond_6b
move-object/from16 v0, p2
move-object/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {v4, v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_6a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_6a} :catch_215
move-result v11
:cond_6b
if-lez v11, :cond_94
const-string v17, "status"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const/16 v17, 0x2
invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_94
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineUploadProvider;->getContext()Landroid/content/Context;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v17
sget-object v18, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;
const/16 v19, 0x0
invoke-virtual/range {v17 .. v19}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_94
return v11
:pswitch_95
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "hash"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v17, "PUT_HASH path={}, hash={}"
move-object/from16 v0, v17
invoke-static {v0, v9, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "hash"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_57
:pswitch_ca
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "status"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v17, "captcha_url"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v17, "PUT_STATUS path={}, status={}"
move-object/from16 v0, v17
invoke-static {v0, v9, v12}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "status"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v17, "captcha_url"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_57
:pswitch_113
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "video_url"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
const-string v17, "thumbnail_url"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
const-string v17, "PUT_URIS path={}, videoUrl={}, thumbnailUrl={}"
move-object/from16 v0, v17
move-object/from16 v1, v16
invoke-static {v0, v9, v1, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "video_url"
move-object/from16 v0, p2
move-object/from16 v1, v17
move-object/from16 v2, v16
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v17, "thumbnail_url"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_57
:pswitch_160
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "post_info"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const-string v17, "PUT_POST_INFO path={}, postInfo={}"
move-object/from16 v0, v17
invoke-static {v0, v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "post_info"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_57
:pswitch_196
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "upload_time"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
const-string v17, "PUT_UPLOAD_TIME path={}, uploadTime={}"
move-object/from16 v0, v17
invoke-static {v0, v9, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "upload_time"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_57
:pswitch_1cc
const-string v17, "PUT_VALUES selectionArgs={}, values={}"
invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v17
move-object/from16 v1, p4
move-object/from16 v2, v18
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string v13, "uploads"
goto/16 :goto_57
:pswitch_1df
const-string v13, "uploads"
const-string v17, "path"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v17, "message_row_id"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v17, "PUT_MESSAGE_ROW_ID path={}, id={}"
move-object/from16 v0, v17
invoke-static {v0, v9, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const-string p3, "path=?"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p4, v0
const/16 v17, 0x0
aput-object v9, p4, v17
const-string v17, "message_row"
move-object/from16 v0, p2
move-object/from16 v1, v17
invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_57
:catch_215
move-exception v5
sget-boolean v17, Lco/vine/android/provider/VineUploadProvider;->LOGGABLE:Z
if-eqz v17, :cond_23f
const-string v17, "Cannot execute update with db={}, tablename={}, selection={}, selectionArgs={}"
const/16 v18, 0x4
move/from16 v0, v18
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;
move-result-object v20
aput-object v20, v18, v19
const/16 v19, 0x1
aput-object v13, v18, v19
const/16 v19, 0x2
aput-object p3, v18, v19
const/16 v19, 0x3
invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
aput-object v20, v18, v19
invoke-static/range {v17 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_23f
new-instance v17, Ljava/lang/RuntimeException;
move-object/from16 v0, v17
invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v17
nop
:pswitch_data_248
.packed-switch 0x7
:pswitch_95
:pswitch_ca
:pswitch_113
:pswitch_160
:pswitch_196
:pswitch_1cc
:pswitch_55
:pswitch_1df
.end packed-switch
.end method