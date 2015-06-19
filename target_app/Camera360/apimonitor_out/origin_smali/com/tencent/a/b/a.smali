.class public final Lcom/tencent/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/a/b/a;->a:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/tencent/a/b/a;->a:Landroid/content/Context;

    goto :goto_5
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/tencent/a/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/tencent/a/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/io/File;
    .registers 1

    invoke-static {}, Lcom/tencent/a/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
