.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
.field private final synthetic val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$position:I
iput-object p4, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v2, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->isChecked()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$position:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;->adapterSelectedNum(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideCenterToRight(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImage(Landroid/view/View;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
:goto_2f
:cond_2f
return v2
:cond_30
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$item:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$position:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;->adapterReleaseSelectedNum(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideRightToCenter(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
#calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImageBack(Landroid/view/View;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$4(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
goto :goto_2f
.end method