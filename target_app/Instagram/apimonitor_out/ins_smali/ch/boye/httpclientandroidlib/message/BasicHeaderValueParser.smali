.class public Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"
.implements Lch/boye/httpclientandroidlib/message/HeaderValueParser;
.field private static final ALL_DELIMITERS:[C = null
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser; = null
.field private static final ELEM_DELIMITER:C = ','
.field private static final PARAM_DELIMITER:C = ';'
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
const/4 v0, 0x2
new-array v0, v0, [C
fill-array-data v0, :array_10
sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C
return-void
:array_10
.array-data 0x2
0x3bt 0x0t
0x2ct 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static isOneOf(C[C)Z
.registers 5
const/4 v1, 0x0
if-eqz p1, :cond_c
move v0, v1
:goto_4
array-length v2, p1
if-ge v0, v2, :cond_c
aget-char v2, p1, v0
if-ne p0, v2, :cond_d
const/4 v1, 0x1
:cond_c
return v1
:cond_d
add-int/lit8 v0, v0, 0x1
goto :goto_4
.end method
.method public static final parseElements(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/HeaderElement;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
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
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
return-object v0
.end method
.method public static final parseHeaderElement(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)Lch/boye/httpclientandroidlib/HeaderElement;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
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
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
return-object v0
.end method
.method public static final parseNameValuePair(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
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
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
return-object v0
.end method
.method public static final parseParameters(Ljava/lang/String;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)[Lch/boye/httpclientandroidlib/NameValuePair;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Value to parse may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;
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
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
return-object v0
.end method
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)Lch/boye/httpclientandroidlib/HeaderElement;
.registers 5
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
return-object v0
.end method
.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;
.registers 6
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
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_19
:cond_19
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v1
if-nez v1, :cond_37
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_33
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_19
:cond_33
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_37
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Lch/boye/httpclientandroidlib/HeaderElement;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/HeaderElement;
check-cast v0, [Lch/boye/httpclientandroidlib/HeaderElement;
return-object v0
.end method
.method public parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
.registers 7
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
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v1
const/4 v0, 0x0
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v2
if-nez v2, :cond_31
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v2
const/16 v3, 0x2c
if-eq v2, v3, :cond_31
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
:cond_31
invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v2, v1, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
return-object v0
.end method
.method public parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 4
sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C
invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;[C)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
return-object v0
.end method
.method public parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;[C)Lch/boye/httpclientandroidlib/NameValuePair;
.registers 16
const/16 v11, 0x22
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Char array buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
if-nez p2, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parser cursor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v5
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v0
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getUpperBound()I
move-result v9
:goto_24
if-ge v5, v9, :cond_d0
invoke-virtual {p1, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v3
const/16 v4, 0x3d
if-eq v3, v4, :cond_d0
invoke-static {v3, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->isOneOf(C[C)Z
move-result v3
if-eqz v3, :cond_48
move v3, v1
:goto_35
if-ne v5, v9, :cond_4b
invoke-virtual {p1, v0, v9}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
move-object v8, v0
move v3, v1
:goto_3d
if-eqz v3, :cond_53
invoke-virtual {p2, v5}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
const/4 v0, 0x0
invoke-virtual {p0, v8, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
:goto_47
return-object v0
:cond_48
add-int/lit8 v5, v5, 0x1
goto :goto_24
:cond_4b
invoke-virtual {p1, v0, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
move-result-object v0
add-int/lit8 v5, v5, 0x1
move-object v8, v0
goto :goto_3d
:cond_53
move v7, v2
move v0, v2
move v4, v5
:goto_56
if-ge v4, v9, :cond_ce
invoke-virtual {p1, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v10
if-ne v10, v11, :cond_cc
if-nez v7, :cond_cc
if-nez v0, :cond_7e
move v0, v1
:goto_63
move v6, v0
:goto_64
if-nez v6, :cond_80
if-nez v7, :cond_80
invoke-static {v10, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->isOneOf(C[C)Z
move-result v0
if-eqz v0, :cond_80
:goto_6e
move v2, v5
:goto_6f
if-ge v2, v4, :cond_ca
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v0
if-eqz v0, :cond_ca
add-int/lit8 v2, v2, 0x1
goto :goto_6f
:cond_7e
move v0, v2
goto :goto_63
:cond_80
if-nez v7, :cond_8e
if-eqz v6, :cond_8e
const/16 v0, 0x5c
if-ne v10, v0, :cond_8e
move v0, v1
:goto_89
add-int/lit8 v4, v4, 0x1
move v7, v0
move v0, v6
goto :goto_56
:cond_8e
move v0, v2
goto :goto_89
:goto_90
if-le v0, v2, :cond_a1
add-int/lit8 v3, v0, -0x1
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v3
invoke-static {v3}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v3
if-eqz v3, :cond_a1
add-int/lit8 v0, v0, -0x1
goto :goto_90
:cond_a1
sub-int v3, v0, v2
const/4 v5, 0x2
if-lt v3, v5, :cond_b8
invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_b8
add-int/lit8 v3, v0, -0x1
invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_b8
add-int/lit8 v2, v2, 0x1
add-int/lit8 v0, v0, -0x1
:cond_b8
invoke-virtual {p1, v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substring(II)Ljava/lang/String;
move-result-object v2
if-eqz v1, :cond_c8
add-int/lit8 v0, v4, 0x1
:goto_c0
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
invoke-virtual {p0, v8, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v0
goto :goto_47
:cond_c8
move v0, v4
goto :goto_c0
:cond_ca
move v0, v4
goto :goto_90
:cond_cc
move v6, v0
goto :goto_64
:cond_ce
move v1, v3
goto :goto_6e
:cond_d0
move v3, v2
goto/16 :goto_35
.end method
.method public parseParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/NameValuePair;
.registers 6
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
:goto_1c
if-ge v0, v1, :cond_2b
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v2
if-eqz v2, :cond_2b
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_2b
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v0
if-eqz v0, :cond_38
const/4 v0, 0x0
new-array v0, v0, [Lch/boye/httpclientandroidlib/NameValuePair;
:goto_37
return-object v0
:cond_38
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:cond_3d
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z
move-result v1
if-nez v1, :cond_58
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/message/ParserCursor;->getPos()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->charAt(I)C
move-result v1
const/16 v2, 0x2c
if-ne v1, v2, :cond_3d
:cond_58
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Lch/boye/httpclientandroidlib/NameValuePair;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;
check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;
goto :goto_37
.end method