.class public final Lcom/facebook/a/b;
.super Ljava/lang/Object;
.source "Compatibility.java"


# direct methods
.method static a()I
    .registers 2

    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_c} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_26

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :catch_16
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :catch_1e
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :catch_26
    move-exception v0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method static b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    const-string v2, "DROPBOX_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_11
    return-object v0
.end method
