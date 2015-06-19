.class Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .registers 1

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    return-void
.end method

.method public getThreadStatsTag()I
    .registers 2

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public incrementOperationCount(I)V
    .registers 2

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    return-void
.end method

.method public incrementOperationCount(II)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    return-void
.end method

.method public setThreadStatsTag(I)V
    .registers 2

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    return-void
.end method
