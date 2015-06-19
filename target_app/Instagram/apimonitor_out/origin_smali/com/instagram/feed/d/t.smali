.class public final Lcom/instagram/feed/d/t;
.super Ljava/lang/Object;
.source "MediaRenderCache.java"


# static fields
.field private static a:Lcom/instagram/feed/d/t;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/t;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/t;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/t;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/t;->e:Ljava/util/Map;

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    new-instance v2, Lcom/instagram/feed/d/u;

    invoke-direct {v2, p0}, Lcom/instagram/feed/d/u;-><init>(Lcom/instagram/feed/d/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    return-void
.end method

.method public static a()Lcom/instagram/feed/d/t;
    .registers 1

    sget-object v0, Lcom/instagram/feed/d/t;->a:Lcom/instagram/feed/d/t;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/instagram/feed/d/t;->b()V

    :cond_7
    sget-object v0, Lcom/instagram/feed/d/t;->a:Lcom/instagram/feed/d/t;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/feed/d/t;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/d/t;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/d/t;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/d/t;->e:Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .registers 2

    const-class v1, Lcom/instagram/feed/d/t;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/feed/d/t;->a:Lcom/instagram/feed/d/t;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Lcom/instagram/feed/d/t;

    invoke-direct {v0}, Lcom/instagram/feed/d/t;-><init>()V

    sput-object v0, Lcom/instagram/feed/d/t;->a:Lcom/instagram/feed/d/t;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/instagram/feed/d/t;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/d/t;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/instagram/feed/d/t;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    invoke-static {p1, p2}, Lcom/instagram/feed/d/v;->b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/d/t;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public final a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;
    .registers 8

    iget-object v0, p0, Lcom/instagram/feed/d/t;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    invoke-static {p1, p2, p3, p4}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/d/t;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public final a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Lcom/instagram/feed/d/t;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/d/t;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public final b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/instagram/feed/d/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    invoke-static {p1, p2}, Lcom/instagram/feed/d/v;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/d/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method
