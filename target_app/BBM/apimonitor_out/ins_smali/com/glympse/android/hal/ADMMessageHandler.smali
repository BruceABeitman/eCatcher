.class public Lcom/glympse/android/hal/ADMMessageHandler;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "ADMMessageHandler.java"
.field public static final FROM_KEY:Ljava/lang/String; = "from"
.field public static final PAYLOAD_KEY:Ljava/lang/String; = "payload"
.field public static final RECEIVER_ACTION:Ljava/lang/String; = "com.amazon.device.messaging.intent.RECEIVE"
.field public static final RECEIVER_CLASS:Ljava/lang/String; = "com.glympse.android.hal.ADMMessageHandler$Receiver"
.field public static final REGISTER_ACTION:Ljava/lang/String; = "com.amazon.device.messaging.intent.REGISTRATION"
.field public static final SENDER_ID:Ljava/lang/String; = "com.glympse"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/glympse/android/hal/ADMMessageHandler;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static register(Landroid/content/Context;)V
.registers 3
:try_start_0
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const-string v0, "com.amazon.device.messaging.intent.RECEIVE"
const-string v1, "com.glympse.android.hal.ADMMessageHandler$Receiver"
invoke-static {p0, v0, v1}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4
const-string v0, "com.amazon.device.messaging.intent.REGISTRATION"
const-string v1, "com.glympse.android.hal.ADMMessageHandler$Receiver"
invoke-static {p0, v0, v1}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getRegistrationToken()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_4
new-instance v0, Lcom/amazon/device/messaging/ADM;
invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_38
invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V
goto :goto_4
:catch_36
move-exception v0
goto :goto_4
:cond_38
sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->registerDeviceToken(Ljava/lang/String;)V
:try_end_41
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_36
goto :goto_4
.end method
.method protected a(Landroid/content/Intent;)V
.registers 6
const-string v0, "payload"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "from"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_34
const-string v2, "com.glympse"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_34
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_34
sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v1, :cond_35
sget-object v1, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/glympse/android/lib/LibFactory;->createNotificationCenter(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/lib/GNotificationCenter;
move-result-object v1
new-instance v2, Lcom/glympse/android/hal/NotificationListener;
sget-object v3, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;
invoke-direct {v2, v3}, Lcom/glympse/android/hal/NotificationListener;-><init>(Landroid/content/Context;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GNotificationCenter;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNotificationCenter;->handle(Ljava/lang/String;)V
:cond_34
:goto_34
return-void
:cond_35
sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->handleRemoteNotification(Ljava/lang/String;)V
goto :goto_34
.end method
.method protected a(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
const-string v1, "[ADMMessageHandler::onRegistered] Processing registration callback..."
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->registerDeviceToken(Ljava/lang/String;)V
goto :goto_a
.end method
.method protected b(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
const-string v1, "[ADMMessageHandler::onUnregistered]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->unregisterDeviceToken()V
return-void
.end method
.method protected c(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
const-string v1, "[ADMMessageHandler::onRegistrationError]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
return-void
.end method