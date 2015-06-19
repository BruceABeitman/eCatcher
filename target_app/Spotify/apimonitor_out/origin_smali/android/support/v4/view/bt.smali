.class final Landroid/support/v4/view/bt;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/bt;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/bt;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/bt;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/bt;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()V

    return-void
.end method
