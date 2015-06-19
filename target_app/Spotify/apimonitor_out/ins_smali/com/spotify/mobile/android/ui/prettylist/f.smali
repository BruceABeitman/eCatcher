.class public final Lcom/spotify/mobile/android/ui/prettylist/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/prettylist/c;
.field private final a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
.field private b:Lcom/spotify/mobile/android/ui/prettylist/a;
.method constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, -0x1
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/f;->addView(Landroid/view/View;)V
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
return-object v0
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(I)V
return-void
.end method
.method public final a(Landroid/support/v4/view/ah;)V
.registers 2
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->b:Lcom/spotify/mobile/android/ui/prettylist/a;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->b:Lcom/spotify/mobile/android/ui/prettylist/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->b:Lcom/spotify/mobile/android/ui/prettylist/a;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/a;->a(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public final a(Z)V
.registers 2
return-void
.end method
.method public final b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final b(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public final c()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a()Landroid/widget/ListView;
move-result-object v0
return-object v0
.end method
.method public final c(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Landroid/view/View;)V
return-void
.end method
.method public final d()Landroid/widget/ImageView;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final e()Landroid/widget/ImageView;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final f()Lcom/spotify/android/paste/widget/HeaderView;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final g()V
.registers 1
return-void
.end method
.method public final h()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V
return-void
.end method
.method public final i()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/f;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V
return-void
.end method
.method public final j()Landroid/view/View;
.registers 1
return-object p0
.end method
.method public final k()V
.registers 1
return-void
.end method