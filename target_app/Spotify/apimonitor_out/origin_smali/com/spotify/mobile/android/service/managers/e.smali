.class public final Lcom/spotify/mobile/android/service/managers/e;
.super Lcom/spotify/mobile/android/service/q;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/q;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->loginWithStoredCredentials()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/model/TermsAndConditionsModel;)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    iget-boolean v1, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->a:Z

    iget-wide v2, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->b:J

    iget-object v4, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;->d:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logAcceptUserTerms(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->b()Z

    move-result v2

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->c()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logAppStartupTimer(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;)V
    .registers 11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->c()Z

    move-result v3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->d()Z

    move-result v4

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logViewLoadTimer(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->loginWithAnonymousAccount(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logView(Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logDevicePowerStatus(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->sendToInbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->loginWithFacebookToken(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logout(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->loginWithSpotifyToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->eraseOfflineUser()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logDeviceIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/e;->a:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->reportAdUrlClicked()V

    return-void
.end method
