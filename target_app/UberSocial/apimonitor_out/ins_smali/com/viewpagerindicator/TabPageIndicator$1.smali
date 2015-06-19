.class  Lcom/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
.registers 2
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/viewpagerindicator/TabPageIndicator$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/viewpagerindicator/TabPageIndicator$TabView;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
move-result-object v0
invoke-virtual {p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->getIndex()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
const-string v1, " - Lcom/viewpagerindicator/TabPageIndicator$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method