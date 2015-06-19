.class  Lcom/facebook/katana/MyTabHost$2;
.super Ljava/lang/Object;
.source "MyTabHost.java"
.implements Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;
.field final synthetic this$0:Lcom/facebook/katana/MyTabHost;
.method constructor <init>(Lcom/facebook/katana/MyTabHost;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MyTabHost$2;->this$0:Lcom/facebook/katana/MyTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTabSelectionChanged(IZ)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$2;->this$0:Lcom/facebook/katana/MyTabHost;
invoke-virtual {v0, p1}, Lcom/facebook/katana/MyTabHost;->setCurrentTab(I)V
if-eqz p2, :cond_11
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$2;->this$0:Lcom/facebook/katana/MyTabHost;
#getter for: Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;
invoke-static {v0}, Lcom/facebook/katana/MyTabHost;->access$0(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z
:cond_11
return-void
.end method