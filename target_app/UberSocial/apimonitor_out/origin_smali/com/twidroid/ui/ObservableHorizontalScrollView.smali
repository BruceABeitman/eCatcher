.class public Lcom/twidroid/ui/ObservableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/twidroid/ui/b;->a(Lcom/twidroid/ui/ObservableHorizontalScrollView;IIII)V

    :cond_11
    return-void
.end method

.method public setScrollViewListener(Lcom/twidroid/ui/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/ObservableHorizontalScrollView;->a:Lcom/twidroid/ui/b;

    return-void
.end method
