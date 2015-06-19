.class public Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;
.super Lcom/pinguo/camera360/adapter/AdapterBase;
.source "OptionsSavePathAdapter.java"
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/adapter/AdapterBase;-><init>(Landroid/content/Context;Ljava/util/List;)V
return-void
.end method
.method private bindData(Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;I)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;->getList()Ljava/util/List;
move-result-object v1
invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iget-object v2, p1, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;->tvTitle:Landroid/widget/TextView;
const-string/jumbo v1, "name"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
if-nez p2, :cond_25
invoke-virtual {p0}, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f0300d5
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;-><init>(Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;)V
const v1, 0x7f0a04cd
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v0, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;->tvTitle:Landroid/widget/TextView;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_21
invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;->bindData(Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;I)V
return-object p2
:cond_25
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter$Holder;
goto :goto_21
.end method