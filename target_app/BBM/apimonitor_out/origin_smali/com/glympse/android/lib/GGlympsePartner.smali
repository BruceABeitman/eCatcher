.class public interface abstract Lcom/glympse/android/lib/GGlympsePartner;
.super Ljava/lang/Object;
.source "GGlympsePartner.java"

# interfaces
.implements Lcom/glympse/android/api/GGlympse;


# virtual methods
.method public abstract applyInitialProfile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enableAccountSharing(Z)V
.end method

.method public abstract enablePushEchoing(Z)V
.end method

.method public abstract getApiKey()Ljava/lang/String;
.end method

.method public abstract getBaseUrl()Ljava/lang/String;
.end method

.method public abstract getContextHolder()Lcom/glympse/android/hal/GContextHolder;
.end method

.method public abstract getDebugLoggingLevel()I
.end method

.method public abstract getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
.end method

.method public abstract getFavoritesManager()Lcom/glympse/android/lib/GFavoritesManager;
.end method

.method public abstract getFileLoggingLevel()I
.end method

.method public abstract getImageCache()Lcom/glympse/android/lib/GImageCache;
.end method

.method public abstract getMessagesManager()Lcom/glympse/android/lib/GMessagesManager;
.end method

.method public abstract getPlacesManager()Lcom/glympse/android/lib/GPlacesManager;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getRecipientsManager()Lcom/glympse/android/lib/GRecipientsManager;
.end method

.method public abstract handleRemoteNotification(Ljava/lang/String;)V
.end method

.method public abstract handleRemoteNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hasValidDeviceToken()Z
.end method

.method public abstract isAccountSharingEnabled()Z
.end method

.method public abstract isPushEchoingEbabled()Z
.end method

.method public abstract overrideDebugLoggingLevel(I)V
.end method

.method public abstract overrideFileLoggingLevel(I)V
.end method

.method public abstract postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
.end method

.method public abstract registerDeviceToken(Ljava/lang/String;)V
.end method

.method public abstract unregisterDeviceToken()V
.end method
