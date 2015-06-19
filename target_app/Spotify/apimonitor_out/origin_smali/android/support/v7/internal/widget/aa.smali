.class final Landroid/support/v7/internal/widget/aa;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()Landroid/support/v7/app/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_f

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/aa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/c;

    invoke-static {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    :goto_e
    return-object p2

    :cond_f
    move-object v0, p2

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/aa;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/app/c;)V

    goto :goto_e
.end method
