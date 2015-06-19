.class final Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/adapter/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x1

    check-cast p2, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/c;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method
