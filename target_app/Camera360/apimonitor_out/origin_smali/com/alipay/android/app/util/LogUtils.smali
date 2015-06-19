.class public Lcom/alipay/android/app/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "sdk"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static printExceptionStackTrace(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "sdk"

    invoke-static {v0, p0}, Lcom/alipay/android/app/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method
