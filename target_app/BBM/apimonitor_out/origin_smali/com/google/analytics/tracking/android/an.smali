.class public Lcom/google/analytics/tracking/android/an;
.super Lcom/google/analytics/tracking/android/bf;
.source "GoogleAnalytics.java"


# static fields
.field private static g:Lcom/google/analytics/tracking/android/an;


# instance fields
.field a:Z

.field volatile b:Ljava/lang/Boolean;

.field c:Lcom/google/analytics/tracking/android/ar;

.field private d:Lcom/google/analytics/tracking/android/h;

.field private e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/be;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/analytics/tracking/android/ah;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/an;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->f:Ljava/util/Map;

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/an;->d:Lcom/google/analytics/tracking/android/h;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/az;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/j;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/analytics/tracking/android/m;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/m;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->c:Lcom/google/analytics/tracking/android/ar;

    return-void
.end method

.method static a()Lcom/google/analytics/tracking/android/an;
    .registers 2

    const-class v1, Lcom/google/analytics/tracking/android/an;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/an;
    .registers 3

    const-class v1, Lcom/google/analytics/tracking/android/an;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/analytics/tracking/android/an;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/an;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    :cond_e
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lcom/google/analytics/tracking/android/az;->a()Lcom/google/analytics/tracking/android/az;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/al;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/al;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->d:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/h;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .registers 3

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->ad:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/an;->a:Z

    return v0
.end method
