.class public Lcom/spotify/music/internal/provider/SpotifyProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/spotify/mobile/android/service/connections/g;

.field private c:Landroid/os/Handler;

.field private d:Lcom/spotify/music/internal/provider/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.spotify.music"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/internal/provider/SpotifyProvider;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    if-nez v0, :cond_19

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpotifyProviderWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;

    move-result-object v0

    :try_start_e
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/j;->b(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v1, "Error calling delete."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 10

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->c()Z

    move-result v0

    if-eqz v0, :cond_b2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_70
    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;

    move-result-object v0

    :try_start_76
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/service/j;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_b2} :catch_b3

    :cond_b2
    :goto_b2
    return-void

    :catch_b3
    move-exception v0

    const-string v1, "Error calling insert."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b2
.end method

.method static synthetic b(Lcom/spotify/music/internal/provider/SpotifyProvider;)Landroid/os/Handler;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b()Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/connections/g;->a(Z)V

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->d:Lcom/spotify/music/internal/provider/a;

    if-nez v1, :cond_19

    new-instance v1, Lcom/spotify/music/internal/provider/a;

    invoke-direct {v1, p0}, Lcom/spotify/music/internal/provider/a;-><init>(Lcom/spotify/music/internal/provider/SpotifyProvider;)V

    iput-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->d:Lcom/spotify/music/internal/provider/a;

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->d:Lcom/spotify/music/internal/provider/a;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/connections/g;->a(Lcom/spotify/mobile/android/service/connections/h;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return v0

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static c()Z
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 10

    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->c()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_71
    iget-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;

    move-result-object v0

    :try_start_77
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/service/j;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b3} :catch_b5

    goto/16 :goto_8

    :catch_b5
    move-exception v0

    const-string v1, "Error calling update."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/provider/SpotifyProviderDelegate;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a()V

    new-instance v0, Lcom/spotify/music/internal/provider/SpotifyProvider$3;

    invoke-direct {v0, p0, p1}, Lcom/spotify/music/internal/provider/SpotifyProvider$3;-><init>(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;)V

    invoke-static {}, Lcom/spotify/music/internal/provider/SpotifyProvider;->c()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    const/4 v0, 0x1

    goto :goto_e

    :cond_24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_22
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/provider/SpotifyProviderDelegate;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/provider/SpotifyProviderDelegate;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a()V

    new-instance v0, Lcom/spotify/music/internal/provider/SpotifyProvider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/music/internal/provider/SpotifyProvider$2;-><init>(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/spotify/music/internal/provider/SpotifyProvider;->c()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    const/4 v0, 0x0

    goto :goto_e

    :cond_24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_22
.end method

.method public onCreate()Z
    .registers 4

    invoke-direct {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a()V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/connections/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->d:Lcom/spotify/music/internal/provider/a;

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_10

    move-object v0, v1

    :goto_5
    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/connections/g;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez v0, :cond_3b

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_29

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_29
    move-object v0, v1

    goto :goto_5

    :cond_2b
    const-string v0, "/"

    const/4 v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_3b
    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;

    move-result-object v2

    :try_start_41
    invoke-interface {v2, v0}, Lcom/spotify/mobile/android/service/j;->c(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_4c

    move-result-object v1

    :goto_45
    if-nez v1, :cond_f

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_f

    :catch_4c
    move-exception v0

    const-string v2, ""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_45
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const/4 v4, 0x1

    const-string v0, "The content provider com.spotify.music may not be queried from the main thread."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/String;)V

    const-class v0, Lcom/spotify/mobile/android/provider/SpotifyProviderDelegate;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_1a

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    invoke-direct {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->b()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    goto :goto_19

    :cond_22
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, p4}, Lcom/spotify/mobile/android/provider/ag;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p5, :cond_61

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_61

    const-string v2, "order"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_61

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REVERSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "reverse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_61
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :try_start_64
    new-instance v0, Lcom/spotify/mobile/android/provider/ac;

    invoke-virtual {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->b:Lcom/spotify/mobile/android/service/connections/g;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/provider/ac;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/connections/g;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_71} :catch_72

    goto :goto_19

    :catch_72
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The query failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const-class v0, Lcom/spotify/mobile/android/provider/SpotifyProviderDelegate;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/spotify/music/internal/provider/SpotifyProvider;->a()V

    new-instance v0, Lcom/spotify/music/internal/provider/SpotifyProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/music/internal/provider/SpotifyProvider$1;-><init>(Lcom/spotify/music/internal/provider/SpotifyProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/spotify/music/internal/provider/SpotifyProvider;->c()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/spotify/music/internal/provider/SpotifyProvider;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    const/4 v0, 0x1

    goto :goto_e

    :cond_24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_22
.end method
