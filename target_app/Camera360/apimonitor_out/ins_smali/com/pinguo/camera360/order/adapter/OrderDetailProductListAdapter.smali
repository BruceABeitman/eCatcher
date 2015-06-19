.class public Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "OrderDetailProductListAdapter.java"
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;->mContext:Landroid/content/Context;
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
if-nez p2, :cond_c
iget-object v6, p0, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;->mContext:Landroid/content/Context;
const v7, 0x7f030095
const/4 v8, 0x0
invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_c
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;
const v6, 0x7f0a0392
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v6, 0x7f0a0395
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v6, 0x7f0a0396
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
const v6, 0x7f0a0393
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v6, v2, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;->productName:Ljava/lang/String;
invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget v6, v2, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;->buyCount:I
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v6, v2, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;->templateData:Ljava/util/List;
if-eqz v6, :cond_54
iget-object v6, v2, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;->templateData:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_4e
:cond_4e
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_55
:cond_54
return-object p2
:cond_55
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;
iget-object v7, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v8, "size"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_6c
iget-object v7, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;->value:Ljava/lang/String;
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_4e
:cond_6c
iget-object v7, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v8, "format"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4e
iget-object v7, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;->value:Ljava/lang/String;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_4e
.end method