.class final Landroid/support/v4/app/bf;
.super Landroid/support/v4/app/be;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/be;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
    .registers 8

    iget-object v0, p1, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    iget-object v3, p1, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v1, :cond_13

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v1, p1, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/ba;->e:Landroid/app/PendingIntent;

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/bq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/ba;->j:I

    if-lez v1, :cond_2b

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_2b
    return-object v0
.end method
