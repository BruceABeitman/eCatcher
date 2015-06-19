.class public Lcom/twidroid/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Lcom/google/android/gms/common/g; {:try_start_1 .. :try_end_8} :catch_f
    .catch Lcom/google/android/gms/common/h; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/g;->printStackTrace()V

    goto :goto_9

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/h;->printStackTrace()V

    goto :goto_9
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/twidroid/d/b;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .registers 1

    const-string v0, "4EQ9YBK2JBHPSJCSBQNK"

    sput-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    return-void
.end method

.method private static b(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, "310000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/twidroid/d/b;->a()V

    const-string v0, "28262"

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "21815"

    goto :goto_1f
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/b;->b()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Lcom/google/android/gms/common/g; {:try_start_1 .. :try_end_8} :catch_17
    .catch Lcom/google/android/gms/common/h; {:try_start_1 .. :try_end_8} :catch_24

    move-result v0

    :goto_9
    return v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Lcom/twidroid/d/b$1;

    invoke-direct {v2}, Lcom/twidroid/d/b$1;-><init>()V

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/g;->a(Ljava/lang/Throwable;Lcom/twidroid/net/hockeyapp/android/d;)V

    goto :goto_9

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/g;->printStackTrace()V

    new-instance v2, Lcom/twidroid/d/b$2;

    invoke-direct {v2}, Lcom/twidroid/d/b$2;-><init>()V

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/g;->a(Ljava/lang/Throwable;Lcom/twidroid/net/hockeyapp/android/d;)V

    goto :goto_9

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/h;->printStackTrace()V

    new-instance v2, Lcom/twidroid/d/b$3;

    invoke-direct {v2}, Lcom/twidroid/d/b$3;-><init>()V

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/g;->a(Ljava/lang/Throwable;Lcom/twidroid/net/hockeyapp/android/d;)V

    goto :goto_9
.end method
