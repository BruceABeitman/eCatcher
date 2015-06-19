.class public final Landroid/support/v7/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;
.implements Landroid/support/v7/internal/view/menu/p;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/n;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/n;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->a:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->b:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->a(Landroid/support/v7/internal/view/menu/r;)Z

    return-void
.end method
