.class  Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
.field final synthetic val$open:Z
.field final synthetic val$secondary:Z
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;ZZ)V
.registers 4
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
iput-boolean p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->val$open:Z
iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->val$secondary:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->val$open:Z
if-eqz v0, :cond_1d
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->val$secondary:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V
goto :goto_12
:cond_1d
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V
goto :goto_12
.end method