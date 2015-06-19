.class public final Lcom/lenovo/lps/reaper/sdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/lenovo/lps/reaper/sdk/a/a;


# instance fields
.field private b:Lcom/lenovo/lps/reaper/sdk/a/d;

.field private c:Lcom/lenovo/lps/reaper/sdk/a/e;

.field private d:Lcom/lenovo/lps/reaper/sdk/a/g;

.field private e:Lcom/lenovo/lps/reaper/sdk/a/b;

.field private f:Lcom/lenovo/lps/reaper/sdk/a/f;

.field private g:Lcom/lenovo/lps/reaper/sdk/a/k;

.field private h:Lcom/lenovo/lps/reaper/sdk/a/l;

.field private i:Lcom/lenovo/lps/reaper/sdk/a/h;

.field private j:Lcom/lenovo/lps/reaper/sdk/a/j;

.field private k:Lcom/lenovo/lps/reaper/sdk/a/m;

.field private l:Lcom/lenovo/lps/reaper/sdk/a/c;

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/util/ArrayList;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/a;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/a;->a:Lcom/lenovo/lps/reaper/sdk/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/d;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/d;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->b:Lcom/lenovo/lps/reaper/sdk/a/d;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/e;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/e;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->c:Lcom/lenovo/lps/reaper/sdk/a/e;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/g;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/g;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->d:Lcom/lenovo/lps/reaper/sdk/a/g;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/b;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/b;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->e:Lcom/lenovo/lps/reaper/sdk/a/b;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/f;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->f:Lcom/lenovo/lps/reaper/sdk/a/f;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/k;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/k;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->g:Lcom/lenovo/lps/reaper/sdk/a/k;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/l;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/l;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->h:Lcom/lenovo/lps/reaper/sdk/a/l;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/h;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/h;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->i:Lcom/lenovo/lps/reaper/sdk/a/h;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/j;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/j;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->j:Lcom/lenovo/lps/reaper/sdk/a/j;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/m;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/m;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->k:Lcom/lenovo/lps/reaper/sdk/a/m;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/c;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/c;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->l:Lcom/lenovo/lps/reaper/sdk/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/a/a;
    .registers 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/a;->a:Lcom/lenovo/lps/reaper/sdk/a/a;

    return-object v0
.end method

.method private a(J)V
    .registers 6

    const-string/jumbo v0, "ServerConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timestamp is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->p:J

    return-void
.end method

.method private b(J)V
    .registers 6

    const-string/jumbo v0, "ServerConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timestamp is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->q:J

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/a/i;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/a/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    array-length v3, v2

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v3, :cond_2b

    aget-object v4, v2, v1

    invoke-interface {v0, p1, v4}, Lcom/lenovo/lps/reaper/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    return-void
.end method

.method private k()V
    .registers 3

    const-string/jumbo v0, "ServerConfigStorage"

    const-string/jumbo v1, "ServerConfigStorage is Reset"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/a/i;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/a/i;->a()V

    goto :goto_f

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/b/f;
    .registers 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->h:Lcom/lenovo/lps/reaper/sdk/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/a/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->m:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->m:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_5

    :catch_d
    move-exception v1

    const-string/jumbo v2, "ServerConfigStorage"

    const-string/jumbo v3, "get app online configuration exception"

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final a(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->b:Lcom/lenovo/lps/reaper/sdk/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->c:Lcom/lenovo/lps/reaper/sdk/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->d:Lcom/lenovo/lps/reaper/sdk/a/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->e:Lcom/lenovo/lps/reaper/sdk/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->f:Lcom/lenovo/lps/reaper/sdk/a/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->g:Lcom/lenovo/lps/reaper/sdk/a/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->h:Lcom/lenovo/lps/reaper/sdk/a/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->i:Lcom/lenovo/lps/reaper/sdk/a/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->j:Lcom/lenovo/lps/reaper/sdk/a/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->k:Lcom/lenovo/lps/reaper/sdk/a/m;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->l:Lcom/lenovo/lps/reaper/sdk/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/a/a;->k()V

    :try_start_52
    const-string/jumbo v0, "ServerConfigStorage"

    const-string/jumbo v1, "Loading Configuration From Preferences..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "reaper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_8e} :catch_8f

    goto :goto_71

    :catch_8f
    move-exception v0

    const-string/jumbo v1, "ServerConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load config from preferences error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    :try_start_ae
    const-string/jumbo v0, "ServerConfigStorage"

    const-string/jumbo v1, "Loading App Configuration From Preferences..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ReaperAppConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->m:Lorg/json/JSONObject;

    :cond_d2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "AppLastUpdateTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(J)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_e8} :catch_100

    :goto_e8
    return-void

    :cond_e9
    :try_start_e9
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "LastUpdateTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(J)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ff} :catch_8f

    goto :goto_ae

    :catch_100
    move-exception v0

    const-string/jumbo v1, "ServerConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load app config from preferences error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8
.end method

.method public final declared-synchronized a(Lorg/json/JSONArray;)V
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/a/a;->k()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v2, "reaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_53

    move-result v3

    move v1, v0

    :goto_1b
    if-ge v1, v3, :cond_56

    :try_start_1d
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v0, ""

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_37
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/a/a;->a:Lcom/lenovo/lps/reaper/sdk/a/a;

    invoke-direct {v5, v0, v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_53
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_43} :catch_47

    :goto_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v4, "ServerConfigStorage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_53

    goto :goto_43

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_56
    :try_start_56
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "LastUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(J)V
    :try_end_7c
    .catchall {:try_start_56 .. :try_end_7c} :catchall_53

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->m:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ReaperAppConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->o:Z

    return-void
.end method

.method public final a(I)Z
    .registers 3

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/a/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->d:Lcom/lenovo/lps/reaper/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/a/g;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;D)Z
    .registers 6

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->i:Lcom/lenovo/lps/reaper/sdk/a/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/lps/reaper/sdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->d:Lcom/lenovo/lps/reaper/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/a/g;->a(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->o:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->p:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->f:Lcom/lenovo/lps/reaper/sdk/a/f;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/a/f;->b()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->o:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->q:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->g:Lcom/lenovo/lps/reaper/sdk/a/k;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/a/k;->b()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final d()V
    .registers 5

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->r:Landroid/content/Context;

    const-string/jumbo v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "AppLastUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(J)V

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->c:Lcom/lenovo/lps/reaper/sdk/a/e;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/e;->b()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->e:Lcom/lenovo/lps/reaper/sdk/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->j:Lcom/lenovo/lps/reaper/sdk/a/j;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/j;->b()Z

    move-result v0

    return v0
.end method

.method public final h()J
    .registers 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->k:Lcom/lenovo/lps/reaper/sdk/a/m;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/m;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->k:Lcom/lenovo/lps/reaper/sdk/a/m;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/m;->b()Z

    move-result v0

    return v0
.end method

.method public final j()I
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/a;->l:Lcom/lenovo/lps/reaper/sdk/a/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/c;->b()I

    move-result v0

    return v0
.end method
