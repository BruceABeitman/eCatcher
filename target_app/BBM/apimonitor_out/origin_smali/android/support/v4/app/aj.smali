.class Landroid/support/v4/app/aj;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/ai;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ag;)Landroid/app/Notification;
    .registers 7

    iget-object v0, p1, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/ag;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, p1, Landroid/support/v4/app/ag;->j:I

    if-lez v1, :cond_17

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_17
    return-object v0
.end method
