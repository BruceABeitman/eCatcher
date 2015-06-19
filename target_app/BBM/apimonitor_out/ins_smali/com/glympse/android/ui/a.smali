.class  Lcom/glympse/android/ui/a;
.super Lcom/glympse/android/ui/c;
.source "NotificationProvider.java"
.field private vJ:Z
.field private vK:Z
.field private vL:Ljava/lang/String;
.field private vM:Landroid/os/CountDownTimer;
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;
.method public constructor <init>(Lcom/glympse/android/ui/NotificationProvider;)V
.registers 6
const/4 v3, 0x0
iput-object p1, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-direct {p0, p1}, Lcom/glympse/android/ui/c;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/ui/a;->vJ:Z
iput-boolean v3, p0, Lcom/glympse/android/ui/a;->vK:Z
const/4 v0, 0x0
:try_start_c
iput-object v0, p0, Lcom/glympse/android/ui/a;->tickerText:Ljava/lang/CharSequence;
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
iput v0, p0, Lcom/glympse/android/ui/a;->icon:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/ui/a;->when:J
iget v0, p0, Lcom/glympse/android/ui/a;->flags:I
or-int/lit8 v0, v0, 0xa
iput v0, p0, Lcom/glympse/android/ui/a;->flags:I
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/GlympseService;->getServiceNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ui/a;->contentIntent:Landroid/app/PendingIntent;
:goto_36
:try_end_36
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_36
.end method
.method private a(JJ)V
.registers 11
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dx()V
new-instance v0, Lcom/glympse/android/ui/a$1;
const-wide/16 v4, 0x3e8
move-object v1, p0
move-wide v2, p1
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/ui/a$1;-><init>(Lcom/glympse/android/ui/a;JJ)V
iput-object v0, p0, Lcom/glympse/android/ui/a;->vM:Landroid/os/CountDownTimer;
iget-object v0, p0, Lcom/glympse/android/ui/a;->vM:Landroid/os/CountDownTimer;
invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
return-void
.end method
.method static synthetic a(Lcom/glympse/android/ui/a;)V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dx()V
return-void
.end method
.method static synthetic b(Lcom/glympse/android/ui/a;)V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/ui/a;->update()V
return-void
.end method
.method private c(II)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
sget v1, Lcom/glympse/android/api/R$string;->remaining_details:I
invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/ui/a;->f(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
.end method
.method private dv()Z
.registers 27
const-wide/16 v8, 0x0
const-wide/16 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v2}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v2
if-eqz v2, :cond_c3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v2}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GGlympse;->getTime()J
move-result-wide v16
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v2}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GHistoryManagerPrivate;
if-eqz v2, :cond_c3
move-object/from16 v0, p0
iget-object v10, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v10}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v10
invoke-interface {v10}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v10
invoke-interface {v10}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v10
invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
move-result-object v10
invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v18
move/from16 v21, v4
move v4, v5
move v5, v3
move-wide/from16 v22, v6
move/from16 v6, v21
move-wide/from16 v24, v8
move-wide/from16 v9, v24
move-wide/from16 v7, v22
:goto_53
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_d1
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/glympse/android/api/GTicket;
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->isSibling()Z
move-result v11
if-nez v11, :cond_d1
move-wide/from16 v0, v16
invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->isActive(Lcom/glympse/android/api/GTicket;J)Z
move-result v11
if-eqz v11, :cond_d1
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v11
cmp-long v11, v11, v16
if-lez v11, :cond_aa
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v11
sub-long v13, v11, v16
:goto_7b
const/4 v12, 0x0
const/4 v11, 0x0
const-wide/16 v19, 0x0
cmp-long v15, v13, v19
if-lez v15, :cond_116
add-int/lit8 v15, v4, 0x1
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
move-result-object v4
invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v19
:goto_91
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_ad
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/glympse/android/api/GInvite;
invoke-interface {v4}, Lcom/glympse/android/api/GInvite;->getViewing()I
move-result v20
add-int v12, v12, v20
invoke-interface {v4}, Lcom/glympse/android/api/GInvite;->getViewers()I
move-result v4
add-int/2addr v4, v11
move v11, v4
goto :goto_91
:cond_aa
const-wide/16 v13, 0x0
goto :goto_7b
:cond_ad
add-int/2addr v6, v12
add-int v4, v5, v11
move v5, v6
move v6, v15
:goto_b2
cmp-long v11, v13, v9
if-lez v11, :cond_bc
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->getDuration()I
move-result v3
int-to-long v7, v3
move-wide v9, v13
:cond_bc
move/from16 v21, v4
move v4, v6
move v6, v5
move/from16 v5, v21
goto :goto_53
:cond_c3
move/from16 v21, v4
move v4, v5
move v5, v3
move-wide/from16 v22, v6
move/from16 v6, v21
move-wide/from16 v24, v8
move-wide/from16 v9, v24
move-wide/from16 v7, v22
:cond_d1
if-lez v4, :cond_114
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v2, v6}, Lcom/glympse/android/ui/NotificationProvider;->E(I)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lcom/glympse/android/ui/a;->icon:I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v2}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v2
sget v3, Lcom/glympse/android/api/R$string;->remaining_title:I
invoke-virtual {v2, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v11, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v11}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v11
const/4 v12, 0x1
invoke-static {v11, v9, v10, v12}, Lcom/glympse/android/hal/Helpers;->formatDuration(Landroid/content/Context;JZ)Ljava/lang/String;
move-result-object v11
aput-object v11, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lcom/glympse/android/ui/a;->vL:Ljava/lang/String;
move-object/from16 v0, p0
invoke-direct {v0, v9, v10, v7, v8}, Lcom/glympse/android/ui/a;->a(JJ)V
move-object/from16 v0, p0
invoke-direct {v0, v6, v5}, Lcom/glympse/android/ui/a;->c(II)V
const/4 v2, 0x1
:goto_113
return v2
:cond_114
const/4 v2, 0x0
goto :goto_113
:cond_116
move/from16 v21, v5
move v5, v6
move v6, v4
move/from16 v4, v21
goto :goto_b2
.end method
.method private dw()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/ui/a;->vJ:Z
iget-object v0, p0, Lcom/glympse/android/ui/a;->vL:Ljava/lang/String;
return-object v0
.end method
.method private dx()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/a;->vM:Landroid/os/CountDownTimer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/a;->vM:Landroid/os/CountDownTimer;
invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
:cond_9
return-void
.end method
.method private dz()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v1}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v1
if-nez v1, :cond_11
move v1, v0
:goto_e
if-nez v1, :cond_16
:goto_10
return v0
:cond_11
invoke-interface {v1}, Lcom/glympse/android/api/GNetworkManager;->isNetworkError()Z
move-result v1
goto :goto_e
:cond_16
const/4 v0, 0x0
goto :goto_10
.end method
.method private isBatteryOk()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v2}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GGlympse;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v2
if-eqz v2, :cond_18
invoke-interface {v2}, Lcom/glympse/android/api/GBatteryManager;->isBatteryOk()Z
move-result v2
if-nez v2, :cond_18
move v2, v0
:goto_15
if-nez v2, :cond_1a
:goto_17
return v0
:cond_18
move v2, v1
goto :goto_15
:cond_1a
move v0, v1
goto :goto_17
.end method
.method private update()V
.registers 7
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v4, 0x1
const-wide/16 v2, 0x0
iput-wide v2, p0, Lcom/glympse/android/ui/a;->when:J
iget v0, p0, Lcom/glympse/android/ui/a;->flags:I
or-int/lit8 v0, v0, 0xa
iput v0, p0, Lcom/glympse/android/ui/a;->flags:I
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dv()Z
move-result v2
iget-boolean v0, p0, Lcom/glympse/android/ui/a;->vJ:Z
if-eqz v0, :cond_3b
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dw()Ljava/lang/String;
move-result-object v0
:goto_19
iput-object v0, p0, Lcom/glympse/android/ui/a;->tickerText:Ljava/lang/CharSequence;
if-nez v2, :cond_3d
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dx()V
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v2, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
iput-boolean v5, p0, Lcom/glympse/android/ui/a;->vK:Z
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
invoke-static {v0, v4}, Lcom/glympse/android/hal/Reflection$_Service;->stopForeground(Landroid/app/Service;Z)V
iput-boolean v4, p0, Lcom/glympse/android/ui/a;->vJ:Z
iput-object v1, p0, Lcom/glympse/android/ui/a;->tickerText:Ljava/lang/CharSequence;
:goto_3a
:cond_3a
return-void
:cond_3b
move-object v0, v1
goto :goto_19
:try_start_3d
:cond_3d
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
iget-boolean v0, p0, Lcom/glympse/android/ui/a;->vK:Z
if-nez v0, :cond_5a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/ui/a;->vK:Z
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-static {v0, v1, p0}, Lcom/glympse/android/hal/Reflection$_Service;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V
:cond_5a
invoke-direct {p0}, Lcom/glympse/android/ui/a;->isBatteryOk()Z
move-result v0
if-nez v0, :cond_69
invoke-virtual {p0}, Lcom/glympse/android/ui/a;->dy()V
:try_end_63
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_63} :catch_64
goto :goto_3a
:catch_64
move-exception v0
invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_3a
:cond_69
:try_start_69
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dz()Z
move-result v0
if-nez v0, :cond_3a
invoke-virtual {p0}, Lcom/glympse/android/ui/a;->dA()V
:try_end_72
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_64
goto :goto_3a
.end method
.method public dA()V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/ui/a;->dz()Z
move-result v0
if-nez v0, :cond_34
iget-boolean v0, p0, Lcom/glympse/android/ui/a;->vK:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;
move-result-object v0
const/16 v1, 0xd
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
iput v0, p0, Lcom/glympse/android/ui/a;->icon:I
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v1
sget v2, Lcom/glympse/android/api/R$string;->no_network_connection:I
invoke-virtual {v1, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/ui/a;->f(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_33
return-void
:cond_34
invoke-direct {p0}, Lcom/glympse/android/ui/a;->update()V
goto :goto_33
.end method
.method public dy()V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/ui/a;->isBatteryOk()Z
move-result v0
if-nez v0, :cond_34
iget-boolean v0, p0, Lcom/glympse/android/ui/a;->vK:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;
move-result-object v0
const/16 v1, 0xd
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
iput v0, p0, Lcom/glympse/android/ui/a;->icon:I
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v1
sget v2, Lcom/glympse/android/api/R$string;->low_battey_warning:I
invoke-virtual {v1, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/ui/a;->f(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/a;->vP:I
invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_33
return-void
:cond_34
invoke-direct {p0}, Lcom/glympse/android/ui/a;->update()V
goto :goto_33
.end method