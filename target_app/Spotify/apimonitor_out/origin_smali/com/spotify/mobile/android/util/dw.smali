.class public abstract Lcom/spotify/mobile/android/util/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private c:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dw;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/dw;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-wide/16 v2, 0x1

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    const-string v1, "Trying to enter an already entered view."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected abstract a(J)V
.end method

.method public final b()V
    .registers 12

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_30

    move v0, v1

    :goto_14
    const-string v5, "Trying to leave a not entered view."

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-wide v5, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    cmp-long v0, v5, v9

    if-eqz v0, :cond_32

    :goto_1f
    const-string v0, "Trying to leave an already left view."

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    const-wide/16 v0, 0x14

    cmp-long v0, v3, v0

    if-lez v0, :cond_2d

    invoke-virtual {p0, v3, v4}, Lcom/spotify/mobile/android/util/dw;->a(J)V

    :cond_2d
    iput-wide v9, p0, Lcom/spotify/mobile/android/util/dw;->c:J

    return-void

    :cond_30
    move v0, v2

    goto :goto_14

    :cond_32
    move v1, v2

    goto :goto_1f
.end method

.method public final c()Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dw;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method
