.class public Lcom/flurry/sdk/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()[B
    .registers 3

    const-class v1, Lcom/flurry/sdk/dv;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called from a background thread!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/flurry/sdk/dv;->b:[B

    if-eqz v0, :cond_24

    sget-object v0, Lcom/flurry/sdk/dv;->b:[B
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    :goto_22
    monitor-exit v1

    return-object v0

    :cond_24
    :try_start_24
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_22

    :cond_36
    invoke-static {}, Lcom/flurry/sdk/dv;->b()V

    sget-object v0, Lcom/flurry/sdk/dv;->b:[B
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_19

    goto :goto_22
.end method

.method private static b()V
    .registers 7

    const/4 v6, 0x6

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    :try_start_24
    invoke-static {v0}, Lcom/flurry/sdk/fb;->d(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x14

    if-eqz v0, :cond_3b

    array-length v2, v0

    if-ne v2, v1, :cond_3b

    sput-object v0, Lcom/flurry/sdk/dv;->b:[B
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-exception v0

    sget-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v1, "Exception in generateHashedImei()"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_3b
    const/4 v2, 0x6

    :try_start_3c
    sget-object v3, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sha1 is not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_62} :catch_32

    goto :goto_13
.end method
