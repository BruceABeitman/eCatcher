.class  Landroid/support/v7/app/v;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"
.field final i:Landroid/app/Activity;
.field final j:Landroid/support/v7/app/a;
.field final k:Landroid/app/ActionBar;
.field  l:Landroid/support/v4/app/FragmentTransaction;
.field private m:Landroid/widget/ImageView;
.field private n:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/v;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;Z)V
return-void
.end method
.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
iput-object p1, p0, Landroid/support/v7/app/v;->i:Landroid/app/Activity;
iput-object p2, p0, Landroid/support/v7/app/v;->j:Landroid/support/v7/app/a;
invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
if-eqz p3, :cond_22
invoke-virtual {p0}, Landroid/support/v7/app/v;->g()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_22
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/app/v;->f(Z)V
:cond_22
return-void
.end method
.method private c(Landroid/support/v7/app/b;)Landroid/support/v7/app/w;
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_30
iget-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/w;
if-nez v0, :cond_26
iget-object v2, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
add-int/lit8 v0, v1, -0x1
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move v1, v0
:cond_22
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_26
iget-object v2, v0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/b;
if-ne v2, p1, :cond_22
iget-object v2, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:goto_2f
return-object v0
:cond_30
const/4 v0, 0x0
goto :goto_2f
.end method
.method public a()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I
move-result v0
return v0
.end method
.method public a(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V
return-void
.end method
.method public a(II)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V
return-void
.end method
.method public a(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public a(Landroid/support/v7/app/b;)V
.registers 5
if-eqz p1, :cond_16
new-instance v0, Landroid/support/v7/app/w;
invoke-direct {v0, p1}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/app/b;)V
iget-object v1, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
:cond_16
return-void
.end method
.method public a(Landroid/support/v7/app/d;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public a(Landroid/support/v7/app/d;I)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V
return-void
.end method
.method public a(Landroid/support/v7/app/d;IZ)V
.registers 6
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2, p3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V
return-void
.end method
.method public a(Landroid/support/v7/app/d;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V
return-void
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V
return-void
.end method
.method public a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.registers 5
new-instance v0, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
iget v1, p2, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I
iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I
iget-object v1, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
return-void
.end method
.method public a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/c;)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
if-eqz p2, :cond_d
new-instance v0, Landroid/support/v7/app/x;
invoke-direct {v0, p2}, Landroid/support/v7/app/x;-><init>(Landroid/support/v7/app/c;)V
:goto_9
invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_9
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V
return-void
.end method
.method public b()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I
move-result v0
return v0
.end method
.method public b(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V
return-void
.end method
.method public b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public b(Landroid/support/v7/app/b;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v7/app/v;->c(Landroid/support/v7/app/b;)Landroid/support/v7/app/w;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
return-void
.end method
.method public b(Landroid/support/v7/app/d;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public b(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public b(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
return-void
.end method
.method public c()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public c(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V
return-void
.end method
.method public c(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public c(Landroid/support/v7/app/d;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/y;
iget-object v1, p1, Landroid/support/v7/app/y;->b:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
return-void
.end method
.method public d()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public d(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
return-void
.end method
.method public d(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public d(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V
return-void
.end method
.method public e()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public e(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V
return-void
.end method
.method public e(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public e(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V
return-void
.end method
.method public f()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I
move-result v0
return v0
.end method
.method public f(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V
return-void
.end method
.method public f(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/v;->s()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_f
if-nez p1, :cond_c
invoke-virtual {p0}, Landroid/support/v7/app/v;->t()Landroid/graphics/drawable/Drawable;
move-result-object p1
:cond_c
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_f
return-void
.end method
.method public f(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
return-void
.end method
.method public g()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I
move-result v0
return v0
.end method
.method public g(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
return-void
.end method
.method public h()Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;
move-result-object v0
new-instance v1, Landroid/support/v7/app/y;
invoke-direct {v1, p0, v0}, Landroid/support/v7/app/y;-><init>(Landroid/support/v7/app/v;Landroid/app/ActionBar$Tab;)V
invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
return-object v1
.end method
.method public h(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V
return-void
.end method
.method public i()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V
return-void
.end method
.method public i(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeTabAt(I)V
return-void
.end method
.method public j()Landroid/support/v7/app/d;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/d;
return-object v0
.end method
.method public j(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/d;
return-object v0
.end method
.method public k()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I
move-result v0
return v0
.end method
.method public k(I)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/v;->s()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_b
if-eqz p1, :cond_c
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p0}, Landroid/support/v7/app/v;->t()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_b
.end method
.method public l()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I
move-result v0
return v0
.end method
.method public m()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
return-void
.end method
.method public n()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
return-void
.end method
.method public o()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z
move-result v0
return v0
.end method
.method public p()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method  q()Landroid/support/v4/app/FragmentTransaction;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v7/app/v;->j:Landroid/support/v7/app/a;
invoke-interface {v0}, Landroid/support/v7/app/a;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
:cond_14
iget-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
return-object v0
.end method
.method  r()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/v;->l:Landroid/support/v4/app/FragmentTransaction;
return-void
.end method
.method  s()Landroid/widget/ImageView;
.registers 6
const/4 v1, 0x0
const v4, 0x102002c
iget-object v0, p0, Landroid/support/v7/app/v;->m:Landroid/widget/ImageView;
if-nez v0, :cond_39
iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/app/Activity;
invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_12
move-object v0, v1
:goto_11
return-object v0
:cond_12
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
const/4 v3, 0x2
if-eq v2, v3, :cond_21
move-object v0, v1
goto :goto_11
:cond_21
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v2
if-ne v2, v4, :cond_3c
:goto_31
instance-of v1, v0, Landroid/widget/ImageView;
if-eqz v1, :cond_39
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/app/v;->m:Landroid/widget/ImageView;
:cond_39
iget-object v0, p0, Landroid/support/v7/app/v;->m:Landroid/widget/ImageView;
goto :goto_11
:cond_3c
move-object v0, v1
goto :goto_31
.end method
.method  t()Landroid/graphics/drawable/Drawable;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/app/Activity;
const/4 v1, 0x1
new-array v1, v1, [I
const v2, 0x101030b
aput v2, v1, v3
invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
.end method