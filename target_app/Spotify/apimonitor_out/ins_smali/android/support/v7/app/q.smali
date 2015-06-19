.class public final Landroid/support/v7/app/q;
.super Landroid/support/v7/app/p;
.source "SourceFile"
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/p;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
return-void
.end method
.method public final b(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
return-void
.end method
.method public final c(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method