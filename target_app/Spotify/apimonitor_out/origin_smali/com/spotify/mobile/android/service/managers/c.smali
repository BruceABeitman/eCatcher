.class public final Lcom/spotify/mobile/android/service/managers/c;
.super Lcom/spotify/mobile/android/service/k;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

.field private b:Landroid/content/ContentResolver;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;Landroid/content/ContentResolver;)V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/k;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->d:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/service/managers/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/managers/c$1;-><init>(Lcom/spotify/mobile/android/service/managers/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->e:Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/managers/c;->b:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/c;->e:Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->setObserver(Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/managers/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/managers/c;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/managers/c;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->b:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->numberOfRows(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->query(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->acquirePath(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/managers/c;->c:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->releasePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_2c

    move-result-object v2

    aget-object v1, v2, v5

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/spotify/mobile/android/service/managers/c;->a:Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;->writeImageToPipe(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v3

    if-nez v3, :cond_1e

    :try_start_17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2e

    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_30

    :goto_1d
    return-object v0

    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    :goto_21
    move-object v0, v1

    goto :goto_1d

    :catch_23
    move-exception v0

    const-string v2, ""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :catch_2c
    move-exception v1

    goto :goto_1d

    :catch_2e
    move-exception v1

    goto :goto_1a

    :catch_30
    move-exception v1

    goto :goto_1d
.end method
