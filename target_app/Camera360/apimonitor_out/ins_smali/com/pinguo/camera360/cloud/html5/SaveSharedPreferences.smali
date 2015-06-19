.class public Lcom/pinguo/camera360/cloud/html5/SaveSharedPreferences;
.super Landroid/content/BroadcastReceiver;
.source "SaveSharedPreferences.java"
.field public static final SAVE_LASTEST_UPLOAD_TIME:I = 0x1
.field public static final SAVE_SHARE_PREFERENCE:Ljava/lang/String; = "vStudio.Android.Camera360.SAVE_SHARE_PREFERENCE"
.field public static final SAVE_TYPE:Ljava/lang/String; = "save_type"
.field public static final SAVE_UPLOADED_COUNT:I = 0x2
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "save_type"
const/4 v3, -0x1
invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
const-string/jumbo v2, "vStudio.Android.Camera360.SAVE_SHARE_PREFERENCE"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
packed-switch v1, :pswitch_data_1a
:pswitch_18
:cond_18
return-void
nop
:pswitch_data_1a
.packed-switch 0x1
:pswitch_18
:pswitch_18
.end packed-switch
.end method