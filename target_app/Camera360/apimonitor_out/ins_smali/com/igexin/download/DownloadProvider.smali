.class public final Lcom/igexin/download/DownloadProvider;
.super Landroid/content/ContentProvider;
.field private static a:Ljava/lang/String;
.field private static final b:Landroid/content/UriMatcher;
.field private static final c:[Ljava/lang/String;
.field private static d:Ljava/util/HashSet;
.field private e:Landroid/database/sqlite/SQLiteOpenHelper;
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "download.db"
sput-object v1, Lcom/igexin/download/DownloadProvider;->a:Ljava/lang/String;
new-instance v1, Landroid/content/UriMatcher;
const/4 v2, -0x1
invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v1, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
const/16 v1, 0x10
new-array v1, v1, [Ljava/lang/String;
const-string/jumbo v2, "_id"
aput-object v2, v1, v0
const/4 v2, 0x1
const-string/jumbo v3, "entity"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string/jumbo v3, "_data"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string/jumbo v3, "mimetype"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string/jumbo v3, "visibility"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string/jumbo v3, "destination"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string/jumbo v3, "control"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string/jumbo v3, "status"
aput-object v3, v1, v2
const/16 v2, 0x8
const-string/jumbo v3, "lastmod"
aput-object v3, v1, v2
const/16 v2, 0x9
const-string/jumbo v3, "createmod"
aput-object v3, v1, v2
const/16 v2, 0xa
const-string/jumbo v3, "total_bytes"
aput-object v3, v1, v2
const/16 v2, 0xb
const-string/jumbo v3, "current_bytes"
aput-object v3, v1, v2
const/16 v2, 0xc
const-string/jumbo v3, "title"
aput-object v3, v1, v2
const/16 v2, 0xd
const-string/jumbo v3, "description"
aput-object v3, v1, v2
const/16 v2, 0xe
const-string/jumbo v3, "data_8"
aput-object v3, v1, v2
const/16 v2, 0xf
const-string/jumbo v3, "data_10"
aput-object v3, v1, v2
sput-object v1, Lcom/igexin/download/DownloadProvider;->c:[Ljava/lang/String;
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
sput-object v1, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
:goto_82
sget-object v1, Lcom/igexin/download/DownloadProvider;->c:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_93
sget-object v1, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
sget-object v2, Lcom/igexin/download/DownloadProvider;->c:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_82
:cond_93
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
return-void
.end method
.method static synthetic a()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/igexin/download/DownloadProvider;->a:Ljava/lang/String;
return-object v0
.end method
.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string/jumbo v0, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER default 0, status INTEGER, numfailed INTEGER, lastmod BIGINT, createmod BIGINT, extras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, scanned BOOLEAN,data_1 TEXT, data_2 TEXT, data_3 TEXT, data_4 TEXT, data_5 TEXT, data_6 TEXT, data_7 TEXT, data_8 TEXT, data_9 TEXT, data_10 BIGINT, iswebicon INTEGER);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_6
.catch Landroid/database/SQLException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
throw v0
.end method
.method static synthetic a(Lcom/igexin/download/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 2
invoke-direct {p0, p1}, Lcom/igexin/download/DownloadProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V
return-void
.end method
.method private static final a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
.registers 4
invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_9
return-void
.end method
.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string/jumbo v0, "DROP TABLE IF EXISTS downloads"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_6
.catch Landroid/database/SQLException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
throw v0
.end method
.method static synthetic b(Lcom/igexin/download/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 2
invoke-direct {p0, p1}, Lcom/igexin/download/DownloadProvider;->b(Landroid/database/sqlite/SQLiteDatabase;)V
return-void
.end method
.method private static final b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
.registers 4
invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_9
return-void
.end method
.method private static final c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
.registers 4
invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_9
return-void
.end method
.method private static final d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
.registers 4
invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 9
const/4 v4, 0x1
sget-object v0, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
invoke-static {p2, v0}, Lcom/igexin/download/h;->a(Ljava/lang/String;Ljava/util/Set;)V
iget-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
sget-object v0, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_108
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Cannot delete URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2f
if-eqz p2, :cond_ff
if-ne v0, v4, :cond_e2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "( "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, " )"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_4e
const/4 v3, 0x2
if-ne v0, v3, :cond_104
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " ( _id = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " ) "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_7e
invoke-static {}, Landroid/os/Binder;->getCallingPid()I
move-result v1
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v3
if-eq v1, v3, :cond_ce
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
if-eqz v1, :cond_ce
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " AND ( uid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " OR "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "otheruid"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " )"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_ce
const-string/jumbo v1, "downloads"
invoke-virtual {v2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
return v0
:cond_e2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "( "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, " ) AND "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto/16 :goto_4e
:cond_ff
const-string/jumbo v1, ""
goto/16 :goto_4e
:cond_104
move-object v0, v1
goto/16 :goto_7e
nop
:pswitch_data_108
.packed-switch 0x1
:pswitch_2f
:pswitch_2f
.end packed-switch
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_30
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Unknown URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_23
const-string/jumbo v0, "vnd.android.cursor.dir/download"
:goto_26
return-object v0
:pswitch_27
const-string/jumbo v0, "vnd.android.cursor.item/download"
goto :goto_26
:pswitch_2b
const-string/jumbo v0, "vnd.android.cursor.sql/download"
goto :goto_26
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_23
:pswitch_27
:pswitch_2b
.end packed-switch
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 11
const/4 v5, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-object v2, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v2
if-eq v2, v5, :cond_2a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Unknown/Invalid URI "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v3, "_data"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "uri"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "entity"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "no_integrity"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "hint"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "mimetype"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "destination"
invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v3
if-eqz v3, :cond_62
const-string/jumbo v4, "destination"
invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_62
const-string/jumbo v4, "visibility"
invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v4
if-nez v4, :cond_18a
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
if-nez v3, :cond_17d
const-string/jumbo v3, "visibility"
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:goto_7b
const-string/jumbo v3, "control"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "status"
invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_192
const-string/jumbo v3, "status"
const/16 v4, 0xbe
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:goto_96
const-string/jumbo v3, "lastmod"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v3, "createmod"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v3, "extras"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_1"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_2"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_3"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_4"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_5"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_6"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_7"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_8"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_9"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "data_10"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "iswebicon"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "cookiedata"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "useragent"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "referer"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "uid"
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v3
if-nez v3, :cond_126
const-string/jumbo v3, "uid"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
:cond_126
const-string/jumbo v3, "title"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v3, "description"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v3
new-instance v4, Landroid/content/Intent;
const-class v5, Lcom/igexin/download/DownloadService;
invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string/jumbo v4, "downloads"
invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v4
const-wide/16 v6, -0x1
cmp-long v0, v4, v6
if-eqz v0, :cond_19a
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/igexin/download/DownloadService;
invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:goto_17c
return-object v0
:cond_17d
const-string/jumbo v3, "visibility"
const/4 v4, 0x2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
goto/16 :goto_7b
:cond_18a
const-string/jumbo v3, "visibility"
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
goto/16 :goto_7b
:cond_192
const-string/jumbo v3, "status"
invoke-static {v3, p2, v2}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
goto/16 :goto_96
:cond_19a
move-object v0, v1
goto :goto_17c
.end method
.method public onCreate()Z
.registers 6
const-string v1, " + Lcom/igexin/download/DownloadProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
new-instance v0, Lcom/igexin/download/b;
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/igexin/download/b;-><init>(Lcom/igexin/download/DownloadProvider;Landroid/content/Context;)V
iput-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "downloads."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
const-string/jumbo v2, "download"
invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v1, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
const-string/jumbo v2, "download/#"
const/4 v3, 0x2
invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v1, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
const-string/jumbo v2, "download/full/item"
const/4 v3, 0x3
invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
invoke-static {v0}, Lcom/igexin/download/Downloads;->setContentUrl(Ljava/lang/String;)V
const-string v1, " - Lcom/igexin/download/DownloadProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
.end method
.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v0, 0x1
:try_start_4
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string/jumbo v1, "_data"
aput-object v1, v2, v0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/igexin/download/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_e9
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_eb
move-result-object v0
if-eqz v0, :cond_4b
:try_start_17
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v1
:goto_1b
if-eq v1, v8, :cond_70
if-nez v1, :cond_4d
new-instance v1, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "No entry for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:catch_39
:try_end_39
.catchall {:try_start_17 .. :try_end_39} :catchall_67
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_39
move-exception v1
:goto_3a
if-eqz v0, :cond_ef
invoke-interface {v0}, Landroid/database/Cursor;->close()V
move-object v0, v6
:goto_40
if-nez v0, :cond_7f
new-instance v0, Ljava/io/FileNotFoundException;
const-string/jumbo v1, "No filename found."
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4b
move v1, v7
goto :goto_1b
:cond_4d
:try_start_4d
new-instance v1, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Multiple items at "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_67
.catchall {:try_start_4d .. :try_end_67} :catchall_67
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_67} :catch_39
:catchall_67
move-exception v1
move-object v6, v0
move-object v0, v1
:goto_6a
if-eqz v6, :cond_6f
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_6f
throw v0
:cond_70
:try_start_70
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v1, 0x0
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_77
.catchall {:try_start_70 .. :try_end_77} :catchall_67
.catch Ljava/lang/Exception; {:try_start_70 .. :try_end_77} :catch_39
move-result-object v1
if-eqz v0, :cond_f2
invoke-interface {v0}, Landroid/database/Cursor;->close()V
move-object v0, v1
goto :goto_40
:cond_7f
invoke-static {v0}, Lcom/igexin/download/h;->a(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8e
new-instance v0, Ljava/io/FileNotFoundException;
const-string/jumbo v1, "Invalid filename."
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8e
const-string/jumbo v1, "r"
invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_bc
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Bad mode for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_bc
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/high16 v0, 0x1000
invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
if-nez v0, :cond_d2
new-instance v0, Ljava/io/FileNotFoundException;
const-string/jumbo v1, "couldn\'t open file"
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d2
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "lastmod"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
invoke-virtual {p0, p1, v1, v6, v6}, Lcom/igexin/download/DownloadProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-object v0
:catchall_e9
move-exception v0
goto :goto_6a
:catch_eb
move-exception v0
move-object v0, v6
goto/16 :goto_3a
:cond_ef
move-object v0, v6
goto/16 :goto_40
:cond_f2
move-object v0, v1
goto/16 :goto_40
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 15
const/4 v2, 0x1
const/4 v5, 0x0
const/4 v3, 0x0
sget-object v0, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
invoke-static {p3, v0}, Lcom/igexin/download/h;->a(Ljava/lang/String;Ljava/util/Set;)V
iget-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
sget-object v4, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v4
packed-switch v4, :pswitch_data_13c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Unknown URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_36
const-string/jumbo v6, "downloads"
invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
:goto_3c
invoke-static {}, Landroid/os/Binder;->getCallingPid()I
move-result v6
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v7
if-eq v6, v7, :cond_139
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v6
if-eqz v6, :cond_139
invoke-static {}, Landroid/os/Process;->supportsProcesses()Z
move-result v6
if-eqz v6, :cond_139
if-nez v2, :cond_5a
const-string/jumbo v2, " AND "
invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
:cond_5a
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "( uid="
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v6, " OR "
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v6, "otheruid"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v6, "="
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v6, " )"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
if-nez p2, :cond_e2
sget-object p2, Lcom/igexin/download/DownloadProvider;->c:[Ljava/lang/String;
move-object v2, p2
:goto_9e
packed-switch v4, :pswitch_data_146
:cond_a1
move-object v3, p3
move-object v4, p4
move-object v6, v5
move-object v7, p5
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
:goto_a9
if-eqz v1, :cond_136
new-instance v0, Lcom/igexin/download/c;
invoke-direct {v0, p0, v1}, Lcom/igexin/download/c;-><init>(Lcom/igexin/download/DownloadProvider;Landroid/database/Cursor;)V
:goto_b0
if-eqz v0, :cond_bd
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:cond_bd
return-object v0
:pswitch_be
const-string/jumbo v6, "downloads"
invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string/jumbo v6, "_id="
invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v6
invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/CharSequence;
invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
move v2, v3
goto/16 :goto_3c
:pswitch_da
const-string/jumbo v6, "downloads"
invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
goto/16 :goto_3c
:cond_e2
move v2, v3
:goto_e3
array-length v6, p2
if-ge v2, v6, :cond_139
sget-object v6, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
aget-object v7, p2, v2
invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_113
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "column "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
aget-object v2, p2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " is not allowed in queries"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_113
add-int/lit8 v2, v2, 0x1
goto :goto_e3
:pswitch_116
if-eqz p4, :cond_a1
array-length v4, p4
if-lez v4, :cond_a1
aget-object v8, p4, v3
array-length v4, p4
add-int/lit8 v6, v4, -0x1
new-array v4, v6, [Ljava/lang/String;
:goto_122
if-ge v3, v6, :cond_12d
add-int/lit8 v7, v3, 0x1
aget-object v7, p4, v7
aput-object v7, v4, v3
add-int/lit8 v3, v3, 0x1
goto :goto_122
:cond_12d
move-object v3, p3
move-object v6, v5
move-object v7, p5
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
goto/16 :goto_a9
:cond_136
move-object v0, v1
goto/16 :goto_b0
:cond_139
move-object v2, p2
goto/16 :goto_9e
:pswitch_data_13c
.packed-switch 0x1
:pswitch_36
:pswitch_be
:pswitch_da
.end packed-switch
:pswitch_data_146
.packed-switch 0x3
:pswitch_116
.end packed-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 12
const/4 v2, 0x0
const/4 v1, 0x1
sget-object v0, Lcom/igexin/download/DownloadProvider;->d:Ljava/util/HashSet;
invoke-static {p3, v0}, Lcom/igexin/download/h;->a(Ljava/lang/String;Ljava/util/Set;)V
iget-object v0, p0, Lcom/igexin/download/DownloadProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v5
invoke-static {}, Landroid/os/Binder;->getCallingPid()I
move-result v0
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v3
if-eq v0, v3, :cond_6f
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v0, "entity"
invoke-static {v0, p2, v3}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v0, "visibility"
invoke-static {v0, p2, v3}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v0, "control"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_15f
const-string/jumbo v4, "control"
invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
move v0, v1
:goto_38
const-string/jumbo v4, "control"
invoke-static {v4, p2, v3}, Lcom/igexin/download/DownloadProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v4, "title"
invoke-static {v4, p2, v3}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
const-string/jumbo v4, "description"
invoke-static {v4, p2, v3}, Lcom/igexin/download/DownloadProvider;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
move-object p2, v3
move v3, v0
:goto_4c
sget-object v0, Lcom/igexin/download/DownloadProvider;->b:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_162
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Cannot update URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6f
move v3, v2
goto :goto_4c
:pswitch_71
if-eqz p3, :cond_157
if-ne v0, v1, :cond_13a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "( "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, " )"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:goto_90
const/4 v6, 0x2
if-ne v0, v6, :cond_15c
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, " ( _id = "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " ) "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_c0
invoke-static {}, Landroid/os/Binder;->getCallingPid()I
move-result v1
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v4
if-eq v1, v4, :cond_110
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
if-eqz v1, :cond_110
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " AND ( uid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " OR "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "otheruid"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " )"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_110
invoke-virtual {p2}, Landroid/content/ContentValues;->size()I
move-result v1
if-lez v1, :cond_11d
const-string/jumbo v1, "downloads"
invoke-virtual {v5, v1, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v2
:cond_11d
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
if-eqz v3, :cond_139
invoke-virtual {p0}, Lcom/igexin/download/DownloadProvider;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v3, Lcom/igexin/download/DownloadService;
invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_139
return v2
:cond_13a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "( "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, " ) AND "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto/16 :goto_90
:cond_157
const-string/jumbo v4, ""
goto/16 :goto_90
:cond_15c
move-object v0, v4
goto/16 :goto_c0
:cond_15f
move v0, v2
goto/16 :goto_38
:pswitch_data_162
.packed-switch 0x1
:pswitch_71
:pswitch_71
.end packed-switch
.end method