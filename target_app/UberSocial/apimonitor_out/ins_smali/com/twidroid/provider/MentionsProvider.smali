.class public Lcom/twidroid/provider/MentionsProvider;
.super Lcom/twidroid/provider/TweetProvider;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "com.twidroid.ubersocial.provider.Mentions"
.field public static final b:Landroid/net/Uri;
.field private static final h:Landroid/content/UriMatcher;
.method static constructor <clinit>()V
.registers 4
const-string v0, "content://com.twidroid.ubersocial.provider.Mentions/tweets"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/twidroid/provider/MentionsProvider;->b:Landroid/net/Uri;
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lcom/twidroid/provider/MentionsProvider;->h:Landroid/content/UriMatcher;
sget-object v0, Lcom/twidroid/provider/MentionsProvider;->h:Landroid/content/UriMatcher;
const-string v1, "com.twidroid.ubersocial.provider.Mentions"
const-string v2, "tweets"
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lcom/twidroid/provider/MentionsProvider;->h:Landroid/content/UriMatcher;
const-string v1, "com.twidroid.ubersocial.provider.Mentions"
const-string v2, "tweets/#"
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/provider/TweetProvider;-><init>()V
return-void
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 14
const/4 v5, 0x0
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/provider/MentionsProvider;->g:Lcom/twidroid/b/a/c;
invoke-virtual {v1}, Lcom/twidroid/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/provider/MentionsProvider;->f:Landroid/database/sqlite/SQLiteDatabase;
sget-object v1, Lcom/twidroid/provider/MentionsProvider;->h:Landroid/content/UriMatcher;
invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v1
packed-switch v1, :pswitch_data_ae
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
sget-object v1, Lcom/twidroid/provider/MentionsProvider;->e:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
const-string v1, "type=2"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
:goto_3f
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_ac
const-string v7, "created_at desc"
:goto_47
iget-object v1, p0, Lcom/twidroid/provider/MentionsProvider;->f:Landroid/database/sqlite/SQLiteDatabase;
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, v5
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/provider/MentionsProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
return-object v0
:pswitch_5d
const-string v1, "tweetcache"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/provider/MentionsProvider;->e:Ljava/util/HashMap;
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
const-string v2, "=1 and deleted=0 and "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "type"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
goto :goto_3f
:cond_ac
move-object v7, p5
goto :goto_47
:pswitch_data_ae
.packed-switch 0x1
:pswitch_30
:pswitch_5d
.end packed-switch
.end method