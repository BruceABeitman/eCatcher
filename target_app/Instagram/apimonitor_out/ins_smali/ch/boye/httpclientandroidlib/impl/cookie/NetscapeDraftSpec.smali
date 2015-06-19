.class public Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;
.super Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"
.field protected static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yy HH:mm:ss z"
.field private final datepatterns:[Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>([Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;-><init>()V
if-eqz p1, :cond_4c
invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;
:goto_d
const-string v0, "path"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "domain"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDomainHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDomainHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "max-age"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "secure"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "comment"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;-><init>()V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
const-string v0, "expires"
new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V
return-void
:cond_4c
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "EEE, dd-MMM-yy HH:mm:ss z"
aput-object v2, v0, v1
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;
goto :goto_d
.end method
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "List of cookies may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "List of cookies may not be empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
mul-int/lit8 v0, v0, 0x14
invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
const-string v0, "Cookie"
invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const-string v0, ": "
invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
const/4 v0, 0x0
move v1, v0
:goto_2f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_5b
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
if-lez v1, :cond_42
const-string v3, "; "
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_42
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_57
const-string v3, "="
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
:cond_57
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2f
:cond_5b
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
new-instance v1, Lch/boye/httpclientandroidlib/message/BufferedHeader;
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public getVersion()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
.registers 9
const/4 v5, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p2, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "Set-Cookie"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unrecognized cookie header \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
sget-object v2, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;
instance-of v0, p1, Lch/boye/httpclientandroidlib/FormattedHeader;
if-eqz v0, :cond_6a
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I
move-result v3
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v4
invoke-direct {v1, v3, v4}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
:goto_5c
const/4 v3, 0x1
new-array v3, v3, [Lch/boye/httpclientandroidlib/HeaderElement;
invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
aput-object v0, v3, v5
invoke-virtual {p0, v3, p2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
move-result-object v0
return-object v0
:cond_6a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_78
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Header value is null"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_78
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v0, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/ParserCursor;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I
move-result v3
invoke-direct {v1, v5, v3}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V
goto :goto_5c
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "netscape"
return-object v0
.end method