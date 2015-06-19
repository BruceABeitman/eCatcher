.class final Lcom/instagram/l/n;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"

# interfaces
.implements Lcom/instagram/common/i/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/i/a/h",
        "<",
        "Lcom/instagram/l/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/l/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/l/n;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/l/n;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/instagram/l/i;
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/instagram/l/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/l/i;

    if-nez v0, :cond_16

    new-instance v0, Lcom/instagram/l/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/instagram/l/k;-><init>(Ljava/lang/String;B)V

    sget-object v1, Lcom/instagram/l/n;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Lcom/instagram/l/i;
    .registers 4

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/instagram/l/n;->a(Ljava/lang/String;)Lcom/instagram/l/i;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {}, Lcom/instagram/common/v/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-direct {p0, v0}, Lcom/instagram/l/n;->a(Ljava/lang/String;)Lcom/instagram/l/i;

    move-result-object v0

    goto :goto_12

    :cond_22
    new-instance v0, Lcom/instagram/l/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/l/k;-><init>(Ljava/lang/String;B)V

    goto :goto_12
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/l/n;->b()Lcom/instagram/l/i;

    move-result-object v0

    return-object v0
.end method
