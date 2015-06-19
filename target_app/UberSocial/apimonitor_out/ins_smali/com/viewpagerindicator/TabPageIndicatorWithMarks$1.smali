.class  Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
.registers 2
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;
move-result-object v1
invoke-virtual {p1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->getIndex()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v1
if-ne v1, v0, :cond_36
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/b;
move-result-object v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/b;
move-result-object v0
invoke-interface {v0}, Lcom/viewpagerindicator/b;->n()V
:cond_36
const-string v1, " - Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method