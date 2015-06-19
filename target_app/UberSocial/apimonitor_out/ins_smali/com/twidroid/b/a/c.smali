.class public Lcom/twidroid/b/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"
.field public static final A:Ljava/lang/String; = "create table ubconfig (_id integer primary key AUTOINCREMENT, tabid integer DEFAULT -1,fixed integer DEFAULT 0,hidden integer DEFAULT 0,param string DEFAULT \'\',caption string DEFAULT \'\',type integer default 0,themeitem integer default 0,iconUrl text, icon integer default 0,position integer not null default 0);"
.field static final B:Ljava/lang/String; = "_id"
.field static final C:Ljava/lang/String; = "state"
.field static final D:Ljava/lang/String; = "productId"
.field static final E:Ljava/lang/String; = "purchaseTime"
.field static final F:Ljava/lang/String; = "developerPayload"
.field static final G:Ljava/lang/String; = "_id"
.field static final H:Ljava/lang/String; = "quantity"
.field private static final I:Ljava/lang/String; = "UTDatabaseOpenHelper"
.field private static final J:Ljava/lang/String; = "create table innercircletweets (id  integer  primary key, sender_id int DEFAULT 0, message text DEFAULT \'\', created_at integer DEFAULT 0,  is_public int(11) DEFAULT 1, verified int(11) DEFAULT 0, deleted int(11) DEFAULT 0,in_reply_to_user_id  integer default 0, in_reply_to_status_id  integer default 0,tsource text DEFAULT \'\', purge int(11) DEFAULT 0,favorite  integer default 0, user_name text DEFAULT \'\',user_screenname text DEFAULT \'\',user_avatar text DEFAULT \'\',reply_user text DEFAULT \'\', preview_url text DEFAULT \'\', account int(11) DEFAULT -1, col text, readflag1 int(11) DEFAULT 0, retweet_count int(11) DEFAULT 0, is_mention int(1) DEFAULT 0, latitude REAL DEFAULT 0, longitude REAL default 0, retweeted_status_id integer default 0,retweeted_username text DEFAULT \'\', retweeted_screenname text DEFAULT \'\');"
.field private static final K:Ljava/lang/String; = "create table innercircledm (id integer primary key, sender_id int DEFAULT 0, message text DEFAULT \'\', created_at integer DEFAULT 0,  is_outbox int(11) DEFAULT 0, deleted int(11) DEFAULT 0,tsource text DEFAULT \'\', purge int(11) DEFAULT 0, user_name text DEFAULT \'\',user_screenname text DEFAULT \'\',user_avatar text DEFAULT \'\' ,recipient_userscreenname text DEFAULT \'\', recipient_id int DEFAULT 0 ,recipient_username text DEFAULT \'\', recipient_avatar text DEFAULT \'\', preview_url text DEFAULT \'\', account int(11) DEFAULT -1, readflag1 int(11) DEFAULT 0);"
.field private static final L:Ljava/lang/String; = "create table fbcache (id text primary key, fromId text DEFAULT \'\', fromName text DEFAULT \'\', message text DEFAULT \'\', pictureUrl text DEFAULT \'\', thumbnailPictureUrl text DEFAULT \'\', normalPictureUrl text DEFAULT \'\', albumPictureUrl text DEFAULT \'\', link text DEFAULT \'\', linkName text DEFAULT \'\', linkDescription text DEFAULT \'\', commentsCount integer DEFAULT 0,  likesCount integer DEFAULT 0,  createdTime integer DEFAULT 0, type text DEFAULT \'\', linkCaption text DEFAULT \'\', story text DEFAULT \'\');"
.field private static final M:Ljava/lang/String; = "create table tweetcache (id integer primary key, sender_id int DEFAULT 0, message text DEFAULT \'\', created_at integer DEFAULT 0, deleted int(11) DEFAULT 0, tsource text DEFAULT \'\', purge int(11) DEFAULT 0, user_name text DEFAULT \'\', user_screenname text DEFAULT \'\', user_avatar text DEFAULT \'\', preview_url text DEFAULT \'\', account int(11) DEFAULT -1, readflag int(11) DEFAULT 0, type int DEFAULT 0, favorite  integer default 0, target_user_id  integer default 0, target_screenname text DEFAULT \'\', target_username text DEFAULT \'\', in_reply_to_status_id  integer default 0, is_public int(11) DEFAULT 1, verified int(11) DEFAULT 0, retweet_count int(11) DEFAULT 0, latitude REAL DEFAULT 0, longitude REAL default 0, location_name text DEFAULT \'\', retweeted_status_id integer default 0, retweeted_username text DEFAULT \'\', is_outbox int(11) DEFAULT 0, target_avatar text DEFAULT \'\',spans text default \'\', retweeted_screenname text DEFAULT \'\', is_inner_circle integer default 0);"
.field private static final N:Ljava/lang/String; = "CREATE INDEX tweetcache1 ON tweetcache (created_at);"
.field private static final O:Ljava/lang/String; = "CREATE INDEX tweetcache2 ON tweetcache (is_public);"
.field private static final P:Ljava/lang/String; = "CREATE INDEX tweetcache3 ON tweetcache (deleted);"
.field private static final Q:Ljava/lang/String; = "CREATE INDEX tweetcache5 ON tweetcache (account);"
.field private static final R:Ljava/lang/String; = "CREATE INDEX tweetcache6 ON tweetcache (type);"
.field private static final S:Ljava/lang/String; = "CREATE INDEX tweetcache7 ON tweetcache (sender_id);"
.field private static final T:Ljava/lang/String; = "create table column_state (timeline text not null, account_id integer not null, message_id integer not null, timestamp integer not null, yPos integer DEFAULT 0, PRIMARY KEY (timeline,account_id));"
.field private static final U:Ljava/lang/String; = "create table gaps (timeline text not null, account_id integer not null, prev_id integer default -1, next_id integer default -1, prev_timestamp integer default -1, next_timestamp integer default -1, PRIMARY KEY (timeline,account_id));"
.field private static final V:Ljava/lang/String; = "create table counters (timeline text not null, total_new integer not null, uncached integer not null);"
.field private static final W:Ljava/lang/String; = "alter table accounts add column is_verified integer default \'0\';"
.field private static final X:Ljava/lang/String; = "alter table accounts add column selectedaccount integer default \'0\';"
.field private static final Y:Ljava/lang/String; = "alter table subscribedlists add column subscriber_count integer default \'0\';"
.field private static final Z:Ljava/lang/String; = "alter table subscribedlists add column member_count integer default \'0\';"
.field public static final a:Ljava/lang/String; = "fbcache"
.field private static final aa:Ljava/lang/String; = "alter table ubconfig add column themeitem integer default \'0\';"
.field private static final ab:Ljava/lang/String; = "alter table ubconfig add column icon integer default \'0\';"
.field private static final ac:Ljava/lang/String; = "alter table followers add column is_in_circle int DEFAULT 0;"
.field private static final ad:Ljava/lang/String; = "alter table tweetcache add column retweeted_screenname text DEFAULT \'\';"
.field private static final ae:Ljava/lang/String; = "alter table tweetcache add column is_inner_circle integer default 0;"
.field private static final af:Ljava/lang/String; = "alter table followers add column isfollower int DEFAULT \'0\';"
.field private static final ag:Ljava/lang/String; = "alter table accounts add column avatar_url text DEFAULT \'\';"
.field private static final ah:Ljava/lang/String; = "alter table muted add column avatar_url text DEFAULT \'\';"
.field private static final ai:Ljava/lang/String; = "alter table muted add column sync integer default 0;"
.field private static final aj:Ljava/lang/String; = "history"
.field private static final ak:Ljava/lang/String; = "purchased"
.field private static final al:[Ljava/lang/String; = null
.field private static final am:[Ljava/lang/String; = null
.field public static final b:Ljava/lang/String; = "followers"
.field public static final c:Ljava/lang/String; = "muted"
.field public static final d:Ljava/lang/String; = "twitdroid"
.field public static final e:I = 0x22
.field public static final f:Ljava/lang/String; = "accounts"
.field public static final g:Ljava/lang/String; = "outbox"
.field public static final h:Ljava/lang/String; = "hashtags"
.field public static final i:Ljava/lang/String; = "ubconfig"
.field public static final j:Ljava/lang/String; = "innercircletemp"
.field public static final k:Ljava/lang/String; = "innercircletweets"
.field public static final l:Ljava/lang/String; = "innercircledm"
.field public static final m:Ljava/lang/String; = "tweetcache"
.field public static final n:Ljava/lang/String; = "gaps"
.field public static final o:Ljava/lang/String; = "column_state"
.field public static final p:Ljava/lang/String; = "counters"
.field public static final q:Ljava/lang/String; = "settings"
.field public static final r:Ljava/lang/String; = "create table followers (_id integer primary key, name text DEFAULT \'\', screenname text DEFAULT \'\',location text DEFAULT \'\', description text DEFAULT \'\', profileimageurl text DEFAULT \'\',  url text DEFAULT \'\',lastupdate integer default \'0\',dirty integer default \'0\',device_updates integer default \'0\', account int(11) DEFAULT -1,is_in_circle int DEFAULT 0,isfollower int DEFAULT 0);"
.field public static final s:Ljava/lang/String; = "create table muted (_id integer primary key AUTOINCREMENT, screen_name text DEFAULT \'\',muted_until integer default 0,avatar_url text DEFAULT \'\',sync integer default 0,account_id integer NOT NULL default 0,UNIQUE(screen_name, account_id));"
.field public static final t:Ljava/lang/String; = "create table accounts(id integer primary key, username text DEFAULT \'\', password text DEFAULT \'\',apiurl text DEFAULT \'\', enablessl integer default \'0\', user_id integer default \'0\', defaultaccount integer default \'0\', rememberme integer default \'1\', is_protected integer default \'0\', is_activated  integer default \'0\', is_verified integer default \'0\', selectedaccount integer default \'0\', tweet_id integer default \'0\', mention_id integer default \'0\', direct_id integer default \'0\', oauth_token text DEFAULT \'\', oauth_secret text DEFAULT \'\', enable_notifications integer default \'1\',avatar_url text DEFAULT \'\');"
.field public static final u:Ljava/lang/String; = "create table outbox (id integer primary key AUTOINCREMENT, message text DEFAULT \'\', mediaurl text DEFAULT \'\', errormessage text DEFAULT \'\',  account integer default \'0\', latitude REAL DEFAULT 0, longitude REAL default 0, messagetype int DEFAULT 0, place_id int DEFAULT 0);"
.field public static final v:Ljava/lang/String; = "create table hashtags (id integer primary key AUTOINCREMENT, hashtag text UNIQUE DEFAULT \'\');"
.field public static final w:Ljava/lang/String; = "create table savedsearches (id integer primary key AUTOINCREMENT, searchstring text DEFAULT \'\',  nearbysearch integer default \'0\',  enablealert integer default \'0\', account int(11) DEFAULT -1, remote_id int(11)  UNIQUE DEFAULT -1 );"
.field public static final x:Ljava/lang/String; = "create table settings (vkey text primary key , valtext text DEFAULT \'\', valnumber integer default \'0\');"
.field public static final y:Ljava/lang/String; = "create table subscribedlists (uri text primary key, listowner text DEFAULT \'\',  account int(11) DEFAULT -1,listname text DEFAULT \'\',  imageurl text DEFAULT \'\',  is_public integer default \'0\',  subscriber_count int(11) DEFAULT 0,member_count int(11) DEFAULT 0,enablenotification integer default \'0\' );"
.field public static final z:Ljava/lang/String; = "create table innercircletemp (id integer primary key, sender_id integer DEFAULT 0, in_reply_to_status_id integer default 0);"
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v0, v3
const-string v1, "productId"
aput-object v1, v0, v4
const-string v1, "state"
aput-object v1, v0, v5
const/4 v1, 0x3
const-string v2, "purchaseTime"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "developerPayload"
aput-object v2, v0, v1
sput-object v0, Lcom/twidroid/b/a/c;->al:[Ljava/lang/String;
new-array v0, v5, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v0, v3
const-string v1, "quantity"
aput-object v1, v0, v4
sput-object v0, Lcom/twidroid/b/a/c;->am:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const-string v0, "twitdroid"
const/4 v1, 0x0
const/16 v2, 0x22
invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "DROP TABLE muted;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "create table muted (_id integer primary key AUTOINCREMENT, screen_name text DEFAULT \'\',muted_until integer default 0,avatar_url text DEFAULT \'\',sync integer default 0,account_id integer NOT NULL default 0,UNIQUE(screen_name, account_id));"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
:try_start_0
const-string v0, "alter table muted add column sync integer default 0;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "UTDatabaseOpenHelper"
const-string v2, "error adding sync flag to mutes: "
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
:try_start_0
const-string v0, "alter table followers add column isfollower int DEFAULT \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "UTDatabaseOpenHelper"
const-string v2, "error adding isFollower: "
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
:try_start_0
const-string v0, "alter table accounts add column avatar_url text DEFAULT \'\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "UTDatabaseOpenHelper"
const-string v2, "error adding avatar: "
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
:try_start_0
const-string v0, "alter table muted add column avatar_url text DEFAULT \'\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "UTDatabaseOpenHelper"
const-string v2, "error adding avatar to muted: "
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table subscribedlists ;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table subscribedlists (uri text primary key, listowner text DEFAULT \'\',  account int(11) DEFAULT -1,listname text DEFAULT \'\',  imageurl text DEFAULT \'\',  is_public integer default \'0\',  subscriber_count int(11) DEFAULT 0,member_count int(11) DEFAULT 0,enablenotification integer default \'0\' );"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table muted ;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table muted (_id integer primary key AUTOINCREMENT, screen_name text DEFAULT \'\',muted_until integer default 0,avatar_url text DEFAULT \'\',sync integer default 0,account_id integer NOT NULL default 0,UNIQUE(screen_name, account_id));"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table settings ;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table settings (vkey text primary key , valtext text DEFAULT \'\', valnumber integer default \'0\');"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table hashtags;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_10
const-string v0, "create table hashtags (id integer primary key AUTOINCREMENT, hashtag text UNIQUE DEFAULT \'\');"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
goto :goto_a
:catch_10
move-exception v0
goto :goto_5
.end method
.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table outbox;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_10
const-string v0, "create table outbox (id integer primary key AUTOINCREMENT, message text DEFAULT \'\', mediaurl text DEFAULT \'\', errormessage text DEFAULT \'\',  account integer default \'0\', latitude REAL DEFAULT 0, longitude REAL default 0, messagetype int DEFAULT 0, place_id int DEFAULT 0);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
goto :goto_a
:catch_10
move-exception v0
goto :goto_5
.end method
.method private k(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table accounts;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table accounts(id integer primary key, username text DEFAULT \'\', password text DEFAULT \'\',apiurl text DEFAULT \'\', enablessl integer default \'0\', user_id integer default \'0\', defaultaccount integer default \'0\', rememberme integer default \'1\', is_protected integer default \'0\', is_activated  integer default \'0\', is_verified integer default \'0\', selectedaccount integer default \'0\', tweet_id integer default \'0\', mention_id integer default \'0\', direct_id integer default \'0\', oauth_token text DEFAULT \'\', oauth_secret text DEFAULT \'\', enable_notifications integer default \'1\',avatar_url text DEFAULT \'\');"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private l(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table followers;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table followers (_id integer primary key, name text DEFAULT \'\', screenname text DEFAULT \'\',location text DEFAULT \'\', description text DEFAULT \'\', profileimageurl text DEFAULT \'\',  url text DEFAULT \'\',lastupdate integer default \'0\',dirty integer default \'0\',device_updates integer default \'0\', account int(11) DEFAULT -1,is_in_circle int DEFAULT 0,isfollower int DEFAULT 0);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private m(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table tweetcache;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2b
const-string v0, "create table tweetcache (id integer primary key, sender_id int DEFAULT 0, message text DEFAULT \'\', created_at integer DEFAULT 0, deleted int(11) DEFAULT 0, tsource text DEFAULT \'\', purge int(11) DEFAULT 0, user_name text DEFAULT \'\', user_screenname text DEFAULT \'\', user_avatar text DEFAULT \'\', preview_url text DEFAULT \'\', account int(11) DEFAULT -1, readflag int(11) DEFAULT 0, type int DEFAULT 0, favorite  integer default 0, target_user_id  integer default 0, target_screenname text DEFAULT \'\', target_username text DEFAULT \'\', in_reply_to_status_id  integer default 0, is_public int(11) DEFAULT 1, verified int(11) DEFAULT 0, retweet_count int(11) DEFAULT 0, latitude REAL DEFAULT 0, longitude REAL default 0, location_name text DEFAULT \'\', retweeted_status_id integer default 0, retweeted_username text DEFAULT \'\', is_outbox int(11) DEFAULT 0, target_avatar text DEFAULT \'\',spans text default \'\', retweeted_screenname text DEFAULT \'\', is_inner_circle integer default 0);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache1 ON tweetcache (created_at);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache2 ON tweetcache (is_public);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache3 ON tweetcache (deleted);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache5 ON tweetcache (account);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache6 ON tweetcache (type);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache7 ON tweetcache (sender_id);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_28
:try_end_28
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_28} :catch_29
return-void
:catch_29
move-exception v0
goto :goto_28
:catch_2b
move-exception v0
goto :goto_5
.end method
.method private n(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table column_state;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table column_state (timeline text not null, account_id integer not null, message_id integer not null, timestamp integer not null, yPos integer DEFAULT 0, PRIMARY KEY (timeline,account_id));"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table gaps;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table gaps (timeline text not null, account_id integer not null, prev_id integer default -1, next_id integer default -1, prev_timestamp integer default -1, next_timestamp integer default -1, PRIMARY KEY (timeline,account_id));"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private p(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table savedsearches;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table savedsearches (id integer primary key AUTOINCREMENT, searchstring text DEFAULT \'\',  nearbysearch integer default \'0\',  enablealert integer default \'0\', account int(11) DEFAULT -1, remote_id int(11)  UNIQUE DEFAULT -1 );"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private q(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table ubconfig ;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
const-string v0, "create table ubconfig (_id integer primary key AUTOINCREMENT, tabid integer DEFAULT -1,fixed integer DEFAULT 0,hidden integer DEFAULT 0,param string DEFAULT \'\',caption string DEFAULT \'\',type integer default 0,themeitem integer default 0,iconUrl text, icon integer default 0,position integer not null default 0);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
goto :goto_a
:catch_d
move-exception v0
goto :goto_5
.end method
.method private r(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table fbcache;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b
const-string v0, "create table fbcache (id text primary key, fromId text DEFAULT \'\', fromName text DEFAULT \'\', message text DEFAULT \'\', pictureUrl text DEFAULT \'\', thumbnailPictureUrl text DEFAULT \'\', normalPictureUrl text DEFAULT \'\', albumPictureUrl text DEFAULT \'\', link text DEFAULT \'\', linkName text DEFAULT \'\', linkDescription text DEFAULT \'\', commentsCount integer DEFAULT 0,  likesCount integer DEFAULT 0,  createdTime integer DEFAULT 0, type text DEFAULT \'\', linkCaption text DEFAULT \'\', story text DEFAULT \'\');"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5
:catch_10
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method private s(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
:try_start_0
const-string v0, "drop table counters;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_b
const-string v0, "create table counters (timeline text not null, total_new integer not null, uncached integer not null);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_end_a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5
:catch_10
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method private t(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
:try_start_0
const-string v0, "drop table innercircletemp;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_15
const-string v0, "drop table innercircletweets;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_a
:try_start_a
:try_end_a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1a
const-string v0, "drop table innercircledm;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_f
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1f
const-string v0, "alter table tweetcache add column is_inner_circle integer default 0;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_24
return-void
:catch_15
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5
:catch_1a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
:catch_1f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_f
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_14
.end method
.method private u(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
const-string v0, "CREATE TABLE history(_id TEXT PRIMARY KEY, state INTEGER, productId TEXT, developerPayload TEXT, purchaseTime INTEGER)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE TABLE purchased(_id TEXT PRIMARY KEY, quantity INTEGER)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/twidroid/b/a/c; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->k(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->h(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->p(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->f(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->l(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->j(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->g(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->q(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->m(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->r(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->n(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->o(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->s(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->u(Landroid/database/sqlite/SQLiteDatabase;)V
const-string v1, " - Lcom/twidroid/b/a/c; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 11
const/4 v6, 0x0
const/16 v5, 0x13
const/16 v4, 0x11
const/16 v2, 0x10
const/4 v3, 0x0
const/16 v0, 0x9
if-ge p2, v0, :cond_f
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->f(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_f
const/16 v0, 0xa
if-ge p2, v0, :cond_1d
const-string v0, "alter table accounts add column is_verified integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "alter table accounts add column selectedaccount integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_1d
const/16 v0, 0xd
if-ge p2, v0, :cond_24
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->q(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_24
const/16 v0, 0xe
if-ge p2, v0, :cond_32
:try_start_28
const-string v0, "alter table subscribedlists add column subscriber_count integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "alter table subscribedlists add column member_count integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_32
:cond_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_1cc
const/16 v0, 0xf
if-ge p2, v0, :cond_40
:try_start_36
const-string v0, "alter table ubconfig add column themeitem integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "alter table ubconfig add column icon integer default \'0\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_40
:try_end_40
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_1c9
:cond_40
if-ge p2, v2, :cond_42
:cond_42
if-ge p2, v4, :cond_49
:try_start_44
const-string v0, "alter table followers add column is_in_circle int DEFAULT 0;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_49
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_16f
:cond_49
:goto_49
if-ge p2, v5, :cond_95
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string v1, "_id"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "tabid"
const/16 v2, 0x12
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "fixed"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "hidden"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "caption"
const-string v2, "Inner Circle"
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "type"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "themeitem"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "ubconfig"
invoke-virtual {p1, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:cond_95
const/16 v0, 0x15
if-ge p2, v0, :cond_9c
:try_start_99
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->q(Landroid/database/sqlite/SQLiteDatabase;)V
:goto_9c
:try_end_9c
.catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_17e
:cond_9c
const/16 v0, 0x1a
if-ge p2, v0, :cond_b6
const-string v0, "UTDatabaseOpenHelper"
const-string v1, "upgrading to ver 26"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->m(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->r(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->n(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->o(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->s(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_b6
const/16 v0, 0x1b
if-ge p2, v0, :cond_bd
:try_start_ba
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->m(Landroid/database/sqlite/SQLiteDatabase;)V
:goto_bd
:try_end_bd
.catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_18d
:cond_bd
const/16 v0, 0x1c
if-ge p2, v0, :cond_c6
:try_start_c1
const-string v0, "alter table tweetcache add column retweeted_screenname text DEFAULT \'\';"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_c6
.catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_19c
:goto_c6
:cond_c6
const/16 v0, 0x1d
if-ge p2, v0, :cond_e3
:try_start_ca
const-string v0, "CREATE INDEX tweetcache1 ON tweetcache (created_at);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache2 ON tweetcache (is_public);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache3 ON tweetcache (deleted);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache5 ON tweetcache (account);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "CREATE INDEX tweetcache6 ON tweetcache (type);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_e3
.catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e3} :catch_1ab
:cond_e3
:goto_e3
const/16 v0, 0x1e
if-ge p2, v0, :cond_ef
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->t(Landroid/database/sqlite/SQLiteDatabase;)V
:try_start_ea
const-string v0, "CREATE INDEX tweetcache7 ON tweetcache (sender_id);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_ef
:goto_ef
:try_end_ef
.catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ef} :catch_1ba
const/16 v0, 0x1f
if-ge p2, v0, :cond_fc
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->e(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_fc
const/16 v0, 0x20
if-ge p2, v0, :cond_160
const-string v0, "ALTER TABLE ubconfig ADD COLUMN position INTEGER NOT NULL DEFAULT 0;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "UPDATE ubconfig SET position=_id;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v0, "UPDATE ubconfig SET position=(position+1) WHERE position>3;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string v1, "_id"
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "tabid"
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "fixed"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "hidden"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "caption"
const-string v2, "Video Stream"
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "type"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "themeitem"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "position"
const/4 v2, 0x4
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "ubconfig"
invoke-virtual {p1, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:cond_160
const/16 v0, 0x21
if-ge p2, v0, :cond_167
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_167
const/16 v0, 0x22
if-ge p2, v0, :cond_16e
invoke-direct {p0, p1}, Lcom/twidroid/b/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_16e
return-void
:catch_16f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_49
:catch_17e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9c
:catch_18d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_bd
:catch_19c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_c6
:catch_1ab
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_e3
:catch_1ba
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "UTDatabaseOpenHelper"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_ef
:catch_1c9
move-exception v0
goto/16 :goto_40
:catch_1cc
move-exception v0
goto/16 :goto_32
.end method