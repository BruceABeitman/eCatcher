.class final Lcom/spotify/mobile/android/service/ac$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/ac;->unsubscribe(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/spotify/mobile/android/service/ac;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/ac;I)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/ac$3;->b:Lcom/spotify/mobile/android/service/ac;

    iput p2, p0, Lcom/spotify/mobile/android/service/ac$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$3;->b:Lcom/spotify/mobile/android/service/ac;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/ac;->a:Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ac$3;->b:Lcom/spotify/mobile/android/service/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ac;->a(Lcom/spotify/mobile/android/service/ac;)Lcom/spotify/cosmos/android/RemoteNativeRouter;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/service/ac$3;->a:I

    invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->unsubscribe(I)V

    return-void
.end method
