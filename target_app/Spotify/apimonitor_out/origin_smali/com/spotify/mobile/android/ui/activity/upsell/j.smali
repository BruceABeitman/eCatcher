.class final Lcom/spotify/mobile/android/ui/activity/upsell/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/spotify/mobile/android/util/cn;

.field private static final b:Lcom/spotify/mobile/android/util/cn;

.field private static final c:Lcom/spotify/mobile/android/util/cn;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/spotify/mobile/android/ui/activity/upsell/k;

.field private final f:Lcom/squareup/wire/x;

.field private final g:Lcom/spotify/mobile/android/util/cl;

.field private final h:Lcom/spotify/mobile/android/util/cs;

.field private i:Lcom/spotify/cosmos/android/DeferredResolver;

.field private j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a:Lcom/spotify/mobile/android/util/cn;

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    const-wide/16 v1, 0xa

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b:Lcom/spotify/mobile/android/util/cn;

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    const-wide/16 v1, 0x8

    const-wide/16 v3, 0xe

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->c:Lcom/spotify/mobile/android/util/cn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/k;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->e:Lcom/spotify/mobile/android/ui/activity/upsell/k;

    new-instance v0, Lcom/squareup/wire/x;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/x;-><init>([Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->f:Lcom/squareup/wire/x;

    new-instance v0, Lcom/spotify/mobile/android/util/cm;

    const-string v1, "gpiab-register-purchases"

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a:Lcom/spotify/mobile/android/util/cn;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b:Lcom/spotify/mobile/android/util/cn;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/j;->c:Lcom/spotify/mobile/android/util/cn;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d:Landroid/content/Context;

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/l;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/l;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/j;)V

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->h:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/squareup/wire/x;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->f:Lcom/squareup/wire/x;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/j;Z)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->e:Lcom/spotify/mobile/android/ui/activity/upsell/k;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    invoke-interface {v0, v1, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/k;->a(Lcom/spotify/mobile/android/ui/activity/upsell/o;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->i:Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->destroy()V

    goto :goto_f
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/spotify/mobile/android/ui/activity/upsell/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/j;Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->k:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->k:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->l:Z

    if-eqz v0, :cond_15

    const-string v0, "Connected. Continue registration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d()V

    :cond_15
    return-void
.end method

.method private d()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    if-nez v0, :cond_6e

    move v0, v1

    :goto_7
    const-string v3, "field should be null"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->l:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->e:Lcom/spotify/mobile/android/ui/activity/upsell/k;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/k;->c()Lcom/spotify/mobile/android/ui/activity/upsell/o;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    if-eqz v0, :cond_70

    const-string v0, "Register purchase (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "POST"

    const-string v3, "hm://payment-iap/googleplay/1/google_proceed_payment/"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;

    invoke-direct {v5}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->response_code(Ljava/lang/Integer;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    iget-object v5, v5, Lcom/spotify/mobile/android/ui/activity/upsell/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->purchase_data(Ljava/lang/String;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->j:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    iget-object v5, v5, Lcom/spotify/mobile/android/ui/activity/upsell/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->data_signature(Ljava/lang/String;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->build()Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->a()[B

    move-result-object v2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->i:Lcom/spotify/cosmos/android/DeferredResolver;

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/j;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    :goto_6d
    return-void

    :cond_6e
    move v0, v2

    goto :goto_7

    :cond_70
    const-string v0, "No more purchases to register"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->e:Lcom/spotify/mobile/android/ui/activity/upsell/k;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/k;->d()V

    goto :goto_6d
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->h:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/l;->b()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->i:Lcom/spotify/cosmos/android/DeferredResolver;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->b()V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->h:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->g:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->i:Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->destroy()V

    return-void
.end method

.method public final run()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->k:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->d()V

    :goto_7
    return-void

    :cond_8
    const-string v0, "Not connected. Defer registration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/j;->l:Z

    goto :goto_7
.end method
