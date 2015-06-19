.class public Lorg/scribe/builder/api/LinkedInApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "LinkedInApi.java"
.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://api.linkedin.com/uas/oauth/authenticate?oauth_token=%s"
.field private static final REQUEST_TOKEN_URL:Ljava/lang/String; = "https://api.linkedin.com/uas/oauth/requestToken"
.field private final scopes:Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lorg/scribe/builder/api/LinkedInApi;->scopes:Ljava/util/Set;
return-void
.end method
.method public constructor <init>(Ljava/util/Set;)V
.registers 3
invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V
invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lorg/scribe/builder/api/LinkedInApi;->scopes:Ljava/util/Set;
return-void
.end method
.method private scopesAsString()Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lorg/scribe/builder/api/LinkedInApi;->scopes:Ljava/util/Set;
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "+"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b
:cond_2e
const/4 v3, 0x1
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public static varargs withScopes([Ljava/lang/String;)Lorg/scribe/builder/api/LinkedInApi;
.registers 3
new-instance v0, Ljava/util/HashSet;
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
new-instance v1, Lorg/scribe/builder/api/LinkedInApi;
invoke-direct {v1, v0}, Lorg/scribe/builder/api/LinkedInApi;-><init>(Ljava/util/Set;)V
return-object v1
.end method
.method public getAccessTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "https://api.linkedin.com/uas/oauth/accessToken"
return-object v0
.end method
.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
.registers 6
const-string v0, "https://api.linkedin.com/uas/oauth/authenticate?oauth_token=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRequestTokenEndpoint()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/scribe/builder/api/LinkedInApi;->scopes:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-eqz v0, :cond_b
const-string v0, "https://api.linkedin.com/uas/oauth/requestToken"
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "https://api.linkedin.com/uas/oauth/requestToken?scope="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lorg/scribe/builder/api/LinkedInApi;->scopesAsString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method