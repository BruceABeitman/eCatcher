.class public Landroid/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    const/16 v0, 0x13

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    iput p3, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    sget-object v0, Landroid/support/v7/a/n;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    iget v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    return-void
.end method
