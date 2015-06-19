.class final Lcom/lenovo/lps/reaper/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/lenovo/lps/reaper/sdk/b;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/b;Z)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Lcom/lenovo/lps/reaper/sdk/b;

    iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Lcom/lenovo/lps/reaper/sdk/b;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b;->a(Lcom/lenovo/lps/reaper/sdk/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageInfo;

    :try_start_23
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Lcom/lenovo/lps/reaper/sdk/b;

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b;->a(Lcom/lenovo/lps/reaper/sdk/b;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_79

    move v0, v8

    :goto_32
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    if-eqz v0, :cond_83

    iget-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/d;->a:Z

    if-eqz v4, :cond_83

    const/4 v0, 0x1

    const-string/jumbo v4, "appVersionCode"

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Lcom/lenovo/lps/reaper/sdk/b;

    const-string/jumbo v1, "__APPINFO__"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_58} :catch_59

    goto :goto_16

    :catch_59
    move-exception v0

    const-string/jumbo v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TrackApp is Error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_79
    :try_start_79
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a3

    move v0, v8

    goto :goto_32

    :cond_83
    if-nez v0, :cond_16

    const/4 v0, 0x1

    const-string/jumbo v4, "appVersionCode"

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d;->b:Lcom/lenovo/lps/reaper/sdk/b;

    const-string/jumbo v1, "__APPINFO__"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/high16 v4, 0x3ff0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a0} :catch_59

    goto/16 :goto_16

    :cond_a2
    return-void

    :cond_a3
    move v0, v9

    goto :goto_32
.end method
