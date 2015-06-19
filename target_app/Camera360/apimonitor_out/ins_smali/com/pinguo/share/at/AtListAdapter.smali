.class public Lcom/pinguo/share/at/AtListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AtListAdapter.java"
.field private atBeans:Ljava/util/List;
.field private inflater:Landroid/view/LayoutInflater;
.field private mNormal:I
.field private mSelected:I
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->inflater:Landroid/view/LayoutInflater;
iput-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->inflater:Landroid/view/LayoutInflater;
iput-object p2, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070015
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/pinguo/share/at/AtListAdapter;->mSelected:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070016
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/pinguo/share/at/AtListAdapter;->mNormal:I
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_5
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/at/AtAttentionBean;
goto :goto_5
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getList()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
return-object v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/4 v8, 0x1
const/4 v6, 0x0
iget-object v5, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
if-nez v5, :cond_8
move-object v5, v6
:goto_7
return-object v5
:cond_8
iget-object v5, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/at/AtAttentionBean;
if-nez v0, :cond_14
move-object v5, v6
goto :goto_7
:cond_14
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->isTag()Z
move-result v5
if-eqz v5, :cond_4b
if-eqz p2, :cond_26
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v5
instance-of v5, v5, Landroid/widget/TextView;
if-nez v5, :cond_44
:cond_26
iget-object v5, p0, Lcom/pinguo/share/at/AtListAdapter;->inflater:Landroid/view/LayoutInflater;
const v7, 0x7f030011
invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
const v5, 0x7f0a006d
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
:goto_38
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getGroupType()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_3f
invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v5, p2
goto :goto_7
:cond_44
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
goto :goto_38
:cond_4b
if-eqz p2, :cond_55
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v5
instance-of v5, v5, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;
if-nez v5, :cond_e5
:cond_55
iget-object v5, p0, Lcom/pinguo/share/at/AtListAdapter;->inflater:Landroid/view/LayoutInflater;
const v7, 0x7f030010
invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;
invoke-direct {v3}, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;-><init>()V
const v5, 0x7f0a006a
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/ImageView;
iput-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mHead:Landroid/widget/ImageView;
const v5, 0x7f0a006b
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
iput-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mName:Landroid/widget/TextView;
const v5, 0x7f0a006c
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/ImageView;
iput-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mChecker:Landroid/widget/ImageView;
:goto_84
new-instance v5, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getDefHead()I
move-result v7
invoke-virtual {v5, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getDefHead()I
move-result v7
invoke-virtual {v5, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v5
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getDefHead()I
move-result v7
invoke-virtual {v5, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v5
invoke-virtual {v5, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v5
invoke-virtual {v5, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v5
invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v2
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v5
iget-object v7, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mHead:Landroid/widget/ImageView;
invoke-virtual {v5, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getHead()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_bf
const-string/jumbo v1, ""
:cond_bf
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v5
iget-object v7, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mHead:Landroid/widget/ImageView;
invoke-virtual {v5, v1, v7, v2, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
iget-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mName:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->isSelected()Z
move-result v5
if-eqz v5, :cond_ec
iget-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mChecker:Landroid/widget/ImageView;
invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mName:Landroid/widget/TextView;
iget v6, p0, Lcom/pinguo/share/at/AtListAdapter;->mSelected:I
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V
goto/16 :goto_3f
:cond_e5
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;
goto :goto_84
:cond_ec
iget-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mChecker:Landroid/widget/ImageView;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v5, v3, Lcom/pinguo/share/at/AtListAdapter$ViewHolder;->mName:Landroid/widget/TextView;
iget v6, p0, Lcom/pinguo/share/at/AtListAdapter;->mNormal:I
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V
goto/16 :goto_3f
.end method
.method public setList(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtListAdapter;->atBeans:Ljava/util/List;
return-void
.end method