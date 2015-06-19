.class public Lcom/mologiq/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/f;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/f;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/mologiq/analytics/i;->a:Lcom/mologiq/analytics/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mologiq/analytics/i;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/mologiq/analytics/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    :cond_11
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method


# virtual methods
.method public a()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/b;->b()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    :cond_11
    :goto_11
    return v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method
