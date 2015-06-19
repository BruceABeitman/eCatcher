.class final Lcom/spotify/mobile/android/spotlets/artist/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/view/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/e$2;->a:Lcom/spotify/mobile/android/spotlets/artist/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e$2;->a:Lcom/spotify/mobile/android/spotlets/artist/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/e;->b(Lcom/spotify/mobile/android/spotlets/artist/e;)Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a(Z)V

    return-void
.end method
