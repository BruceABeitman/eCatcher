.class public abstract Lorg/apache/james/mime4j/util/TempStorage;
.super Ljava/lang/Object;
.source "TempStorage.java"


# static fields
.field private static inst:Lorg/apache/james/mime4j/util/TempStorage;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v2, Lorg/apache/james/mime4j/util/TempStorage;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lorg/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/commons/logging/Log;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    const-string v2, "org.apache.james.mime4j.tempStorage"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_11
    sget-object v2, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    if-eqz v2, :cond_21

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/util/TempStorage;

    sput-object v2, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_2d

    :cond_21
    :goto_21
    sget-object v2, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    if-nez v2, :cond_2c

    new-instance v2, Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {v2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;-><init>()V

    sput-object v2, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    :cond_2c
    return-void

    :catch_2d
    move-exception v2

    move-object v1, v2

    sget-object v2, Lorg/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate TempStorage class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' using SimpleTempStorage instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/james/mime4j/util/TempStorage;
    .registers 1

    sget-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/james/mime4j/util/TempStorage;)V
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sput-object p0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    return-void
.end method


# virtual methods
.method public abstract getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;
.end method
