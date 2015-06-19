.class final Landroid/support/v4/view/bo;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"
.field final synthetic a:Landroid/support/v4/view/ViewPager;
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/view/bo;-><init>(Landroid/support/v4/view/ViewPager;)V
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()V
return-void
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()V
return-void
.end method