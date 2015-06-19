.class final Lcom/crashlytics/android/t;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:F

.field private synthetic c:Ljava/util/concurrent/CountDownLatch;

.field private synthetic d:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    iput-object p1, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/t;->a:Landroid/content/Context;

    iput p3, p0, Lcom/crashlytics/android/t;->b:F

    iput-object p4, p0, Lcom/crashlytics/android/t;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    iget-object v1, p0, Lcom/crashlytics/android/t;->a:Landroid/content/Context;

    iget v2, p0, Lcom/crashlytics/android/t;->b:F

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->e()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1b

    :cond_15
    iget-object v0, p0, Lcom/crashlytics/android/t;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_31

    iget-object v0, p0, Lcom/crashlytics/android/t;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1a

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/t;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
