.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DomainAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DomainAttributeHandler.java"
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_14
const-string v0, "."
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
:cond_14
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p2, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DomainAttributeHandler;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2a
:goto_29
:cond_29
return v0
:cond_2a
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
sub-int v2, v3, v2
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2e
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_29
const/4 v0, 0x1
goto :goto_29
.end method
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Missing value for domain attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_26
new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;
const-string v1, "Blank value for domain attribute"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object p2
const-string v0, "."
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "."
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
:cond_43
invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setDomain(Ljava/lang/String;)V
return-void
.end method
.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
.registers 8
const/16 v4, 0x2e
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p2, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cookie origin may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2e
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
const-string v1, "Invalid cookie state: domain not specified"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v0
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/ClientCookie;
if-eqz v0, :cond_fe
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;
const-string v3, "domain"
invoke-interface {v0, v3}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fe
const-string v0, "."
invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6e
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Domain attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates RFC 2109: domain must start with a dot"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6e
const/4 v0, 0x1
invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-ltz v0, :cond_7d
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
if-ne v0, v3, :cond_a4
:cond_7d
const-string v0, ".local"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a4
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Domain attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates RFC 2965: the value contains no embedded dots and the value is not .local"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a4
invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965DomainAttributeHandler;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c9
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Domain attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates RFC 2965: effective host name does not domain-match domain attribute."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c9
const/4 v0, 0x0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
sub-int v2, v3, v2
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_131
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Domain attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" violates RFC 2965: effective host minus domain may not contain any dots"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_fe
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_131
new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Illegal domain attribute: \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\".Domain of origin: \""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_131
return-void
.end method