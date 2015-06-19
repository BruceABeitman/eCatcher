.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
if-nez v0, :cond_3b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;
invoke-static {v2, v0, v3}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:goto_29
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
:cond_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c()V
goto :goto_29
.end method