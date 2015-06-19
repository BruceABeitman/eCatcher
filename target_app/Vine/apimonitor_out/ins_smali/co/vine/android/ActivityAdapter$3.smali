.class  Lco/vine/android/ActivityAdapter$3;
.super Ljava/lang/Object;
.source "ActivityAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/ActivityAdapter;
.method constructor <init>(Lco/vine/android/ActivityAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ActivityAdapter$3;->this$0:Lco/vine/android/ActivityAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ActivityAdapter$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineEverydayNotification;
iget-object v1, p0, Lco/vine/android/ActivityAdapter$3;->this$0:Lco/vine/android/ActivityAdapter;
#getter for: Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;
invoke-static {v1}, Lco/vine/android/ActivityAdapter;->access$000(Lco/vine/android/ActivityAdapter;)Landroid/content/Context;
move-result-object v1
iget-wide v2, v0, Lco/vine/android/api/VineEverydayNotification;->notificationId:J
iget-wide v4, v0, Lco/vine/android/api/VineEverydayNotification;->anchor:J
invoke-static {v1, v2, v3, v4, v5}, Lco/vine/android/UsersActivity;->launchUserListForNotification(Landroid/content/Context;JJ)V
const-string v1, " - Lco/vine/android/ActivityAdapter$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method