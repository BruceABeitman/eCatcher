.class public Lcom/handmark/pulltorefresh/library/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/b;
.field private final a:Ljava/util/HashSet;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
return-void
.end method
.method public a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_7
return-void
.end method
.method public disableAnimation()V
.registers 1
return-void
.end method
.method public enableAnimation()V
.registers 1
return-void
.end method
.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V
goto :goto_6
:cond_16
return-void
.end method
.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_6
:cond_16
return-void
.end method
.method public setPullLabel(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V
goto :goto_6
:cond_16
return-void
.end method
.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V
goto :goto_6
:cond_16
return-void
.end method
.method public setReleaseLabel(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V
goto :goto_6
:cond_16
return-void
.end method
.method public setTextTypeface(Landroid/graphics/Typeface;)V
.registers 4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V
goto :goto_6
:cond_16
return-void
.end method