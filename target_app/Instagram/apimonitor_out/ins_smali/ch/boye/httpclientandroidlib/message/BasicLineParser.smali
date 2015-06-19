.class public Lch/boye/httpclientandroidlib/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"
.implements Lch/boye/httpclientandroidlib/message/LineParser;
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
.field protected final protocol:Lch/boye/httpclientandroidlib/ProtocolVersion;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicLineParser;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicLineParser;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicLineParser;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_7
sget-object p1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
:cond_7
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicLineParser;->protocol:Lch/boye/httpclientandroidlib/ProtocolVersion;
return-void
.end method
.method public static final parseHeader(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/LineParser;)Lch/boye/httpclientandroidlib/Header;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
:cond_e
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/message/LineParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
return-object v0
.end method
.method public static final parseProtocolVersion(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/LineParser;)Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
:cond_e
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/LineParser;->parseProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
return-object v0
.end method
.method public static final parseRequestLine(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/LineParser;)Lch/boye/httpclientandroidlib/RequestLine;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
:cond_e
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/LineParser;->parseRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
return-object v0
.end method
.method public static final parseStatusLine(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/LineParser;)Lch/boye/httpclientandroidlib/StatusLine;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
:cond_e
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/LineParser;->parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
return-object v0
.end method
.method protected createProtocolVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicLineParser;->protocol:Lch/boye/httpclientandroidlib/ProtocolVersion;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;->forVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
return-object v0
.end method
.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/RequestLine;
.registers 5
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicRequestLine;
invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
return-object v0
.end method
.method protected createStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)Lch/boye/httpclientandroidlib/StatusLine;
.registers 5
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
return-object v0
.end method
.method public hasProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Z
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p2, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parser cursor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicLineParser;->protocol:Lch/boye/httpclientandroidlib/ProtocolVersion;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v1
add-int/lit8 v4, v6, 0x4
if-ge v1, v4, :cond_2d
:cond_2c
:goto_2c
return v3
:cond_2d
if-gez v0, :cond_56
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v0
add-int/lit8 v0, v0, -0x4
sub-int/2addr v0, v6
:cond_36
add-int v1, v0, v6
add-int/lit8 v1, v1, 0x4
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v4
if-gt v1, v4, :cond_2c
move v4, v3
move v1, v2
:goto_42
if-eqz v1, :cond_6d
if-ge v4, v6, :cond_6d
add-int v1, v0, v4
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v1, v7, :cond_6b
move v1, v2
:goto_53
add-int/lit8 v4, v4, 0x1
goto :goto_42
:cond_56
if-nez v0, :cond_36
:goto_58
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v1
if-ge v0, v1, :cond_36
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v1
if-eqz v1, :cond_36
add-int/lit8 v0, v0, 0x1
goto :goto_58
:cond_6b
move v1, v3
goto :goto_53
:cond_6d
if-eqz v1, :cond_7c
add-int/2addr v0, v6
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v0
const/16 v1, 0x2f
if-ne v0, v1, :cond_7a
:goto_78
move v3, v2
goto :goto_2c
:cond_7a
move v2, v3
goto :goto_78
:cond_7c
move v2, v1
goto :goto_78
.end method
.method public parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/Header;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/message/BufferedHeader;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
return-object v0
.end method
.method public parseProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 14
const/4 v10, -0x1
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parser cursor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicLineParser;->protocol:Lch/boye/httpclientandroidlib/ProtocolVersion;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v7
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v3
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v8
add-int v0, v8, v6
add-int/lit8 v0, v0, 0x4
if-le v0, v3, :cond_4f
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Not a valid protocol version: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4f
move v4, v2
move v0, v1
:goto_51
if-eqz v0, :cond_67
if-ge v4, v6, :cond_67
add-int v0, v8, v4
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v0
invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C
move-result v9
if-ne v0, v9, :cond_65
move v0, v1
:goto_62
add-int/lit8 v4, v4, 0x1
goto :goto_51
:cond_65
move v0, v2
goto :goto_62
:cond_67
if-eqz v0, :cond_10b
add-int v0, v8, v6
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v0
const/16 v4, 0x2f
if-ne v0, v4, :cond_8e
:goto_73
if-nez v1, :cond_90
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Not a valid protocol version: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8e
move v1, v2
goto :goto_73
:cond_90
add-int/lit8 v0, v6, 0x1
add-int/2addr v0, v8
const/16 v1, 0x2e
invoke-virtual {p1, v1, v0, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v1
if-ne v1, v10, :cond_b4
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid protocol version number: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_b4
:cond_b4
invoke-virtual {p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_bb
.catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_bb} :catch_d7
move-result v2
add-int/lit8 v1, v1, 0x1
const/16 v0, 0x20
invoke-virtual {p1, v0, v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v0
if-ne v0, v10, :cond_c7
move v0, v3
:cond_c7
:try_start_c7
invoke-virtual {p1, v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_ce
.catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_ce} :catch_f1
move-result v1
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
invoke-virtual {p0, v2, v1}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->createProtocolVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
return-object v0
:catch_d7
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid protocol major version number: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:catch_f1
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid protocol minor version number: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10b
move v1, v0
goto/16 :goto_73
.end method
.method public parseRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/RequestLine;
.registers 9
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parser cursor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v0
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v1
:try_start_1c
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v2
const/16 v3, 0x20
invoke-virtual {p1, v3, v2, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v3
if-gez v3, :cond_5e
new-instance v2, Lch/boye/httpclientandroidlib/ParseException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid request line: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v2
:catch_44
:try_end_44
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_44} :catch_44
move-exception v2
new-instance v2, Lch/boye/httpclientandroidlib/ParseException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid request line: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v2
:try_start_5e
:cond_5e
invoke-virtual {p1, v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v3
const/16 v4, 0x20
invoke-virtual {p1, v4, v3, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v4
if-gez v4, :cond_8d
new-instance v2, Lch/boye/httpclientandroidlib/ParseException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid request line: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v2
:cond_8d
invoke-virtual {p1, v3, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v4}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->parseProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v4
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v5
if-nez v5, :cond_ba
new-instance v2, Lch/boye/httpclientandroidlib/ParseException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid request line: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v2
:cond_ba
invoke-virtual {p0, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/RequestLine;
:try_end_bd
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5e .. :try_end_bd} :catch_44
move-result-object v0
return-object v0
.end method
.method public parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;
.registers 10
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parser cursor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v3
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v2
:try_start_1c
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->parseProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v4
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v5
const/16 v0, 0x20
invoke-virtual {p1, v0, v5, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v0
if-gez v0, :cond_a7
move v1, v2
:goto_30
invoke-virtual {p1, v5, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v5
const/4 v0, 0x0
:goto_35
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
if-ge v0, v6, :cond_7b
invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z
move-result v6
if-nez v6, :cond_78
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Status line contains invalid status code: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v3, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_5e
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_5e} :catch_5e
:catch_5e
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Invalid status line: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v3, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_78
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_7b
:try_start_7b
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_7e
.catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_7e} :catch_8a
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_7e} :catch_5e
move-result v5
if-ge v1, v2, :cond_a4
:try_start_81
invoke-virtual {p1, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
:goto_85
invoke-virtual {p0, v4, v5, v0}, Lch/boye/httpclientandroidlib/message/BasicLineParser;->createStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
return-object v0
:catch_8a
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Status line contains invalid status code: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v3, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a4
const-string v0, ""
:try_end_a6
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_a6} :catch_5e
goto :goto_85
:cond_a7
move v1, v0
goto :goto_30
.end method
.method protected skipWhitespace(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)V
.registers 6
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v0
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v1
:goto_8
if-ge v0, v1, :cond_17
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v2
if-eqz v2, :cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_17
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
return-void
.end method