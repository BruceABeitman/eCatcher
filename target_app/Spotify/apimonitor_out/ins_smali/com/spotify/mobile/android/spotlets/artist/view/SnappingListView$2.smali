.class final Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v1
if-nez v1, :cond_11
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-nez v1, :cond_12
:goto_11
:cond_11
return-void
:cond_12
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->d(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
move-result v1
neg-int v1, v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
move-result v2
add-int/lit8 v2, v2, 0x64
if-ge v1, v2, :cond_11
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z
move-result v2
if-nez v2, :cond_11
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->g(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z
move-result v2
if-nez v2, :cond_11
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
int-to-float v3, v1
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
move-result v4
int-to-float v4, v4
invoke-static {v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(FF)F
move-result v3
int-to-float v1, v1
const/4 v4, 0x0
invoke-static {v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(FF)F
move-result v1
cmpl-float v1, v3, v1
if-lez v1, :cond_4f
:goto_4b
invoke-static {v2, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;I)V
goto :goto_11
:cond_4f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
move-result v0
goto :goto_4b
.end method