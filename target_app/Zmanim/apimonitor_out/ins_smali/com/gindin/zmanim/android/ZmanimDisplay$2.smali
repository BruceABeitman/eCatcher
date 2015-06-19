.class  Lcom/gindin/zmanim/android/ZmanimDisplay$2;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"
.implements Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$2;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public selected(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/times/Zman;)V
.registers 6
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$2;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->preferences:Landroid/content/SharedPreferences;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$200(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p1, Lcom/gindin/zmanim/times/Zmanim$Type;->name:Ljava/lang/String;
iget-object v2, p2, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$2;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$300(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/app/ListActivity;
move-result-object v1
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$2;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#calls: Lcom/gindin/zmanim/android/ZmanimDisplay;->getListAdapter()Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$000(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method