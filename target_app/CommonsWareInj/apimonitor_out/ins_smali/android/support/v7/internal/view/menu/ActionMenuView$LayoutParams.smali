.class public Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"
.field public cellsUsed:I
.field public expandable:Z
.field public expanded:Z
.field public extraPixels:I
.field public isOverflowButton:Z
.field public preventEdgeOffset:Z
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z
return-void
.end method
.method public constructor <init>(IIZ)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iput-boolean p3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V
iget-boolean v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z
return-void
.end method