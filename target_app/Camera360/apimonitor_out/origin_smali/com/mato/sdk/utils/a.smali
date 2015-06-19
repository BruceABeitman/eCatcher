.class public final Lcom/mato/sdk/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Ljava/lang/String; = "CrashHandler"

.field private static c:Lcom/mato/sdk/utils/a;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final d:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mato/sdk/utils/a;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/mato/sdk/utils/a;
    .registers 1

    sget-object v0, Lcom/mato/sdk/utils/a;->c:Lcom/mato/sdk/utils/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mato/sdk/utils/a;

    invoke-direct {v0}, Lcom/mato/sdk/utils/a;-><init>()V

    sput-object v0, Lcom/mato/sdk/utils/a;->c:Lcom/mato/sdk/utils/a;

    :cond_b
    sget-object v0, Lcom/mato/sdk/utils/a;->c:Lcom/mato/sdk/utils/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_41

    const-string/jumbo v0, "null"

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mato/sdk/utils/a;->d:Ljava/util/Map;

    const-string/jumbo v3, "versionName"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mato/sdk/utils/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "versionCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_35} :catch_44

    :cond_35
    :goto_35
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_3e
    if-lt v1, v3, :cond_4f

    return-void

    :cond_41
    :try_start_41
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_43} :catch_44

    goto :goto_16

    :catch_44
    move-exception v0

    const-string/jumbo v1, "CrashHandler"

    const-string/jumbo v2, "an error occured when collect package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :cond_4f
    aget-object v0, v2, v1

    const/4 v4, 0x1

    :try_start_52
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/mato/sdk/utils/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "CrashHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_8e} :catch_92

    :goto_8e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :catch_92
    move-exception v0

    const-string/jumbo v4, "CrashHandler"

    const-string/jumbo v5, "an error occured when collect crash info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 7

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_69

    const-string/jumbo v1, "crash"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "crash.log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_4d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_8f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_52} :catch_81

    :try_start_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_a4

    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_9e

    :cond_68
    :goto_68
    return-void

    :cond_69
    :try_start_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_8f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_80} :catch_81

    goto :goto_10

    :catch_81
    move-exception v1

    :goto_82
    if-eqz v0, :cond_87

    :try_start_84
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_87
    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_8d

    goto :goto_68

    :catch_8d
    move-exception v0

    goto :goto_68

    :catchall_8f
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_93
    if-eqz v1, :cond_98

    :try_start_95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_98
    if-eqz p0, :cond_9d

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9d} :catch_a0

    :cond_9d
    :goto_9d
    throw v0

    :catch_9e
    move-exception v0

    goto :goto_68

    :catch_a0
    move-exception v1

    goto :goto_9d

    :catchall_a2
    move-exception v0

    goto :goto_93

    :catch_a4
    move-exception v0

    move-object v0, v1

    goto :goto_82
.end method

.method private a(Ljava/lang/Throwable;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/mato/sdk/utils/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_16
    if-nez v0, :cond_63

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_22
    const-string/jumbo v0, "crash.log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_4f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_62} :catch_6b

    :goto_62
    return-object v0

    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_6b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_62
.end method


# virtual methods
.method public final b()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mato/sdk/utils/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    if-nez p2, :cond_c

    :goto_2
    iget-object v0, p0, Lcom/mato/sdk/utils/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mato/sdk/utils/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p2}, Lcom/mato/sdk/utils/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    :cond_10
    const-wide/16 v0, 0xbb8

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_21

    :goto_15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_b

    :catch_21
    move-exception v0

    const-string/jumbo v1, "CrashHandler"

    const-string/jumbo v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
