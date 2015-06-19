.class public Lus/pinguo/androidsdk/pgedit/PGEditClearCacheService;
.super Landroid/app/IntentService;
.source "PGEditClearCacheService.java"


# static fields
.field private static final NO_CLEAR_PATH:Ljava/lang/String; = "no_clear_path"

.field private static final ROOT_PATH:Ljava/lang/String; = "root_path"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "PGEditClearCacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static startClearCacheService(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditClearCacheService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "root_path"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "no_clear_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 12

    const-string/jumbo v6, "root_path"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "no_clear_path"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_1f

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1d
    if-lt v6, v7, :cond_20

    :cond_1f
    return-void

    :cond_20
    aget-object v2, v0, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->deleteFileAndFolder(Ljava/lang/String;)Z

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d
.end method
