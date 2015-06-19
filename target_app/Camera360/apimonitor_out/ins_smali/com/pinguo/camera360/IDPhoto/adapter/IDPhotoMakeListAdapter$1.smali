.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;
.super Ljava/lang/Object;
.source "IDPhotoMakeListAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
.field private final synthetic val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$position:I
iput-object p4, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->getMakeNum()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_19
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$position:I
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;->adapterDataDeleted(ILandroid/widget/TextView;)V
:goto_18
:cond_18
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_19
const/16 v1, 0x64
if-ge v0, v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$position:I
invoke-interface {v1, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$AdapterDataChangeListener;->adapterDataMinus(I)V
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
invoke-interface {v1, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;->setMakeNum(I)I
goto :goto_18
.end method