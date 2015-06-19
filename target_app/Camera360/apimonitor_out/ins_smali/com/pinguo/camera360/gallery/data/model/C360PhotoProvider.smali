.class public Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;
.super Landroid/content/ContentProvider;
.source "C360PhotoProvider.java"
.field public static final PHOTO_TABLE_NAME:Ljava/lang/String; = "photoproject"
.field private static final TAG:Ljava/lang/String; = "C360PhotoProvider"
.field private static final URL_CAMER360_PHOTO:I = 0x1
.field private static final sURLMatcher:Landroid/content/UriMatcher;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "com.pinguo.camera360.gallery.privider"
const-string/jumbo v2, "c360_photo"
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method private constructQueryForCamera360Photo(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
.registers 5
const-string/jumbo v0, "photoproject"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
if-eqz p2, :cond_1b
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "type="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
:cond_1b
return-void
.end method
.method private notifyChange(Landroid/net/Uri;)V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
return-void
.end method
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 8
monitor-enter p0
const/4 v0, 0x0
:try_start_2
const-string/jumbo v1, ""
sget-object v2, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v2
packed-switch v2, :pswitch_data_30
:goto_e
if-lez v0, :cond_1c
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:try_end_1c
.catchall {:try_start_2 .. :try_end_1c} :catchall_2a
:cond_1c
monitor-exit p0
return v0
:try_start_1e
:pswitch_1e
const-string/jumbo v1, "photoproject"
:try_start_21
:try_end_21
.catchall {:try_start_1e .. :try_end_21} :catchall_2a
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v2
invoke-virtual {v2, v1, p2, p3}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_28
.catchall {:try_start_21 .. :try_end_28} :catchall_2a
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_2d
move-result v0
goto :goto_e
:catchall_2a
move-exception v2
monitor-exit p0
throw v2
:catch_2d
move-exception v2
goto :goto_e
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Unknown URL "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1f
const-string/jumbo v0, "image"
return-object v0
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1f
.end packed-switch
.end method
.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 9
const/4 v5, 0x0
monitor-enter p0
:try_start_2
const-string/jumbo v2, ""
sget-object v3, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_28
move-result v3
packed-switch v3, :pswitch_data_2e
:goto_e
const-wide/16 v0, 0x0
:try_start_10
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v2, v4, p2}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_18
.catchall {:try_start_10 .. :try_end_18} :catchall_28
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_2b
move-result-wide v0
:goto_19
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-lez v3, :cond_22
:try_start_1f
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->notifyChange(Landroid/net/Uri;)V
:cond_22
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_28
monitor-exit p0
return-object v5
:pswitch_24
:try_start_24
const-string/jumbo v2, "photoproject"
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_28
goto :goto_e
:catchall_28
move-exception v3
monitor-exit p0
throw v3
:catch_2b
move-exception v3
goto :goto_19
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_24
.end packed-switch
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider; onCreate"
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
const/4 v8, 0x0
monitor-enter p0
:try_start_2
new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
:try_end_c
.catchall {:try_start_2 .. :try_end_c} :catchall_33
move-result v0
packed-switch v0, :pswitch_data_36
:goto_10
monitor-exit p0
return-object v8
:pswitch_12
const/4 v0, 0x0
:try_start_13
invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->constructQueryForCamera360Photo(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
:try_end_16
.catchall {:try_start_13 .. :try_end_16} :catchall_33
const/4 v8, 0x0
:try_start_17
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v0
const/4 v5, 0x0
const/4 v6, 0x0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v7, p5
invoke-virtual/range {v0 .. v7}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->query(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:try_end_30
.catchall {:try_start_17 .. :try_end_30} :catchall_33
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_31
goto :goto_10
:catch_31
move-exception v0
goto :goto_10
:catchall_33
move-exception v0
monitor-exit p0
throw v0
:pswitch_data_36
.packed-switch 0x1
:pswitch_12
.end packed-switch
.end method
.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 8
monitor-enter p0
const/4 v0, 0x0
:try_start_2
const-string/jumbo v1, ""
sget-object v2, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->sURLMatcher:Landroid/content/UriMatcher;
invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_22
move-result v2
packed-switch v2, :pswitch_data_28
:try_start_e
:goto_e
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v2
invoke-virtual {v2, v1, p2, p3, p4}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_15
.catchall {:try_start_e .. :try_end_15} :catchall_22
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_25
move-result v0
:goto_16
if-lez v0, :cond_1b
:try_start_18
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/data/model/C360PhotoProvider;->notifyChange(Landroid/net/Uri;)V
:try_end_1b
.catchall {:try_start_18 .. :try_end_1b} :catchall_22
:cond_1b
const/4 v2, 0x0
monitor-exit p0
return v2
:try_start_1e
:pswitch_1e
const-string/jumbo v1, "photoproject"
:try_end_21
.catchall {:try_start_1e .. :try_end_21} :catchall_22
goto :goto_e
:catchall_22
move-exception v2
monitor-exit p0
throw v2
:catch_25
move-exception v2
goto :goto_16
nop
:pswitch_data_28
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method