.class public Lcom/lenovo/anyshare/sdk/internal/ak;
.super Ljava/lang/Object;
.source "CloneSettings.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/anyshare/sdk/internal/ak;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bc;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "KEY_ALLOW_LOCAL_CLONE"

    sget-boolean v2, Lcom/lenovo/anyshare/sdk/internal/ak;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bc;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "KEY_INSTALL_SOURCE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bc;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "KEY_CONTENT_PERMITS"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
