.class public Lcom/igexin/download/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/igexin/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    :try_start_11
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-virtual {v0, p0}, Lcom/igexin/download/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_1b

    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v0

    :catch_1b
    move-exception v0

    goto :goto_16
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0, v1}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Z)Z

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_9
    const-string/jumbo v0, "android.media.IMediaScannerService"
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_49

    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "Stub"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;)V
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_47} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_47} :catch_56
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_47} :catch_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_47} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_47} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_47} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_47} :catch_4c

    :cond_47
    :goto_47
    :try_start_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_49

    throw v0

    :catch_4c
    move-exception v0

    goto :goto_47

    :catch_4e
    move-exception v0

    goto :goto_47

    :catch_50
    move-exception v0

    goto :goto_47

    :catch_52
    move-exception v0

    goto :goto_47

    :catch_54
    move-exception v0

    goto :goto_47

    :catch_56
    move-exception v0

    goto :goto_47

    :catch_58
    move-exception v0

    goto :goto_47
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
