.class  Lco/vine/android/widget/FakeActionBar$1;
.super Ljava/lang/Object;
.source "FakeActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/widget/FakeActionBar;
.field final synthetic val$item:Landroid/view/MenuItem;
.method constructor <init>(Lco/vine/android/widget/FakeActionBar;Landroid/view/MenuItem;)V
.registers 3
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar$1;->this$0:Lco/vine/android/widget/FakeActionBar;
iput-object p2, p0, Lco/vine/android/widget/FakeActionBar$1;->val$item:Landroid/view/MenuItem;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FakeActionBar$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar$1;->this$0:Lco/vine/android/widget/FakeActionBar;
#getter for: Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-static {v0}, Lco/vine/android/widget/FakeActionBar;->access$000(Lco/vine/android/widget/FakeActionBar;)Landroid/support/v7/app/ActionBarActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/widget/FakeActionBar$1;->val$item:Landroid/view/MenuItem;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
const-string v1, " - Lco/vine/android/widget/FakeActionBar$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method