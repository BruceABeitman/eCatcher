.class public Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"
.implements Lch/boye/httpclientandroidlib/message/LineFormatter;
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final formatHeader(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatRequestLine(Lch/boye/httpclientandroidlib/RequestLine;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final formatStatusLine(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/message/LineFormatter;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;
:cond_4
const/4 v0, 0x0
invoke-interface {p1, v0, p0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Protocol version may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v0
if-nez p1, :cond_3d
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_15
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const/16 v0, 0x2f
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const/16 v0, 0x2e
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
return-object p1
:cond_3d
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
goto :goto_15
.end method
.method protected doFormatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)V
.registers 7
invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, 0x2
if-eqz v2, :cond_15
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
add-int/2addr v0, v3
:cond_15
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v0, ": "
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
if-eqz v2, :cond_25
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_25
return-void
.end method
.method protected doFormatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)V
.registers 8
const/16 v4, 0x20
invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v2, v2, 0x1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v3
invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v3
add-int/2addr v2, v3
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
return-void
.end method
.method protected doFormatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)V
.registers 7
const/16 v3, 0x20
invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v0
add-int/lit8 v0, v0, 0x1
add-int/lit8 v0, v0, 0x3
add-int/lit8 v0, v0, 0x1
invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1b
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
:cond_1b
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->appendProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
if-eqz v1, :cond_3b
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_3b
return-void
.end method
.method protected estimateProtocolVersionLen(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
.registers 3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, 0x4
return v0
.end method
.method public formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
instance-of v0, p2, Lch/boye/httpclientandroidlib/FormattedHeader;
if-eqz v0, :cond_15
check-cast p2, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {p2}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
:goto_14
return-object v0
:cond_15
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)V
goto :goto_14
.end method
.method public formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Request line may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)V
return-object v0
.end method
.method public formatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Status line may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->doFormatStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/StatusLine;)V
return-object v0
.end method
.method protected initBuffer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.registers 3
if-eqz p1, :cond_6
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V
:goto_5
return-object p1
:cond_6
new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v0, 0x40
invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
goto :goto_5
.end method