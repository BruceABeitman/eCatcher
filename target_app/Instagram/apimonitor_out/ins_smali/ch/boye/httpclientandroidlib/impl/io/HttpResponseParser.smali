.class public Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.field private final responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 7
invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V
if-nez p3, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Response factory may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x80
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
return-void
.end method
.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_16
new-instance v0, Lch/boye/httpclientandroidlib/NoHttpResponseException;
const-string v1, "The target server failed to respond"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/NoHttpResponseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;
const/4 v1, 0x0
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v2
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-interface {v1, v2, v0}, Lch/boye/httpclientandroidlib/message/LineParser;->parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
const/4 v2, 0x0
invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method