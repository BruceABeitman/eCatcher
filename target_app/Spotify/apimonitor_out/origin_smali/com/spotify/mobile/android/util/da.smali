.class public Lcom/spotify/mobile/android/util/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/util/cx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/da;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "spotify_preferences"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/da;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/da;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/spotify/mobile/android/util/cx;
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/util/da;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cx;

    if-nez v0, :cond_19

    new-instance v0, Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/util/cx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/spotify/mobile/android/util/da;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    if-eqz p2, :cond_18

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->a()V

    goto :goto_18
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/util/da;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/spotify/mobile/android/util/cx;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/spotify/mobile/android/util/da;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/spotify/mobile/android/util/cx;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
