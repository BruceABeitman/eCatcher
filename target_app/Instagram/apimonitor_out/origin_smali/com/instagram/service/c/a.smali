.class public final Lcom/instagram/service/c/a;
.super Ljava/lang/Object;
.source "IgGateKeeper.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method public static a()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/service/c/a;->a:Ljava/lang/Boolean;

    sput-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    sput-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static b()Z
    .registers 3

    sget-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    const-string v1, "quarantined"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    :cond_16
    sget-object v0, Lcom/instagram/service/c/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 3

    sget-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    const-string v1, "is_starred_enabled"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    :cond_16
    sget-object v0, Lcom/instagram/service/c/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
