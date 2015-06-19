.class final Lcom/spotify/mobile/android/service/media/MediaService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/media/MediaService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/media/c/e;

.field final synthetic b:Lcom/spotify/mobile/android/service/media/c/c;

.field final synthetic c:Lcom/spotify/mobile/android/service/media/c/a;

.field final synthetic d:Lcom/spotify/mobile/android/service/media/MediaService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/service/media/c/e;Lcom/spotify/mobile/android/service/media/c/c;Lcom/spotify/mobile/android/service/media/c/a;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->d:Lcom/spotify/mobile/android/service/media/MediaService;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->a:Lcom/spotify/mobile/android/service/media/c/e;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->b:Lcom/spotify/mobile/android/service/media/c/c;

    iput-object p4, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->c:Lcom/spotify/mobile/android/service/media/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->d:Lcom/spotify/mobile/android/service/media/MediaService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->b(Lcom/spotify/mobile/android/service/media/MediaService;)Lcom/spotify/mobile/android/service/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->d:Lcom/spotify/mobile/android/service/media/MediaService;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Lcom/spotify/mobile/android/service/media/MediaService;)Lcom/spotify/mobile/android/service/media/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->a:Lcom/spotify/mobile/android/service/media/c/e;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->b:Lcom/spotify/mobile/android/service/media/c/c;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/media/MediaService$1;->c:Lcom/spotify/mobile/android/service/media/c/a;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/media/a/a/a;->a(Lcom/spotify/mobile/android/service/media/c/c;)Landroid/support/v4/app/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V

    return-void
.end method
