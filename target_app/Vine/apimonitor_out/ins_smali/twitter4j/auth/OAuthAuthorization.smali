.class public Ltwitter4j/auth/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuthSupport;
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"
.field private static final LOGGABLE:Z = false
.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter; = null
.field private static RAND:Ljava/util/Random; = null
.field private static final TAG:Ljava/lang/String; = "t4jOAuthAuth"
.field private static transient http:Ltwitter4j/internal/http/HttpClientWrapper; = null
.field private static final serialVersionUID:J = -0x3c9fc4eaff57b01aL
.field private final conf:Ltwitter4j/conf/Configuration;
.field private consumerKey:Ljava/lang/String;
.field private consumerSecret:Ljava/lang/String;
.field private oauthToken:Ltwitter4j/auth/OAuthToken;
.field private realm:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
sput-boolean v0, Ltwitter4j/auth/OAuthAuthorization;->LOGGABLE:Z
new-instance v0, Ltwitter4j/internal/http/HttpParameter;
const-string v1, "oauth_signature_method"
const-string v2, "HMAC-SHA1"
invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;
return-void
.end method
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
iput-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;
iput-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;
new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;
invoke-direct {v0, p1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
new-instance v0, Ltwitter4j/auth/AccessToken;
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;
move-result-object v1
invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
:cond_3c
return-void
.end method
.method static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v7, 0x8
const/4 v6, -0x1
const/4 v5, 0x0
const-string v4, "?"
invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-eq v6, v2, :cond_10
invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
:cond_10
const-string v4, "/"
invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v3
invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v4, ":"
invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
if-eq v6, v1, :cond_3a
const-string v4, "http://"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_50
const-string v4, ":80"
invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_50
invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_3a
:goto_3a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
return-object p0
:cond_50
const-string v4, "https://"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3a
const-string v4, ":443"
invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3a
invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_3a
.end method
.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
.registers 3
const-string v0, "&"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
:cond_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_4f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ltwitter4j/internal/http/HttpParameter;
invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z
move-result v3
if-nez v3, :cond_9
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-eqz v3, :cond_2b
if-eqz p2, :cond_28
const-string v3, "\""
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_28
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2b
invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz p2, :cond_43
const-string v3, "\""
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_43
invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_9
:cond_4f
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-eqz v3, :cond_5c
if-eqz p2, :cond_5c
const-string v3, "\""
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5c
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private ensureTokenIsAvailable()V
.registers 3
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No Token available."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method static normalizeAuthorizationHeaders(Ljava/util/List;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static normalizeRequestParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
.registers 14
const-string v7, "?"
invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
const/4 v7, -0x1
if-eq v7, v4, :cond_58
add-int/lit8 v7, v4, 0x1
invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
const-string v8, "&"
invoke-static {v7, v8}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
move-object v0, v5
:try_start_16
array-length v2, v0
const/4 v1, 0x0
:goto_18
if-ge v1, v2, :cond_58
aget-object v3, v0, v1
const-string v7, "="
invoke-static {v3, v7}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
array-length v7, v6
const/4 v8, 0x2
if-ne v7, v8, :cond_43
new-instance v7, Ltwitter4j/internal/http/HttpParameter;
const/4 v8, 0x0
aget-object v8, v6, v8
const-string v9, "UTF-8"
invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v9, 0x1
aget-object v9, v6, v9
const-string v10, "UTF-8"
invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_40
add-int/lit8 v1, v1, 0x1
goto :goto_18
:cond_43
new-instance v7, Ltwitter4j/internal/http/HttpParameter;
const/4 v8, 0x0
aget-object v8, v6, v8
const-string v9, "UTF-8"
invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v9, ""
invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_56
.catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_56} :catch_57
goto :goto_40
:catch_57
move-exception v7
:cond_58
return-void
.end method
.method static toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
array-length v1, p0
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object v0
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
instance-of v3, p1, Ltwitter4j/auth/OAuthSupport;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Ltwitter4j/auth/OAuthAuthorization;
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
if-eqz v3, :cond_1e
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
:cond_1c
move v1, v2
goto :goto_4
:cond_1e
iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
if-nez v3, :cond_1c
:cond_22
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
if-eqz v3, :cond_32
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_36
:cond_30
move v1, v2
goto :goto_4
:cond_32
iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
if-nez v3, :cond_30
:cond_36
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-eqz v3, :cond_46
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iget-object v4, v0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {v3, v4}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_44
move v1, v2
goto :goto_4
:cond_46
iget-object v3, v0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-eqz v3, :cond_4
goto :goto_44
.end method
.method  generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
.registers 15
if-nez p3, :cond_5
const/4 v5, 0x0
new-array p3, v5, [Ltwitter4j/internal/http/HttpParameter;
:cond_5
new-instance v2, Ljava/util/ArrayList;
const/4 v5, 0x5
invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_consumer_key"
iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v5, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_timestamp"
invoke-direct {v5, v6, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_nonce"
invoke-direct {v5, v6, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_version"
const-string v7, "1.0"
invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz p6, :cond_4c
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_token"
invoke-virtual {p6}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_4c
new-instance v4, Ljava/util/ArrayList;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v5
array-length v6, p3
add-int/2addr v5, v6
invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z
move-result v5
if-nez v5, :cond_67
invoke-static {p3}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_67
invoke-direct {p0, p2, v4}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v6, "&"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "&"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {v4}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-boolean v5, Ltwitter4j/auth/OAuthAuthorization;->LOGGABLE:Z
if-eqz v5, :cond_b2
const-string v5, "t4jOAuthAuth"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "OAuth base string: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b2
invoke-virtual {p0, v1, p6}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
move-result-object v3
sget-boolean v5, Ltwitter4j/auth/OAuthAuthorization;->LOGGABLE:Z
if-eqz v5, :cond_d2
const-string v5, "t4jOAuthAuth"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "OAuth signature: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d2
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_signature"
invoke-direct {v5, v6, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v5, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;
if-eqz v5, :cond_ec
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "realm"
iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;
invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ec
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "OAuth "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ","
const/4 v7, 0x1
invoke-static {v2, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method  generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
.registers 16
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long v9, v0, v2
sget-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
int-to-long v0, v0
add-long v7, v9, v0
invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v6, p4
invoke-virtual/range {v0 .. v6}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.registers 16
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
const-wide/16 v11, 0x3e8
div-long v7, v9, v11
sget-object v9, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;
invoke-virtual {v9}, Ljava/util/Random;->nextInt()I
move-result v9
int-to-long v9, v9
add-long v1, v7, v9
new-instance v4, Ljava/util/ArrayList;
const/4 v9, 0x5
invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_consumer_key"
iget-object v11, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v9, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_timestamp"
invoke-direct {v9, v10, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_nonce"
invoke-direct {v9, v10, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_version"
const-string v11, "1.0"
invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-eqz v9, :cond_5c
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_token"
iget-object v11, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {v11}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;
move-result-object v11
invoke-direct {v9, v10, v11}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5c
new-instance v6, Ljava/util/ArrayList;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v9
invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-direct {p0, p2, v6}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v10, "&"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, "&"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {v6}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v9, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {p0, v3, v9}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
move-result-object v5
new-instance v9, Ltwitter4j/internal/http/HttpParameter;
const-string v10, "oauth_signature"
invoke-direct {v9, v10, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v4
.end method
.method  generateSignature(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
.registers 11
const/4 v0, 0x0
:try_start_1
const-string v6, "HmacSHA1"
invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
move-result-object v2
if-nez p2, :cond_3d
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "&"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljavax/crypto/spec/SecretKeySpec;
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v6
const-string v7, "HmacSHA1"
invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
:goto_2d
:cond_2d
invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v6
invoke-virtual {v2, v6}, Ljavax/crypto/Mac;->doFinal([B)[B
:try_end_37
.catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_37} :catch_77
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_37} :catch_89
move-result-object v0
invoke-static {v0}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;
move-result-object v6
return-object v6
:try_start_3d
:cond_3d
invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;
move-result-object v5
if-nez v5, :cond_2d
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "&"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljavax/crypto/spec/SecretKeySpec;
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v6
const-string v7, "HmacSHA1"
invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
invoke-virtual {p2, v5}, Ltwitter4j/auth/OAuthToken;->setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V
:try_end_76
.catch Ljava/security/InvalidKeyException; {:try_start_3d .. :try_end_76} :catch_77
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_76} :catch_89
goto :goto_2d
:catch_77
move-exception v1
sget-boolean v6, Ltwitter4j/auth/OAuthAuthorization;->LOGGABLE:Z
if-eqz v6, :cond_83
const-string v6, "t4jOAuthAuth"
const-string v7, "Failed initialize \"Message Authentication Code\" (MAC)"
invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_83
new-instance v6, Ljava/lang/AssertionError;
invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v6
:catch_89
move-exception v3
sget-boolean v6, Ltwitter4j/auth/OAuthAuthorization;->LOGGABLE:Z
if-eqz v6, :cond_95
const-string v6, "t4jOAuthAuth"
const-string v7, "Failed to get HmacSHA1 \"Message Authentication Code\" (MAC)"
invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_95
new-instance v6, Ljava/lang/AssertionError;
invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v6
.end method
.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;
move-result-object v0
invoke-virtual {v0}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;
move-result-object v2
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
.registers 4
invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
instance-of v0, v0, Ltwitter4j/auth/AccessToken;
if-eqz v0, :cond_e
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
check-cast v0, Ltwitter4j/auth/AccessToken;
:goto_d
return-object v0
:cond_e
new-instance v0, Ltwitter4j/auth/AccessToken;
sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v1
invoke-direct {v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
check-cast v0, Ltwitter4j/auth/AccessToken;
goto :goto_d
.end method
.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 9
invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V
new-instance v0, Ltwitter4j/auth/AccessToken;
sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;
const/4 v4, 0x0
new-instance v5, Ltwitter4j/internal/http/HttpParameter;
const-string v6, "oauth_verifier"
invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v1
invoke-direct {v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
check-cast v0, Ltwitter4j/auth/AccessToken;
return-object v0
.end method
.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 12
:try_start_0
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;
move-result-object v1
const-string v2, "http://"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_26
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "https://"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x7
invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_26
new-instance v2, Ltwitter4j/auth/AccessToken;
sget-object v3, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;
const/4 v4, 0x3
new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;
const/4 v5, 0x0
new-instance v6, Ltwitter4j/internal/http/HttpParameter;
const-string v7, "x_auth_username"
invoke-direct {v6, v7, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v6, v4, v5
const/4 v5, 0x1
new-instance v6, Ltwitter4j/internal/http/HttpParameter;
const-string v7, "x_auth_password"
invoke-direct {v6, v7, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v6, v4, v5
const/4 v5, 0x2
new-instance v6, Ltwitter4j/internal/http/HttpParameter;
const-string v7, "x_auth_mode"
const-string v8, "client_auth"
invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v6, v4, v5
invoke-virtual {v3, v1, v4, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v3
invoke-direct {v2, v3}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V
iput-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
check-cast v2, Ltwitter4j/auth/AccessToken;
:try_end_5a
.catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_5a} :catch_5b
return-object v2
:catch_5b
move-exception v0
new-instance v2, Ltwitter4j/TwitterException;
const-string v3, "The screen name / password combination seems to be invalid."
invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I
move-result v4
invoke-direct {v2, v3, v0, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V
throw v2
.end method
.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
.registers 3
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {p0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 4
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {p0, p2}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
.registers 8
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
instance-of v1, v1, Ltwitter4j/auth/AccessToken;
if-eqz v1, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Access token already available."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_1f
new-instance v1, Ltwitter4j/internal/http/HttpParameter;
const-string v2, "oauth_callback"
invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1f
if-eqz p2, :cond_2b
new-instance v1, Ltwitter4j/internal/http/HttpParameter;
const-string v2, "x_auth_access_type"
invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2b
new-instance v2, Ltwitter4j/auth/RequestToken;
sget-object v3, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthRequestTokenURL()Ljava/lang/String;
move-result-object v4
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ltwitter4j/internal/http/HttpParameter;
invoke-virtual {v3, v4, v1, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v1
invoke-direct {v2, v1, p0}, Ltwitter4j/auth/RequestToken;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/auth/OAuthSupport;)V
iput-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
check-cast v1, Ltwitter4j/auth/RequestToken;
return-object v1
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
if-eqz v2, :cond_28
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
if-eqz v2, :cond_2a
iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_17
add-int v0, v3, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-eqz v3, :cond_25
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {v1}, Ltwitter4j/auth/OAuthToken;->hashCode()I
move-result v1
:cond_25
add-int v0, v2, v1
return v0
:cond_28
move v0, v1
goto :goto_b
:cond_2a
move v2, v1
goto :goto_17
.end method
.method public isEnabled()Z
.registers 2
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
if-eqz v0, :cond_c
iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
instance-of v0, v0, Ltwitter4j/auth/AccessToken;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
.registers 2
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
return-void
.end method
.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_9
:goto_2
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
if-eqz p2, :cond_c
:goto_6
iput-object p2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;
return-void
:cond_9
const-string p1, ""
goto :goto_2
:cond_c
const-string p2, ""
goto :goto_6
.end method
.method public setOAuthRealm(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "OAuthAuthorization{consumerKey=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", consumerSecret=\'******************************************\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oauthToken="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method