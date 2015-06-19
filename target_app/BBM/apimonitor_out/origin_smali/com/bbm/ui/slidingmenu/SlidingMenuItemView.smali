.class public Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;
.super Lcom/bbm/ui/CustomView;
.source "SlidingMenuItemView.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private getView()Lcom/google/b/a/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/a/l",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7

    sget v0, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-super {p0, p1, p2}, Lcom/bbm/ui/CustomView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->getMeasuredHeight()I

    move-result v0

    sput v0, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->a:I

    :goto_e
    return-void

    :cond_f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->getView()Lcom/google/b/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_32
    sget v2, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->a:I

    if-ge v0, v2, :cond_38

    sget v0, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->a:I

    :cond_38
    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/slidingmenu/SlidingMenuItemView;->setMeasuredDimension(II)V

    goto :goto_e
.end method
