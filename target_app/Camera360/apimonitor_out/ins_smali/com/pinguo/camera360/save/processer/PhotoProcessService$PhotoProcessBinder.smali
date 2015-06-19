.class public Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;
.super Landroid/os/Binder;
.source "PhotoProcessService.java"
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.method public constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
return-void
.end method
.method  getService()Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
return-object v0
.end method