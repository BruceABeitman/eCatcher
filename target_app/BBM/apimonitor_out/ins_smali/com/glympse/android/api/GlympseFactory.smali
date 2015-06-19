.class public abstract Lcom/glympse/android/api/GlympseFactory;
.super Ljava/lang/Object;
.source "GlympseFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized createApiStatus(Ljava/lang/String;)Lcom/glympse/android/api/GApiStatus;
.registers 3
const-class v0, Lcom/glympse/android/api/GlympseFactory;
monitor-enter v0
:try_start_3
invoke-static {p0}, Lcom/glympse/android/lib/LibFactory;->createApiStatus(Ljava/lang/String;)Lcom/glympse/android/api/GApiStatus;
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_9
move-result-object v1
monitor-exit v0
return-object v1
:catchall_9
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static createEvernoteAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->createEvernoteAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public static createFacebookAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->createFacebookAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public static createGeoTrigger(Ljava/lang/String;ZLcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GLatLng;DI)Lcom/glympse/android/api/GGeoTrigger;
.registers 8
invoke-static/range {p0 .. p6}, Lcom/glympse/android/lib/LibFactory;->createGeoTrigger(Ljava/lang/String;ZLcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GLatLng;DI)Lcom/glympse/android/api/GGeoTrigger;
move-result-object v0
return-object v0
.end method
.method public static declared-synchronized createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
.registers 5
const-class v0, Lcom/glympse/android/api/GlympseFactory;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-static {p0, p1, p2, v1}, Lcom/glympse/android/api/GlympseFactory;->createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_a
move-result-object v1
monitor-exit v0
return-object v1
:catchall_a
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
.registers 6
const-class v1, Lcom/glympse/android/api/GlympseFactory;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_b
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_10
:goto_9
monitor-exit v1
return-object v0
:cond_b
:try_start_b
invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/lib/LibFactory;->createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_10
move-result-object v0
goto :goto_9
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static createGoogleAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->createGoogleAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public static createGoogleServerAuthorizationProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->createGoogleServerAuthorizationProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public static createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/api/GImage;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/LibFactory;->createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/lib/GImagePrivate;
move-result-object v0
return-object v0
.end method
.method public static createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 4
invoke-static {p0, p1, p2}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public static createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public static createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/LibFactory;->createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
move-result-object v0
return-object v0
.end method
.method public static createPublicInvite(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 3
const/4 v0, 0x7
const/4 v1, 0x0
invoke-static {v0, v1, p0}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public static createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
.registers 4
const/4 v0, 0x0
invoke-static {v0}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;
move-result-object v0
invoke-interface {v0, p0}, Lcom/glympse/android/lib/GTicketPrivate;->setDuration(I)V
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V
invoke-interface {v0, p2}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V
return-object v0
.end method
.method public static createTrackBuilder()Lcom/glympse/android/api/GTrackBuilder;
.registers 1
invoke-static {}, Lcom/glympse/android/lib/LibFactory;->createTrackBuilder()Lcom/glympse/android/api/GTrackBuilder;
move-result-object v0
return-object v0
.end method
.method public static createTwitterAccountProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/lib/LinkedAccountsManager;->createTwitterAccountProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method