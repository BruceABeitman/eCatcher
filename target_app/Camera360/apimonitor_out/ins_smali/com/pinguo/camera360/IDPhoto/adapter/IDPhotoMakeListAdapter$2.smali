.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;
.super Ljava/lang/Object;
.source "IDPhotoMakeListAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
.field private final synthetic val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;I)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
iput-object p3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
iput p4, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x63
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getMakeNum()I
move-result v0
if-ne v0, v3, :cond_1f
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f04002c
invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V
:goto_1e
:cond_1e
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
if-ge v0, v3, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$position:I
invoke-interface {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;->adapterDataAdd(I)V
add-int/lit8 v0, v0, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
invoke-interface {v2, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->setMakeNum(I)I
goto :goto_1e
.end method