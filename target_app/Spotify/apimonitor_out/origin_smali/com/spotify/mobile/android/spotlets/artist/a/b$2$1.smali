.class final Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/a/a;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/a/b$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/a/b$2;Lcom/spotify/mobile/android/spotlets/artist/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/artist/a/b$2;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/artist/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;->b:Lcom/spotify/mobile/android/spotlets/artist/a/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->d(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Lcom/spotify/mobile/android/spotlets/artist/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/artist/a/a;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/a/c;->a(Lcom/spotify/mobile/android/spotlets/artist/a/a;)V

    return-void
.end method
