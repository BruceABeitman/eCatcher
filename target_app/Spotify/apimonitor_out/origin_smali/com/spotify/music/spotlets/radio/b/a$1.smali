.class final Lcom/spotify/music/spotlets/radio/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/stuff/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/b/a$1;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$1;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->a(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/util/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_16
    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/b/a$1;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v2}, Lcom/spotify/music/spotlets/radio/b/a;->b(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_28

    :goto_22
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_26
    move v0, v1

    goto :goto_16

    :cond_28
    const/16 v1, 0x8

    goto :goto_22
.end method
