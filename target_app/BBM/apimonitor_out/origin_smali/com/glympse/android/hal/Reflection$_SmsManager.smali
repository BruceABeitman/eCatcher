.class public Lcom/glympse/android/hal/Reflection$_SmsManager;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dZ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ea:Ljava/lang/reflect/Method;

.field private static eb:Ljava/lang/reflect/Method;

.field private static ec:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->ea:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->eb:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->ec:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->cR:Z

    if-nez v2, :cond_7d

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->cR:Z

    :try_start_8
    const-string v2, "android.telephony.SmsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_96

    :goto_10
    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    if-nez v2, :cond_1c

    :try_start_14
    const-string v2, "android.telephony.gsm.SmsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1c} :catch_8a

    :cond_1c
    :goto_1c
    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    if-eqz v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to send SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :try_start_3a
    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->ea:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    const-string v3, "divideMessage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->eb:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->dZ:Ljava/lang/Class;

    const-string v3, "sendMultipartTextMessage"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->ec:Ljava/lang/reflect/Method;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_7d} :catch_8f

    :cond_7d
    :goto_7d
    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->ea:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_94

    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->eb:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_94

    sget-object v2, Lcom/glympse/android/hal/Reflection$_SmsManager;->ec:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_94

    :goto_89
    return v0

    :catch_8a
    move-exception v2

    invoke-static {v2, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_1c

    :catch_8f
    move-exception v2

    invoke-static {v2, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_7d

    :cond_94
    move v0, v1

    goto :goto_89

    :catch_96
    move-exception v2

    goto/16 :goto_10
.end method

.method public static divideMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsManager;->Load()Z

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->eb:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->eb:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getDefault()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsManager;->Load()Z

    sget-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->ea:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_10

    :try_start_8
    sget-object v1, Lcom/glympse/android/hal/Reflection$_SmsManager;->ea:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_10
.end method

.method public static sendMultipartTextMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsManager;->Load()Z

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->ec:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsManager;->ec:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_1f
.end method
