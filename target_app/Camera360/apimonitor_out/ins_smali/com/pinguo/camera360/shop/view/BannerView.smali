.class public Lcom/pinguo/camera360/shop/view/BannerView;
.super Landroid/widget/RelativeLayout;
.source "BannerView.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private isAutoScroll:Z
.field private mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
.field private mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
.field private mBannerIndicatorContainer:Landroid/view/View;
.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
.field private mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/shop/view/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private initViews()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
iget-boolean v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->isAutoScroll:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setAutoScroll(Z)V
return-void
.end method
.method public getCurrentItem()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->getCurrentItem()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getGallery()Lcom/pinguo/camera360/shop/view/ScrollGallery;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
return-object v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a0161
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/ScrollGallery;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
const v0, 0x7f0a0163
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/BannerIndicator;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
const v0, 0x7f0a0162
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicatorContainer:Landroid/view/View;
invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/BannerView;->initViews()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/view/BannerView; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getCount()I
move-result v0
if-lez v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getRealCount()I
move-result v1
rem-int v1, p3, v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->setCurrentItem(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
move-object v1, p1
move-object v2, p2
move v3, p3
move-wide v4, p4
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
:cond_26
const-string v1, " - Lcom/pinguo/camera360/shop/view/BannerView; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/view/BannerView; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V
:cond_9
const-string v1, " - Lcom/pinguo/camera360/shop/view/BannerView; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V
.registers 5
const/4 v2, 0x1
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getRealCount()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->setCount(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getRealCount()I
move-result v0
if-gt v0, v2, :cond_26
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/BannerView;->setIndicatorVisibility(Z)V
:goto_25
:cond_25
return-void
:cond_26
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/view/BannerView;->setIndicatorVisibility(Z)V
goto :goto_25
.end method
.method public setAutoScroll(Z)V
.registers 4
iput-boolean p1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->isAutoScroll:Z
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
iget-boolean v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->isAutoScroll:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setAutoScroll(Z)V
:cond_d
return-void
.end method
.method public setIndicatorVisibility(Z)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicatorContainer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicatorContainer:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_f
.end method
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
:cond_d
return-void
.end method
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
return-void
.end method
.method public setOnLongPressListener(Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mScrollGallery:Lcom/pinguo/camera360/shop/view/ScrollGallery;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setOnLongPressListener(Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;)V
return-void
.end method
.method public updateIndicator()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mBannerIndicator:Lcom/pinguo/camera360/shop/view/BannerIndicator;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getCount()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerIndicator;->setCount(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/BannerView;->mAdapter:Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getRealCount()I
move-result v0
if-gt v0, v2, :cond_19
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/BannerView;->setIndicatorVisibility(Z)V
:goto_18
return-void
:cond_19
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/view/BannerView;->setIndicatorVisibility(Z)V
goto :goto_18
.end method