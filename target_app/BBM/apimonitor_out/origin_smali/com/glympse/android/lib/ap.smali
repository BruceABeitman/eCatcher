.class Lcom/glympse/android/lib/ap;
.super Ljava/lang/Object;
.source "CorrectedTime.java"

# interfaces
.implements Lcom/glympse/android/lib/GCorrectedTime;


# instance fields
.field private jk:Z

.field private jl:J

.field private jm:J

.field private jn:J

.field private jo:J

.field private jp:J

.field private jq:J

.field private jr:I


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/glympse/android/lib/ap;->jk:Z

    iput-wide v2, p0, Lcom/glympse/android/lib/ap;->jl:J

    iput-wide v2, p0, Lcom/glympse/android/lib/ap;->jm:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jo:J

    iput-wide v2, p0, Lcom/glympse/android/lib/ap;->jn:J

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jp:J

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jq:J

    iput v4, p0, Lcom/glympse/android/lib/ap;->jr:I

    return-void
.end method


# virtual methods
.method public getInvitesLastRefresh(Z)J
    .registers 4

    if-eqz p1, :cond_6

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jn:J

    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jo:J

    :cond_6
    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jn:J

    return-wide v0
.end method

.method public getInvitesLastSince()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jo:J

    return-wide v0
.end method

.method public getLastServerTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jm:J

    return-wide v0
.end method

.method public getLastStateChangeTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jq:J

    return-wide v0
.end method

.method public getPlatformStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jp:J

    return-wide v0
.end method

.method public getStateChangesCount()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ap;->jr:I

    return v0
.end method

.method public getTime()J
    .registers 5

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/glympse/android/lib/ap;->jl:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime(J)J
    .registers 5

    iget-wide v0, p0, Lcom/glympse/android/lib/ap;->jl:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public setInvitesLastRefresh(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/ap;->jn:J

    return-void
.end method

.method public setInvitesLastSince(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/ap;->jo:J

    return-void
.end method

.method public setServerTime(J)V
    .registers 9

    iput-wide p1, p0, Lcom/glympse/android/lib/ap;->jm:J

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-boolean v2, p0, Lcom/glympse/android/lib/ap;->jk:Z

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Lcom/glympse/android/lib/ap;->jl:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1b

    iget-wide v2, p0, Lcom/glympse/android/lib/ap;->jl:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    :cond_1b
    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jl:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/ap;->jk:Z

    :cond_20
    return-void
.end method

.method public stateChanged()V
    .registers 3

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ap;->jq:J

    iget v0, p0, Lcom/glympse/android/lib/ap;->jr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/ap;->jr:I

    return-void
.end method
