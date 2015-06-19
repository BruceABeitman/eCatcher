.class public Lcom/twidroid/model/twitter/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/provider/BaseColumns;
.implements Lcom/ubermedia/net/b/d;
.field public static final a:Ljava/lang/String; = "api.twitter.com/1.1"
.field static final b:Ljava/lang/String; = "TwitterAccount"
.field static final c:Ljava/lang/String; = "accounts"
.field public static final e:Ljava/lang/String; = "create table accounts (id integer primary key, username text DEFAULT \'\', password text DEFAULT \'\',apiurl text DEFAULT \'\', enablessl integer default \'0\', user_id integer default \'0\', defaultaccount integer default \'0\', rememberme integer default \'1\', is_protected integer default \'0\', is_activated  integer default \'0\', is_verified integer default \'0\', selectedaccount integer default \'0\', tweet_id integer default \'0\', mention_id integer default \'0\', direct_id integer default \'0\', oauth_token text DEFAULT \'\', oauth_secret text DEFAULT \'\', enable_notifications integer default \'1\',avatar_url text DEFAULT \'\');"
.field private static t:Ljava/util/HashMap;
.field private static final u:[Ljava/lang/String;
.field  d:Z
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:J
.field private l:Z
.field private m:Z
.field private n:Z
.field private o:Z
.field private p:Z
.field private q:Z
.field private r:Ljava/lang/String;
.field private s:I
.field private transient v:Ljavax/crypto/spec/SecretKeySpec;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "username"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "password"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "apiurl"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "enablessl"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "user_id"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "defaultaccount"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "rememberme"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "oauth_token"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "oauth_secret"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_protected"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "enable_notifications"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_verified"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "selectedaccount"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "avatar_url"
aput-object v2, v0, v1
sput-object v0, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "id"
const-string v2, "id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "username"
const-string v2, "username"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "password"
const-string v2, "password"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "apiurl"
const-string v2, "apiurl"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "defaultaccount"
const-string v2, "defaultaccount"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "enablessl"
const-string v2, "enablessl"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "user_id"
const-string v2, "user_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "rememberme"
const-string v2, "rememberme"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "oauth_token"
const-string v2, "oauth_token"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "oauth_secret"
const-string v2, "oauth_secret"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "oauth_secret"
const-string v2, "oauth_secret"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "tweet_id"
const-string v2, "tweet_id"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "is_protected"
const-string v2, "is_protected"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "is_verified"
const-string v2, "is_verified"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "selectedaccount"
const-string v2, "selectedaccount"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "enable_notifications"
const-string v2, "enable_notifications"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
const-string v1, "avatar_url"
const-string v2, "avatar_url"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->d:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
return-void
.end method
.method public constructor <init>(Landroid/database/Cursor;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v3, -0x1
iput-wide v3, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v0
int-to-long v3, v0
invoke-virtual {p0, v3, v4}, Lcom/twidroid/model/twitter/c;->b(J)V
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->l:Z
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
int-to-long v3, v0
iput-wide v3, p0, Lcom/twidroid/model/twitter/c;->k:J
const/4 v0, 0x6
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_9b
move v0, v1
:goto_5d
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->d:Z
const/4 v0, 0x7
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_9d
move v0, v1
:goto_67
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->m:Z
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
const/16 v0, 0xa
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_9f
move v0, v1
:goto_82
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
const/16 v0, 0xb
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_a1
:goto_8c
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->o:Z
const-string v0, "avatar_url"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
return-void
:cond_9b
move v0, v2
goto :goto_5d
:cond_9d
move v0, v2
goto :goto_67
:cond_9f
move v0, v2
goto :goto_82
:cond_a1
move v1, v2
goto :goto_8c
.end method
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
const-string v0, ""
invoke-virtual {p0, p1, v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v1
if-lez v1, :cond_39
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
invoke-direct {p0, v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/Cursor;)V
:cond_39
invoke-interface {v0}, Landroid/database/Cursor;->close()V
return-void
.end method
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;I)V
.registers 11
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "id="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v7, ""
move-object v1, p1
move-object v5, v4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_5e
invoke-direct {p0, v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/Cursor;)V
:cond_5e
invoke-interface {v0}, Landroid/database/Cursor;->close()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.registers 16
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean p4, p0, Lcom/twidroid/model/twitter/c;->d:Z
iput-wide p5, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-object p7, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
iput-object p8, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
iput-boolean p9, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean p10, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-object p11, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "api.twitter.com/1.1"
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->l:Z
iput-boolean v3, p0, Lcom/twidroid/model/twitter/c;->m:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->p:Z
iput-boolean v2, p0, Lcom/twidroid/model/twitter/c;->q:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
iput v2, p0, Lcom/twidroid/model/twitter/c;->s:I
:try_start_27
const-string v0, "user_id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
const-string v0, "username"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const-string v0, "password"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const-string v0, "apiurl"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->l:Z
const-string v0, "defaultAccount"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->d:Z
:try_end_5e
.catch Lorg/json/JSONException; {:try_start_27 .. :try_end_5e} :catch_9f
:goto_5e
:try_start_5e
const-string v0, "oauth_token"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6e
const-string v0, "oauth_token"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
:cond_6e
const-string v0, "oauth_secret"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7e
const-string v0, "oauth_secret"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
:goto_7e
:cond_7e
:try_start_7e
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7e} :catch_a8
const-string v0, "is_protected"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8e
const-string v0, "is_protected"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
:goto_8e
:try_start_8e
:cond_8e
:try_end_8e
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8e} :catch_a6
const-string v0, "is_activated"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9e
const-string v0, "is_activated"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->o:Z
:goto_9e
:try_end_9e
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9e} :catch_a4
:cond_9e
return-void
:catch_9f
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_5e
:catch_a4
move-exception v0
goto :goto_9e
:catch_a6
move-exception v0
goto :goto_8e
:catch_a8
move-exception v0
goto :goto_7e
.end method
.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
.registers 10
const/4 v3, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const-string v7, ""
move-object v1, p0
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v1
if-lez v1, :cond_38
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
:cond_2a
new-instance v1, Lcom/twidroid/model/twitter/c;
invoke-direct {v1, v0}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/Cursor;)V
invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-nez v1, :cond_2a
:cond_38
invoke-interface {v0}, Landroid/database/Cursor;->close()V
return-object v8
.end method
.method private a(Landroid/database/Cursor;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v0
int-to-long v3, v0
invoke-virtual {p0, v3, v4}, Lcom/twidroid/model/twitter/c;->b(J)V
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->l:Z
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
int-to-long v3, v0
iput-wide v3, p0, Lcom/twidroid/model/twitter/c;->k:J
const/4 v0, 0x6
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_6e
move v0, v1
:goto_30
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->d:Z
const/4 v0, 0x7
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_70
move v0, v1
:goto_3a
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->m:Z
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
const/16 v0, 0xa
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_72
move v0, v1
:goto_55
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
const/16 v0, 0xb
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-lez v0, :cond_74
:goto_5f
iput-boolean v1, p0, Lcom/twidroid/model/twitter/c;->o:Z
const-string v0, "avatar_url"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
return-void
:cond_6e
move v0, v2
goto :goto_30
:cond_70
move v0, v2
goto :goto_3a
:cond_72
move v0, v2
goto :goto_55
:cond_74
move v1, v2
goto :goto_5f
.end method
.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
.registers 10
const/4 v4, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const-string v3, "enable_notifications=0"
const-string v7, ""
move-object v1, p0
move-object v5, v4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v1
if-lez v1, :cond_39
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
:cond_2b
new-instance v1, Lcom/twidroid/model/twitter/c;
invoke-direct {v1, v0}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/Cursor;)V
invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-nez v1, :cond_2b
:cond_39
invoke-interface {v0}, Landroid/database/Cursor;->close()V
return-object v8
.end method
.method public static c(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
.registers 10
new-instance v8, Lcom/twidroid/model/twitter/c;
invoke-direct {v8}, Lcom/twidroid/model/twitter/c;-><init>()V
:try_start_5
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-string v7, "defaultaccount desc"
move-object v1, p0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_45
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
new-instance v0, Lcom/twidroid/model/twitter/c;
invoke-direct {v0, v1}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/Cursor;)V
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_3d
:try_start_2f
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->q()Z
move-result v2
if-nez v2, :cond_39
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/twidroid/model/twitter/c;->b(Z)V
:cond_39
:goto_39
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_43
:goto_3c
return-object v0
:catch_3d
move-exception v0
move-object v0, v8
:goto_3f
invoke-static {p0}, Lcom/twidroid/model/twitter/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
goto :goto_3c
:catch_43
move-exception v1
goto :goto_3f
:cond_45
move-object v0, v8
goto :goto_39
.end method
.method public static d(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 2
:try_start_0
const-string v0, "drop table accounts;"
invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_start_5
:goto_5
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_e
const-string v0, "create table accounts (id integer primary key, username text DEFAULT \'\', password text DEFAULT \'\',apiurl text DEFAULT \'\', enablessl integer default \'0\', user_id integer default \'0\', defaultaccount integer default \'0\', rememberme integer default \'1\', is_protected integer default \'0\', is_activated  integer default \'0\', is_verified integer default \'0\', selectedaccount integer default \'0\', tweet_id integer default \'0\', mention_id integer default \'0\', direct_id integer default \'0\', oauth_token text DEFAULT \'\', oauth_secret text DEFAULT \'\', enable_notifications integer default \'1\',avatar_url text DEFAULT \'\');"
invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {p0}, Lcom/twidroid/model/twitter/c;->o(Landroid/database/sqlite/SQLiteDatabase;)V
:goto_d
:try_end_d
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_d} :catch_13
return-void
:catch_e
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
goto :goto_5
:catch_13
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
goto :goto_d
.end method
.method public static e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
.registers 4
invoke-static {p0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v2
if-eqz v2, :cond_8
:goto_1a
return-object v0
:cond_1b
invoke-static {p0}, Lcom/twidroid/model/twitter/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
move-result-object v0
goto :goto_1a
.end method
.method public static f(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
.registers 9
const/4 v3, 0x0
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const-string v7, ""
move-object v1, p0
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public static o(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 1
return-void
.end method
.method public static p(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 1
return-void
.end method
.method public a(J)J
.registers 3
iput-wide p1, p0, Lcom/twidroid/model/twitter/c;->k:J
return-wide p1
.end method
.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
.registers 11
const/4 v3, 0x0
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
if-eqz p2, :cond_1c
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_1c
invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
:cond_1c
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const-string v7, "defaultaccount desc"
move-object v1, p1
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
return-void
.end method
.method public a(Ljavax/crypto/spec/SecretKeySpec;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/c;->v:Ljavax/crypto/spec/SecretKeySpec;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/c;->n:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
return v0
.end method
.method public b(J)V
.registers 4
long-to-int v0, p1
iput v0, p0, Lcom/twidroid/model/twitter/c;->s:I
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/c;->d:Z
return-void
.end method
.method public b()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public c()Lorg/json/JSONObject;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string v0, "username"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "password"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "apiurl"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "enableSSL"
iget-boolean v2, p0, Lcom/twidroid/model/twitter/c;->l:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "user_id"
iget-wide v2, p0, Lcom/twidroid/model/twitter/c;->k:J
invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "defaultAccount"
iget-boolean v2, p0, Lcom/twidroid/model/twitter/c;->d:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "rememberme"
iget-boolean v2, p0, Lcom/twidroid/model/twitter/c;->m:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "oauth_token"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "oauth_secret"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "is_protected"
iget-boolean v2, p0, Lcom/twidroid/model/twitter/c;->n:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "is_activated"
iget-boolean v2, p0, Lcom/twidroid/model/twitter/c;->o:Z
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "avatar_url"
iget-object v2, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_59
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_59} :catch_5a
:goto_59
return-object v1
:catch_5a
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_59
.end method
.method public c(Ljava/lang/String;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/c;->q:Z
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
return-void
.end method
.method public d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/c;->m:Z
return-void
.end method
.method public d()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v0, :cond_12
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v0, :cond_12
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public e(Ljava/lang/String;)V
.registers 5
const-string v0, "http"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_31
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_2c
const-string v0, ""
:goto_21
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
:goto_2b
return-void
:cond_2c
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
goto :goto_21
:cond_31
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
goto :goto_2b
.end method
.method public e()Z
.registers 3
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-string v1, "twitter.com"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
check-cast p1, Lcom/twidroid/model/twitter/c;
iget-wide v1, p0, Lcom/twidroid/model/twitter/c;->k:J
iget-wide v3, p1, Lcom/twidroid/model/twitter/c;->k:J
cmp-long v1, v1, v3
if-nez v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
return-void
.end method
.method public f()Z
.registers 3
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
const-string v1, "wozai"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public g()Ljava/lang/String;
.registers 4
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
const-string v2, "wozai.cc"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_28
const-string v0, "Wozai"
:goto_27
return-object v0
:cond_28
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
const-string v2, "twitter.com"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_37
const-string v0, "Twitter"
goto :goto_27
:cond_37
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
const-string v2, "status"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_46
const-string v0, "StatusNet"
goto :goto_27
:cond_46
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
const-string v1, "identi"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_59
const-string v0, "Identica"
:try_end_54
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55
goto :goto_27
:catch_55
move-exception v0
const-string v0, "Unknown"
goto :goto_27
:cond_59
const-string v0, "Unknown"
goto :goto_27
.end method
.method public g(Landroid/database/sqlite/SQLiteDatabase;)Z
.registers 4
const-string v0, "defaultaccount=1"
invoke-virtual {p0, p1, v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_11
const/4 v0, 0x1
:goto_d
invoke-interface {v1}, Landroid/database/Cursor;->close()V
return v0
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
return-object v0
.end method
.method public h(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "update accounts set is_protected="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
if-eqz v0, :cond_31
const-string v0, "1"
:goto_11
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " where id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
:cond_31
const-string v0, "0"
goto :goto_11
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
return-object v0
.end method
.method public i(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string v0, "username"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "password"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "apiurl"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "enablessl"
iget-boolean v4, p0, Lcom/twidroid/model/twitter/c;->l:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
const-string v0, "user_id"
iget-wide v4, p0, Lcom/twidroid/model/twitter/c;->k:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v0, "rememberme"
iget-boolean v4, p0, Lcom/twidroid/model/twitter/c;->m:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
const-string v0, "oauth_token"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "oauth_secret"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "is_protected"
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->n:Z
if-eqz v0, :cond_95
move v0, v1
:goto_52
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v4, "enable_notifications"
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->o:Z
if-eqz v0, :cond_97
move v0, v1
:goto_60
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v0, "avatar_url"
iget-object v4, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/c;->g(Landroid/database/sqlite/SQLiteDatabase;)Z
move-result v0
if-nez v0, :cond_99
const-string v0, "defaultaccount"
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
:goto_7d
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
if-gtz v0, :cond_a5
const-string v0, "accounts"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/twidroid/model/twitter/c;->b(J)V
:goto_8d
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->d:Z
if-eqz v0, :cond_94
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/c;->l(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_94
return-void
:cond_95
move v0, v2
goto :goto_52
:cond_97
move v0, v2
goto :goto_60
:cond_99
const-string v0, "defaultaccount"
iget-boolean v4, p0, Lcom/twidroid/model/twitter/c;->d:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
goto :goto_7d
:cond_a5
const-string v0, "accounts"
const-string v4, "id = ?"
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v5
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v1, v2
invoke-virtual {p1, v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
goto :goto_8d
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
return-object v0
.end method
.method public j(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/c;->k(Landroid/database/sqlite/SQLiteDatabase;)V
const-string v0, "accounts"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
invoke-static {p1}, Lcom/twidroid/model/twitter/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
return-void
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->i:Ljava/lang/String;
return-object v0
.end method
.method public k(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 6
:try_start_0
const-string v0, "messages"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "account="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
const-string v0, "dmmessages"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "account="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b
:goto_3a
return-void
:catch_3b
move-exception v0
const-string v1, "TwitterAccount"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Exception while cleaning cached tweet/messages: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_3a
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->j:Ljava/lang/String;
return-object v0
.end method
.method public l(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v0, "update accounts set defaultaccount=0;"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "update accounts set defaultaccount=1 where id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method
.method public m()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/twidroid/model/twitter/c;->l:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public m(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/model/twitter/c;->o:Z
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
return-void
.end method
.method public n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
.registers 11
const/4 v3, 0x0
new-instance v8, Lcom/twidroid/model/twitter/c;
invoke-direct {v8}, Lcom/twidroid/model/twitter/c;-><init>()V
new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
const-string v1, "accounts"
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/model/twitter/c;->t:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V
sget-object v2, Lcom/twidroid/model/twitter/c;->u:[Ljava/lang/String;
const-string v7, "selectedaccount desc, defaultaccount desc"
move-object v1, p1
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_40
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
new-instance v0, Lcom/twidroid/model/twitter/c;
invoke-direct {v0, v1}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/Cursor;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->r()Z
move-result v2
if-nez v2, :cond_3c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/twidroid/model/twitter/c;->c(Z)V
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
:goto_3c
:cond_3c
invoke-interface {v1}, Landroid/database/Cursor;->close()V
return-object v0
:cond_40
move-object v0, v8
goto :goto_3c
.end method
.method public n()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public o()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/c;->k:J
return-wide v0
.end method
.method public p()I
.registers 2
iget v0, p0, Lcom/twidroid/model/twitter/c;->s:I
return v0
.end method
.method public q()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->d:Z
return v0
.end method
.method public r()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->q:Z
return v0
.end method
.method public s()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->m:Z
return v0
.end method
.method public t()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->o:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;
move-result-object v0
const-string v1, "Twitter"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
:goto_e
return-object v0
:cond_f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/twitter/c;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public u()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/c;->p:Z
return v0
.end method
.method public v()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->r:Ljava/lang/String;
return-object v0
.end method
.method public w()Z
.registers 4
:try_start_0
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/c;->f(Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
:try_end_22
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24
const/4 v0, 0x1
:goto_23
return v0
:catch_24
move-exception v0
const-string v1, "TwitterAccount"
const-string v2, "error updating avatar: "
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_23
.end method
.method public x()Ljavax/crypto/spec/SecretKeySpec;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/c;->v:Ljavax/crypto/spec/SecretKeySpec;
return-object v0
.end method