.class public Lcom/sun/activation/registries/LogSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static debug:Z

.field private static final level:Ljava/util/logging/Level;

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    :try_start_7
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_18

    :goto_f
    const-string v0, "javax.activation"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    return-void

    :catch_18
    move-exception v0

    goto :goto_f
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable()Z
    .registers 2

    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static log(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/sun/activation/registries/LogSupport;->debug:Z

    if-eqz v0, :cond_20

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "; Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    sget-object v0, Lcom/sun/activation/registries/LogSupport;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sun/activation/registries/LogSupport;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
