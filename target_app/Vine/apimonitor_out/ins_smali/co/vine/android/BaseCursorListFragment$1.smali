.class  Lco/vine/android/BaseCursorListFragment$1;
.super Ljava/lang/Object;
.source "BaseCursorListFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lco/vine/android/BaseCursorListFragment;
.method constructor <init>(Lco/vine/android/BaseCursorListFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseCursorListFragment$1;->this$0:Lco/vine/android/BaseCursorListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/BaseCursorListFragment$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/BaseCursorListFragment$1;->this$0:Lco/vine/android/BaseCursorListFragment;
move-object v1, p1
check-cast v1, Landroid/widget/ListView;
move-object v2, p2
move v3, p3
move-wide v4, p4
invoke-virtual/range {v0 .. v5}, Lco/vine/android/BaseCursorListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
const-string v1, " - Lco/vine/android/BaseCursorListFragment$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method