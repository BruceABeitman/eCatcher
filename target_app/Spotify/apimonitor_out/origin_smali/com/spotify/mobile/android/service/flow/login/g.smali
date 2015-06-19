.class public Lcom/spotify/mobile/android/service/flow/login/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/flow/login/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->a:Ljava/lang/Object;

    const-string v0, "^g[0-9]{11,29}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->f:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/g;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .registers 6

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/k;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/k;->a(ZZ)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/g;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/g;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/flow/login/g;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->e:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/i;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/i;-><init>(Lcom/spotify/mobile/android/service/flow/login/g;Landroid/content/Context;)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/g$1;

    invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/service/flow/login/g$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/g;Lcom/spotify/mobile/android/service/flow/login/j;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/i;->a(Lcom/spotify/mobile/android/service/flow/login/h;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/k;)V
    .registers 6

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/g;->a(ZZ)V

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_26
    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->c:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "https://tpls.spotify.com/"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v1

    const-string v2, "api/available"

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/g$3;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/service/flow/login/g$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/g;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/i;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/i;-><init>(Lcom/spotify/mobile/android/service/flow/login/g;Landroid/content/Context;)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/g$2;

    invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/service/flow/login/g$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/g;Lcom/spotify/mobile/android/service/flow/login/j;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/i;->a(Lcom/spotify/mobile/android/service/flow/login/h;)V

    return-void
.end method
