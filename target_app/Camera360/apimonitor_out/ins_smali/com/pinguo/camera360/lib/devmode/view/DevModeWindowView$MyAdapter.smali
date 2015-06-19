.class  Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DevModeWindowView.java"
.field private static final PAGE_COMMON_INFO:I = 0x1
.field private static final PAGE_HELP:I = 0x2
.field private static final PAGE_LOG:I
.field private final mData:Ljava/util/ArrayList;
.field private mViewSet:Landroid/util/SparseArray;
.method public constructor <init>(Ljava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mViewSet:Landroid/util/SparseArray;
iput-object p1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mData:Ljava/util/ArrayList;
return-void
.end method
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mViewSet:Landroid/util/SparseArray;
invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_d
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_d
return-void
.end method
.method public getCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 15
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v10
invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
packed-switch p2, :pswitch_data_9c
const/4 v9, 0x0
:goto_c
iget-object v10, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mViewSet:Landroid/util/SparseArray;
invoke-virtual {v10, p2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-object v9
:pswitch_15
const v10, 0x7f03004e
const/4 v11, 0x0
invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v6
const v10, 0x7f0a0196
invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "ScrollView\u6027\u80fd\u6d4b\u8bd5\uff1alog\u8fbe\u52302000\u884c\u7684\u6548\u7387\n"
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v1, 0x0
:goto_32
const/16 v10, 0x7d0
if-lt v1, v10, :cond_3f
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object v9, v6
goto :goto_c
:cond_3f
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, " ----> My name is Devil , "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_32
:pswitch_5c
const v10, 0x7f03004e
const/4 v11, 0x0
invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
const v10, 0x7f0a0196
invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v10, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mData:Ljava/util/ArrayList;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/CharSequence;
invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object v9, v5
goto :goto_c
:pswitch_7b
const v10, 0x7f03004e
const/4 v11, 0x0
invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v7
const v10, 0x7f0a0196
invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/TextView;
iget-object v10, p0, Lcom/pinguo/camera360/lib/devmode/view/DevModeWindowView$MyAdapter;->mData:Ljava/util/ArrayList;
const/4 v11, 0x1
invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/CharSequence;
invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object v9, v7
goto/16 :goto_c
nop
:pswitch_data_9c
.packed-switch 0x0
:pswitch_15
:pswitch_5c
:pswitch_7b
.end packed-switch
.end method
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method