.class public Lcom/pinguo/album/views/PGAlbumActionBar;
.super Ljava/lang/Object;
.source "PGAlbumActionBar.java"
.field public static final ACTION_BAR_MODE:[I = null
.field public static final ACTION_BAR_MODE_ALBUM:I = 0x0
.field public static final ACTION_BAR_MODE_ALBUM_SELECTION:I = 0x1
.field public static final ACTION_BAR_MODE_FULL_IMAGE:I = 0x2
.field public static final ACTION_BAR_MODE_NONE:I = -0x1
.field public static final ACTION_BUTTON_IDS:[I
.field public static final ACTION_MODE_LAYOUT_ID:[I
.field public static final ACTION_MODE_TITLE_VIEW_ID:[I
.field private mActionModePanel:Landroid/view/View;
.field private mActivity:Lcom/pinguo/album/activities/BaseActivity;
.field private mBarContainer:Landroid/view/ViewGroup;
.field private mCurActionBarMode:I
.field private mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;
.field private mSelectionManager:Lcom/pinguo/album/selectors/ISelector;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x2
const/4 v2, 0x1
const/4 v1, 0x3
new-array v0, v1, [I
aput v2, v0, v2
aput v3, v0, v3
sput-object v0, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_BAR_MODE:[I
new-array v0, v1, [I
fill-array-data v0, :array_22
sput-object v0, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_LAYOUT_ID:[I
new-array v0, v1, [I
fill-array-data v0, :array_2c
sput-object v0, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_TITLE_VIEW_ID:[I
const/4 v0, 0x4
new-array v0, v0, [I
fill-array-data v0, :array_36
sput-object v0, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_BUTTON_IDS:[I
return-void
:array_36
.array-data 0x4
0x3ft 0x0t 0xat 0x7ft
0x40t 0x0t 0xat 0x7ft
0x43t 0x0t 0xat 0x7ft
0x45t 0x0t 0xat 0x7ft
.end array-data
:array_22
.array-data 0x4
0x1t 0x0t 0x3t 0x7ft
0x2t 0x0t 0x3t 0x7ft
0x3t 0x0t 0x3t 0x7ft
.end array-data
:array_2c
.array-data 0x4
0x41t 0x0t 0xat 0x7ft
0x44t 0x0t 0xat 0x7ft
0x41t 0x0t 0xat 0x7ft
.end array-data
.end method
.method public constructor <init>(Lcom/pinguo/album/activities/BaseActivity;Landroid/view/ViewGroup;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
iput-object p2, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
return-void
.end method
.method public exitSelection()V
.registers 3
iget v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
const/4 v1, 0x1
if-ne v0, v1, :cond_16
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mSelectionManager:Lcom/pinguo/album/selectors/ISelector;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mSelectionManager:Lcom/pinguo/album/selectors/ISelector;
invoke-interface {v0}, Lcom/pinguo/album/selectors/ISelector;->inSelectionMode()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mSelectionManager:Lcom/pinguo/album/selectors/ISelector;
invoke-interface {v0}, Lcom/pinguo/album/selectors/ISelector;->leaveSelectionMode()V
:cond_16
return-void
.end method
.method public getActionBarMode()I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
return v0
.end method
.method public getActionPanel()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
return-object v0
.end method
.method public getHeight()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V
.registers 10
const/4 v6, -0x1
iput p1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
sget-object v4, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_LAYOUT_ID:[I
aget v4, v4, p1
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iput-object p2, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;
sget-object v4, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_BUTTON_IDS:[I
array-length v5, v4
const/4 v3, 0x0
:goto_2b
if-lt v3, v5, :cond_2e
return-void
:cond_2e
aget v0, v4, v3
iget-object v6, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_3d
iget-object v6, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;
invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_3d
add-int/lit8 v3, v3, 0x1
goto :goto_2b
.end method
.method public setSelectionManager(Lcom/pinguo/album/selectors/ISelector;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mSelectionManager:Lcom/pinguo/album/selectors/ISelector;
return-void
.end method
.method public setTitle(I)V
.registers 6
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
sget-object v2, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_TITLE_VIEW_ID:[I
iget v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
aget v2, v2, v3
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v0, :cond_13
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
:cond_13
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 6
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
sget-object v2, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_TITLE_VIEW_ID:[I
iget v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
aget v2, v2, v3
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v0, :cond_13
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_13
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;I)V
.registers 8
const v4, 0x7f020189
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActionModePanel:Landroid/view/View;
sget-object v2, Lcom/pinguo/album/views/PGAlbumActionBar;->ACTION_MODE_TITLE_VIEW_ID:[I
iget v3, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mCurActionBarMode:I
aget v2, v2, v3
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v0, :cond_23
const/16 v1, 0xa
if-ge p2, v1, :cond_24
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
const v1, 0x7f02018a
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
:goto_20
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_23
return-void
:cond_24
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
goto :goto_20
.end method
.method public setVisible(I)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setVisible(IZ)V
return-void
.end method
.method public setVisible(IZ)V
.registers 6
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V
if-eqz p2, :cond_1b
if-nez p1, :cond_1c
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
const v2, 0x7f040002
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mBarContainer:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumActionBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
const v2, 0x7f040003
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_1b
.end method