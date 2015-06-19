.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/cosmos/android/DeferredResolver;

.field private final b:Lcom/spotify/mobile/android/util/cl;

.field private c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$2;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->e:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->connect()V

    new-instance v0, Lcom/spotify/mobile/android/util/cm;

    const-string v1, "network-operator-premium-activation"

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->e:Ljava/lang/Runnable;

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

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->b:Lcom/spotify/mobile/android/util/cl;

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    const-string v1, "hm://payment-iap/telco/1/activate_premium"

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->postBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    new-instance v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-class v4, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;

    invoke-direct {v2, p0, v3, v4}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$1;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/cl;->a(Z)V

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_f
    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;->a()V

    :cond_18
    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a:Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->destroy()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    return-void
.end method

.method final a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    return-void
.end method
