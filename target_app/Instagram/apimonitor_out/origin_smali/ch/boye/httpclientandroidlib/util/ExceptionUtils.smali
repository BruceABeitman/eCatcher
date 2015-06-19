.class public final Lch/boye/httpclientandroidlib/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    :try_start_4
    sget-object v0, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method
