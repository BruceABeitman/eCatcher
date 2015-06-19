.class public abstract Lcom/twidroid/net/a/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "1.1"
.field protected static final b:I = 0x927c0
.field protected static final c:I = 0x3e8
.field private static final l:I = 0x15f90
.field private static final m:Ljava/lang/String; = "TwitterStream"
.field private static r:J
.field private static final s:Ljava/text/SimpleDateFormat;
.field protected d:Ljava/lang/String;
.field protected e:Lcom/twidroid/model/twitter/c;
.field protected f:Z
.field protected g:Lcom/twidroid/net/a/c/a/j;
.field protected h:Lcom/twidroid/b/a/b;
.field protected i:Z
.field protected j:Lcom/twidroid/d/v;
.field protected k:Lcom/twidroid/UberSocialApplication;
.field private n:Lcom/ubermedia/net/b/c;
.field private o:Z
.field private p:I
.field private q:Lcom/twidroid/net/a/c/a/g;
.field private t:Z
.field private final u:Ljava/lang/Object;
.field private v:Ljava/lang/String;
.field private w:Ljava/util/ArrayList;
.field private x:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J
move-result-wide v0
sput-wide v0, Lcom/twidroid/net/a/c/a/d;->r:J
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/twidroid/net/a/c/a/d;->s:Ljava/text/SimpleDateFormat;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
iput-boolean v1, p0, Lcom/twidroid/net/a/c/a/d;->f:Z
const/16 v0, 0x3e8
iput v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
iput-boolean v1, p0, Lcom/twidroid/net/a/c/a/d;->t:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->u:Ljava/lang/Object;
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->v:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->w:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->x:Ljava/util/ArrayList;
if-nez p1, :cond_31
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Account should not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
iput-object p1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-direct {p0}, Lcom/twidroid/net/a/c/a/d;->l()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/a/c/a/d;I)I
.registers 2
iput p1, p0, Lcom/twidroid/net/a/c/a/d;->p:I
return p1
.end method
.method static synthetic a(J)J
.registers 2
sput-wide p0, Lcom/twidroid/net/a/c/a/d;->r:J
return-wide p0
.end method
.method private a(JJ)V
.registers 11
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->i:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->b(Ljava/lang/Long;)Z
:cond_d
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
move-wide v2, p1
move-wide v4, p3
invoke-interface/range {v0 .. v5}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;JJ)V
:cond_1a
return-void
.end method
.method private a(Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V
.registers 8
const/4 v0, 0x3
:goto_1
if-lez v0, :cond_6
:try_start_3
invoke-virtual {p1, p2, p3, p4}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J
:try_end_6
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6} :catch_7
:cond_6
return-void
:catch_7
move-exception v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
add-int/lit8 v0, v0, -0x1
const-wide/16 v1, 0xf
:try_start_f
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_end_12
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13
goto :goto_1
:catch_13
move-exception v1
invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_1
.end method
.method private a(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 8
const/4 v0, 0x1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->h()J
move-result-wide v1
iget-object v3, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
cmp-long v1, v1, v3
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;I)V
invoke-static {p1}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/model/twitter/DirectMessage;)Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/d/v;->b(Landroid/content/Context;I)V
:cond_23
iget-boolean v1, p0, Lcom/twidroid/net/a/c/a/d;->i:Z
if-eqz v1, :cond_68
invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->h()J
move-result-wide v1
iget-object v3, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
cmp-long v1, v1, v3
if-nez v1, :cond_50
iget-wide v1, p1, Lcom/twidroid/model/twitter/DirectMessage;->C:J
iput-wide v1, p1, Lcom/twidroid/model/twitter/DirectMessage;->D:J
:goto_39
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z
move-result v1
if-eqz v1, :cond_55
const-wide/16 v1, 0xa
:try_start_47
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_end_4a
.catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4b
goto :goto_39
:catch_4b
move-exception v1
invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_39
:cond_50
iget-wide v1, p1, Lcom/twidroid/model/twitter/DirectMessage;->W:J
iput-wide v1, p1, Lcom/twidroid/model/twitter/DirectMessage;->D:J
goto :goto_39
:cond_55
:try_start_55
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->h()J
move-result-wide v2
iget-object v4, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_74
:goto_65
invoke-virtual {v1, p1, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/DirectMessage;I)Z
:try_end_68
.catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_68} :catch_76
:cond_68
:goto_68
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-interface {v0, v1, p1}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
:cond_73
return-void
:cond_74
const/4 v0, 0x0
goto :goto_65
:catch_76
move-exception v0
const-string v1, "TwitterStream"
const-string v2, "insertMessage exception"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_68
.end method
.method private a(Lcom/twidroid/model/twitter/Tweet;)V
.registers 12
const/4 v7, 0x0
const/4 v4, -0x1
const/4 v9, 0x1
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->k(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->l(I)Ljava/util/ArrayList;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_74
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p1, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_74
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-virtual {v2, p1, v1}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;Ljava/util/ArrayList;)Z
move-result v1
if-nez v1, :cond_74
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7c
:cond_74
const-string v0, "TwitterStream"
const-string v1, "This tweet is muted, doing nothing;"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_7b
:goto_7b
return-void
:cond_7c
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->D()Z
move-result v5
if-eqz v5, :cond_87
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->a()V
:cond_87
:goto_87
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z
move-result v0
if-eqz v0, :cond_9e
const-wide/16 v0, 0xa
:try_start_95
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_98
.catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_98} :catch_99
goto :goto_87
:catch_99
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_87
:cond_9e
:try_start_9e
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->v()Z
move-result v0
if-eqz v0, :cond_d4
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
iget-wide v1, p1, Lcom/twidroid/model/twitter/Tweet;->ao:J
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->f(J)Z
move-result v0
if-eqz v0, :cond_d4
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
iget-wide v1, p1, Lcom/twidroid/model/twitter/Tweet;->ao:J
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/b/a/b;->a(JLcom/twidroid/model/twitter/User;)V
:goto_b6
:try_end_b6
.catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_b6} :catch_db
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0, v1, v9}, Lcom/twidroid/d/v;->d(Landroid/content/Context;I)V
iget-boolean v0, p1, Lcom/twidroid/model/twitter/Tweet;->ax:Z
if-eqz v0, :cond_c8
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0, v1, v9}, Lcom/twidroid/d/v;->c(Landroid/content/Context;I)V
:cond_c8
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-interface {v0, v1, p1}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
goto :goto_7b
:cond_d4
:try_start_d4
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
const/4 v1, -0x1
invoke-virtual {v0, p1, v1, v5}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;IZ)J
:try_end_da
.catch Landroid/database/sqlite/SQLiteException; {:try_start_d4 .. :try_end_da} :catch_db
goto :goto_b6
:catch_db
move-exception v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
const-string v0, "TwitterStream"
const-string v1, "Database was locked. going with retries"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lcom/twidroid/net/a/c/a/h;
invoke-direct {v6, p0, v7}, Lcom/twidroid/net/a/c/a/h;-><init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/net/a/c/a/d$1;)V
new-array v7, v9, [Lcom/twidroid/net/a/c/a/i;
const/4 v8, 0x0
new-instance v0, Lcom/twidroid/net/a/c/a/i;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
move-object v1, p0
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/a/c/a/i;-><init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V
aput-object v0, v7, v8
invoke-virtual {v6, v7}, Lcom/twidroid/net/a/c/a/h;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_b6
.end method
.method static synthetic a(Lcom/twidroid/net/a/c/a/d;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/net/a/c/a/d;->m()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/a/c/a/d;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/a/d;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 4
const-string v0, "\r\n"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const-string v0, "TwitterStream"
const-string v1, "Ping message was received, ignoring."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:try_start_10
:cond_10
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/a/d;->b(Lorg/json/JSONObject;)V
const-string v0, "TwitterStream"
invoke-static {v0, p1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1d
.catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1d} :catch_1e
goto :goto_f
:catch_1e
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_f
.end method
.method static synthetic a(Lcom/twidroid/net/a/c/a/d;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/net/a/c/a/d;->t:Z
return p1
.end method
.method private b(Lorg/json/JSONObject;)V
.registers 8
const-string v0, "direct_message"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_43
const-string v0, "direct_message"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/DirectMessage;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/model/twitter/DirectMessage;->c(J)V
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/model/twitter/DirectMessage;)V
:goto_1f
:cond_1f
const-string v0, "delete"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_64
const-string v0, "delete"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "status"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v1
const-string v3, "user_id"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
invoke-direct {p0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/a/d;->a(JJ)V
:goto_42
:cond_42
return-void
:cond_43
const-string v0, "text"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1f
:try_start_4b
invoke-static {p1}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
iput v1, v0, Lcom/twidroid/model/twitter/Tweet;->aB:I
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/model/twitter/Tweet;)V
:try_end_5a
.catch Lorg/json/JSONException; {:try_start_4b .. :try_end_5a} :catch_5b
goto :goto_42
:catch_5b
move-exception v0
const-string v0, "TwitterStream"
const-string v1, "Tried to parse tweet, but failed. Maybe unknown message?"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1f
:cond_64
const-string v0, "scrub_geo"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "limit"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "status_withheld"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "user_withheld"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "disconnect"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c9
const-string v0, "disconnect"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "code"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
const-string v2, "stream_name"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "reason"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "TwitterStream"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Disconnect received. Reason: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v3, :cond_42
iget-object v3, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v4, p0, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;
invoke-interface {v3, v4, v1, v2, v0}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_42
:cond_c9
const-string v0, "TwitterStream"
const-string v1, "Can\'t recognize basic message, so calling parseJsonData()"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/a/d;->a(Lorg/json/JSONObject;)V
goto/16 :goto_42
.end method
.method static synthetic b(Lcom/twidroid/net/a/c/a/d;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->t:Z
return v0
.end method
.method static synthetic c(Lcom/twidroid/net/a/c/a/d;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
return v0
.end method
.method static synthetic d(Lcom/twidroid/net/a/c/a/d;)Lcom/ubermedia/net/b/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->n:Lcom/ubermedia/net/b/c;
return-object v0
.end method
.method public static e()J
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/twidroid/net/a/c/a/d;->r:J
add-long/2addr v0, v2
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
return-wide v0
.end method
.method static synthetic k()Ljava/text/SimpleDateFormat;
.registers 1
sget-object v0, Lcom/twidroid/net/a/c/a/d;->s:Ljava/text/SimpleDateFormat;
return-object v0
.end method
.method private l()V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "https://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/a/d;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/a/d;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/net/a/c/a/d;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?with=followings"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->d:Ljava/lang/String;
const-string v0, "TwitterStream"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Inited!! "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/a/c/a/d;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->h:Lcom/twidroid/b/a/b;
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
new-instance v0, Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->k:Lcom/twidroid/UberSocialApplication;
invoke-direct {v0, v1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->j:Lcom/twidroid/d/v;
return-void
.end method
.method private m()V
.registers 4
const-string v0, "TwitterStream"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Reconnecting with interval "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/twidroid/net/a/c/a/d;->p:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
if-lez v0, :cond_71
:try_start_1e
iget v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_24
:try_end_24
.catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_24} :catch_6c
iget v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
const v1, 0x927c0
if-ge v0, v1, :cond_31
iget v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
mul-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
:cond_31
:goto_31
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->u:Ljava/lang/Object;
monitor-enter v1
:try_start_34
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
invoke-static {v0}, Lcom/twidroid/net/a/c/a/g;->a(Lcom/twidroid/net/a/c/a/g;)Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/twidroid/net/a/c/a/g;->a(Lcom/twidroid/net/a/c/a/g;Z)Z
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
iget-object v0, v0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
iget-object v0, v0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;
invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
:cond_53
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
if-nez v0, :cond_6a
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
if-eqz v0, :cond_6a
new-instance v0, Lcom/twidroid/net/a/c/a/g;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/c/a/g;-><init>(Lcom/twidroid/net/a/c/a/d;)V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/g;->start()V
:cond_6a
monitor-exit v1
:try_end_6b
.catchall {:try_start_34 .. :try_end_6b} :catchall_76
return-void
:catch_6c
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_24
:cond_71
const/16 v0, 0x3e8
iput v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
goto :goto_31
:catchall_76
move-exception v0
:try_start_77
monitor-exit v1
:try_end_78
.catchall {:try_start_77 .. :try_end_78} :catchall_76
throw v0
.end method
.method private n()Z
.registers 4
const/4 v1, 0x1
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
const-string v2, "connectivity"
invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-ne v0, v1, :cond_1b
move v0, v1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public a()V
.registers 4
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->u:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
if-eqz v0, :cond_10
const-string v0, "TwitterStream"
const-string v2, "Already connected."
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
monitor-exit v1
return-void
:cond_10
new-instance v0, Lcom/twidroid/net/a/c/a/g;
invoke-direct {v0, p0}, Lcom/twidroid/net/a/c/a/g;-><init>(Lcom/twidroid/net/a/c/a/d;)V
iput-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/g;->start()V
goto :goto_e
:catchall_20
move-exception v0
monitor-exit v1
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_20
throw v0
.end method
.method public a(Lcom/twidroid/net/a/c/a/j;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;
return-void
.end method
.method public a(Lcom/ubermedia/net/b/c;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/a/c/a/d;->n:Lcom/ubermedia/net/b/c;
return-void
.end method
.method protected abstract a(Lorg/json/JSONObject;)V
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/net/a/c/a/d;->i:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
const-string v0, "1.1"
return-object v0
.end method
.method public abstract c()Ljava/lang/String;
.end method
.method public abstract d()Ljava/lang/String;
.end method
.method protected final f()I
.registers 3
const v0, 0x927c0
iget v1, p0, Lcom/twidroid/net/a/c/a/d;->p:I
if-le v1, v0, :cond_8
:goto_7
return v0
:cond_8
iget v0, p0, Lcom/twidroid/net/a/c/a/d;->p:I
goto :goto_7
.end method
.method public g()V
.registers 5
iget-object v1, p0, Lcom/twidroid/net/a/c/a/d;->u:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/twidroid/net/a/c/a/g;->a(Lcom/twidroid/net/a/c/a/g;Z)Z
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
const/4 v2, 0x0
iput-object v2, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/twidroid/net/a/c/a/d$1;
invoke-direct {v3, p0, v0}, Lcom/twidroid/net/a/c/a/d$1;-><init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/net/a/c/a/g;)V
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
:cond_22
monitor-exit v1
return-void
:catchall_24
move-exception v0
monitor-exit v1
:try_end_26
.catchall {:try_start_4 .. :try_end_26} :catchall_24
throw v0
.end method
.method public h()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->o:Z
return v0
.end method
.method public i()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/twidroid/net/a/c/a/d;->q:Lcom/twidroid/net/a/c/a/g;
invoke-static {v0}, Lcom/twidroid/net/a/c/a/g;->a(Lcom/twidroid/net/a/c/a/g;)Z
move-result v0
goto :goto_5
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/d;->i:Z
return v0
.end method