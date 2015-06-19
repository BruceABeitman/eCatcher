.class final Lcom/spotify/mobile/android/spotlets/discover/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-static {v0, p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/a/a;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getWidth()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->b(Lcom/spotify/mobile/android/spotlets/discover/b/a;)I
move-result v2
div-int/2addr v1, v2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/discover/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->d(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
return-void
.end method