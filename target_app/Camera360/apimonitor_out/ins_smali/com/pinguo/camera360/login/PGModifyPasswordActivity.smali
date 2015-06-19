.class public Lcom/pinguo/camera360/login/PGModifyPasswordActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PGModifyPasswordActivity.java"
.field private static final TAG:Ljava/lang/String; = "PGModifyPasswordActivity"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/login/PGModifyPasswordActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030054
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
const v1, 0x7f0a01af
invoke-static {}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->newInstance()Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const-string v1, " - Lcom/pinguo/camera360/login/PGModifyPasswordActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
packed-switch p1, :pswitch_data_a
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_7
return v0
:pswitch_8
const/4 v0, 0x1
goto :goto_7
:pswitch_data_a
.packed-switch 0x4
:pswitch_8
.end packed-switch
.end method