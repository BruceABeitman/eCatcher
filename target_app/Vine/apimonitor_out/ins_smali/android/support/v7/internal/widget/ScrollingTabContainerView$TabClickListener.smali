.class  Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.method private constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v3, p1
check-cast v3, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v7/app/ActionBar$Tab;->select()V
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
#getter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-static {v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v2
const/4 v1, 0x0
:goto_15
if-ge v1, v2, :cond_2c
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
#getter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-static {v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v4
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-ne v0, p1, :cond_2a
const/4 v4, 0x1
:goto_24
invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_2a
const/4 v4, 0x0
goto :goto_24
:cond_2c
const-string v1, " - Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method