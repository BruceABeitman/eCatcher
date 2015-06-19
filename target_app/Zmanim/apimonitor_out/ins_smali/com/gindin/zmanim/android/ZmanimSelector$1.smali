.class  Lcom/gindin/zmanim/android/ZmanimSelector$1;
.super Ljava/lang/Object;
.source "ZmanimSelector.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimSelector;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/ZmanimSelector$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
#getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$000(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;
invoke-virtual {v0, p3}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/times/Zman;
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
#getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$100(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/app/Dialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
#getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->typeSelectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$300(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
#getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->typeToSelectFrom:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {v3}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$200(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/times/Zmanim$Type;
move-result-object v3
invoke-interface {v2, v3, v1}, Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;->selected(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/times/Zman;)V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimSelector$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method