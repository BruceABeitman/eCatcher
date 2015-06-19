.class Lcom/google/android/gms/tagmanager/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/a$a;


# instance fields
.field final synthetic TB:Lcom/google/android/gms/tagmanager/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a$1;->TB:Lcom/google/android/gms/tagmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ix()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a$1;->TB:Lcom/google/android/gms/tagmanager/a;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1a
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_28

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    const-string v1, "IllegalStateException getting Advertising Id Info"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_b

    :catch_13
    move-exception v1

    const-string v1, "GooglePlayServicesRepairableException getting Advertising Id Info"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_b

    :catch_1a
    move-exception v1

    const-string v1, "IOException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_b

    :catch_21
    move-exception v1

    const-string v1, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_b

    :catch_28
    move-exception v1

    const-string v1, "Unknown exception. Could not get the Advertising Id Info."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_b
.end method
