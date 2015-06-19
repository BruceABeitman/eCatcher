.class public final Lcom/lenovo/anyshare/sdk/internal/ce;
.super Ljava/lang/Object;
.source "Switch3G.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 7

    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v3, "mService"

    invoke-static {v0, v3}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "Switch3G"

    const-string/jumbo v4, "getMobileDataEnabled() return=?"

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    move-result v3

    :goto_28
    return v3

    :catch_29
    move-exception v2

    const-string/jumbo v3, "Switch3G"

    invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_28
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v5, "mService"

    invoke-static {v0, v5}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, "setMobileDataEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "Switch3G"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMobileDataEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") return=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    :goto_4b
    return v3

    :catch_4c
    move-exception v2

    const-string/jumbo v3, "Switch3G"

    invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    goto :goto_4b
.end method
