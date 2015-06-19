.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field private final TAG:Ljava/lang/String;
.field private mMenuEnterAnimation:Landroid/view/animation/Animation;
.field private mMenuExitAnimation:Landroid/view/animation/Animation;
.field private mNbtfBubbleView:Landroid/view/View;
.field private mPopupMenu:Landroid/view/View;
.field private mPopupMenuSelectItem:Landroid/view/View;
.field private mPopupWindow:Landroid/widget/PopupWindow;
.field private mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.registers 7
const/4 v4, -0x1
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->TAG:Ljava/lang/String;
sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
const v2, 0x7f040029
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mMenuEnterAnimation:Landroid/view/animation/Animation;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
const v2, 0x7f04002a
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mMenuExitAnimation:Landroid/view/animation/Animation;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mMenuExitAnimation:Landroid/view/animation/Animation;
new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f030063
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0225
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0229
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenuSelectItem:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenuSelectItem:Landroid/view/View;
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a022a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0227
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mNbtfBubbleView:Landroid/view/View;
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
move-result-object v1
const-string/jumbo v2, "key_album_ab_show_new"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_a8
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mNbtfBubbleView:Landroid/view/View;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_85
const v1, 0x7f0a0224
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenu:Landroid/view/View;
new-instance v1, Landroid/widget/PopupWindow;
invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$2;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
const v2, 0x7f090045
invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
return-void
:cond_a8
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mNbtfBubbleView:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_85
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismissNoAnimation()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
return-object v0
.end method
.method private dismissNoAnimation()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:cond_11
sget-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
return-void
.end method
.method public dismiss()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenu:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mMenuExitAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_4
.end method
.method public getState()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_a4
:goto_7
:pswitch_7
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
const-string/jumbo v0, "gallery"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryNearByEnter(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismissNoAnimation()V
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
move-result-object v0
const-string/jumbo v1, "key_album_ab_show_new"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_35
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
move-result-object v0
const-string/jumbo v1, "key_album_ab_show_new"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->putBoolean(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mNbtfBubbleView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_35
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v0
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v2
const-class v3, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:pswitch_4c
const v0, 0x7f0a022b
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v0
if-eqz v0, :cond_74
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v0
if-nez v0, :cond_74
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->enterSelectionMode()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectCounterText()V
:cond_74
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v0
if-eqz v0, :cond_96
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v0
if-nez v0, :cond_96
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->enterSelectionMode()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumSetTopBarText()V
:cond_96
sget-object v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SELECTER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismissNoAnimation()V
goto/16 :goto_7
:pswitch_9f
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismiss()V
goto/16 :goto_7
:pswitch_data_a4
.packed-switch 0x7f0a0225
:pswitch_8
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_4c
:pswitch_9f
.end packed-switch
.end method
.method public pickPhotosResult(Ljava/util/ArrayList;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v1
if-gtz v1, :cond_d
:cond_8
sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->IDLE:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
:goto_c
return-void
:cond_d
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "paths"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
sget-object v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mState:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
goto :goto_c
.end method
.method public show()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/CheckBox;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenu:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mMenuEnterAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_4
.end method
.method public update(I)V
.registers 4
if-gtz p1, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenuSelectItem:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->mPopupMenuSelectItem:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_8
.end method