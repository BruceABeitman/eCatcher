.class Lcom/glympse/android/ui/b;
.super Lcom/glympse/android/ui/c;
.source "NotificationProvider.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;


# direct methods
.method private constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GTicket;J)V
    .registers 9

    iput-object p1, p0, Lcom/glympse/android/ui/b;->vN:Lcom/glympse/android/ui/NotificationProvider;

    invoke-direct {p0, p1}, Lcom/glympse/android/ui/c;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V

    :try_start_5
    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-interface {p2, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v1

    sget v2, Lcom/glympse/android/api/R$string;->arrived_at_destination:I

    invoke-virtual {v1, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/ui/b;->tickerText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->c(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/hal/GResourceGateway;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GResourceGateway;->getDrawable(I)I

    move-result v1

    iput v1, p0, Lcom/glympse/android/ui/b;->icon:I

    iput-wide p3, p0, Lcom/glympse/android/ui/b;->when:J

    iget v1, p0, Lcom/glympse/android/ui/b;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/glympse/android/ui/b;->flags:I

    iget v1, p0, Lcom/glympse/android/ui/b;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/glympse/android/ui/b;->defaults:I

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v2

    const-class v3, Lcom/glympse/android/hal/GlympseService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"GLYMPSE_ACTION\":\"expire\",\"tid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"nid\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/glympse/android/ui/b;->vP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/ui/b;->contentIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v2

    const-class v3, Lcom/glympse/android/hal/GlympseService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"GLYMPSE_ACTION\":\"clear\",\"tid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nid\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/glympse/android/ui/b;->vP:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/ui/b;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/glympse/android/ui/b;->tickerText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v1

    sget v2, Lcom/glympse/android/api/R$string;->click_to_expire:I

    invoke-virtual {v1, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/glympse/android/ui/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_da

    iput-object v0, p0, Lcom/glympse/android/ui/b;->vibrate:[J

    invoke-virtual {p1}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/ui/b;->vP:I

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d0} :catch_d2

    goto/16 :goto_f

    :catch_d2
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto/16 :goto_f

    nop

    :array_da
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

.method synthetic constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GTicket;JLcom/glympse/android/ui/NotificationProvider$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/glympse/android/ui/b;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GTicket;J)V

    return-void
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    const/4 v0, 0x4

    if-ne v0, p2, :cond_f

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_f

    :try_start_7
    check-cast p4, Lcom/glympse/android/api/GTicket;

    invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    invoke-virtual {p0}, Lcom/glympse/android/ui/b;->remove()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method
