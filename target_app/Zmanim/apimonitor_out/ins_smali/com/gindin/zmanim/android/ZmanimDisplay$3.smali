.class  Lcom/gindin/zmanim/android/ZmanimDisplay$3;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
.field final synthetic val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V
.registers 3
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/ZmanimDisplay$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$300(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/app/ListActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
invoke-virtual {v0, p3}, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/times/Zman;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->selector:Lcom/gindin/zmanim/android/ZmanimSelector;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$400(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimSelector;
move-result-object v2
iget-object v3, v1, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;
iget-object v4, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
invoke-virtual {v2, v3, v4}, Lcom/gindin/zmanim/android/ZmanimSelector;->selectFrom(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimDisplay$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method