.class public Lcom/a/a/a/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/cr;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt p0, v2, :cond_b

    const/16 v2, 0x12b

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x12c

    if-lt p0, v2, :cond_15

    const/16 v2, 0x18f

    if-gt p0, v2, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    const/16 v2, 0x190

    if-lt p0, v2, :cond_1d

    const/16 v2, 0x1f3

    if-le p0, v2, :cond_a

    :cond_1d
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_23

    move v0, v1

    goto :goto_a

    :cond_23
    move v0, v1

    goto :goto_a
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Activity;

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_68

    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_4b

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lcom/a/a/a/bc;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "com.crashlytics.ApiKey"

    const-string v3, "string"

    invoke-static {p0, v2, v3}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_35
    invoke-static {v0}, Lcom/a/a/a/bc;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    if-nez p1, :cond_43

    invoke-static {p0}, Lcom/a/a/a/bc;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4b
    move-exception v0

    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v2

    const-string v3, "Crashlytics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caught non-fatal exception while retrieving apiKey: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    move-object v0, v1

    goto :goto_1d

    :cond_6a
    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-interface {v2, v3, v4, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_79
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/app/Application;
    .registers 2

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Application;

    :goto_6
    return-object p0

    :cond_7
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    goto :goto_6

    :cond_12
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_1d

    check-cast p0, Landroid/app/Service;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    goto :goto_6

    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    move-object p0, v0

    goto :goto_6

    :cond_2d
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private static b(I)Z
    .registers 2

    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->f()I

    move-result v0

    if-gt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/a/cs;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    if-nez p4, :cond_8

    invoke-static {p1}, Lcom/a/a/a/cs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/a/a/a/cs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/a/a/a/cs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/a/a/a/cs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/a/a/a/cs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/a/cs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
