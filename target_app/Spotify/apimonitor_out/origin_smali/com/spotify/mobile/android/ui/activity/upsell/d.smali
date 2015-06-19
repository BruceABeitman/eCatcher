.class public final Lcom/spotify/mobile/android/ui/activity/upsell/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/spotify/mobile/android/util/cn;

.field private static final b:Lcom/spotify/mobile/android/util/cn;


# instance fields
.field private final c:Lcom/spotify/mobile/android/ui/activity/upsell/m;

.field private final d:Lcom/spotify/mobile/android/ui/activity/upsell/e;

.field private final e:Lcom/spotify/mobile/android/util/cl;

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->a:Lcom/spotify/mobile/android/util/cn;

    new-instance v0, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->b:Lcom/spotify/mobile/android/util/cn;

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/m;Lcom/spotify/mobile/android/ui/activity/upsell/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->d:Lcom/spotify/mobile/android/ui/activity/upsell/e;

    new-instance v0, Lcom/spotify/mobile/android/util/cm;

    const-string v1, "gpiab-detectcountry"

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/d;->a:Lcom/spotify/mobile/android/util/cn;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/d;->b:Lcom/spotify/mobile/android/util/cn;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->e:Lcom/spotify/mobile/android/util/cl;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/ui/activity/upsell/m;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->g:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/util/cl;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->e:Lcom/spotify/mobile/android/util/cl;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/ui/activity/upsell/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->d:Lcom/spotify/mobile/android/ui/activity/upsell/e;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Landroid/os/AsyncTask;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->e:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->e:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    :cond_12
    return-void
.end method

.method public final c()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->g:Ljava/lang/Long;

    return-void
.end method

.method public final run()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
