.class public abstract Lcom/twidroid/billing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PurchaseObserver"

.field private static final f:[Ljava/lang/Class;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/reflect/Method;

.field private e:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twidroid/billing/j;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/twidroid/billing/j;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/billing/j;->c:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/twidroid/billing/j;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/billing/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lcom/twidroid/billing/j;->f:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/billing/j;->d:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_16

    :goto_11
    return-void

    :catch_12
    move-exception v0

    iput-object v3, p0, Lcom/twidroid/billing/j;->d:Ljava/lang/reflect/Method;

    goto :goto_11

    :catch_16
    move-exception v0

    iput-object v3, p0, Lcom/twidroid/billing/j;->d:Ljava/lang/reflect/Method;

    goto :goto_11
.end method


# virtual methods
.method a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/billing/j;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_43

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/twidroid/billing/j;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/twidroid/billing/j;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/billing/j;->e:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/twidroid/billing/j;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_49
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_43 .. :try_end_49} :catch_4a

    goto :goto_39

    :catch_4a
    move-exception v0

    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39
.end method

.method public abstract a(Lcom/twidroid/billing/e;Lcom/twidroid/billing/i;)V
.end method

.method public abstract a(Lcom/twidroid/billing/f;Lcom/twidroid/billing/i;)V
.end method

.method public abstract a(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method b(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 16

    iget-object v8, p0, Lcom/twidroid/billing/j;->c:Landroid/os/Handler;

    new-instance v0, Lcom/twidroid/billing/j$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/billing/j$1;-><init>(Lcom/twidroid/billing/j;Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
