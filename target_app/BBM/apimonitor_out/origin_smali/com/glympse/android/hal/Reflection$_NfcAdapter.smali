.class public Lcom/glympse/android/hal/Reflection$_NfcAdapter;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dI:Ljava/lang/reflect/Method;

.field private static dJ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dK:Ljava/lang/reflect/Method;

.field private static dL:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dM:Ljava/lang/reflect/Method;

.field private static dN:Ljava/lang/reflect/Method;

.field private static dO:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dI:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dK:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dL:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dM:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dN:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dO:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load()V
    .registers 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->cR:Z

    if-nez v0, :cond_94

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->cR:Z

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcEvent;->Load()V

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcEvent;->P()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_94

    :try_start_10
    const-string v0, "android.nfc.NfcAdapter$CreateNdefMessageCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    const-string v1, "createNdefMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcEvent;->P()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dI:Ljava/lang/reflect/Method;

    const-string v0, "android.nfc.NfcAdapter$OnNdefPushCompleteCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    const-string v1, "onNdefPushComplete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcEvent;->P()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dK:Ljava/lang/reflect/Method;

    const-string v0, "android.nfc.NfcAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dL:Ljava/lang/Class;

    const-string v1, "getDefaultAdapter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dM:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dL:Ljava/lang/Class;

    const-string v1, "setNdefPushMessageCallback"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dN:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dL:Ljava/lang/Class;

    const-string v1, "setOnNdefPushCompleteCallback"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dO:Ljava/lang/reflect/Method;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_94} :catch_95

    :cond_94
    :goto_94
    return-void

    :catch_95
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "Failure locating NfcAdapter via reflection"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_94
.end method

.method static synthetic N()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dI:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic O()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dK:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->Load()V

    sget-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dM:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_16

    :try_start_9
    sget-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dM:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v0

    :cond_16
    :goto_16
    return-object v0

    :catch_17
    move-exception v1

    invoke-static {v1, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_16
.end method

.method public static varargs setNdefPushMessageCallback(Ljava/lang/Object;Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dN:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    :try_start_c
    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dH:Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v2, Lcom/glympse/android/hal/bg;

    invoke-direct {v2, p1}, Lcom/glympse/android/hal/bg;-><init>(Lcom/glympse/android/hal/Reflection$_CreateNdefMessageCallback;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dN:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_34
.end method

.method public static varargs setOnNdefPushCompleteCallback(Ljava/lang/Object;Lcom/glympse/android/hal/Reflection$_OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dO:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    :try_start_c
    sget-object v0, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dJ:Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v2, Lcom/glympse/android/hal/bh;

    invoke-direct {v2, p1}, Lcom/glympse/android/hal/bh;-><init>(Lcom/glympse/android/hal/Reflection$_OnNdefPushCompleteCallback;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/Reflection$_NfcAdapter;->dO:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_34
.end method
