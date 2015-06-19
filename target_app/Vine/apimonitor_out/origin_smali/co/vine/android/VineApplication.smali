.class public Lco/vine/android/VineApplication;
.super Landroid/app/Application;
.source "VineApplication.java"


# static fields
.field private static INSTANCE:Lco/vine/android/VineApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lco/vine/android/VineApplication;
    .registers 1

    sget-object v0, Lco/vine/android/VineApplication;->INSTANCE:Lco/vine/android/VineApplication;

    return-object v0
.end method

.method public static getInstance()Lco/vine/android/VineApplication;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lco/vine/android/VineApplication;->INSTANCE:Lco/vine/android/VineApplication;

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .registers 2

    invoke-virtual {p0}, Lco/vine/android/VineApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-static {}, Lco/vine/android/util/BuildUtil;->isI18nOn()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p0}, Lco/vine/android/util/Util;->getCustomLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_1c

    const-string v2, "locale"

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v1, :cond_35

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lco/vine/android/VineApplication$1;

    invoke-direct {v3, p0, v1}, Lco/vine/android/VineApplication$1;-><init>(Lco/vine/android/VineApplication;Ljava/util/Locale;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public onCreate()V
    .registers 12

    const/4 v10, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isI18nOn()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lco/vine/android/VineApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-static {p0}, Lco/vine/android/util/Util;->forceCustomLocale(Landroid/content/Context;)V

    :cond_15
    invoke-static {p0}, Lco/vine/android/util/CrashUtil;->start(Landroid/content/Context;)V

    :try_start_18
    const-string v6, "RAM Budget"

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->getMemoryBudgetForLargeMemoryClass(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_8f

    :goto_21
    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v6

    if-nez v6, :cond_8c

    const-string v6, "Start changing value."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :try_start_2c
    const-class v6, Landroid/database/CursorWindow;

    const-string v7, "sCursorWindowSize"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Original value: {}."

    invoke-static {v6, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x989680

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->getMemoryBudgetForLargeMemoryClass(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v8, :cond_53

    int-to-double v6, v5

    const-wide v8, 0x3fe999999999999aL

    mul-double/2addr v6, v8

    double-to-int v5, v6

    :cond_53
    const-string v6, "Changing using weighted value: {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_6c

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    const-string v6, "Sucessfully updated sCursorWindowSize."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_71} :catch_96

    :goto_71
    :try_start_71
    const-class v6, Landroid/database/CursorWindow;

    const-string v7, "sCursorWindowSize"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v6, "Verify value: {}."

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_87} :catch_9f

    :goto_87
    const-string v6, "End changing value."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :cond_8c
    sput-object p0, Lco/vine/android/VineApplication;->INSTANCE:Lco/vine/android/VineApplication;

    goto :goto_11

    :catch_8f
    move-exception v0

    const-string v6, "Failed to get ram budeget."

    invoke-static {v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_21

    :catch_96
    move-exception v0

    const-string v6, "You are too evil."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_71

    :catch_9f
    move-exception v0

    const-string v6, "You are too evil."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_87
.end method

.method public onLowMemory()V
    .registers 3

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string v1, "onLowMemory happened."

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->onLowMemory()V

    :cond_11
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const-string v1, "onTrimMemory happened: {}."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lco/vine/android/client/AppController;->onTrimMemory(I)V

    :cond_1b
    return-void
.end method
