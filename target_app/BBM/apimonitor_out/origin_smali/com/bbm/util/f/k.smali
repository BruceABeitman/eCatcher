.class public final Lcom/bbm/util/f/k;
.super Ljava/lang/Object;
.source "TimestampScheduler.java"


# static fields
.field private static b:Lcom/bbm/util/f/k;


# instance fields
.field a:Landroid/os/Handler;

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/bbm/util/f/n;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/bbm/util/f/o;",
            "Lcom/bbm/util/f/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/util/f/k;->b:Lcom/bbm/util/f/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/f/k;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/f/k;->e:Ljava/util/Timer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/util/f/k;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/bbm/util/f/k;
    .registers 1

    sget-object v0, Lcom/bbm/util/f/k;->b:Lcom/bbm/util/f/k;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/util/f/k;

    invoke-direct {v0}, Lcom/bbm/util/f/k;-><init>()V

    sput-object v0, Lcom/bbm/util/f/k;->b:Lcom/bbm/util/f/k;

    :cond_b
    sget-object v0, Lcom/bbm/util/f/k;->b:Lcom/bbm/util/f/k;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/util/f/k;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_c
    if-eqz v0, :cond_3a

    invoke-static {v0}, Lcom/bbm/util/f/n;->b(Lcom/bbm/util/f/n;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_3a

    iget-object v3, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    iget-object v3, p0, Lcom/bbm/util/f/k;->d:Ljava/util/HashMap;

    new-instance v4, Lcom/bbm/util/f/o;

    invoke-direct {v4, v0}, Lcom/bbm/util/f/o;-><init>(Lcom/bbm/util/f/n;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bbm/util/f/n;->c(Lcom/bbm/util/f/n;)Lcom/bbm/util/cr;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/n;

    goto :goto_c

    :cond_3a
    invoke-direct {p0}, Lcom/bbm/util/f/k;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/util/f/k;Lcom/bbm/util/f/n;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bbm/util/f/k;->b()V

    return-void
.end method

.method private b()V
    .registers 8

    iget-object v0, p0, Lcom/bbm/util/f/k;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/f/n;

    if-eqz v0, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v0}, Lcom/bbm/util/f/n;->b(Lcom/bbm/util/f/n;)J

    move-result-wide v5

    sub-long v0, v5, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bbm/util/f/k;->f:Ljava/util/TimerTask;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/bbm/util/f/k;->f:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    :cond_23
    new-instance v2, Lcom/bbm/util/f/l;

    invoke-direct {v2, p0}, Lcom/bbm/util/f/l;-><init>(Lcom/bbm/util/f/k;)V

    iput-object v2, p0, Lcom/bbm/util/f/k;->f:Ljava/util/TimerTask;

    iget-object v2, p0, Lcom/bbm/util/f/k;->e:Ljava/util/Timer;

    iget-object v3, p0, Lcom/bbm/util/f/k;->f:Ljava/util/TimerTask;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;JLcom/bbm/util/f/a;)Ljava/lang/String;
    .registers 13

    new-instance v0, Lcom/bbm/util/f/o;

    invoke-direct {v0, p2, p3, p4}, Lcom/bbm/util/f/o;-><init>(JLcom/bbm/util/f/a;)V

    iget-object v1, p0, Lcom/bbm/util/f/k;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bbm/util/f/n;

    if-nez v6, :cond_29

    new-instance v0, Lcom/bbm/util/f/n;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/f/n;-><init>(Landroid/content/Context;JLcom/bbm/util/f/a;Lcom/bbm/util/f/k;)V

    iget-object v1, p0, Lcom/bbm/util/f/k;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/bbm/util/f/o;

    invoke-direct {v2, v0}, Lcom/bbm/util/f/o;-><init>(Lcom/bbm/util/f/n;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    :cond_24
    :goto_24
    invoke-static {v6}, Lcom/bbm/util/f/n;->a(Lcom/bbm/util/f/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-static {v6}, Lcom/bbm/util/f/n;->a(Lcom/bbm/util/f/n;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v0, 0x3e8

    mul-long v2, p2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bbm/util/f/a;->a(Landroid/content/Context;JJ)Lcom/bbm/util/f/h;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/f/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    :goto_44
    if-eqz v0, :cond_24

    iput-object p4, v6, Lcom/bbm/util/f/n;->a:Lcom/bbm/util/f/a;

    invoke-virtual {v6, p1}, Lcom/bbm/util/f/n;->a(Landroid/content/Context;)V

    goto :goto_24

    :cond_4c
    const/4 v0, 0x0

    goto :goto_44
.end method
