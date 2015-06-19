.class  Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
.registers 2
iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$9(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Landroid/graphics/drawable/AnimationDrawable;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V
iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
#getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$9(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Landroid/graphics/drawable/AnimationDrawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
return-void
.end method