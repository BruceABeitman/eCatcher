.class public Lcom/admarvel/android/util/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admarvel/android/util/e;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/util/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/util/e$d;->a:Lcom/admarvel/android/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/admarvel/android/util/e$d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/util/e$d;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/admarvel/android/util/e$d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/util/e;->d(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchAndroidAdvertisingIdUsingIntentRunnable error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_9
.end method
