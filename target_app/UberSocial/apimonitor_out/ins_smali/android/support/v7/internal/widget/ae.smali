.class  Landroid/support/v7/internal/widget/ae;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.method private constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/d;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
if-nez p2, :cond_10
iget-object v1, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ae;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/d;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
move-result-object p2
:goto_f
return-object p2
:cond_10
move-object v0, p2
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ae;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/app/d;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/app/d;)V
goto :goto_f
.end method