.class public final Lcom/instagram/common/a/e/a;
.super Ljava/lang/Object;
.source "AcceptLanguageRequestInterceptor.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.field private a:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private declared-synchronized a()Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/a/e/a;->a:Ljava/lang/String;
if-nez v1, :cond_2f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v1, v0}, Lcom/instagram/common/a/e/a;->a(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_29
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_24
const-string v0, ", "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_24
const-string v0, "en-US"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_29
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/a/e/a;->a:Ljava/lang/String;
:cond_2f
iget-object v0, p0, Lcom/instagram/common/a/e/a;->a:Ljava/lang/String;
:try_end_31
.catchall {:try_start_1 .. :try_end_31} :catchall_33
monitor-exit p0
return-object v0
:catchall_33
move-exception v0
monitor-exit p0
throw v0
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 p0, 0x0
:cond_3
:goto_3
return-object p0
:cond_4
const-string v0, "iw"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
const-string p0, "he"
goto :goto_3
:cond_f
const-string v0, "in"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
const-string p0, "id"
goto :goto_3
:cond_1a
const-string v0, "ji"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3
const-string p0, "yi"
goto :goto_3
.end method
.method private static a(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
.registers 4
invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/a/e/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1b
const-string v1, "-"
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1b
return-void
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const-string v0, "Accept-Language"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_11
const-string v0, "Accept-Language"
invoke-direct {p0}, Lcom/instagram/common/a/e/a;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
return-void
.end method