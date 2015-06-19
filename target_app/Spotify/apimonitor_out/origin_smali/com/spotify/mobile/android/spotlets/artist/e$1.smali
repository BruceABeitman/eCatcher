.class final Lcom/spotify/mobile/android/spotlets/artist/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/model/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/e$1;->a:Lcom/spotify/mobile/android/spotlets/artist/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "Failed to load follow data"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
    .registers 5

    const-string v0, "Follow data loaded: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e$1;->a:Lcom/spotify/mobile/android/spotlets/artist/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/e;->a(Lcom/spotify/mobile/android/spotlets/artist/e;)Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(ZI)V

    return-void
.end method
