.class  LvStudio/Android/Camera360/activity/GuideViewFragment$5;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuideViewFragment.java"
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
.field private final synthetic val$list:Ljava/util/ArrayList;
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iput-object p2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->val$list:Ljava/util/ArrayList;
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
return-void
.end method
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
.registers 5
check-cast p1, Landroid/support/v4/view/ViewPager;
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->val$list:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->val$list:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getPageTitle(I)Ljava/lang/CharSequence;
.registers 3
const-string/jumbo v0, ""
return-object v0
.end method
.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.registers 4
check-cast p1, Landroid/support/v4/view/ViewPager;
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->val$list:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$5;->val$list:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method