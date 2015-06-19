.class Lcom/glympse/android/ui/g;
.super Lcom/glympse/android/ui/c;
.source "NotificationProvider.java"


# instance fields
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;


# direct methods
.method private constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;)V
    .registers 10

    iput-object p1, p0, Lcom/glympse/android/ui/g;->vN:Lcom/glympse/android/ui/NotificationProvider;

    invoke-direct {p0, p1}, Lcom/glympse/android/ui/c;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V

    invoke-interface {p2}, Lcom/glympse/android/api/GUserTicket;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/GlympseService;->getServiceNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/ag;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/ag;-><init>(Landroid/content/Context;)V

    invoke-interface {p2}, Lcom/glympse/android/api/GUserTicket;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v3

    sget v4, Lcom/glympse/android/api/R$string;->request_was_received:I

    invoke-virtual {v3, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    iput-object v1, v2, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;

    sget v1, Lcom/glympse/android/api/R$drawable;->notification_received:I

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/glympse/android/hal/GlympseService;->getServiceRequestIntent(Landroid/content/Context;Lcom/glympse/android/lib/GTicketPrivate;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v3

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->f(Lcom/glympse/android/ui/NotificationProvider;)I

    move-result v4

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget v4, Lcom/glympse/android/api/R$drawable;->glogo_v2:I

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v5

    sget v6, Lcom/glympse/android/api/R$string;->reply_with_a_glympse:I

    invoke-virtual {v5, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/glympse/android/api/R$drawable;->bg_wru:I

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    iget v2, p0, Lcom/glympse/android/ui/g;->vP:I

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/ui/NotificationProvider$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/glympse/android/ui/g;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;)V

    return-void
.end method
