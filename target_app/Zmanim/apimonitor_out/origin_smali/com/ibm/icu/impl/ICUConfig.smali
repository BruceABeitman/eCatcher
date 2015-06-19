.class public Lcom/ibm/icu/impl/ICUConfig;
.super Ljava/lang/Object;
.source "ICUConfig.java"


# static fields
.field private static final CONFIG_PROPS:Ljava/util/Properties; = null

.field public static final CONFIG_PROPS_FILE:Ljava/lang/String; = "/com/ibm/icu/ICUConfig.properties"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/ibm/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    :try_start_7
    const-string v1, "/com/ibm/icu/ICUConfig.properties"

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v1, Lcom/ibm/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_14} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v1

    goto :goto_14

    :catch_17
    move-exception v1

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    :goto_5
    if-nez v0, :cond_d

    sget-object v1, Lcom/ibm/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_5
.end method
