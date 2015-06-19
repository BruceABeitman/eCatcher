.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"
.implements Lch/boye/httpclientandroidlib/io/HttpMessageParser;
.field private static final HEADERS:I = 0x1
.field private static final HEAD_LINE:I
.field private final headerLines:Ljava/util/List;
.field protected final lineParser:Lch/boye/httpclientandroidlib/message/LineParser;
.field private final maxHeaderCount:I
.field private final maxLineLen:I
.field private message:Lch/boye/httpclientandroidlib/HttpMessage;
.field private final sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
.field private state:I
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 6
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Session input buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
if-nez p3, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
const-string v0, "http.connection.max-header-count"
invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I
const-string v0, "http.connection.max-line-length"
invoke-interface {p3, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I
if-eqz p2, :cond_39
:goto_2c
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I
return-void
:cond_39
sget-object p2, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
goto :goto_2c
.end method
.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;)[Lch/boye/httpclientandroidlib/Header;
.registers 5
if-nez p3, :cond_4
sget-object p3, Lch/boye/httpclientandroidlib/message/BasicLineParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineParser;
:cond_4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v0
return-object v0
.end method
.method public static parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;
.registers 14
const/16 v8, 0x9
const/4 v4, 0x0
const/16 v7, 0x20
const/4 v2, 0x0
if-nez p0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Session input buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
if-nez p3, :cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Line parser may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
if-nez p4, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header line list may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
move-object v3, v4
move-object v0, v4
:goto_26
if-nez v0, :cond_5c
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
const/16 v1, 0x40
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
:goto_2f
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
move-result v1
const/4 v5, -0x1
if-eq v1, v5, :cond_9d
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v1
if-lez v1, :cond_9d
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
if-eq v1, v7, :cond_48
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
if-ne v1, v8, :cond_95
:cond_48
if-eqz v3, :cond_95
move v1, v2
:goto_4b
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v5
if-ge v1, v5, :cond_60
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v5
if-eq v5, v7, :cond_59
if-ne v5, v8, :cond_60
:cond_59
add-int/lit8 v1, v1, 0x1
goto :goto_4b
:cond_5c
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V
goto :goto_2f
:cond_60
if-lez p2, :cond_78
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v5
add-int/lit8 v5, v5, 0x1
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v6
add-int/2addr v5, v6
sub-int/2addr v5, v1
if-le v5, p2, :cond_78
new-instance v0, Ljava/io/IOException;
const-string v1, "Maximum line length limit exceeded"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_78
invoke-virtual {v3, v7}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v5
sub-int/2addr v5, v1
invoke-virtual {v3, v0, v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
move-object v1, v0
move-object v0, v3
:goto_85
if-lez p1, :cond_9a
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v3
if-lt v3, p1, :cond_9a
new-instance v0, Ljava/io/IOException;
const-string v1, "Maximum header count exceeded"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_95
invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v1, v4
goto :goto_85
:cond_9a
move-object v3, v0
move-object v0, v1
goto :goto_26
:cond_9d
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v0
new-array v1, v0, [Lch/boye/httpclientandroidlib/Header;
:goto_a3
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_c3
invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
:try_start_af
invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/message/LineParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
aput-object v0, v1, v2
:try_end_b5
.catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_af .. :try_end_b5} :catch_b8
add-int/lit8 v2, v2, 0x1
goto :goto_a3
:catch_b8
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/ParseException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c3
return-object v1
.end method
.method public parse()Lch/boye/httpclientandroidlib/HttpMessage;
.registers 6
iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I
packed-switch v0, :pswitch_data_44
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Inconsistent parser state"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_d
:pswitch_d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
:try_end_15
.catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_d .. :try_end_15} :catch_39
const/4 v0, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I
:pswitch_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxHeaderCount:I
iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->maxLineLen:I
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;
invoke-static {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->parseHeaders(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;IILch/boye/httpclientandroidlib/message/LineParser;Ljava/util/List;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->message:Lch/boye/httpclientandroidlib/HttpMessage;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
const/4 v1, 0x0
iput v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;->state:I
return-object v0
:catch_39
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/ParseException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:pswitch_data_44
.packed-switch 0x0
:pswitch_d
:pswitch_18
.end packed-switch
.end method
.method protected abstract parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
.end method