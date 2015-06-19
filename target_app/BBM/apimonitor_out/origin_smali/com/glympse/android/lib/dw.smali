.class Lcom/glympse/android/lib/dw;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Lcom/glympse/android/lib/dv;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/dt$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/dw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GTicket;)I
    .registers 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_c
    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v4

    and-int/lit8 v4, v4, 0x12

    if-eqz v4, :cond_1d

    move v4, v1

    :goto_15
    if-eq v0, v4, :cond_1f

    if-eqz v0, :cond_1a

    move v1, v3

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    move v0, v2

    goto :goto_c

    :cond_1d
    move v4, v2

    goto :goto_15

    :cond_1f
    if-eqz v0, :cond_3d

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->isMine()Z

    move-result v0

    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->isMine()Z

    move-result v4

    if-eq v0, v4, :cond_2f

    if-eqz v0, :cond_1a

    move v1, v3

    goto :goto_1a

    :cond_2f
    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->isVisible()Z

    move-result v0

    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->isVisible()Z

    move-result v4

    if-eq v0, v4, :cond_3d

    if-eqz v0, :cond_1a

    move v1, v3

    goto :goto_1a

    :cond_3d
    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4b

    move v1, v3

    goto :goto_1a

    :cond_4b
    cmp-long v0, v4, v6

    if-ltz v0, :cond_1a

    move v1, v2

    goto :goto_1a
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/glympse/android/api/GTicket;

    check-cast p2, Lcom/glympse/android/api/GTicket;

    invoke-virtual {p0, p1, p2}, Lcom/glympse/android/lib/dw;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GTicket;)I

    move-result v0

    return v0
.end method
