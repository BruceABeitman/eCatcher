.class public Lcom/twidroid/billing/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ResponseHandler"

.field private static b:Lcom/twidroid/billing/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/twidroid/billing/j;
    .registers 1

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    return-object v0
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    invoke-virtual {v0, p0, p1}, Lcom/twidroid/billing/j;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/billing/e;Lcom/twidroid/billing/i;)V
    .registers 4

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    invoke-virtual {v0, p1, p2}, Lcom/twidroid/billing/j;->a(Lcom/twidroid/billing/e;Lcom/twidroid/billing/i;)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/billing/f;Lcom/twidroid/billing/i;)V
    .registers 4

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    invoke-virtual {v0, p1, p2}, Lcom/twidroid/billing/j;->a(Lcom/twidroid/billing/f;Lcom/twidroid/billing/i;)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/billing/h;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/twidroid/billing/k$1;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/billing/k$1;-><init>(Lcom/twidroid/billing/h;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/twidroid/billing/j;)V
    .registers 3

    const-class v0, Lcom/twidroid/billing/k;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;

    invoke-virtual {v0, p0, p1}, Lcom/twidroid/billing/j;->a(ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static declared-synchronized b(Lcom/twidroid/billing/j;)V
    .registers 3

    const-class v0, Lcom/twidroid/billing/k;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/twidroid/billing/k;->b:Lcom/twidroid/billing/j;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
