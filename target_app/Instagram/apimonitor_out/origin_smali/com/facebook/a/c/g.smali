.class public final Lcom/facebook/a/c/g;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_14} :catch_2a

    move-result-object v0

    goto :goto_9

    :catch_16
    move-exception v1

    sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find PackageInfo for current App : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :catch_2a
    move-exception v1

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/facebook/a/c/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_13} :catch_18

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_18
    move-exception v1

    goto :goto_9
.end method
