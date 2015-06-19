.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
.field private final synthetic val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$position:I
iput-object p4, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
const/4 v1, 0x0
const/4 v0, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v0, :cond_5a
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->isChecked()Z
move-result v2
if-nez v2, :cond_35
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v1, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$position:I
invoke-interface {v1, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;->adapterSelectedNum(I)Z
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideCenterToRight(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImage(Landroid/view/View;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iput-boolean v0, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
:goto_34
return v0
:cond_35
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v2, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$position:I
invoke-interface {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;->adapterReleaseSelectedNum(I)Z
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideRightToCenter(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImageBack(Landroid/view/View;)V
invoke-static {v2, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$4(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iput-boolean v1, v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
goto :goto_34
:cond_5a
move v0, v1
goto :goto_34
.end method