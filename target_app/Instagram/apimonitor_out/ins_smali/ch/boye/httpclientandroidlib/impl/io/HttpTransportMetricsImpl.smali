.class public Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"
.implements Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
.field private bytesTransferred:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
return-void
.end method
.method public getBytesTransferred()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
return-wide v0
.end method
.method public incrementBytesTransferred(J)V
.registers 5
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
add-long/2addr v0, p1
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
return-void
.end method
.method public reset()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
return-void
.end method
.method public setBytesTransferred(J)V
.registers 3
iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J
return-void
.end method