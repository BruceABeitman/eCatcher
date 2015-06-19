.class  Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;
.field  mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
.field  mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarView;
.method private constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;Landroid/support/v7/internal/widget/ActionBarView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
return-void
.end method
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
check-cast v0, Landroid/support/v7/view/CollapsibleActionView;
invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V
:cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
move-result v0
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V
:cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
move-result v0
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_56
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
move-result-object v0
if-nez v0, :cond_b8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#calls: Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1300(Landroid/support/v7/internal/widget/ActionBarView;)V
:goto_56
:cond_56
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-result-object v0
if-eqz v0, :cond_70
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_70
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:cond_70
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
move-result-object v0
if-eqz v0, :cond_89
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I
move-result v0
if-ne v0, v4, :cond_89
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/SpinnerICS;->setVisibility(I)V
:cond_89
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a4
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
move-result v0
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_a4
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_a4
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
invoke-virtual {p2, v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V
return v4
:cond_b8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_56
.end method
.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
.registers 8
const/4 v4, 0x1
const/16 v3, 0x8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;
move-result-object v1
iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$500(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
iput-object p2, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
if-eq v0, v1, :cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_3f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
if-eq v0, v1, :cond_58
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_58
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
move-result-object v0
if-eqz v0, :cond_72
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_72
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-result-object v0
if-eqz v0, :cond_83
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:cond_83
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
move-result-object v0
if-eqz v0, :cond_94
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/SpinnerICS;->setVisibility(I)V
:cond_94
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_a5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
invoke-virtual {p2, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;
if-eqz v0, :cond_be
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
check-cast v0, Landroid/support/v7/view/CollapsibleActionView;
invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V
:cond_be
return v4
.end method
.method public flagActionItems()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getId()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
:cond_f
iput-object p2, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
return-void
.end method
.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
.registers 3
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move-object v2, v0
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
.registers 2
return-void
.end method
.method public updateMenuView(Z)V
.registers 8
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v4, :cond_28
const/4 v1, 0x0
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v4, :cond_1f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I
move-result v0
const/4 v2, 0x0
:goto_10
if-ge v2, v0, :cond_1f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v4, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v3
check-cast v3, Landroid/support/v4/internal/view/SupportMenuItem;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-ne v3, v4, :cond_29
const/4 v1, 0x1
:cond_1f
if-nez v1, :cond_28
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {p0, v4, v5}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
:cond_28
return-void
:cond_29
add-int/lit8 v2, v2, 0x1
goto :goto_10
.end method