.class  Landroid/support/v7/app/ActionBarImplICS;
.super Landroid/support/v7/app/ActionBar;
.source "ActionBarImplICS.java"
.field final mActionBar:Landroid/app/ActionBar;
.field  mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
.field final mActivity:Landroid/app/Activity;
.field private mAddedMenuVisWrappers:Ljava/util/ArrayList;
.field final mCallback:Landroid/support/v7/app/ActionBar$Callback;
.field private mHomeActionView:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/ActionBarImplICS;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;Z)V
return-void
.end method
.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;
iput-object p2, p0, Landroid/support/v7/app/ActionBarImplICS;->mCallback:Landroid/support/v7/app/ActionBar$Callback;
invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
if-eqz p3, :cond_22
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplICS;->getDisplayOptions()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_22
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplICS;->setHomeButtonEnabled(Z)V
:cond_22
return-void
.end method
.method private findAndRemoveMenuVisWrapper(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_2e
iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
if-nez v2, :cond_24
iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
add-int/lit8 v1, v0, -0x1
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move v0, v1
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_24
iget-object v3, v2, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
if-ne v3, p1, :cond_21
iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:goto_2d
return-object v2
:cond_2e
const/4 v2, 0x0
goto :goto_2d
.end method
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.registers 5
if-eqz p1, :cond_16
new-instance v0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;-><init>(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
:cond_16
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
.registers 6
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2, p3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V
return-void
.end method
.method  commitActiveTransaction()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
return-void
.end method
.method  getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mCallback:Landroid/support/v7/app/ActionBar$Callback;
invoke-interface {v0}, Landroid/support/v7/app/ActionBar$Callback;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
:cond_14
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;
return-object v0
.end method
.method public getCustomView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getDisplayOptions()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I
move-result v0
return v0
.end method
.method public getHeight()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I
move-result v0
return v0
.end method
.method  getHomeActionView()Landroid/widget/ImageView;
.registers 10
const/4 v6, 0x0
const v8, 0x102002c
iget-object v7, p0, Landroid/support/v7/app/ActionBarImplICS;->mHomeActionView:Landroid/widget/ImageView;
if-nez v7, :cond_37
iget-object v7, p0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;
invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_11
:cond_10
:goto_10
return-object v6
:cond_11
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
const/4 v7, 0x2
if-ne v0, v7, :cond_10
const/4 v6, 0x0
invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
const/4 v6, 0x1
invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v6
if-ne v6, v8, :cond_3a
move-object v5, v4
:goto_2f
instance-of v6, v5, Landroid/widget/ImageView;
if-eqz v6, :cond_37
check-cast v5, Landroid/widget/ImageView;
iput-object v5, p0, Landroid/support/v7/app/ActionBarImplICS;->mHomeActionView:Landroid/widget/ImageView;
:cond_37
iget-object v6, p0, Landroid/support/v7/app/ActionBarImplICS;->mHomeActionView:Landroid/widget/ImageView;
goto :goto_10
:cond_3a
move-object v5, v1
goto :goto_2f
.end method
.method public getNavigationItemCount()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I
move-result v0
return v0
.end method
.method public getNavigationMode()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I
move-result v0
return v0
.end method
.method public getSelectedNavigationIndex()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I
move-result v0
return v0
.end method
.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBar$Tab;
return-object v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBar$Tab;
return-object v0
.end method
.method public getTabCount()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I
move-result v0
return v0
.end method
.method  getThemeDefaultUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v5, 0x0
iget-object v2, p0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;
const/4 v3, 0x1
new-array v3, v3, [I
const v4, 0x101030b
aput v4, v3, v5
invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
.end method
.method public getThemedContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public hide()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
return-void
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z
move-result v0
return v0
.end method
.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
.registers 4
iget-object v2, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;
move-result-object v0
new-instance v1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
invoke-direct {v1, p0, v0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;-><init>(Landroid/support/v7/app/ActionBarImplICS;Landroid/app/ActionBar$Tab;)V
invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
return-object v1
.end method
.method public removeAllTabs()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V
return-void
.end method
.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarImplICS;->findAndRemoveMenuVisWrapper(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
return-void
.end method
.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public removeTabAt(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeTabAt(I)V
return-void
.end method
.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V
return-void
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setCustomView(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V
return-void
.end method
.method public setCustomView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V
return-void
.end method
.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.registers 5
new-instance v0, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
iget v1, p2, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I
iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I
iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
return-void
.end method
.method public setDisplayHomeAsUpEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
return-void
.end method
.method public setDisplayOptions(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
return-void
.end method
.method public setDisplayOptions(II)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V
return-void
.end method
.method public setDisplayShowCustomEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V
return-void
.end method
.method public setDisplayShowHomeEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
return-void
.end method
.method public setDisplayShowTitleEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V
return-void
.end method
.method public setDisplayUseLogoEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V
return-void
.end method
.method public setHomeAsUpIndicator(I)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplICS;->getHomeActionView()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_b
if-eqz p1, :cond_c
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplICS;->getThemeDefaultUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_b
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplICS;->getHomeActionView()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_f
if-nez p1, :cond_c
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplICS;->getThemeDefaultUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object p1
:cond_c
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_f
return-void
.end method
.method public setHomeButtonEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
return-void
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
if-eqz p2, :cond_d
new-instance v0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;
invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
:goto_9
invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_9
.end method
.method public setLogo(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V
return-void
.end method
.method public setLogo(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setNavigationMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V
return-void
.end method
.method public setSelectedNavigationItem(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
return-void
.end method
.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setSubtitle(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTitle(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public show()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
return-void
.end method