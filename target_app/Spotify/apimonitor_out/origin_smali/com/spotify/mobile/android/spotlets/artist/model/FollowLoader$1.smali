.class final Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/follow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/h;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V

    return-void
.end method