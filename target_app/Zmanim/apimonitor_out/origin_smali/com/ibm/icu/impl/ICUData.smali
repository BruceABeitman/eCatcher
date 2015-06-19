.class public final Lcom/ibm/icu/impl/ICUData;
.super Ljava/lang/Object;
.source "ICUData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/ibm/icu/impl/ICUData$1;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/ICUData$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    :goto_18
    if-eqz v0, :cond_23

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const-class v1, Lcom/ibm/icu/impl/ICUData;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_18

    :cond_23
    const/4 v1, 0x0

    goto :goto_1b

    :cond_25
    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/ICUAndroidBridge;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1b
.end method

.method public static getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-class v0, Lcom/ibm/icu/impl/ICUData;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v2

    if-nez v2, :cond_42

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_3d

    new-instance v2, Lcom/ibm/icu/impl/ICUData$2;

    invoke-direct {v2, p0, p1}, Lcom/ibm/icu/impl/ICUData$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    :goto_18
    if-nez v1, :cond_7c

    if-eqz p2, :cond_7c

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not locate data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_18

    :cond_42
    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/ibm/icu/ICUAndroidBridge;->open(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/ibm/icu/ICUAndroidBridge;->open(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v1

    :cond_7c
    return-object v1
.end method

.method public static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v1

    if-nez v1, :cond_2d

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/ibm/icu/impl/ICUData$3;

    invoke-direct {v1, p0, p1}, Lcom/ibm/icu/impl/ICUData$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    :goto_18
    if-nez v0, :cond_35

    if-eqz p2, :cond_35

    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "could not locate data"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_28
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_18

    :cond_2d
    invoke-static {}, Lcom/ibm/icu/ICUAndroidBridge;->get()Lcom/ibm/icu/ICUAndroidBridge;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/ICUAndroidBridge;->open(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    :cond_35
    return-object v0
.end method

.method public static getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-class v0, Lcom/ibm/icu/impl/ICUData;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
