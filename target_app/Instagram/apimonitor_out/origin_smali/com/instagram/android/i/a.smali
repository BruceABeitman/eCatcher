.class public Lcom/instagram/android/i/a;
.super Ljava/lang/Object;
.source "RealtimeConnectionDebugNotification.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/bx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/i/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/i/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/app/bx;->a(Landroid/content/Context;)Landroid/support/v4/app/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/i/a;->c:Landroid/support/v4/app/bx;

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/instagram/android/i/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/i/c;-><init>(Lcom/instagram/android/i/a;B)V

    new-instance v1, Lcom/instagram/common/c/j;

    invoke-direct {v1, p1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v1

    const-string v2, "PreferenceChangeBroadcasts.REALTIME_CONNECTION_NOTIFICATION_PREF_CHANGED"

    invoke-interface {v1, v2, v0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    :cond_2d
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/i/a;)Landroid/support/v4/app/bx;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/i/a;->c:Landroid/support/v4/app/bx;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/instagram/android/i/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;Z)V
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/app/ba;

    iget-object v1, p0, Lcom/instagram/android/i/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/i/a;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    move-result-object v0

    const-string v1, "Instagram Debug"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/ba;->a(Z)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ba;->b()Landroid/support/v4/app/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/i/a;->c:Landroid/support/v4/app/bx;

    sget-object v2, Lcom/instagram/android/i/a;->a:Ljava/lang/String;

    const/16 v3, 0x2a

    invoke-virtual {v0}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/i/a;Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/i/a;->b(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    return-void
.end method

.method private b(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lcom/instagram/android/i/b;->a:[I

    invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_14
    sget v0, Lcom/facebook/au;->notification_connected:I

    const-string v1, "Realtime channel connected"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/i/a;->a(ILjava/lang/String;Z)V

    goto :goto_13

    :pswitch_1c
    sget v0, Lcom/facebook/au;->notification_subscribed:I

    const-string v1, "Realtime channel subscribed"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/i/a;->a(ILjava/lang/String;Z)V

    goto :goto_13

    :pswitch_24
    sget v0, Lcom/facebook/au;->notification_not_connected:I

    const-string v1, "Realtime channel not connected"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/i/a;->a(ILjava/lang/String;Z)V

    goto :goto_13

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
    .registers 3

    invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0, p1}, Lcom/instagram/android/i/a;->b(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V

    goto :goto_a
.end method
