.class public Lcom/pinguo/album/views/PGAlbumShareView;
.super Ljava/lang/Object;
.source "PGAlbumShareView.java"
.implements Landroid/view/View$OnClickListener;
.field private mCancel:Landroid/widget/Button;
.field private mContext:Landroid/content/Context;
.field private mInflater:Landroid/view/LayoutInflater;
.field private mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
.field private mLocalItemsView:Landroid/widget/ListView;
.field private mLocalShareItems:Ljava/util/List;
.field private mOther:Landroid/widget/Button;
.field private mPopupWindow:Landroid/widget/PopupWindow;
.field private mScale:F
.field private mWebItemsView:Lcom/pinguo/album/views/HorizontalListView;
.field private mWebShareItems:Ljava/util/List;
.field private mWidth:I
.field private mWindowManager:Landroid/view/WindowManager;
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, -0x1
iput v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWidth:I
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
const-string/jumbo v1, "layout_inflater"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/LayoutInflater;
iput-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mInflater:Landroid/view/LayoutInflater;
const-string/jumbo v1, "window"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/WindowManager;
iput-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWindowManager:Landroid/view/WindowManager;
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWindowManager:Landroid/view/WindowManager;
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F
iput v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mScale:F
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebShareItems:Ljava/util/List;
new-instance v1, Landroid/widget/PopupWindow;
invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
new-instance v2, Lcom/pinguo/album/views/PGAlbumShareView$1;
invoke-direct {v2, p0}, Lcom/pinguo/album/views/PGAlbumShareView$1;-><init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mInflater:Landroid/view/LayoutInflater;
const v2, 0x7f03001f
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/album/views/PGAlbumShareView;->setContentView(Landroid/view/View;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mInflater:Landroid/view/LayoutInflater;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/album/views/PGAlbumShareView;)Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/views/PGAlbumShareView;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/views/PGAlbumShareView;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebShareItems:Ljava/util/List;
return-object v0
.end method
.method private preShow()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
const/4 v1, -0x2
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
const v1, 0x1030002
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0204e1
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method private setContentView(Landroid/view/View;)V
.registers 3
const v0, 0x7f0a00a0
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalItemsView:Landroid/widget/ListView;
const v0, 0x7f0a00a2
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/HorizontalListView;
iput-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebItemsView:Lcom/pinguo/album/views/HorizontalListView;
const v0, 0x7f0a00a3
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mOther:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mOther:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0061
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mCancel:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mCancel:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
return-void
.end method
.method public addLocalShareItem(II)Lcom/pinguo/album/views/ShareItem;
.registers 5
new-instance v0, Lcom/pinguo/album/views/ShareItem;
invoke-direct {v0}, Lcom/pinguo/album/views/ShareItem;-><init>()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ShareItem;->setShareType(I)V
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/ShareItem;->setItemId(I)V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ShareItem;->setTitle(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public addwebShareItem(II)Lcom/pinguo/album/views/ShareItem;
.registers 4
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/views/PGAlbumShareView;->addwebShareItem(ILandroid/graphics/drawable/Drawable;)Lcom/pinguo/album/views/ShareItem;
move-result-object v0
return-object v0
.end method
.method public addwebShareItem(ILandroid/graphics/Bitmap;)Lcom/pinguo/album/views/ShareItem;
.registers 5
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/views/PGAlbumShareView;->addwebShareItem(ILandroid/graphics/drawable/Drawable;)Lcom/pinguo/album/views/ShareItem;
move-result-object v0
return-object v0
.end method
.method public addwebShareItem(ILandroid/graphics/drawable/Drawable;)Lcom/pinguo/album/views/ShareItem;
.registers 5
new-instance v0, Lcom/pinguo/album/views/ShareItem;
invoke-direct {v0}, Lcom/pinguo/album/views/ShareItem;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ShareItem;->setShareType(I)V
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/ShareItem;->setItemId(I)V
invoke-virtual {v0, p2}, Lcom/pinguo/album/views/ShareItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebShareItems:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public dismiss()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:cond_11
return-void
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/PGAlbumShareView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0a0061
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-eq v1, v3, :cond_24
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
const v2, 0x7f0a00a3
if-ne v1, v2, :cond_25
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
if-eqz v1, :cond_24
new-instance v0, Lcom/pinguo/album/views/ShareItem;
invoke-direct {v0}, Lcom/pinguo/album/views/ShareItem;-><init>()V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ShareItem;->setShareType(I)V
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
invoke-interface {v1, v0}, Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;->onMenuItemClick(Lcom/pinguo/album/views/ShareItem;)V
:goto_24
:cond_24
const-string v1, " - Lcom/pinguo/album/views/PGAlbumShareView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_25
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-eq v1, v3, :cond_24
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-eq v1, v3, :cond_24
invoke-virtual {p1}, Landroid/view/View;->getId()I
goto :goto_24
.end method
.method public setOnItemSelectedListener(Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWidth:I
return-void
.end method
.method public show()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/PGAlbumShareView;->show(Landroid/view/View;)V
return-void
.end method
.method public show(Landroid/view/View;)V
.registers 10
const/16 v7, 0x11
const/4 v6, 0x0
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_14
new-instance v4, Ljava/lang/IllegalStateException;
const-string/jumbo v5, "PopupMenu#add was not called with a menu item to display."
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:cond_14
invoke-direct {p0}, Lcom/pinguo/album/views/PGAlbumShareView;->preShow()V
new-instance v0, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
iget-object v5, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
invoke-direct {v0, p0, v4, v5}, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;-><init>(Lcom/pinguo/album/views/PGAlbumShareView;Landroid/content/Context;Ljava/util/List;)V
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalItemsView:Landroid/widget/ListView;
invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mLocalItemsView:Landroid/widget/ListView;
new-instance v5, Lcom/pinguo/album/views/PGAlbumShareView$2;
invoke-direct {v5, p0}, Lcom/pinguo/album/views/PGAlbumShareView$2;-><init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v3, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
iget-object v5, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebShareItems:Ljava/util/List;
invoke-direct {v3, p0, v4, v5}, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;-><init>(Lcom/pinguo/album/views/PGAlbumShareView;Landroid/content/Context;Ljava/util/List;)V
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebItemsView:Lcom/pinguo/album/views/HorizontalListView;
invoke-virtual {v4, v3}, Lcom/pinguo/album/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mWebItemsView:Lcom/pinguo/album/views/HorizontalListView;
new-instance v5, Lcom/pinguo/album/views/PGAlbumShareView$3;
invoke-direct {v5, p0}, Lcom/pinguo/album/views/PGAlbumShareView$3;-><init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
invoke-virtual {v4, v5}, Lcom/pinguo/album/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
if-nez p1, :cond_5b
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mContext:Landroid/content/Context;
check-cast v4, Landroid/app/Activity;
invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v4
invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v4, v2, v7, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
:goto_5a
return-void
:cond_5b
const/4 v4, 0x2
new-array v1, v4, [I
invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-virtual {v4, p1, v7, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
goto :goto_5a
.end method