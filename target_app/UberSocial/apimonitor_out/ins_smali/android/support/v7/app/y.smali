.class  Landroid/support/v7/app/y;
.super Landroid/support/v7/app/d;
.source "SourceFile"
.implements Landroid/app/ActionBar$TabListener;
.field final b:Landroid/app/ActionBar$Tab;
.field final synthetic c:Landroid/support/v7/app/v;
.field private d:Ljava/lang/Object;
.field private e:Ljava/lang/CharSequence;
.field private f:Landroid/support/v7/app/e;
.method public constructor <init>(Landroid/support/v7/app/v;Landroid/app/ActionBar$Tab;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V
iput-object p2, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
return-void
.end method
.method public a()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I
move-result v0
return v0
.end method
.method public a(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public a(Landroid/support/v7/app/e;)Landroid/support/v7/app/d;
.registers 4
iput-object p1, p0, Landroid/support/v7/app/y;->f:Landroid/support/v7/app/e;
iget-object v1, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
if-eqz p1, :cond_b
move-object v0, p0
:goto_7
invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
return-object p0
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public a(Landroid/view/View;)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public a(Ljava/lang/Object;)Landroid/support/v7/app/d;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/y;->d:Ljava/lang/Object;
return-object p0
.end method
.method public b()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public b(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/y;->e:Ljava/lang/CharSequence;
return-object p0
.end method
.method public c(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(I)Landroid/app/ActionBar$Tab;
return-object p0
.end method
.method public c()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public d(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
iget-object v0, v0, Landroid/support/v7/app/v;->i:Landroid/app/Activity;
invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/y;->e:Ljava/lang/CharSequence;
return-object p0
.end method
.method public d()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public e()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->d:Ljava/lang/Object;
return-object v0
.end method
.method public f()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V
return-void
.end method
.method public g()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/y;->e:Ljava/lang/CharSequence;
return-object v0
.end method
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/y;->f:Landroid/support/v7/app/e;
if-eqz p2, :cond_13
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-virtual {v0}, Landroid/support/v7/app/v;->q()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
:goto_a
invoke-interface {v1, p0, v0}, Landroid/support/v7/app/e;->c(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-virtual {v0}, Landroid/support/v7/app/v;->r()V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method
.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/y;->f:Landroid/support/v7/app/e;
if-eqz p2, :cond_13
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-virtual {v0}, Landroid/support/v7/app/v;->q()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
:goto_a
invoke-interface {v1, p0, v0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-virtual {v0}, Landroid/support/v7/app/v;->r()V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method
.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/y;->f:Landroid/support/v7/app/e;
if-eqz p2, :cond_e
iget-object v0, p0, Landroid/support/v7/app/y;->c:Landroid/support/v7/app/v;
invoke-virtual {v0}, Landroid/support/v7/app/v;->q()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
:goto_a
invoke-interface {v1, p0, v0}, Landroid/support/v7/app/e;->b(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method