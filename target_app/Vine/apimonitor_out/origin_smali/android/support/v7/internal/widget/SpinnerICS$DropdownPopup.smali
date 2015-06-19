.class Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SpinnerICS.java"

# interfaces
.implements Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/internal/widget/SpinnerICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerICS;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setModal(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setPromptPosition(I)V

    new-instance v0, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;-><init>(Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;Landroid/support/v7/internal/widget/SpinnerICS;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListenerWrapper;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;)Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show()V
    .registers 9

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getPaddingLeft()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    iget v5, v5, Landroid/support/v7/internal/widget/SpinnerICS;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_68

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getPaddingRight()I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/support/v7/internal/widget/SpinnerICS;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setContentWidth(I)V

    :goto_31
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    #getter for: Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->access$200(Landroid/support/v7/internal/widget/SpinnerICS;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    #getter for: Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->access$200(Landroid/support/v7/internal/widget/SpinnerICS;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v1, v5

    :cond_4a
    add-int v5, v1, v2

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setHorizontalOffset(I)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setSelection(I)V

    return-void

    :cond_68
    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    iget v5, v5, Landroid/support/v7/internal/widget/SpinnerICS;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_82

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/SpinnerICS;->getPaddingRight()I

    move-result v3

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setContentWidth(I)V

    goto :goto_31

    :cond_82
    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;

    iget v5, v5, Landroid/support/v7/internal/widget/SpinnerICS;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setContentWidth(I)V

    goto :goto_31
.end method
