.class  Lcom/pinguo/camera360/gallery/util/AlbumUtils$1;
.super Ljava/lang/Object;
.source "AlbumUtils.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;
.field private final synthetic val$cv:Landroid/os/ConditionVariable;
.method constructor <init>(Landroid/os/ConditionVariable;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/AlbumUtils$1;->val$cv:Landroid/os/ConditionVariable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/AlbumUtils$1;->val$cv:Landroid/os/ConditionVariable;
invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
return-void
.end method