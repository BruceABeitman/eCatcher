.class public final Lcom/spotify/android/paste/widget/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/view/ViewGroup;
.field private b:Landroid/view/View;
.method public constructor <init>(Landroid/view/ViewGroup;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
:goto_a
iget-object v1, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
return-void
:cond_10
const/16 v0, 0x8
goto :goto_a
.end method
.method public final a(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_10
iput-object p1, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
if-nez p1, :cond_1c
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
goto :goto_4
:cond_1c
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->a:Landroid/view/ViewGroup;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
goto :goto_4
.end method
.method public final b()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/internal/a;->b:Landroid/view/View;
return-object v0
.end method
.method public final c()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V
return-void
.end method