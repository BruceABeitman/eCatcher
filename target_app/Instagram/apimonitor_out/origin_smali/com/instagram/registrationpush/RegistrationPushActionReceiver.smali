.class public Lcom/instagram/registrationpush/RegistrationPushActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationPushActionReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 2

    const-string v0, "com.instagram.registrationpush.ACTION_TAPPED"

    invoke-static {p0, v0}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 2

    const-string v0, "com.instagram.registrationpush.ACTION_DELETED"

    invoke-static {p0, v0}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/instagram/registrationpush/a;

    invoke-direct {v0, p1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.registrationpush.ACTION_TAPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->e()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const-string v0, "com.instagram.registrationpush.ACTION_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/instagram/registrationpush/a;->f()V

    goto :goto_14
.end method
