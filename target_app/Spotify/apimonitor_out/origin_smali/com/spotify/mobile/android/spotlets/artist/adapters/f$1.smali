.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->b(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->uri:Ljava/lang/String;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    move-result-object v2

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method
