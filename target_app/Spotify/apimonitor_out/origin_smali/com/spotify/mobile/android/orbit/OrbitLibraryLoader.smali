.class public Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARMV7_ABI:Ljava/lang/String; = "armeabi-v7a"

.field private static final LIB_BASE_FOLDER:Ljava/lang/String; = "lib"

.field public static final ORBIT_JNI_LIBRARY_NAME:Ljava/lang/String; = "orbit-jni-spotify"

.field private static final X86_ABI:Ljava/lang/String; = "x86"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNativeLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "liborbit-jni-spotify.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static copyLibFromApk(Ljava/net/URL;Ljava/io/File;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_54

    move-result-object v1

    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_57

    const/16 v2, 0x200

    :try_start_d
    new-array v2, v2, [B

    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_52
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_f

    :catch_1b
    move-exception v2

    move-object v2, v3

    :goto_1d
    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_47

    :cond_22
    :goto_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_49

    :cond_27
    :goto_27
    return v0

    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_52
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_1b

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_43

    :goto_2e
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_45

    :cond_33
    :goto_33
    const/4 v0, 0x1

    goto :goto_27

    :catchall_35
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_38
    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4b

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_42

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4d

    :cond_42
    :goto_42
    throw v0

    :catch_43
    move-exception v0

    goto :goto_2e

    :catch_45
    move-exception v0

    goto :goto_33

    :catch_47
    move-exception v2

    goto :goto_22

    :catch_49
    move-exception v1

    goto :goto_27

    :catch_4b
    move-exception v2

    goto :goto_3d

    :catch_4d
    move-exception v1

    goto :goto_42

    :catchall_4f
    move-exception v0

    move-object v3, v2

    goto :goto_38

    :catchall_52
    move-exception v0

    goto :goto_38

    :catch_54
    move-exception v1

    move-object v1, v2

    goto :goto_1d

    :catch_57
    move-exception v3

    goto :goto_1d
.end method

.method private static createLibDirIfNeeded(Ljava/io/File;)V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "Failed to delete old (possibly stale) native library"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Failed to delete old (possibly stale) native library"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "Failed to create directory for native library extraction"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Failed to create directory for native library extraction"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "Unexpected file where native lib dir expected!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unexpected file where native lib dir expected!"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    return-void
.end method

.method private fallbackNativeLoading(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->getDeviceAbi(Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)Ljava/lang/String;

    move-result-object v1

    :try_start_5
    invoke-static {p1, v1}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->buildNativeLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->createLibDirIfNeeded(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_c} :catch_2f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/lib/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/liborbit-jni-spotify.so"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string v1, "Cannot find native library in APK - fallback extraction failed!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    :goto_2e
    return v0

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_3a
    invoke-static {v1, v2}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->copyLibFromApk(Ljava/net/URL;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private static getDeviceAbi(Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)Ljava/lang/String;
    .registers 4

    const-string v0, "armeabi-v7a"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;->getABI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "x86"

    :cond_10
    return-object v0
.end method


# virtual methods
.method public loadLibrary(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)V
    .registers 7

    :try_start_0
    const-string v0, "orbit-jni-spotify"

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->fallbackNativeLoading(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "Error performing native lib fallback extraction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_19
    const-string v0, "Successfully loaded native lib with fallback method."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto :goto_5
.end method
