.class public Lcom/pinguo/share/website/ShareResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareResultsAdapter.java"
.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field private mContext:Landroid/content/Context;
.field private mIsFirstShareSuccess:Z
.field private mList:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Z)V
.registers 7
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mIsFirstShareSuccess:Z
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
iput-object p1, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mContext:Landroid/content/Context;
iput-boolean p3, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mIsFirstShareSuccess:Z
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iput-object v1, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_23
return-void
:cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/website/ShareResultBean;
iget-object v2, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1c
.end method
.method public getCount()I
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mIsFirstShareSuccess:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_c
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-gt p1, v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne p1, v0, :cond_16
const/4 v0, 0x1
goto :goto_b
:cond_16
const/4 v0, -0x1
goto :goto_b
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 15
const/16 v10, 0x8
const/4 v6, 0x0
const/4 v9, 0x0
invoke-virtual {p0, p1}, Lcom/pinguo/share/website/ShareResultsAdapter;->getItemViewType(I)I
move-result v7
if-nez v7, :cond_ea
iget-object v7, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mContext:Landroid/content/Context;
invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v7
const v8, 0x7f030023
invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
const v6, 0x7f0a00ab
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
const v6, 0x7f0a00ac
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
const v6, 0x7f0a00ad
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v6, 0x7f0a00af
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/ImageView;
const v6, 0x7f0a00ae
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v6
iget-object v6, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->isReBind()Z
move-result v6
if-eqz v6, :cond_c8
invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V
:goto_79
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v6
if-eqz v6, :cond_cc
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOnBitmap()Landroid/graphics/Bitmap;
move-result-object v6
invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
const v6, 0x7f020050
invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V
:goto_a0
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->isSuccess()Z
move-result v6
if-nez v6, :cond_e6
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->getMessage()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V
:goto_c0
invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V
invoke-virtual {p2, v9}, Landroid/view/View;->setFocusable(Z)V
move-object v6, p2
:cond_c7
return-object v6
:cond_c8
invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_79
:cond_cc
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mList:Ljava/util/List;
invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/ShareResultBean;
invoke-virtual {v6}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOffBitmap()Landroid/graphics/Bitmap;
move-result-object v6
invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
const v6, 0x7f02004f
invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V
goto :goto_a0
:cond_e6
invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_c0
:cond_ea
const/4 v7, 0x1
invoke-virtual {p0, p1}, Lcom/pinguo/share/website/ShareResultsAdapter;->getItemViewType(I)I
move-result v8
if-ne v7, v8, :cond_c7
iget-object v7, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mContext:Landroid/content/Context;
invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v7
const v8, 0x7f030022
invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
const v6, 0x7f0a00aa
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iget-object v6, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
goto :goto_c0
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/ShareResultsAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
return-void
.end method