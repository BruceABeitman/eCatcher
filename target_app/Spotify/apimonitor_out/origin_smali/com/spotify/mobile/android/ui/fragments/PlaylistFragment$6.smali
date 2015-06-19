.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$6;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$6;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/util/k;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 6
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

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$6;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;ZZ)V

    goto :goto_8
.end method
