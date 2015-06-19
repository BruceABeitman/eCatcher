.class Landroid/support/v4/app/be;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/bc;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
    .registers 7

    iget-object v0, p1, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, p1, Landroid/support/v4/app/ba;->j:I

    if-lez v1, :cond_17

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_17
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
