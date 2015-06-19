.class  Lco/vine/android/ActivityAdapter$1;
.super Ljava/lang/Object;
.source "ActivityAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/ActivityAdapter;
.method constructor <init>(Lco/vine/android/ActivityAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ActivityAdapter$1;->this$0:Lco/vine/android/ActivityAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ActivityAdapter$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iget-object v2, p0, Lco/vine/android/ActivityAdapter$1;->this$0:Lco/vine/android/ActivityAdapter;
#getter for: Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;
invoke-static {v2}, Lco/vine/android/ActivityAdapter;->access$000(Lco/vine/android/ActivityAdapter;)Landroid/content/Context;
move-result-object v2
invoke-static {v2, v0, v1}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V
const-string v1, " - Lco/vine/android/ActivityAdapter$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method