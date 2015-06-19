.class public final Landroid/support/v4/app/ag;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field public j:I

.field public k:Z

.field l:Landroid/support/v4/app/ao;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ad;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/app/ag;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ag;->j:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .registers 2

    invoke-static {}, Landroid/support/v4/app/ac;->a()Landroid/support/v4/app/ai;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/ai;->a(Landroid/support/v4/app/ag;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/support/v4/app/ag;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ag;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/ag;->q:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/ad;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/ad;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroid/support/v4/app/ag;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a([J)Landroid/support/v4/app/ag;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public final b(I)Landroid/support/v4/app/ag;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    const/16 v3, 0x12c

    iput v3, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    const/16 v3, 0x76c

    iput v3, v0, Landroid/app/Notification;->ledOffMS:I

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_1f
    iget-object v3, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_30

    :goto_29
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_2e
    move v0, v2

    goto :goto_1f

    :cond_30
    move v1, v2

    goto :goto_29
.end method

.method public final c(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method
