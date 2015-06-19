.class public Lcom/flurry/sdk/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/flurry/sdk/ds;


# instance fields
.field private final a:Lcom/flurry/sdk/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dq",
            "<",
            "Lcom/flurry/sdk/dr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/dq;

    invoke-direct {v0}, Lcom/flurry/sdk/dq;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dq;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_22

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/flurry/sdk/ds$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ds$1;-><init>(Lcom/flurry/sdk/ds;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_22
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ds;
    .registers 2

    const-class v1, Lcom/flurry/sdk/ds;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/ds;->b:Lcom/flurry/sdk/ds;

    if-nez v0, :cond_e

    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ds;->b:Lcom/flurry/sdk/ds;

    :cond_e
    sget-object v0, Lcom/flurry/sdk/ds;->b:Lcom/flurry/sdk/ds;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ds;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/flurry/sdk/ds;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dr;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->a()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/dr;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dq;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
