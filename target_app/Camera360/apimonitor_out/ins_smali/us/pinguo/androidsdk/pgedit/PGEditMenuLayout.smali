.class public Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;
.super Ljava/lang/Object;
.source "PGEditMenuLayout.java"
.field private static final MENU_WITH_FRAME_ROTATE:Ljava/lang/String; = "pg_sdk_edit_menu_with_frame_rotate"
.field private static final MENU_WITH_ICON:Ljava/lang/String; = "pg_sdk_edit_menu_with_icon"
.field private static final MENU_WITH_ICON_NAME:Ljava/lang/String; = "pg_sdk_edit_menu_with_icon_name"
.field private static final MENU_WITH_ICON_NAME_FRAME:Ljava/lang/String; = "pg_sdk_edit_menu_with_icon_name_frame"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addViewTagListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
.registers 2
if-eqz p0, :cond_5
invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_5
return-void
.end method
.method public static addViewsTagListener(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View$OnClickListener;)V
.registers 6
const/4 v0, 0x0
:goto_1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-lt v0, v2, :cond_8
return-void
:cond_8
invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-static {v1, p2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->addViewTagListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public static createViewsForRotate(Landroid/util/DisplayMetrics;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 7
iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v1, v1
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
mul-int/lit8 v2, v2, 0x2a
int-to-float v2, v2
iget v3, p0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v2, v3
sub-float/2addr v1, v2
sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
div-int v0, v1, v2
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_icon"
invoke-static {p1, p2, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v1
return-object v1
.end method
.method public static createViewsForTitleShift(Landroid/util/DisplayMetrics;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 7
iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v1, v1
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
mul-int/lit8 v2, v2, 0x2a
int-to-float v2, v2
iget v3, p0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v2, v3
sub-float/2addr v1, v2
sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
div-int v0, v1, v2
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_icon_name"
invoke-static {p1, p2, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v1
return-object v1
.end method
.method public static createWithFrameRotateAndShowLastViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 6
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v3, "pg_sdk_edit_menu_with_frame_rotate"
invoke-static {p0, p1, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->measureForShowLast(Ljava/util/List;)V
return-object v0
.end method
.method public static createWithFrameRotateViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 5
sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_frame_rotate"
invoke-static {p0, p1, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static createWithIconNameAndShowLastViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 6
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v3, "pg_sdk_edit_menu_with_icon_name"
invoke-static {p0, p1, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->measureForShowLast(Ljava/util/List;)V
return-object v0
.end method
.method public static createWithIconNameFrameAndShowLastViews(Landroid/content/Context;Ljava/util/List;II)Ljava/util/List;
.registers 5
invoke-static {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameFrameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-static {v0, p2, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->measureForShowLast(Ljava/util/List;II)V
return-object v0
.end method
.method public static createWithIconNameFrameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 5
sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_icon_name_frame"
invoke-static {p0, p1, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static createWithIconNameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 5
sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_icon_name"
invoke-static {p0, p1, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
.registers 16
const/4 v10, -0x2
const/4 v9, 0x0
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_8
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v6
if-lt v1, v6, :cond_f
return-object v5
:cond_f
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v6
invoke-static {p0, p4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getLayout(Landroid/content/Context;Ljava/lang/String;)I
move-result v7
const/4 v8, 0x0
invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->clone()Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/16 v6, 0x10
iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
if-eqz v1, :cond_76
invoke-virtual {v3, p2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
:goto_37
invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const-string/jumbo v6, "pg_sdk_edit_icon"
invoke-static {p0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v6
invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const-string/jumbo v6, "pg_sdk_edit_name"
invoke-static {p0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v6
invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
if-eqz v4, :cond_70
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_70
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_76
invoke-virtual {v3, p3, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
goto :goto_37
.end method
.method public static createWithIconViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 5
sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
const-string/jumbo v2, "pg_sdk_edit_menu_with_icon"
invoke-static {p0, p1, v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static measureForShowLast(Ljava/util/List;)V
.registers 3
sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->phoneWidth:I
sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->leastShowWidth:I
invoke-static {p0, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->measureForShowLast(Ljava/util/List;II)V
return-void
.end method
.method public static measureForShowLast(Ljava/util/List;II)V
.registers 12
const/4 v5, 0x0
const/4 v0, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
:goto_4
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v7
if-lt v2, v7, :cond_20
:cond_a
:goto_a
const/4 v1, 0x0
if-eqz v0, :cond_13
rem-int v7, v0, v4
if-nez v7, :cond_4d
div-int v1, v0, v4
:cond_13
:goto_13
if-eqz v1, :cond_1f
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_19
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-nez v8, :cond_59
:cond_1f
return-void
:cond_20
if-nez v2, :cond_2e
sget v7, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I
add-int/2addr v5, v7
:goto_25
if-lt v5, p1, :cond_32
sub-int v7, v5, p1
add-int v0, v7, p2
add-int/lit8 v4, v2, 0x1
goto :goto_a
:cond_2e
sget v7, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I
add-int/2addr v5, v7
goto :goto_25
:cond_32
invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/view/View;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getViewWidth(Landroid/view/View;)I
move-result v7
add-int/2addr v5, v7
if-lt v5, p1, :cond_4a
sub-int v7, v5, p1
if-ge v7, p2, :cond_a
sub-int v7, v5, p1
sub-int v0, v7, p2
add-int/lit8 v4, v2, 0x1
goto :goto_a
:cond_4a
add-int/lit8 v2, v2, 0x1
goto :goto_4
:cond_4d
if-lez v0, :cond_54
div-int v7, v0, v4
add-int/lit8 v1, v7, 0x1
:goto_53
goto :goto_13
:cond_54
div-int v7, v0, v4
add-int/lit8 v1, v7, -0x1
goto :goto_53
:cond_59
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/widget/LinearLayout$LayoutParams;
iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
sub-int/2addr v8, v1
iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_19
.end method
.method public static showButtomFirstMenu(Landroid/view/ViewGroup;Ljava/util/List;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.registers 8
invoke-static {p2, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
move-result-object v2
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->measureForShowLast(Ljava/util/List;)V
const/4 v0, 0x0
:goto_8
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_f
return-void
:cond_f
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-static {v1, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->addViewTagListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method