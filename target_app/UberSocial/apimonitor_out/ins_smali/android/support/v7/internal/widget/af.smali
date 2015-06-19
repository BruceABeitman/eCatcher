.class  Landroid/support/v7/internal/widget/af;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.method private constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/af;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/af; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
move-object v0, p1
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/d;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/d;->f()V
iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v3
move v2, v1
:goto_16
if-ge v2, v3, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v4
if-ne v4, p1, :cond_2c
const/4 v0, 0x1
:goto_25
invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_16
:cond_2c
move v0, v1
goto :goto_25
:cond_2e
const-string v1, " - Landroid/support/v7/internal/widget/af; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method