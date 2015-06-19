.class final Landroid/support/v4/view/ai;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bq;
.implements Landroid/support/v4/view/br;


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTitleStrip;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/ai;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/view/ai;->b:I

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/ah;)V

    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/PagerTitleStrip;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_2a

    iget-object v0, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/PagerTitleStrip;)F

    move-result v0

    :cond_2a
    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    :cond_38
    return-void
.end method

.method public final a(IFI)V
    .registers 6

    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/ai;->b:I

    return-void
.end method

.method public final onChanged()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/ah;)V

    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/PagerTitleStrip;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_26

    iget-object v0, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/PagerTitleStrip;)F

    move-result v0

    :cond_26
    iget-object v1, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, p0, Landroid/support/v4/view/ai;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    return-void
.end method
