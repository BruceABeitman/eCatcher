.class public Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 11
const/16 v7, 0x3b
const/4 v0, 0x1
const/4 v2, 0x0
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v3
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v1
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v5
:goto_10
if-ge v3, v5, :cond_1d
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v4
const/16 v6, 0x3d
if-eq v4, v6, :cond_1d
if-ne v4, v7, :cond_31
move v2, v0
:cond_1d
if-ne v3, v5, :cond_34
invoke-virtual {p1, v1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v1
move-object v4, v1
move v1, v0
:goto_25
if-eqz v1, :cond_3d
invoke-virtual {p2, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
const/4 v1, 0x0
invoke-direct {v0, v4, v1}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_30
return-object v0
:cond_31
add-int/lit8 v3, v3, 0x1
goto :goto_10
:cond_34
invoke-virtual {p1, v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v3, v3, 0x1
move-object v4, v1
move v1, v2
goto :goto_25
:cond_3d
move v2, v3
:goto_3e
if-ge v2, v5, :cond_7f
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v6
if-ne v6, v7, :cond_56
:goto_46
if-ge v3, v2, :cond_7d
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v1
if-eqz v1, :cond_7d
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_46
:cond_56
add-int/lit8 v2, v2, 0x1
goto :goto_3e
:goto_59
if-le v1, v3, :cond_6a
add-int/lit8 v5, v1, -0x1
invoke-virtual {p1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v5
invoke-static {v5}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v5
if-eqz v5, :cond_6a
add-int/lit8 v1, v1, -0x1
goto :goto_59
:cond_6a
invoke-virtual {p1, v3, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_7b
add-int/lit8 v0, v2, 0x1
:goto_72
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
invoke-direct {v0, v4, v1}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_30
:cond_7b
move v0, v2
goto :goto_72
:cond_7d
move v1, v2
goto :goto_59
:cond_7f
move v0, v1
goto :goto_46
.end method
.method public parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
.registers 8
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
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_1d
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v2
if-nez v2, :cond_2b
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1d
:cond_2b
new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v4
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;
invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;
invoke-direct {v2, v3, v4, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
return-object v2
.end method