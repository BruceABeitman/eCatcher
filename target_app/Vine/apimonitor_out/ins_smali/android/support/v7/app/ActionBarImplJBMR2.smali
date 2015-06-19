.class public Landroid/support/v7/app/ActionBarImplJBMR2;
.super Landroid/support/v7/app/ActionBarImplJB;
.source "ActionBarImplJBMR2.java"
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarImplJB;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;)V
return-void
.end method
.method public setHomeActionContentDescription(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplJBMR2;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
return-void
.end method
.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplJBMR2;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setHomeAsUpIndicator(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplJBMR2;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplJBMR2;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method