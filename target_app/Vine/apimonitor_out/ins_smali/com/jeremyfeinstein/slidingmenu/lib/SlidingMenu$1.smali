.class  Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"
.implements Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
.field public static final POSITION_CLOSE:I = 0x1
.field public static final POSITION_OPEN:I = 0x0
.field public static final POSITION_SECONDARY_OPEN:I = 0x2
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 7
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
sub-float/2addr v1, p2
const/high16 v2, 0x42fa
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_1b
return-void
.end method
.method public onPageSelected(I)V
.registers 3
if-nez p1, :cond_14
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$100(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$100(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
move-result-object v0
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;->onOpen()V
:cond_13
:goto_13
return-void
:cond_14
const/4 v0, 0x1
if-ne p1, v0, :cond_29
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$200(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
move-result-object v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$200(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
move-result-object v0
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;->onClose()V
goto :goto_13
:cond_29
const/4 v0, 0x2
if-ne p1, v0, :cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$300(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
#getter for: Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->access$300(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
move-result-object v0
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;->onOpen()V
goto :goto_13
.end method