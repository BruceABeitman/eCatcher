.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->q:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01a6

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->v:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->v:Ljava/lang/String;

    :goto_1d
    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_27
    const-string v0, ""

    goto :goto_1d
.end method
