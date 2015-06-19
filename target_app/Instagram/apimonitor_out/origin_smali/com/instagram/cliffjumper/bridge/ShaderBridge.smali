.class public Lcom/instagram/cliffjumper/bridge/ShaderBridge;
.super Ljava/lang/Object;
.source "ShaderBridge.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/bridge/ShaderBridge;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;

    sput-object v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->compileProgram(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a()Z
    .registers 4

    const-class v1, Lcom/instagram/cliffjumper/bridge/ShaderBridge;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v0, :cond_1e

    :try_start_7
    const-string v0, "scrambler"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "glcommon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jpegutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cj"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_1e} :catch_22

    :cond_1e
    :goto_1e
    :try_start_1e
    sget-boolean v0, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->b:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_2b

    monitor-exit v1

    return v0

    :catch_22
    move-exception v0

    :try_start_23
    sget-object v2, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a:Ljava/lang/Class;

    const-string v3, "Could not load native library"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native compileProgram(Ljava/lang/String;Z)I
.end method
