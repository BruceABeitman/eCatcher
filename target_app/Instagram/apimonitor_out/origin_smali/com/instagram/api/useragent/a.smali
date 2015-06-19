.class public final Lcom/instagram/api/useragent/a;
.super Ljava/lang/Object;
.source "InstagramUserAgent.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/instagram/api/useragent/a;->a:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Instagram"

    invoke-static {v0, v1}, Lcom/instagram/common/a/h/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/api/useragent/a;->a:Ljava/lang/String;

    :cond_10
    sget-object v0, Lcom/instagram/api/useragent/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/api/useragent/a;->a:Ljava/lang/String;

    return-void
.end method
