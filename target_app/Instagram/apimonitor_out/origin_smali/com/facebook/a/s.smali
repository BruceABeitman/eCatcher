.class public final Lcom/facebook/a/s;
.super Ljava/lang/Object;
.source "SettingsCollector.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/provider/Settings$System;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_56

    aget-object v5, v3, v1

    const-class v0, Ljava/lang/Deprecated;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/lang/String;

    if-ne v0, v6, :cond_4a

    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_4a} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_4a} :catch_52

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :catch_4e
    move-exception v0

    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    goto :goto_4a

    :catch_52
    move-exception v0

    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    goto :goto_4a

    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/Field;)Z
    .registers 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/provider/Settings$Secure;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_5c

    aget-object v5, v3, v1

    const-class v0, Ljava/lang/Deprecated;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/lang/String;

    if-ne v0, v6, :cond_50

    invoke-static {v5}, Lcom/facebook/a/s;->a(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_50

    :try_start_28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_50} :catch_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_50} :catch_58

    :cond_50
    :goto_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :catch_54
    move-exception v0

    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    goto :goto_50

    :catch_58
    move-exception v0

    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    goto :goto_50

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
