.class final Lcom/spotify/android/paste/widget/HeaderView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/android/paste/widget/HeaderView;
.method constructor <init>(Lcom/spotify/android/paste/widget/HeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/HeaderView$1;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method private a()V
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$1;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a(Lcom/spotify/android/paste/widget/HeaderView;)Lcom/spotify/android/paste/widget/ViewPagerIndicator;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->requestLayout()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$1;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a(Lcom/spotify/android/paste/widget/HeaderView;)Lcom/spotify/android/paste/widget/ViewPagerIndicator;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->invalidate()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView$1;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->b(Lcom/spotify/android/paste/widget/HeaderView;)Lcom/spotify/android/paste/widget/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/d;->c()V
return-void
.end method
.method public final onChanged()V
.registers 1
invoke-direct {p0}, Lcom/spotify/android/paste/widget/HeaderView$1;->a()V
return-void
.end method
.method public final onInvalidated()V
.registers 1
invoke-direct {p0}, Lcom/spotify/android/paste/widget/HeaderView$1;->a()V
return-void
.end method