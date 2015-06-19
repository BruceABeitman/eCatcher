.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/j;->a(Ljava/lang/String;)V
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->l(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;
move-result-object v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/j;->a()V
:cond_33
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method