.class final Landroid/support/v4/view/by;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/br;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/br;

    iget-boolean v2, v0, Landroid/support/v4/view/br;->a:Z

    iget-boolean v3, v1, Landroid/support/v4/view/br;->a:Z

    if-eq v2, v3, :cond_1e

    iget-boolean v0, v0, Landroid/support/v4/view/br;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, -0x1

    goto :goto_1b

    :cond_1e
    iget v0, v0, Landroid/support/v4/view/br;->e:I

    iget v1, v1, Landroid/support/v4/view/br;->e:I

    sub-int/2addr v0, v1

    goto :goto_1b
.end method
