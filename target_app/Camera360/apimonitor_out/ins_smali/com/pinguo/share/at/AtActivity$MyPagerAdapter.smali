.class public Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AtActivity.java"
.field public mListViews:Ljava/util/List;
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;
.method public constructor <init>(Lcom/pinguo/share/at/AtActivity;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->this$0:Lcom/pinguo/share/at/AtActivity;
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
iput-object p2, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->mListViews:Ljava/util/List;
return-void
.end method
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
.registers 5
check-cast p1, Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->mListViews:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V
return-void
.end method
.method public finishUpdate(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->mListViews:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.registers 5
check-cast p1, Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->mListViews:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;->mListViews:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
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
.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.registers 3
return-void
.end method
.method public saveState()Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public startUpdate(Landroid/view/View;)V
.registers 2
return-void
.end method