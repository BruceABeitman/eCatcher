.class  Lcom/facebook/katana/MyTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "MyTabHost.java"
.implements Lcom/facebook/katana/MyTabHost$ContentStrategy;
.field private final mIntent:Landroid/content/Intent;
.field private mLaunchedView:Landroid/view/View;
.field private final mTag:Ljava/lang/String;
.field final synthetic this$0:Lcom/facebook/katana/MyTabHost;
.method private constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->this$0:Lcom/facebook/katana/MyTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/facebook/katana/MyTabHost$IntentContentStrategy;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;)V
return-void
.end method
.method public getContentView()Landroid/view/View;
.registers 6
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->this$0:Lcom/facebook/katana/MyTabHost;
iget-object v2, v2, Lcom/facebook/katana/MyTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;
if-nez v2, :cond_e
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->this$0:Lcom/facebook/katana/MyTabHost;
iget-object v2, v2, Lcom/facebook/katana/MyTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;
iget-object v3, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_5a
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
move-object v1, v2
:goto_21
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
if-eq v2, v1, :cond_3c
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
if-eqz v2, :cond_3c
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v2
if-eqz v2, :cond_3c
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->this$0:Lcom/facebook/katana/MyTabHost;
#getter for: Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;
invoke-static {v2}, Lcom/facebook/katana/MyTabHost;->access$0(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
:cond_3c
iput-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
if-eqz v2, :cond_57
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
check-cast v2, Landroid/view/ViewGroup;
const/high16 v3, 0x4
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V
:cond_57
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
return-object v2
:cond_5a
const/4 v2, 0x0
move-object v1, v2
goto :goto_21
.end method
.method public tabClosed()V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_b
return-void
.end method