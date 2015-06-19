.class public abstract Loauth/signpost/AbstractOAuthProvider;
.super Ljava/lang/Object;
.source "AbstractOAuthProvider.java"
.implements Loauth/signpost/OAuthProvider;
.field private static final serialVersionUID:J = 0x1L
.field private accessTokenEndpointUrl:Ljava/lang/String;
.field private authorizationWebsiteUrl:Ljava/lang/String;
.field private defaultHeaders:Ljava/util/Map;
.field private isOAuth10a:Z
.field private transient listener:Loauth/signpost/OAuthProviderListener;
.field private requestTokenEndpointUrl:Ljava/lang/String;
.field private responseParameters:Loauth/signpost/http/HttpParameters;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;
iput-object p2, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;
iput-object p3, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;
new-instance v0, Loauth/signpost/http/HttpParameters;
invoke-direct {v0}, Loauth/signpost/http/HttpParameters;-><init>()V
iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;
return-void
.end method
.method protected closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
.registers 3
return-void
.end method
.method protected abstract createRequest(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;
.end method
.method public getAccessTokenEndpointUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;
return-object v0
.end method
.method public getAuthorizationWebsiteUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;
return-object v0
.end method
.method public getRequestHeaders()Ljava/util/Map;
.registers 2
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;
return-object v0
.end method
.method public getRequestTokenEndpointUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;
return-object v0
.end method
.method protected getResponseParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
invoke-virtual {v0, p1}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getResponseParameters()Loauth/signpost/http/HttpParameters;
.registers 2
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
return-object v0
.end method
.method protected handleUnexpectedResponse(ILoauth/signpost/http/HttpResponse;)V
.registers 7
if-nez p2, :cond_3
return-void
:cond_3
new-instance v1, Ljava/io/BufferedReader;
new-instance v0, Ljava/io/InputStreamReader;
invoke-interface {p2}, Loauth/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
:goto_1a
if-eqz v0, :cond_24
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
goto :goto_1a
:cond_24
packed-switch p1, :pswitch_data_5e
new-instance v0, Loauth/signpost/exception/OAuthCommunicationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Service provider responded in error: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " ("
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Loauth/signpost/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:pswitch_54
new-instance v0, Loauth/signpost/exception/OAuthNotAuthorizedException;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_5e
.packed-switch 0x191
:pswitch_54
.end packed-switch
.end method
.method public isOAuth10a()Z
.registers 2
iget-boolean v0, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z
return v0
.end method
.method public removeListener(Loauth/signpost/OAuthProviderListener;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
return-void
.end method
.method public retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x0
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_15
:cond_d
new-instance v0, Loauth/signpost/exception/OAuthExpectationFailedException;
const-string v1, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"
invoke-direct {v0, v1}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
iget-boolean v0, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z
if-eqz v0, :cond_2b
if-eqz p2, :cond_2b
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const-string v2, "oauth_verifier"
aput-object v2, v1, v3
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {p0, p1, v0, v1}, Loauth/signpost/AbstractOAuthProvider;->retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
:goto_2a
return-void
:cond_2b
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;
new-array v1, v3, [Ljava/lang/String;
invoke-virtual {p0, p1, v0, v1}, Loauth/signpost/AbstractOAuthProvider;->retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_2a
.end method
.method public retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
invoke-interface {p1, v0, v0}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;
new-array v1, v5, [Ljava/lang/String;
const-string v2, "oauth_callback"
aput-object v2, v1, v3
aput-object p2, v1, v4
invoke-virtual {p0, p1, v0, v1}, Loauth/signpost/AbstractOAuthProvider;->retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
const-string v1, "oauth_callback_confirmed"
invoke-virtual {v0, v1}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
const-string v2, "oauth_callback_confirmed"
invoke-virtual {v1, v2}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z
iget-boolean v0, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z
if-eqz v0, :cond_46
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;
new-array v1, v5, [Ljava/lang/String;
const-string v2, "oauth_token"
aput-object v2, v1, v3
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_45
return-object v0
:cond_46
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/String;
const-string v2, "oauth_token"
aput-object v2, v1, v3
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
const-string v2, "oauth_callback"
aput-object v2, v1, v5
const/4 v2, 0x3
aput-object p2, v1, v2
invoke-static {v0, v1}, Loauth/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_45
.end method
.method protected varargs retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
invoke-virtual {p0}, Loauth/signpost/AbstractOAuthProvider;->getRequestHeaders()Ljava/util/Map;
move-result-object v4
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_19
:cond_11
new-instance v0, Loauth/signpost/exception/OAuthExpectationFailedException;
const-string v1, "Consumer key or secret not set"
invoke-direct {v0, v1}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
:try_start_19
invoke-virtual {p0, p2}, Loauth/signpost/AbstractOAuthProvider;->createRequest(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_e4
.catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_19 .. :try_end_1c} :catch_f6
.catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_19 .. :try_end_1c} :catch_cf
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_d5
move-result-object v3
:try_start_1d
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_25
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v3, v0, v1}, Loauth/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catchall {:try_start_1d .. :try_end_3a} :catchall_d2
.catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_1d .. :try_end_3a} :catch_3b
.catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_1d .. :try_end_3a} :catch_f1
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_ec
goto :goto_25
:catch_3b
move-exception v0
move-object v1, v2
move-object v2, v3
:try_start_3e
:goto_3e
throw v0
:try_end_3f
.catchall {:try_start_3e .. :try_end_3f} :catchall_3f
:catchall_3f
move-exception v0
move-object v3, v2
move-object v2, v1
:try_start_42
:goto_42
invoke-virtual {p0, v3, v2}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
:try_end_45
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_dd
throw v0
:cond_46
if-eqz p3, :cond_54
:try_start_48
new-instance v0, Loauth/signpost/http/HttpParameters;
invoke-direct {v0}, Loauth/signpost/http/HttpParameters;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, p3, v1}, Loauth/signpost/http/HttpParameters;->putAll([Ljava/lang/String;Z)V
invoke-interface {p1, v0}, Loauth/signpost/OAuthConsumer;->setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V
:cond_54
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
if-eqz v0, :cond_5d
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
invoke-interface {v0, v3}, Loauth/signpost/OAuthProviderListener;->prepareRequest(Loauth/signpost/http/HttpRequest;)V
:cond_5d
invoke-interface {p1, v3}, Loauth/signpost/OAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
if-eqz v0, :cond_69
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
invoke-interface {v0, v3}, Loauth/signpost/OAuthProviderListener;->prepareSubmission(Loauth/signpost/http/HttpRequest;)V
:cond_69
invoke-virtual {p0, v3}, Loauth/signpost/AbstractOAuthProvider;->sendRequest(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;
:try_end_6c
.catchall {:try_start_48 .. :try_end_6c} :catchall_d2
.catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_48 .. :try_end_6c} :catch_3b
.catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_48 .. :try_end_6c} :catch_f1
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6c} :catch_ec
move-result-object v1
:try_start_6d
invoke-interface {v1}, Loauth/signpost/http/HttpResponse;->getStatusCode()I
move-result v2
const/4 v0, 0x0
iget-object v4, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
if-eqz v4, :cond_7c
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
invoke-interface {v0, v3, v1}, Loauth/signpost/OAuthProviderListener;->onResponseReceived(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)Z
:try_end_7b
.catchall {:try_start_6d .. :try_end_7b} :catchall_e8
.catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_6d .. :try_end_7b} :catch_bd
.catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_6d .. :try_end_7b} :catch_f3
.catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_ee
move-result v0
:cond_7c
if-eqz v0, :cond_89
:try_start_7e
invoke-virtual {p0, v3, v1}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
:try_end_81
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82
:goto_81
return-void
:catch_82
move-exception v0
new-instance v1, Loauth/signpost/exception/OAuthCommunicationException;
invoke-direct {v1, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_89
const/16 v0, 0x12c
if-lt v2, v0, :cond_90
:try_start_8d
invoke-virtual {p0, v2, v1}, Loauth/signpost/AbstractOAuthProvider;->handleUnexpectedResponse(ILoauth/signpost/http/HttpResponse;)V
:cond_90
invoke-interface {v1}, Loauth/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Loauth/signpost/http/HttpParameters;
move-result-object v0
const-string v2, "oauth_token"
invoke-virtual {v0, v2}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
const-string v4, "oauth_token_secret"
invoke-virtual {v0, v4}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
const-string v5, "oauth_token"
invoke-virtual {v0, v5}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
const-string v5, "oauth_token_secret"
invoke-virtual {v0, v5}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthProvider;->setResponseParameters(Loauth/signpost/http/HttpParameters;)V
if-eqz v2, :cond_b5
if-nez v4, :cond_c1
:cond_b5
new-instance v0, Loauth/signpost/exception/OAuthExpectationFailedException;
const-string v2, "Request token or token secret not set in server reply. The service provider you use is probably buggy."
invoke-direct {v0, v2}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V
throw v0
:catch_bd
move-exception v0
move-object v2, v3
goto/16 :goto_3e
:cond_c1
invoke-interface {p1, v2, v4}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
:try_end_c4
.catchall {:try_start_8d .. :try_end_c4} :catchall_e8
.catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_8d .. :try_end_c4} :catch_bd
.catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_8d .. :try_end_c4} :catch_f3
.catch Ljava/lang/Exception; {:try_start_8d .. :try_end_c4} :catch_ee
:try_start_c4
invoke-virtual {p0, v3, v1}, Loauth/signpost/AbstractOAuthProvider;->closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
:try_end_c7
.catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8
goto :goto_81
:catch_c8
move-exception v0
new-instance v1, Loauth/signpost/exception/OAuthCommunicationException;
invoke-direct {v1, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_cf
move-exception v0
move-object v3, v2
:goto_d1
:try_start_d1
throw v0
:catchall_d2
move-exception v0
goto/16 :goto_42
:catch_d5
move-exception v0
move-object v3, v2
:goto_d7
new-instance v1, Loauth/signpost/exception/OAuthCommunicationException;
invoke-direct {v1, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V
throw v1
:try_end_dd
.catchall {:try_start_d1 .. :try_end_dd} :catchall_d2
:catch_dd
move-exception v0
new-instance v1, Loauth/signpost/exception/OAuthCommunicationException;
invoke-direct {v1, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V
throw v1
:catchall_e4
move-exception v0
move-object v3, v2
goto/16 :goto_42
:catchall_e8
move-exception v0
move-object v2, v1
goto/16 :goto_42
:catch_ec
move-exception v0
goto :goto_d7
:catch_ee
move-exception v0
move-object v2, v1
goto :goto_d7
:catch_f1
move-exception v0
goto :goto_d1
:catch_f3
move-exception v0
move-object v2, v1
goto :goto_d1
:catch_f6
move-exception v0
move-object v1, v2
goto/16 :goto_3e
.end method
.method protected abstract sendRequest(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;
.end method
.method public setListener(Loauth/signpost/OAuthProviderListener;)V
.registers 2
iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->listener:Loauth/signpost/OAuthProviderListener;
return-void
.end method
.method public setOAuth10a(Z)V
.registers 2
iput-boolean p1, p0, Loauth/signpost/AbstractOAuthProvider;->isOAuth10a:Z
return-void
.end method
.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Loauth/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public setResponseParameters(Loauth/signpost/http/HttpParameters;)V
.registers 2
iput-object p1, p0, Loauth/signpost/AbstractOAuthProvider;->responseParameters:Loauth/signpost/http/HttpParameters;
return-void
.end method