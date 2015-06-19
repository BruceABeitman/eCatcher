.class public interface abstract Lcom/glympse/android/lib/GConfigPrivate;
.super Ljava/lang/Object;
.source "GConfigPrivate.java"
.implements Lcom/glympse/android/api/GConfig;
.method public abstract areAccountsLinked()Z
.end method
.method public abstract forgetAccessToken()V
.end method
.method public abstract getAccessToken()Ljava/lang/String;
.end method
.method public abstract getAccount(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getAccount(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getAccounts()Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getCurrentAccount()Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getDebugLevel()J
.end method
.method public abstract getFileLevel()J
.end method
.method public abstract getGetRate()J
.end method
.method public abstract getLogUrl()Ljava/lang/String;
.end method
.method public abstract getMotdContext()Ljava/lang/String;
.end method
.method public abstract getMotdLastRequest()J
.end method
.method public abstract getRegistrationToken()Ljava/lang/String;
.end method
.method public abstract getViewerToken()Ljava/lang/String;
.end method
.method public abstract hasPrivateGroups()Z
.end method
.method public abstract hasTicketBeenSent()Z
.end method
.method public abstract isFirstLaunch()Z
.end method
.method public abstract isServerSupported(Ljava/lang/String;)Z
.end method
.method public abstract load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract saveAccessToken(Ljava/lang/String;J)V
.end method
.method public abstract saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract saveCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract saveCurrentDeviceId(Ljava/lang/String;)V
.end method
.method public abstract saveMotdContext(JLjava/lang/String;)V
.end method
.method public abstract saveRegistrationToken(Ljava/lang/String;)V
.end method
.method public abstract setAccountCreationTime(J)V
.end method
.method public abstract setAccountsLinked(Z)V
.end method
.method public abstract setMaximumNicknameLength(I)V
.end method
.method public abstract setMaximumTicketDuration(I)V
.end method
.method public abstract setPostRatePeriod(I)V
.end method
.method public abstract setPrivateGroups(Z)V
.end method
.method public abstract setSupportedServers(Lcom/glympse/android/core/GPrimitive;)V
.end method
.method public abstract setTicketSent(Z)V
.end method
.method public abstract setViewerToken(Ljava/lang/String;)V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract stop()V
.end method
.method public abstract wipeAccounts()V
.end method