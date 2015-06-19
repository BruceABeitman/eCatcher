.class public final Lcom/spotify/mobile/android/ui/activity/upsell/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/ui/activity/upsell/s;

.field private final c:Lcom/spotify/mobile/android/util/cl;

.field private d:Lcom/spotify/mobile/android/util/cs;

.field private e:Ljava/lang/String;

.field private final f:Lcom/spotify/cosmos/android/DeferredResolver;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/s;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/r$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/r$2;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b:Lcom/spotify/mobile/android/ui/activity/upsell/s;

    invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->f:Lcom/spotify/cosmos/android/DeferredResolver;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/upsell/t;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/t;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    new-instance v0, Lcom/spotify/mobile/android/util/cm;

    const-string v1, "start-optin-trial"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/co;

    const-wide/16 v2, 0xc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/co;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->c:Lcom/spotify/mobile/android/util/cl;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/cosmos/android/DeferredResolver;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->f:Lcom/spotify/cosmos/android/DeferredResolver;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/r;Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    :cond_c
    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->c:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/r;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b:Lcom/spotify/mobile/android/ui/activity/upsell/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b:Lcom/spotify/mobile/android/ui/activity/upsell/s;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/s;->a(Z)V

    :cond_9
    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a:Landroid/content/Context;

    const v1, 0x7f0f03c3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_18
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/util/cl;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->c:Lcom/spotify/mobile/android/util/cl;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "{\"trial\":\"opt-in\", \"device_id\":\"%s\", \"country\":\"%s\"}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spotify/cosmos/router/Request;

    const-string v2, "POST"

    const-string v3, "hm://login-trial/start_trial"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->f:Lcom/spotify/cosmos/android/DeferredResolver;

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/StartOptInTrialTask$2;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-string v0, "Starting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/t;->b()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a:Landroid/content/Context;

    const v1, 0x7f0f03c4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Stopping"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/r$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/r$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/r$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->d:Lcom/spotify/mobile/android/util/cs;

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->c:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r;->c:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    :cond_2b
    return-void
.end method
