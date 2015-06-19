.class public final Lcom/spotify/mobile/android/orbit/OrbitSession;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;
.field private nOrbitSessionPtr:J
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final native eraseOfflineUser()V
.end method
.method public final native log(Ljava/lang/String;)V
.end method
.method public final native logABTesting(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native logAcceptUserTerms(ZJLjava/lang/String;Ljava/lang/String;)V
.end method
.method public final native logAppStartupTimer(Ljava/lang/String;ZJ)V
.end method
.method public final native logDeviceIdentifier(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native logDevicePowerStatus(Ljava/lang/String;Ljava/lang/String;J)V
.end method
.method public final native logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native logView(Ljava/lang/String;J)V
.end method
.method public final native logViewLoadTimer(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;)V
.end method
.method public final native login(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native loginWithAnonymousAccount(Ljava/lang/String;)V
.end method
.method public final native loginWithFacebookToken(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
.method public final native loginWithSpotifyToken(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native loginWithStoredCredentials()V
.end method
.method public final native logout(Z)V
.end method
.method public final native reportAdUrlClicked()V
.end method
.method public final native sendToInbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public final native setLanguage(Ljava/lang/String;)V
.end method