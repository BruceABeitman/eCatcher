.class final Landroid/support/v4/view/bk;
.super Landroid/support/v4/view/a;
.source "ViewPager.java"


# instance fields
.field final synthetic b:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-ltz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    const/4 v1, 0x2

    if-ge v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v4/view/bk;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Z)V

    invoke-direct {p0}, Landroid/support/v4/view/bk;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    :cond_1e
    invoke-direct {p0}, Landroid/support/v4/view/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V

    :cond_29
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    sparse-switch p2, :sswitch_data_3a

    move v0, v1

    goto :goto_8

    :sswitch_e
    invoke-direct {p0}, Landroid/support/v4/view/bk;->c()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_22
    move v0, v1

    goto :goto_8

    :sswitch_24
    invoke-direct {p0}, Landroid/support/v4/view/bk;->d()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_38
    move v0, v1

    goto :goto_8

    :sswitch_data_3a
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_24
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/support/v4/view/a/w;->a()Landroid/support/v4/view/a/w;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/v4/view/bk;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/w;->a(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/w;->a(I)V

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/w;->b(I)V

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/w;->c(I)V

    :cond_42
    return-void
.end method
