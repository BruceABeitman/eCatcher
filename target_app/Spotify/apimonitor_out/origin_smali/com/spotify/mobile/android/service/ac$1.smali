.class final Lcom/spotify/mobile/android/service/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/ac;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:[B

.field final synthetic e:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

.field final synthetic f:Lcom/spotify/mobile/android/service/ac;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/ac;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ac$1;->f:Lcom/spotify/mobile/android/service/ac;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/ac$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/ac$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/service/ac$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/spotify/mobile/android/service/ac$1;->d:[B

    iput-object p6, p0, Lcom/spotify/mobile/android/service/ac$1;->e:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$1;->f:Lcom/spotify/mobile/android/service/ac;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$1;->f:Lcom/spotify/mobile/android/service/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ac;->a(Lcom/spotify/mobile/android/service/ac;)Lcom/spotify/cosmos/android/RemoteNativeRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/ac$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/ac$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/ac$1;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/spotify/mobile/android/service/ac$1;->d:[B

    iget-object v5, p0, Lcom/spotify/mobile/android/service/ac$1;->e:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v1, "Error when calling cosmos."

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
