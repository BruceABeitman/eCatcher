.class public Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "genres-mapping-last-update-time"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->a:Lcom/spotify/mobile/android/util/cz;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v1

    const-class v3, Lcom/spotify/mobile/android/util/do;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {}, Lcom/spotify/mobile/android/util/do;->a()Lcom/spotify/mobile/android/util/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v1, v1, v5

    if-gez v1, :cond_28

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->stopSelf()V

    :cond_28
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v3, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    const-string v0, "hm://radio/browse-subgenres"

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;

    const-class v3, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    const/4 v0, 0x2

    return v0
.end method
