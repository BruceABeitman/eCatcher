.class public Lcom/spotify/mobile/android/service/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;

.field private c:Lcom/spotify/mobile/android/service/as;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", throttled 99%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    if-lez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orbit got stuck while shutting down, but finished after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ah;->a(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ah;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/spotify/mobile/android/service/as;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ah;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/ah;->c:Lcom/spotify/mobile/android/service/as;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 4

    iget v0, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    iget v0, p0, Lcom/spotify/mobile/android/service/ah;->a:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ah;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12
    return-void

    :cond_13
    const-string v0, "Orbit got stuck while shutting down"

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ah;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ah;->c:Lcom/spotify/mobile/android/service/as;

    invoke-static {}, Lcom/spotify/mobile/android/service/as;->a()V

    goto :goto_12
.end method
