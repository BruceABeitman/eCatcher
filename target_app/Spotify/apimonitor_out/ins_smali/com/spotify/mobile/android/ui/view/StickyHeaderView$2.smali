.class final Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->f(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWidth()I
move-result v1
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->f(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->g(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method