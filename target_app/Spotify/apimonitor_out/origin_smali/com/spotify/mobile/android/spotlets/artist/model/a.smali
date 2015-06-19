.class public final Lcom/spotify/mobile/android/spotlets/artist/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/artist/model/b;

.field private final b:Lcom/spotify/mobile/android/spotlets/artist/model/d;

.field private final c:Lcom/spotify/mobile/android/spotlets/artist/model/c;

.field private final d:Lcom/spotify/mobile/android/spotlets/artist/model/e;

.field private e:Lcom/spotify/cosmos/android/Resolver;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/d;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/d;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->b:Lcom/spotify/mobile/android/spotlets/artist/model/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/c;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/c;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->c:Lcom/spotify/mobile/android/spotlets/artist/model/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/e;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/e;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/e;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->f:Landroid/os/Handler;

    invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->e:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->e:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/b;)Lcom/spotify/mobile/android/spotlets/artist/model/a;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/b;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/database/Cursor;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/i;->a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/artist/model/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->reorderTopTracks(Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/b;

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/b;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->b:Lcom/spotify/mobile/android/spotlets/artist/model/d;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/e;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->c:Lcom/spotify/mobile/android/spotlets/artist/model/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->e:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/b/b;)V
    .registers 7

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->e:Lcom/spotify/cosmos/android/Resolver;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/a;->f:Landroid/os/Handler;

    const-class v4, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistLoader$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method
