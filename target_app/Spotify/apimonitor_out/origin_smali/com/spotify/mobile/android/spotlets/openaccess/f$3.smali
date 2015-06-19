.class final Lcom/spotify/mobile/android/spotlets/openaccess/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/SpotifyLink;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/openaccess/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;Lcom/spotify/mobile/android/util/SpotifyLink;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->a:Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->c(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->a:Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->f(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->e(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/openaccess/util/f;Lcom/spotify/mobile/android/spotlets/openaccess/util/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;->b:Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    return-void
.end method
