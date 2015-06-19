.class Lcom/facebook/systrace/TraceDirect;
.super Ljava/lang/Object;
.source "TraceDirect.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/facebook/systrace/TraceDirect;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/systrace/TraceDirect;->a:Ljava/lang/String;

    :try_start_a
    const-string v2, "fbsystrace"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_f} :catch_15

    move v2, v0

    :goto_10
    if-nez v2, :cond_1a

    :goto_12
    sput-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    return-void

    :catch_15
    move-exception v2

    sget-object v2, Lcom/facebook/systrace/TraceDirect;->a:Ljava/lang/String;

    move v2, v1

    goto :goto_10

    :cond_1a
    move v0, v1

    goto :goto_12
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeEndSection()V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSection(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/facebook/systrace/TraceDirect;->nativeTraceCounter(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeGetMyCommandLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 3

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceBegin(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method public static c(Ljava/lang/String;I)V
    .registers 3

    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceEnd(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method private static native nativeAsyncTraceBegin(Ljava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(Ljava/lang/String;I)V
.end method

.method private static native nativeBeginSection(Ljava/lang/String;)V
.end method

.method private static native nativeEndSection()V
.end method

.method private static native nativeGetMyCommandLine()Ljava/lang/String;
.end method

.method private static native nativeTraceCounter(Ljava/lang/String;I)V
.end method
