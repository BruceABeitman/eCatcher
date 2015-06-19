.class public Lcom/twidroid/provider/TweetProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"
.field private static final a:Landroid/content/UriMatcher; = null
.field public static final c:Ljava/lang/String; = "com.twidroid.ubersocial.provider.Tweet"
.field public static final d:Landroid/net/Uri;
.field protected static e:Ljava/util/HashMap;
.field protected f:Landroid/database/sqlite/SQLiteDatabase;
.field protected g:Lcom/twidroid/b/a/c;
.method static constructor <clinit>()V
.registers 4
const-string v0, "content://com.twidroid.ubersocial.provider.Tweet/tweets"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/twidroid/provider/TweetProvider;->d:Landroid/net/Uri;
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lcom/twidroid/provider/TweetProvider;->a:Landroid/content/UriMatcher;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->a:Landroid/content/UriMatcher;
const-string v1, "com.twidroid.ubersocial.provider.Tweet"
const-string v2, "tweets"
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lcom/twidroid/provider/TweetProvider;->a:Landroid/content/UriMatcher;
const-string v1, "com.twidroid.ubersocial.provider.Tweet"
const-string v2, "tweets/#"
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "id"
const-string v2, "id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "message"
const-string v2, "message"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "created_at"
const-string v2, "created_at"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "is_public"
const-string v2, "is_public"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "tsource"
const-string v2, "tsource"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "favorite"
const-string v2, "favorite"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "user_name"
const-string v2, "user_name"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "user_screenname"
const-string v2, "user_screenname"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "user_avatar"
const-string v2, "user_avatar"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "sender_id"
const-string v2, "sender_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "retweeted_status_id"
const-string v2, "retweeted_status_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
const-string v1, "target_user_id"
const-string v2, "target_user_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/twidroid/provider/TweetProvider;->a:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
packed-switch v0, :pswitch_data_28
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown URI "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_22
const-string v0, "vnd.android.cursor.dir/vnd.twidroid.tweet"
:goto_24
return-object v0
:pswitch_25
const-string v0, "vnd.android.cursor.item/vnd.twidroid.tweet"
goto :goto_24
:pswitch_data_28
.packed-switch 0x1
:pswitch_22
:pswitch_25
.end packed-switch
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lcom/twidroid/provider/TweetProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/b/a/c;
invoke-virtual {p0}, Lcom/twidroid/provider/TweetProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/twidroid/b/a/c;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/provider/TweetProvider;->g:Lcom/twidroid/b/a/c;
iget-object v0, p0, Lcom/twidroid/provider/TweetProvider;->g:Lcom/twidroid/b/a/c;
if-nez v0, :cond_11
const/4 v0, 0x0
:goto_10
move v2, v0
const-string v1, " - Lcom/twidroid/provider/TweetProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_11
const/4 v0, 0x1
goto :goto_10
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 14
const/4 v5, 0x0
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/provider/TweetProvider;->g:Lcom/twidroid/b/a/c;
invoke-virtual {v1}, Lcom/twidroid/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/provider/TweetProvider;->f:Landroid/database/sqlite/SQLiteDatabase;
sget-object v1, Lcom/twidroid/provider/TweetProvider;->a:Landroid/content/UriMatcher;
invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v1
packed-switch v1, :pswitch_data_98
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown URI "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_30
const-string v1, "tweetcache"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
:goto_3a
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_96
const-string v7, "created_at desc"
:goto_42
iget-object v1, p0, Lcom/twidroid/provider/TweetProvider;->f:Landroid/database/sqlite/SQLiteDatabase;
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, v5
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/provider/TweetProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
return-object v0
:pswitch_58
const-string v1, "tweetcache"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/provider/TweetProvider;->e:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
const/4 v3, 0x1
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " and "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "is_public"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "=1 and deleted=0"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
goto :goto_3a
:cond_96
move-object v7, p5
goto :goto_42
:pswitch_data_98
.packed-switch 0x1
:pswitch_30
:pswitch_58
.end packed-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
return v0
.end method