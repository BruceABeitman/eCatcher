.class  Landroid/support/v4/view/DraftViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "DraftViewPager.java"
.field final synthetic this$0:Landroid/support/v4/view/DraftViewPager;
.method private constructor <init>(Landroid/support/v4/view/DraftViewPager;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/view/DraftViewPager;Landroid/support/v4/view/DraftViewPager$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/view/DraftViewPager$PagerObserver;-><init>(Landroid/support/v4/view/DraftViewPager;)V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/DraftViewPager;->dataSetChanged()V
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/DraftViewPager;->dataSetChanged()V
return-void
.end method