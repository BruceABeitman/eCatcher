.class final Landroid/support/v4/app/ab;
.super Landroid/widget/FrameLayout;
.source "NoSaveStateFrameLayout.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Landroid/support/v4/app/ab;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ab;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ab;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/app/ab;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method
