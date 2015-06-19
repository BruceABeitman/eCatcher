.class Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m()V
.end annotation


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/16 v1, 0x14

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getScrollX()I

    move-result v0

    if-ge v0, v1, :cond_88

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getScrollX()I

    move-result v0

    :goto_22
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_24
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getScrollX()I

    move-result v2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    :goto_44
    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-ge v0, v1, :cond_59

    move v1, v0

    :cond_59
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5b
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->f(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->g(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    :goto_68
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->h(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    :goto_75
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    :goto_87
    return-void

    :cond_88
    move v0, v1

    goto :goto_22

    :cond_8a
    const/4 v0, 0x0

    goto :goto_44

    :cond_8c
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b()V

    goto :goto_68

    :cond_92
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d()V

    goto :goto_75

    :cond_98
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->f(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    :goto_a5
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->h(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    goto :goto_87

    :cond_b3
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    goto :goto_a5

    :cond_b9
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    goto :goto_87
.end method
