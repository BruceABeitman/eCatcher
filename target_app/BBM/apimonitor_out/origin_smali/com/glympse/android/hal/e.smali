.class Lcom/glympse/android/hal/e;
.super Lcom/glympse/android/hal/bb;
.source "AccountNotifier.java"


# static fields
.field public static final INTENT_EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field public static final n:Ljava/lang/String; = "com.glympse.android.hal.acc.CHANGED"

.field public static final o:Ljava/lang/String; = "account"

.field public static final p:Ljava/lang/String; = "package"


# instance fields
.field private e:Landroid/content/Context;

.field private q:Lcom/glympse/android/lib/GGlympsePrivate;

.field private r:Lcom/glympse/android/hal/f;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/bb;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/e;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/e;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/e;->cI:Lcom/glympse/android/api/GGlympse;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/glympse/android/hal/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/glympse/android/hal/e;->q:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNotificationCenter;->sync(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_4

    :catch_3a
    move-exception v0

    goto :goto_4
.end method

.method private c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/glympse/android/hal/e;->cJ:Lcom/glympse/android/api/GUser;

    invoke-interface {v1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/e;->q:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/j;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/hal/e;->cI:Lcom/glympse/android/api/GGlympse;

    check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object v0, p0, Lcom/glympse/android/hal/e;->q:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/hal/e;->q:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    new-instance v0, Lcom/glympse/android/hal/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/f;-><init>(Lcom/glympse/android/hal/e;Lcom/glympse/android/hal/e$1;)V

    iput-object v0, p0, Lcom/glympse/android/hal/e;->r:Lcom/glympse/android/hal/f;

    iget-object v0, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/e;->r:Lcom/glympse/android/hal/f;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.glympse.android.hal.acc.CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/e;->r:Lcom/glympse/android/hal/f;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/glympse/android/hal/e;->r:Lcom/glympse/android/hal/f;

    iput-object v2, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/glympse/android/hal/e;->q:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public send(I)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glympse.android.hal.acc.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "account"

    invoke-direct {p0}, Lcom/glympse/android/hal/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    iget-object v2, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/glympse/android/hal/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    goto :goto_25
.end method
