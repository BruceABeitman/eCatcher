.class public Lcom/pinguo/camera360/login/model/UserContentProvider;
.super Landroid/content/ContentProvider;
.source "UserContentProvider.java"
.field public static final AUTHORITY:Ljava/lang/String; = "com.pinguo.camera360.user.info"
.field public static final AUTHORITY_URI:Landroid/net/Uri; = null
.field private static final DB_NAME:Ljava/lang/String; = "pgUser.db"
.field private static final DB_TABLE:Ljava/lang/String; = "pgUserTable"
.field private static final DB_VERSION:I = 0x64
.field private mOpenHelper:Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "content://com.pinguo.camera360.user.info"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/login/model/UserContentProvider;->AUTHORITY_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 8
monitor-enter p0
:try_start_1
iget-object v2, p0, Lcom/pinguo/camera360/login/model/UserContentProvider;->mOpenHelper:Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v2, "pgUserTable"
invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/UserContentProvider;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1c
monitor-exit p0
return v0
:catchall_1c
move-exception v2
monitor-exit p0
throw v2
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 9
const/4 v3, 0x0
monitor-enter p0
:try_start_2
iget-object v4, p0, Lcom/pinguo/camera360/login/model/UserContentProvider;->mOpenHelper:Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v4, "pgUserTable"
const/4 v5, 0x0
invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_f
.catchall {:try_start_2 .. :try_end_f} :catchall_2d
move-result-wide v1
const-wide/16 v4, -0x1
cmp-long v4, v1, v4
if-nez v4, :cond_18
:goto_16
monitor-exit p0
return-object v3
:cond_18
:try_start_18
invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/UserContentProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
sget-object v4, Lcom/pinguo/camera360/login/model/UserContentProvider;->AUTHORITY_URI:Landroid/net/Uri;
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
sget-object v3, Lcom/pinguo/camera360/login/model/UserContentProvider;->AUTHORITY_URI:Landroid/net/Uri;
invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
:try_end_2b
.catchall {:try_start_18 .. :try_end_2b} :catchall_2d
move-result-object v3
goto :goto_16
:catchall_2d
move-exception v3
monitor-exit p0
throw v3
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lcom/pinguo/camera360/login/model/UserContentProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/UserContentProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/login/model/UserContentProvider;->mOpenHelper:Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/login/model/UserContentProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 15
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/login/model/UserContentProvider;->mOpenHelper:Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "pgUserTable"
const/4 v5, 0x0
const/4 v6, 0x0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v7, p5
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
if-eqz v8, :cond_21
invoke-virtual {p0}, Lcom/pinguo/camera360/login/model/UserContentProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:cond_21
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_23
monitor-exit p0
return-object v8
:catchall_23
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
monitor-enter p0
const/4 v0, 0x0
monitor-exit p0
return v0
.end method