.class  Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;
.super Landroid/widget/SimpleAdapter;
.source "VideoTopMenuView.java"
.field final synthetic this$0:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
.field private final synthetic val$prefFlash:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
.method constructor <init>(Lcom/pinguo/camera360/video/view/VideoTopMenuView;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
.registers 14
iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;->this$0:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
iput-object p7, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;->val$prefFlash:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
move-object v0, p0
move-object v1, p2
move-object v2, p3
move v3, p4
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const v6, 0x7f0a0170
const v5, 0x7f0a016f
const/4 v4, 0x1
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;->val$prefFlash:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
iget-object v2, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;->val$prefFlash:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I
move-result v0
if-ne p1, v0, :cond_29
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V
:goto_28
return-object p2
:cond_29
invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V
invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V
goto :goto_28
.end method