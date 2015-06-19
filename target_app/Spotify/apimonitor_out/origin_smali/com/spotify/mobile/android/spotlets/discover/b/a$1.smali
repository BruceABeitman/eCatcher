.class final Lcom/spotify/mobile/android/spotlets/discover/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/stuff/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/discover/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
    .registers 5

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    if-ne p2, v1, :cond_19

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method
