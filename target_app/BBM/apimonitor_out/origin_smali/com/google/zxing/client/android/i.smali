.class public final Lcom/google/zxing/client/android/i;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final a:Lcom/google/zxing/client/android/CaptureActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/p;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/p;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/i;->a:Lcom/google/zxing/client/android/CaptureActivity;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/i;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/i;->b:Ljava/util/Map;

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_1f
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-class v1, Lcom/google/zxing/a;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    const-string v1, "preferences_decode_1D"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/google/zxing/client/android/g;->b:Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_36
    const-string v1, "preferences_decode_QR"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Lcom/google/zxing/client/android/g;->c:Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_43
    const-string v1, "preferences_decode_Data_Matrix"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/google/zxing/client/android/g;->d:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_50
    iget-object v0, p0, Lcom/google/zxing/client/android/i;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/e;->c:Lcom/google/zxing/e;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_60

    iget-object v0, p0, Lcom/google/zxing/client/android/i;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/e;->e:Lcom/google/zxing/e;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    iget-object v0, p0, Lcom/google/zxing/client/android/i;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8

    :goto_5
    iget-object v0, p0, Lcom/google/zxing/client/android/i;->c:Landroid/os/Handler;

    return-object v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public final run()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/google/zxing/client/android/h;

    iget-object v1, p0, Lcom/google/zxing/client/android/i;->a:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v2, p0, Lcom/google/zxing/client/android/i;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/h;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/i;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/zxing/client/android/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
