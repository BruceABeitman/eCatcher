.class  Lco/vine/android/ExploreFragment$2;
.super Ljava/lang/Object;
.source "ExploreFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/ExploreFragment;
.method constructor <init>(Lco/vine/android/ExploreFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ExploreFragment$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;
invoke-virtual {v2}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-class v3, Lco/vine/android/SearchActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lco/vine/android/ExploreFragment;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lco/vine/android/ExploreFragment$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method