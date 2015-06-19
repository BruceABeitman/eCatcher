.class public abstract Ltwitter4j/internal/http/HttpClientBase;
.super Ljava/lang/Object;
.source "HttpClientBase.java"
.implements Ltwitter4j/internal/http/HttpClient;
.implements Ljava/io/Serializable;
.field private static final LOGGABLE:Z = false
.field private static final TAG:Ljava/lang/String; = "t4jHttpClientBase"
.field private static final serialVersionUID:J = 0x60615468668a4591L
.field protected final CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
sput-boolean v0, Ltwitter4j/internal/http/HttpClientBase;->LOGGABLE:Z
return-void
.end method
.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v3, p1, Ltwitter4j/internal/http/HttpClientBase;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Ltwitter4j/internal/http/HttpClientBase;
iget-object v3, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
iget-object v4, v0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method protected isProxyConfigured()Z
.registers 3
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public shutdown()V
.registers 1
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "HttpClientBase{CONF="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientBase;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
.registers 4
invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
sget-boolean v0, Ltwitter4j/internal/http/HttpClientBase;->LOGGABLE:Z
if-eqz v0, :cond_c
const-string v0, "t4jHttpClientBase"
invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method