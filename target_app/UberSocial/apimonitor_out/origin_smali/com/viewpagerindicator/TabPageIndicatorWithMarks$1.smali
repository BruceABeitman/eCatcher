.class Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
.end annotation


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    check-cast p1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_36

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/b;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viewpagerindicator/b;->n()V

    :cond_36
    return-void
.end method
