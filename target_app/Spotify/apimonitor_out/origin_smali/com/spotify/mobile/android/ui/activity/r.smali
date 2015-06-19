.class public final Lcom/spotify/mobile/android/ui/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "com.spotify.mobile.android.ui.activity.UninstallReleaseVersionActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "showIfNeeded"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2d} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2d} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2d} :catch_44

    move-result v0

    :goto_2e
    return v0

    :catch_2f
    move-exception v0

    move v0, v1

    goto :goto_2e

    :catch_32
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Found class but not method??"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not invoke method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not invoke method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
