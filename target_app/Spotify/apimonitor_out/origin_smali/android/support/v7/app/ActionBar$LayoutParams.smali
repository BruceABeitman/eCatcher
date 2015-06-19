.class public Landroid/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    const/16 v0, 0x13

    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    sget-object v0, Landroid/support/v7/a/k;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
