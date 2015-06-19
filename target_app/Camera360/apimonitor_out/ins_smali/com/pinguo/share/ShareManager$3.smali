.class  Lcom/pinguo/share/ShareManager$3;
.super Ljava/lang/Object;
.source "ShareManager.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field private final synthetic val$getPhotoWallUrlTask:Landroid/os/AsyncTask;
.method constructor <init>(Landroid/os/AsyncTask;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
:cond_a
return-void
.end method