.class public Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"
.implements Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"
.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"
.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"
.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"
.field private final inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
.field private metricsCache:Ljava/util/HashMap;
.field private final outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
.field private requestCount:J
.field private responseCount:J
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V
.registers 5
const-wide/16 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
return-void
.end method
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
if-eqz v0, :cond_61
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_b
if-nez v0, :cond_1c
const-string v2, "http.request-count"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1d
new-instance v0, Ljava/lang/Long;
iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
:goto_1c
:cond_1c
return-object v0
:cond_1d
const-string v2, "http.response-count"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
new-instance v0, Ljava/lang/Long;
iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto :goto_1c
:cond_2d
const-string v2, "http.received-bytes-count"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_47
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_45
new-instance v0, Ljava/lang/Long;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto :goto_1c
:cond_45
move-object v0, v1
goto :goto_1c
:cond_47
const-string v2, "http.sent-bytes-count"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_5f
new-instance v0, Ljava/lang/Long;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto :goto_1c
:cond_5f
move-object v0, v1
goto :goto_1c
:cond_61
move-object v0, v1
goto :goto_b
.end method
.method public getReceivedBytesCount()J
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
const-wide/16 v0, -0x1
goto :goto_a
.end method
.method public getRequestCount()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
return-wide v0
.end method
.method public getResponseCount()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
return-wide v0
.end method
.method public getSentBytesCount()J
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
const-wide/16 v0, -0x1
goto :goto_a
.end method
.method public incrementRequestCount()V
.registers 5
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
return-void
.end method
.method public incrementResponseCount()V
.registers 5
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
return-void
.end method
.method public reset()V
.registers 4
const-wide/16 v1, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V
:cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
if-eqz v0, :cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V
:cond_14
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
return-void
.end method
.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
:cond_b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method