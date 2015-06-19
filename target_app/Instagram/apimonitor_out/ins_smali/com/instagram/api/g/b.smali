.class public final Lcom/instagram/api/g/b;
.super Ljava/lang/Object;
.source "CdnTraceRequestHelper.java"
.field private static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "igcdn.com"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "cdninstagram.com"
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;
return-void
.end method
.method private static a(Ljava/net/URI;)Lcom/instagram/api/g/c;
.registers 4
invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "ak.instagram.com"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15
sget-object v0, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2b
sget-object v1, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2e
:cond_2b
sget-object v0, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;
goto :goto_14
:cond_2e
const/4 v0, 0x0
goto :goto_14
.end method
.method public static a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/a;)V
.registers 4
const-string v0, "X-Backend"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const-string v0, "X-Backend"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->d(Ljava/lang/String;)V
:cond_15
const-string v0, "X-BlockId"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const-string v0, "X-BlockId"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/g/a;->a(J)V
:cond_32
const-string v0, "X-Object-Type"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
const-string v0, "X-Object-Type"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->e(Ljava/lang/String;)V
:cond_47
const-string v0, "X-Origin-Hit"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_64
const-string v0, "X-Origin-Hit"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->a(I)V
:cond_64
const-string v0, "X-Origin-From-Pieces"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_79
const-string v0, "X-Origin-From-Pieces"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->f(Ljava/lang/String;)V
:cond_79
const-string v0, "X-Origin-Hit-Original"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8e
const-string v0, "X-Origin-Hit-Original"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->g(Ljava/lang/String;)V
:cond_8e
const-string v0, "X-Origin-Is-Transcode"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b1
const-string v0, "X-Origin-Is-Transcode"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_b1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->b(I)V
:cond_b1
const-string v0, "X-Edge-Hit"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ce
const-string v0, "X-Edge-Hit"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->c(I)V
:cond_ce
const-string v0, "X-Edge-From-Pieces"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e3
const-string v0, "X-Edge-From-Pieces"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->h(Ljava/lang/String;)V
:cond_e3
const-string v0, "X-FB-Edge-Debug"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f8
const-string v0, "X-FB-Edge-Debug"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->i(Ljava/lang/String;)V
:cond_f8
const-string v0, "X-Cache"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10d
const-string v0, "X-Cache"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->a(Ljava/lang/String;)V
:cond_10d
const-string v0, "X-Cache-Remote"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_122
const-string v0, "X-Cache-Remote"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->b(Ljava/lang/String;)V
:cond_122
const-string v0, "X-Akamai-Pragma-Client-IP"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_137
const-string v0, "X-Akamai-Pragma-Client-IP"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->c(Ljava/lang/String;)V
:cond_137
return-void
.end method
.method public static a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
.registers 4
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getURI()Ljava/net/URI;
move-result-object v0
invoke-static {v0}, Lcom/instagram/api/g/b;->a(Ljava/net/URI;)Lcom/instagram/api/g/c;
move-result-object v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
sget-object v1, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;
invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
const-string v1, "Pragma"
const-string v2, "akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-get-client-ip"
invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_1a
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v1
const-string v2, "Cdn"
invoke-interface {v1, v2, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
goto :goto_a
:cond_24
const-string v1, "X-FB-Debug"
const-string v2, "True"
invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "X-FB-Origin-Debug"
const-string v2, "True"
invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public static a(Lch/boye/httpclientandroidlib/params/HttpParams;Lcom/instagram/api/g/i;)V
.registers 4
const-string v0, "Cdn"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_18
new-instance v1, Lcom/instagram/api/g/a;
const-string v0, "Cdn"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/c;
invoke-direct {v1, v0}, Lcom/instagram/api/g/a;-><init>(Lcom/instagram/api/g/c;)V
invoke-virtual {p1, v1}, Lcom/instagram/api/g/i;->a(Lcom/instagram/api/g/a;)V
:cond_18
return-void
.end method
.method public static a(Lcom/instagram/api/g/a;)Z
.registers 3
sget-object v0, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;
invoke-virtual {p0}, Lcom/instagram/api/g/a;->a()Lcom/instagram/api/g/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static b(Lcom/instagram/api/g/a;)Z
.registers 3
sget-object v0, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;
invoke-virtual {p0}, Lcom/instagram/api/g/a;->a()Lcom/instagram/api/g/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method