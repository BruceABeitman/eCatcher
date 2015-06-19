.class  Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"
.field private mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
.field private mExpandedIndex:I
.field final synthetic this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/MenuPopupHelper;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
iput-object p2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object v0
.end method
.method  findExpandedIndex()V
.registers 7
iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
#getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-static {v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/support/v7/internal/view/menu/MenuBuilder;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;
move-result-object v1
if-eqz v1, :cond_2b
iget-object v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
#getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-static {v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/support/v7/internal/view/menu/MenuBuilder;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_1b
if-ge v2, v0, :cond_2b
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-ne v3, v1, :cond_28
iput v2, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
:goto_27
return-void
:cond_28
add-int/lit8 v2, v2, 0x1
goto :goto_1b
:cond_2b
const/4 v5, -0x1
iput v5, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
goto :goto_27
.end method
.method public getCount()I
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
#getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
invoke-static {v1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v0
:goto_e
iget v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
if-gez v1, :cond_1e
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_16
return v1
:cond_17
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v0
goto :goto_e
:cond_1e
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
goto :goto_16
.end method
.method public getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
#getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
invoke-static {v1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v0
:goto_e
iget v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
if-ltz v1, :cond_18
iget v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I
if-lt p1, v1, :cond_18
add-int/lit8 p1, p1, 0x1
:cond_18
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;
return-object v1
:cond_1f
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v0
goto :goto_e
.end method
.method public bridge synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
if-nez p2, :cond_f
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
#getter for: Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->access$200(Landroid/support/v7/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
move-result-object v1
sget v2, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I
invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_f
move-object v0, p2
check-cast v0, Landroid/support/v7/internal/view/menu/MenuView$ItemView;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/internal/view/menu/MenuPopupHelper;
iget-boolean v1, v1, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z
if-eqz v1, :cond_1f
move-object v1, p2
check-cast v1, Landroid/support/v7/internal/view/menu/ListMenuItemView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V
:cond_1f
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;
move-result-object v1
invoke-interface {v0, v1, v3}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V
return-object p2
.end method
.method public notifyDataSetChanged()V
.registers 1
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
return-void
.end method