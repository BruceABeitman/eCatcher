.class public Lcom/glympse/android/ui/NotificationProvider;
.super Ljava/lang/Object;
.source "NotificationProvider.java"
.implements Lcom/glympse/android/api/GEventListener;
.implements Lcom/glympse/android/ui/GNotificationProvider;
.field static final vE:I = 0x0
.field static final vF:I = 0x1
.field static final vG:I = 0x2
.field static final vH:I = 0x3
.field static final vI:I = 0x4
.field private cI:Lcom/glympse/android/api/GGlympse;
.field private vA:Lcom/glympse/android/ui/e;
.field private vB:Lcom/glympse/android/ui/d;
.field private vC:Lcom/glympse/android/ui/g;
.field private vD:I
.field private vw:Landroid/app/Service;
.field private vx:Lcom/glympse/android/hal/GResourceGateway;
.field private vy:Landroid/app/NotificationManager;
.field private vz:Lcom/glympse/android/ui/a;
.method public constructor <init>()V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vy:Landroid/app/NotificationManager;
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
long-to-int v0, v0
const v1, 0x3fffffff
and-int/2addr v0, v1
iput v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vD:I
return-void
.end method
.method private A(I)V
.registers 3
if-lez p1, :cond_12
const/4 v0, 0x1
:goto_3
if-nez v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
invoke-virtual {v0}, Lcom/glympse/android/ui/e;->remove()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
:cond_11
return-void
:cond_12
const/4 v0, 0x0
goto :goto_3
.end method
.method private B(I)V
.registers 5
const/4 v2, 0x0
if-lez p1, :cond_12
const/4 v0, 0x1
:goto_4
if-eqz v0, :cond_14
iget-object v1, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
if-nez v1, :cond_14
new-instance v0, Lcom/glympse/android/ui/d;
invoke-direct {v0, p0, v2}, Lcom/glympse/android/ui/d;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/ui/NotificationProvider$1;)V
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
:goto_11
:cond_11
return-void
:cond_12
const/4 v0, 0x0
goto :goto_4
:cond_14
if-nez v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
invoke-virtual {v0}, Lcom/glympse/android/ui/d;->remove()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
goto :goto_11
.end method
.method private C(I)V
.registers 3
if-lez p1, :cond_12
const/4 v0, 0x1
:goto_3
if-nez v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
invoke-virtual {v0}, Lcom/glympse/android/ui/g;->remove()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
:cond_11
return-void
:cond_12
const/4 v0, 0x0
goto :goto_3
.end method
.method private D(I)V
.registers 5
const/4 v2, 0x0
const/4 v0, 0x1
const-string v1, "Removing Notification"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
iget v0, v0, Lcom/glympse/android/ui/a;->vP:I
if-ne p1, v0, :cond_19
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-virtual {v0}, Lcom/glympse/android/ui/a;->remove()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
:goto_18
:cond_18
return-void
:cond_19
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
iget v0, v0, Lcom/glympse/android/ui/d;->vP:I
if-ne p1, v0, :cond_2b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
invoke-virtual {v0}, Lcom/glympse/android/ui/d;->remove()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vB:Lcom/glympse/android/ui/d;
goto :goto_18
:cond_2b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
iget v0, v0, Lcom/glympse/android/ui/e;->vP:I
if-ne p1, v0, :cond_3d
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
invoke-virtual {v0}, Lcom/glympse/android/ui/e;->remove()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
goto :goto_18
:cond_3d
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
iget v0, v0, Lcom/glympse/android/ui/g;->vP:I
if-ne p1, v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
invoke-virtual {v0}, Lcom/glympse/android/ui/g;->remove()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
goto :goto_18
.end method
.method static synthetic a(Lcom/glympse/android/ui/NotificationProvider;)I
.registers 3
iget v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vD:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/glympse/android/ui/NotificationProvider;->vD:I
return v0
.end method
.method static synthetic b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vw:Landroid/app/Service;
return-object v0
.end method
.method static synthetic c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
return-object v0
.end method
.method private c(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
invoke-virtual {v0}, Lcom/glympse/android/ui/e;->remove()V
:cond_9
new-instance v0, Lcom/glympse/android/ui/e;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/glympse/android/ui/e;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/ui/NotificationProvider$1;)V
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vA:Lcom/glympse/android/ui/e;
return-void
.end method
.method public static createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
.registers 7
const/high16 v3, 0x1000
invoke-static {p0, p2, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x12
if-le v1, v2, :cond_13
invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
invoke-static {p0, p2, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
:cond_13
return-object v0
.end method
.method static synthetic d(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/api/GGlympse;
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
return-object v0
.end method
.method private d(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
invoke-virtual {v0}, Lcom/glympse/android/ui/g;->remove()V
:cond_9
new-instance v0, Lcom/glympse/android/ui/g;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/glympse/android/ui/g;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/ui/NotificationProvider$1;)V
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vC:Lcom/glympse/android/ui/g;
return-void
.end method
.method private ds()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-virtual {v0}, Lcom/glympse/android/ui/a;->dy()V
:cond_9
return-void
.end method
.method private dt()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-virtual {v0}, Lcom/glympse/android/ui/a;->dA()V
:cond_9
return-void
.end method
.method private du()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
if-nez v0, :cond_b
new-instance v0, Lcom/glympse/android/ui/a;
invoke-direct {v0, p0}, Lcom/glympse/android/ui/a;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
:cond_b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-static {v0}, Lcom/glympse/android/ui/a;->b(Lcom/glympse/android/ui/a;)V
return-void
.end method
.method static synthetic e(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/ui/a;
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
return-object v0
.end method
.method static synthetic f(Lcom/glympse/android/ui/NotificationProvider;)I
.registers 2
iget v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vD:I
return v0
.end method
.method protected E(I)I
.registers 8
const/4 v5, 0x6
const/4 v4, 0x5
const/4 v3, 0x4
const/4 v2, 0x3
const/4 v1, 0x2
const/16 v0, 0x9
if-lt p1, v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
const/16 v1, 0x9
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
:goto_11
return v0
:cond_12
const/16 v0, 0x8
if-lt p1, v0, :cond_1f
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
const/16 v1, 0x8
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_1f
const/4 v0, 0x7
if-lt p1, v0, :cond_2a
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
const/4 v1, 0x7
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_2a
if-lt p1, v5, :cond_33
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
invoke-interface {v0, v5}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_33
if-lt p1, v4, :cond_3c
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
invoke-interface {v0, v4}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_3c
if-lt p1, v3, :cond_45
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
invoke-interface {v0, v3}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_45
if-lt p1, v2, :cond_4e
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
invoke-interface {v0, v2}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_4e
if-lt p1, v1, :cond_57
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_57
if-lez p1, :cond_61
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
:cond_61
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I
move-result v0
goto :goto_11
.end method
.method public addTicketArrivedEvent(Lcom/glympse/android/api/GTicket;)V
.registers 8
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
if-eqz v0, :cond_4
const/4 v1, 0x1
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getExpireOnArrival()I
move-result v0
if-ne v1, v0, :cond_4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
new-instance v0, Lcom/glympse/android/ui/b;
const/4 v5, 0x0
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/ui/b;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GTicket;JLcom/glympse/android/ui/NotificationProvider$1;)V
goto :goto_4
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
const/4 v0, 0x1
if-ne v0, p2, :cond_42
const/high16 v0, 0x20
and-int/2addr v0, p3
if-eqz v0, :cond_e
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-virtual {p0, p4}, Lcom/glympse/android/ui/NotificationProvider;->addTicketArrivedEvent(Lcom/glympse/android/api/GTicket;)V
:cond_d
:goto_d
return-void
:cond_e
const/high16 v0, 0x2
and-int/2addr v0, p3
if-eqz v0, :cond_2c
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z
move-result v0
if-eqz v0, :cond_d
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_2c
const/high16 v0, 0x4
and-int/2addr v0, p3
if-eqz v0, :cond_3a
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_3a
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_42
const/4 v0, 0x4
if-ne v0, p2, :cond_65
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_4d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_4d
and-int/lit8 v0, p3, 0x10
if-eqz v0, :cond_55
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_55
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_5d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_5d
and-int/lit16 v0, p3, 0x4000
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->du()V
goto :goto_d
:cond_65
const/4 v0, 0x5
if-ne v0, p2, :cond_70
and-int/lit8 v0, p3, 0x3
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->dt()V
goto :goto_d
:cond_70
const/4 v0, 0x6
if-ne v0, p2, :cond_77
invoke-direct {p0}, Lcom/glympse/android/ui/NotificationProvider;->ds()V
goto :goto_d
:cond_77
const v0, 0x20002
if-ne v0, p2, :cond_d
and-int/lit8 v0, p3, 0x40
if-eqz v0, :cond_96
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GUserTicket;
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->d(Lcom/glympse/android/api/GUserTicket;)V
:cond_86
:goto_86
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_a1
check-cast p4, Ljava/lang/Long;
invoke-virtual {p4}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->A(I)V
goto/16 :goto_d
:cond_96
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_86
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GUserTicket;
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/api/GUserTicket;)V
goto :goto_86
:cond_a1
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_b1
check-cast p4, Ljava/lang/Long;
invoke-virtual {p4}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->B(I)V
goto/16 :goto_d
:cond_b1
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_c1
check-cast p4, Ljava/lang/Long;
invoke-virtual {p4}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->C(I)V
goto/16 :goto_d
:cond_c1
and-int/lit8 v0, p3, 0x20
if-eqz v0, :cond_d
check-cast p4, Ljava/lang/Long;
invoke-virtual {p4}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
invoke-direct {p0, v0}, Lcom/glympse/android/ui/NotificationProvider;->D(I)V
goto/16 :goto_d
.end method
.method public getNotificationManager()Landroid/app/NotificationManager;
.registers 3
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vy:Landroid/app/NotificationManager;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vw:Landroid/app/Service;
const-string v1, "notification"
invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vy:Landroid/app/NotificationManager;
:cond_10
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vy:Landroid/app/NotificationManager;
return-object v0
.end method
.method public serviceStarted(Landroid/app/Service;Lcom/glympse/android/api/GGlympse;)V
.registers 5
iput-object p1, p0, Lcom/glympse/android/ui/NotificationProvider;->vw:Landroid/app/Service;
iput-object p2, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
check-cast p2, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p2}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getResourceGateway()Lcom/glympse/android/hal/GResourceGateway;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vx:Lcom/glympse/android/hal/GResourceGateway;
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
if-eqz v0, :cond_35
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_25
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_25
:cond_35
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
if-eqz v0, :cond_40
invoke-interface {v0, p0}, Lcom/glympse/android/api/GNetworkManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_40
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
if-eqz v0, :cond_4b
invoke-interface {v0, p0}, Lcom/glympse/android/api/GBatteryManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_4b
return-void
.end method
.method public serviceStopped()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->vz:Lcom/glympse/android/ui/a;
invoke-static {v0}, Lcom/glympse/android/ui/a;->a(Lcom/glympse/android/ui/a;)V
:cond_b
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
if-eqz v0, :cond_1a
invoke-interface {v0, p0}, Lcom/glympse/android/api/GNetworkManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_1a
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
if-eqz v0, :cond_25
invoke-interface {v0, p0}, Lcom/glympse/android/api/GBatteryManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_25
iget-object v0, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->cI:Lcom/glympse/android/api/GGlympse;
:cond_2c
invoke-direct {p0, v1}, Lcom/glympse/android/ui/NotificationProvider;->A(I)V
invoke-direct {p0, v1}, Lcom/glympse/android/ui/NotificationProvider;->B(I)V
invoke-direct {p0, v1}, Lcom/glympse/android/ui/NotificationProvider;->C(I)V
invoke-virtual {p0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
iput-object v2, p0, Lcom/glympse/android/ui/NotificationProvider;->vw:Landroid/app/Service;
return-void
.end method