.class public Lcom/glympse/android/hal/Reflection$_SmsMessage;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static ed:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ee:Ljava/lang/reflect/Method;

.field private static ef:Ljava/lang/reflect/Method;

.field private static eg:Ljava/lang/reflect/Method;

.field private static eh:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ee:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ef:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eg:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eh:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load()V
    .registers 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->cR:Z

    if-nez v0, :cond_6d

    sput-boolean v2, Lcom/glympse/android/hal/Reflection$_SmsMessage;->cR:Z

    :try_start_8
    const-string v0, "android.telephony.SmsMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_78

    :goto_10
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    if-nez v0, :cond_1c

    :try_start_14
    const-string v0, "android.telephony.gsm.SmsMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1c} :catch_6e

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to read SMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :try_start_3a
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    const-string v1, "createFromPdu"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ef:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    const-string v1, "getTimestampMillis"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ee:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    const-string v1, "getDisplayMessageBody"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eg:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ed:Ljava/lang/Class;

    const-string v1, "getDisplayOriginatingAddress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eh:Ljava/lang/reflect/Method;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_6d} :catch_73

    :cond_6d
    :goto_6d
    return-void

    :catch_6e
    move-exception v0

    invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_1c

    :catch_73
    move-exception v0

    invoke-static {v0, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_6d

    :catch_78
    move-exception v0

    goto :goto_10
.end method

.method public static createFromPdu([B)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->Load()V

    sget-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ef:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_16

    :try_start_9
    sget-object v1, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ef:Ljava/lang/reflect/Method;

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

.method public static getDisplayMessageBody(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eg:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eg:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_17
    move-object v0, v1

    goto :goto_11
.end method

.method public static getDisplayOriginatingAddress(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eh:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_8
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->eh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_17
    move-object v0, v1

    goto :goto_11
.end method

.method public static getTimestampMillis(Ljava/lang/Object;)J
    .registers 3

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_SmsMessage;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ee:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_7
    sget-object v0, Lcom/glympse/android/hal/Reflection$_SmsMessage;->ee:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_15

    move-result-wide v0

    :goto_14
    return-wide v0

    :catch_15
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_14
.end method
