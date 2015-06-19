.class final Lcom/lenovo/anyshare/sdk/internal/ch;
.super Ljava/lang/Object;
.source "StaticIPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/ch$a;
    }
.end annotation


# direct methods
.method protected static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ai;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string/jumbo v0, "ipAssignment"

    invoke-static {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static a(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "linkProperties"

    invoke-static {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v6, "Unsupport linkProperties!"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_14
    const-string/jumbo v5, "android.net.RouteInfo"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/net/InetAddress;

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "mRoutes"

    invoke-static {v0, v5}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static a(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "linkProperties"

    invoke-static {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15

    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v6, "Unsupport linkProperties!"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_15
    const-string/jumbo v5, "android.net.LinkAddress"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/net/InetAddress;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "mLinkAddresses"

    invoke-static {v3, v5}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/ch$a;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_11

    :try_start_b
    const-string/jumbo v2, "DHCP"

    invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_14

    :cond_11
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_9

    :catch_14
    move-exception v0

    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;Lcom/lenovo/anyshare/sdk/internal/ch$a;)Z
    .registers 6

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z

    move-result v2

    if-nez v2, :cond_2f

    if-eqz p0, :cond_2f

    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_2e

    :try_start_b
    const-string/jumbo v2, "STATIC"

    invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {p0, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;I)V

    iget-object v2, p1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V

    iget-object v2, p1, Lcom/lenovo/anyshare/sdk/internal/ch$a;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->b(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_9

    :catch_31
    move-exception v0

    const-string/jumbo v2, "StaticIPHelper"

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method protected static b(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string/jumbo v2, "linkProperties"

    invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ai;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v2, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v3, "Unsupport linkProperties!"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-string/jumbo v2, "mDnses"

    invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method
