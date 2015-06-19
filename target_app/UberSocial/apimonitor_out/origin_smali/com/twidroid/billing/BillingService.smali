.class public Lcom/twidroid/billing/BillingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/lang/String; = "BillingService"

.field private static b:Lcom/android/vending/billing/IMarketBillingService;

.field private static c:Ljava/util/LinkedList;

.field private static d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/twidroid/billing/BillingService;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twidroid/billing/BillingService;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .registers 1

    sput-object p0, Lcom/twidroid/billing/BillingService;->b:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {p2, p3}, Lcom/twidroid/billing/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/billing/m;

    iget-object v1, v0, Lcom/twidroid/billing/m;->b:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/twidroid/billing/m;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v1, v0, Lcom/twidroid/billing/m;->a:Lcom/twidroid/billing/h;

    iget-object v2, v0, Lcom/twidroid/billing/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/twidroid/billing/m;->d:Ljava/lang/String;

    iget-wide v4, v0, Lcom/twidroid/billing/m;->e:J

    iget-object v6, v0, Lcom/twidroid/billing/m;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/twidroid/billing/k;->a(Landroid/content/Context;Lcom/twidroid/billing/h;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_10

    :cond_34
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/twidroid/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_6
.end method

.method private a(JLcom/twidroid/billing/i;)V
    .registers 6

    sget-object v0, Lcom/twidroid/billing/BillingService;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/billing/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p3}, Lcom/twidroid/billing/a;->a(Lcom/twidroid/billing/i;)V

    :cond_11
    sget-object v0, Lcom/twidroid/billing/BillingService;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lcom/twidroid/billing/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/twidroid/billing/c;-><init>(Lcom/twidroid/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/c;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twidroid/billing/BillingService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/billing/BillingService;->g()Z

    move-result v0

    return v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lcom/twidroid/billing/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/twidroid/billing/d;-><init>(Lcom/twidroid/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/d;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .registers 1

    sget-object v0, Lcom/twidroid/billing/BillingService;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/android/vending/billing/IMarketBillingService;
    .registers 1

    sget-object v0, Lcom/twidroid/billing/BillingService;->b:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/twidroid/billing/BillingService;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private g()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/twidroid/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_10

    move-result v1

    if-eqz v1, :cond_29

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private h()V
    .registers 4

    const/4 v0, -0x1

    move v1, v0

    :cond_2
    :goto_2
    sget-object v0, Lcom/twidroid/billing/BillingService;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/billing/a;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/twidroid/billing/a;->c()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/twidroid/billing/BillingService;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twidroid/billing/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/twidroid/billing/a;->a()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_23
    invoke-direct {p0}, Lcom/twidroid/billing/BillingService;->g()Z

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-ltz v1, :cond_26

    invoke-virtual {p0, v1}, Lcom/twidroid/billing/BillingService;->stopSelf(I)V

    goto :goto_26
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/twidroid/billing/BillingService;->a(I[Ljava/lang/String;)Z

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string v1, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/twidroid/billing/BillingService;->b(I[Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_15

    :catch_2e
    move-exception v0

    const-string v1, "BillingService"

    const-string v2, "NPE handling billing command"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_37
    :try_start_37
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/twidroid/billing/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_4f
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "response_code"

    sget-object v3, Lcom/twidroid/billing/i;->g:Lcom/twidroid/billing/i;

    invoke-virtual {v3}, Lcom/twidroid/billing/i;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/twidroid/billing/i;->a(I)Lcom/twidroid/billing/i;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twidroid/billing/BillingService;->a(JLcom/twidroid/billing/i;)V
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_72} :catch_2e

    goto :goto_15
.end method

.method public a()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/twidroid/billing/b;

    invoke-direct {v0, p0}, Lcom/twidroid/billing/b;-><init>(Lcom/twidroid/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/b;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Lcom/twidroid/billing/b;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/billing/b;-><init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/b;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/twidroid/billing/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twidroid/billing/e;-><init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/e;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    new-instance v0, Lcom/twidroid/billing/f;

    invoke-direct {v0, p0}, Lcom/twidroid/billing/f;-><init>(Lcom/twidroid/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/twidroid/billing/f;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    :try_start_0
    invoke-virtual {p0, p0}, Lcom/twidroid/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/twidroid/billing/BillingService;->b:Lcom/android/vending/billing/IMarketBillingService;

    invoke-direct {p0}, Lcom/twidroid/billing/BillingService;->h()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/billing/BillingService;->b:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/twidroid/billing/BillingService;->a(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "BillingService"

    const-string v2, "Cant start service"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
