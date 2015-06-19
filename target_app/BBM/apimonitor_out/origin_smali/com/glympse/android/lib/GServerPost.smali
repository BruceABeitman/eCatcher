.class public interface abstract Lcom/glympse/android/lib/GServerPost;
.super Ljava/lang/Object;
.source "GServerPost.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract addLocation(JLcom/glympse/android/core/GLocation;)V
.end method

.method public abstract areLocationsPartiallyUploaded()Z
.end method

.method public abstract authenticate()V
.end method

.method public abstract cancelEndpoint(Lcom/glympse/android/lib/GApiEndpoint;I)Z
.end method

.method public abstract doPost()V
.end method

.method public abstract doPost(I)V
.end method

.method public abstract enableIncognito(Z)V
.end method

.method public abstract enableSsl(Z)V
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAuthState()I
.end method

.method public abstract getAuthUrl()Ljava/lang/String;
.end method

.method public abstract getBaseUrl()Ljava/lang/String;
.end method

.method public abstract getPostRate()I
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract haveDataToPost()Z
.end method

.method public abstract haveLocationsToPost()Z
.end method

.method public abstract invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
.end method

.method public abstract isIncognitoEnabled()Z
.end method

.method public abstract isPosting()Z
.end method

.method public abstract isSslEnabled()Z
.end method

.method public abstract rememberEvents(I)V
.end method

.method public abstract removeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;)Z
.end method

.method public abstract sendEvents()V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setOfflineMode(Z)V
.end method

.method public abstract setServerPostRate(I)V
.end method

.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
.end method

.method public abstract stop()V
.end method
