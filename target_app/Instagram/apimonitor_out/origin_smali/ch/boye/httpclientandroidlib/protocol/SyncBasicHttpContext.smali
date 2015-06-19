.class public Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;
.super Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
