.class public final Landroid/support/v7/app/r;
.super Lcom/spotify/mobile/android/util/ui/d;
.source "SourceFile"
.method public constructor <init>(Landroid/view/Window$Callback;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/ui/d;-><init>(Landroid/view/Window$Callback;)V
return-void
.end method
.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 5
invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_15
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
:goto_d
:cond_d
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/util/ui/d;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v1
invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
return v1
:cond_15
invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
if-eqz v1, :cond_d
invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_d
.end method