.class public final Ltwitter4j/auth/RequestToken;
.super Ltwitter4j/auth/OAuthToken;
.source "RequestToken.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x71ff4a3702538200L
.field private final conf:Ltwitter4j/conf/Configuration;
.field private oauth:Ltwitter4j/auth/OAuthSupport;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
iput-object v0, p0, Ltwitter4j/auth/RequestToken;->conf:Ltwitter4j/conf/Configuration;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthSupport;)V
.registers 5
invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
iput-object v0, p0, Ltwitter4j/auth/RequestToken;->conf:Ltwitter4j/conf/Configuration;
iput-object p3, p0, Ltwitter4j/auth/RequestToken;->oauth:Ltwitter4j/auth/OAuthSupport;
return-void
.end method
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/auth/OAuthSupport;)V
.registers 4
invoke-direct {p0, p1}, Ltwitter4j/auth/OAuthToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
iput-object v0, p0, Ltwitter4j/auth/RequestToken;->conf:Ltwitter4j/conf/Configuration;
iput-object p2, p0, Ltwitter4j/auth/RequestToken;->oauth:Ltwitter4j/auth/OAuthSupport;
return-void
.end method
.method public bridge synthetic equals(Ljava/lang/Object;)Z
.registers 3
invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public getAuthenticationURL()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Ltwitter4j/auth/RequestToken;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthAuthenticationURL()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?oauth_token="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ltwitter4j/auth/RequestToken;->getToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getAuthorizationURL()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Ltwitter4j/auth/RequestToken;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthAuthorizationURL()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?oauth_token="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ltwitter4j/auth/RequestToken;->getToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getToken()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getTokenSecret()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic hashCode()I
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->hashCode()I
move-result v0
return v0
.end method
.method public bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method