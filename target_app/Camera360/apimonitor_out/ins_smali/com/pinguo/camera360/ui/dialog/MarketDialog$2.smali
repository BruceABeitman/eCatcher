.class  Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;
.super Landroid/widget/ArrayAdapter;
.source "MarketDialog.java"
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
.field private final synthetic val$pm:Landroid/content/pm/PackageManager;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V
.registers 6
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
iput-object p5, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->val$pm:Landroid/content/pm/PackageManager;
invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
if-nez p2, :cond_12
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const v3, 0x7f0300ba
const/4 v4, 0x0
invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_12
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/pm/ResolveInfo;
iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->val$pm:Landroid/content/pm/PackageManager;
invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v0
const v2, 0x7f0a0427
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/pm/ResolveInfo;
iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;->val$pm:Landroid/content/pm/PackageManager;
invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
const v2, 0x7f0a0428
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
.end method