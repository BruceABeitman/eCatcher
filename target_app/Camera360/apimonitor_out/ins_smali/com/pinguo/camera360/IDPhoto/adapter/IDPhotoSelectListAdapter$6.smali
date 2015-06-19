.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
.registers 2
return-void
.end method
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconMask:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
return-void
.end method
.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
.registers 2
return-void
.end method