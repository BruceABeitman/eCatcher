.class public abstract Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpServerConnection;


# instance fields
.field private final entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

.field private final entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

.field private eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

.field private responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
.end method

.method protected createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;-><init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method protected createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpRequestFactory()Lch/boye/httpclientandroidlib/HttpRequestFactory;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .registers 6

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
    .registers 5

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/io/HttpResponseWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public flush()V
    .registers 1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->doFlush()V

    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    :cond_21
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createHttpRequestFactory()Lch/boye/httpclientandroidlib/HttpRequestFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createRequestParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createResponseWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    return-void
.end method

.method protected isEof()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/EofSensor;->isEof()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStale()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isEof()Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_e
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isEof()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_19

    move-result v0

    goto :goto_7

    :catch_19
    move-exception v1

    goto :goto_7
.end method

.method public receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void
.end method

.method public receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpMessageParser;->parse()Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    return-object v0
.end method

.method public sendResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .registers 5

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_6
.end method

.method public sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/HttpMessageWriter;->write(Lch/boye/httpclientandroidlib/HttpMessage;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    :cond_23
    return-void
.end method
