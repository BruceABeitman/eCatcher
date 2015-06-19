.class  Lcom/glympse/android/ui/f;
.super Lcom/glympse/android/ui/c;
.source "NotificationProvider.java"
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;
.method private constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Ljava/lang/String;Ljava/lang/String;I)V
.registers 7
iput-object p1, p0, Lcom/glympse/android/ui/f;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-direct {p0, p1}, Lcom/glympse/android/ui/c;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V
:try_start_5
iput-object p2, p0, Lcom/glympse/android/ui/f;->tickerText:Ljava/lang/CharSequence;
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;
move-result-object v0
const/16 v1, 0xc
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
iput v0, p0, Lcom/glympse/android/ui/f;->icon:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/ui/f;->when:J
iget v0, p0, Lcom/glympse/android/ui/f;->flags:I
or-int/lit8 v0, v0, 0x18
iput v0, p0, Lcom/glympse/android/ui/f;->flags:I
iget v0, p0, Lcom/glympse/android/ui/f;->defaults:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/glympse/android/ui/f;->defaults:I
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/GlympseService;->getServiceNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
invoke-static {v0, v1, p4}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ui/f;->contentIntent:Landroid/app/PendingIntent;
const/16 v0, 0x8
new-array v0, v0, [J
fill-array-data v0, :array_54
iput-object v0, p0, Lcom/glympse/android/ui/f;->vibrate:[J
invoke-virtual {p0, p2, p3}, Lcom/glympse/android/ui/f;->f(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/f;->vP:I
invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_4c
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d
return-void
:catch_4d
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_4c
nop
:array_54
.array-data 0x8
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x46t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method synthetic constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Ljava/lang/String;Ljava/lang/String;ILcom/glympse/android/ui/NotificationProvider$1;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/glympse/android/ui/f;-><init>(Lcom/glympse/android/ui/NotificationProvider;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method