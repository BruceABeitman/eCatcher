.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;
.super Lcom/spotify/mobile/android/util/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/util/k",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/util/EnumSet;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/util/k;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->h()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->i()V

    goto :goto_19
.end method
