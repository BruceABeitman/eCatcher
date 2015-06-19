.class public interface abstract Lcom/glympse/android/api/GGlympse;
.super Ljava/lang/Object;
.source "GGlympse.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract allowSiblingTickets(Z)V
.end method

.method public abstract arePrivateGroupsEnabled()Z
.end method

.method public abstract areSiblingTicketsAllowed()Z
.end method

.method public abstract canDeviceSendSms()I
.end method

.method public abstract cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract compareInviteCodes(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createInviteSnapshot(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GImage;
.end method

.method public abstract decodeInvite(Ljava/lang/String;I)Lcom/glympse/android/api/GEventSink;
.end method

.method public abstract decodeInvite(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Lcom/glympse/android/api/GEventSink;
.end method

.method public abstract enableApplicationsManager(Z)V
.end method

.method public abstract enablePrivateGroups(Z)V
.end method

.method public abstract enableSmsScraping(Z)V
.end method

.method public abstract extractInviteCodes(Ljava/lang/String;)Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findSinks(Lcom/glympse/android/api/GEventListener;)Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/api/GEventListener;",
            ")",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventSink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApiVersion()Ljava/lang/String;
.end method

.method public abstract getApiVersionFull()Ljava/lang/String;
.end method

.method public abstract getApplicationsManager()Lcom/glympse/android/api/GApplicationsManager;
.end method

.method public abstract getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
.end method

.method public abstract getBrand()Ljava/lang/String;
.end method

.method public abstract getConfig()Lcom/glympse/android/api/GConfig;
.end method

.method public abstract getDirectionsManager()Lcom/glympse/android/api/GDirectionsManager;
.end method

.method public abstract getEtaMode()I
.end method

.method public abstract getGroupManager()Lcom/glympse/android/api/GGroupManager;
.end method

.method public abstract getHandler()Lcom/glympse/android/core/GHandler;
.end method

.method public abstract getHandoffManager()Lcom/glympse/android/api/GHandoffManager;
.end method

.method public abstract getHistoryLookback()J
.end method

.method public abstract getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
.end method

.method public abstract getInviteAspect(Ljava/lang/String;)I
.end method

.method public abstract getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
.end method

.method public abstract getLocationManager()Lcom/glympse/android/api/GLocationManager;
.end method

.method public abstract getLogFile()Ljava/lang/String;
.end method

.method public abstract getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
.end method

.method public abstract getSmsProvider()Lcom/glympse/android/hal/GSmsProvider;
.end method

.method public abstract getSmsSendMode()I
.end method

.method public abstract getSocialManager()Lcom/glympse/android/api/GSocialManager;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTriggersManager()Lcom/glympse/android/api/GTriggersManager;
.end method

.method public abstract getUserManager()Lcom/glympse/android/api/GUserManager;
.end method

.method public abstract hasUserAccount()Z
.end method

.method public abstract isActive()Z
.end method

.method public abstract isApplicationsManagerEnabled()Z
.end method

.method public abstract isFirstLaunch()Z
.end method

.method public abstract isHistoryRestored()Z
.end method

.method public abstract isSmsScrapingEnabled()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract login(Lcom/glympse/android/core/GPrimitive;)Z
.end method

.method public abstract logout()Z
.end method

.method public abstract openUrl(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Z
.end method

.method public abstract overrideLoggingLevels(II)V
.end method

.method public abstract requestTicket(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
.end method

.method public abstract sendTicket(Lcom/glympse/android/api/GTicket;)Z
.end method

.method public abstract setActive(Z)I
.end method

.method public abstract setBrand(Ljava/lang/String;)V
.end method

.method public abstract setEtaMode(I)V
.end method

.method public abstract setHandler(Lcom/glympse/android/core/GHandler;)V
.end method

.method public abstract setHistoryLookback(J)V
.end method

.method public abstract setRestoreHistory(Z)V
.end method

.method public abstract setSmsSendMode(I)V
.end method

.method public abstract showDebugView()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract verify()V
.end method

.method public abstract viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
.end method
