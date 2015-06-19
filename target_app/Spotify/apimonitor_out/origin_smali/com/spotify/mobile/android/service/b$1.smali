.class final Lcom/spotify/mobile/android/service/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/core/internal/LocalFilePlayer$LocalFilePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/b$1;->a:Lcom/spotify/mobile/android/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaPlayerCreated(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b$1;->a:Lcom/spotify/mobile/android/service/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/b;->a(Lcom/spotify/mobile/android/service/b;I)V

    return-void
.end method

.method public final onMediaPlayerDestroyed(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b$1;->a:Lcom/spotify/mobile/android/service/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/b;->b(Lcom/spotify/mobile/android/service/b;I)V

    return-void
.end method
