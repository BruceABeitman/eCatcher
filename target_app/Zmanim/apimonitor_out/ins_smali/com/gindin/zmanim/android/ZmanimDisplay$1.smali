.class  Lcom/gindin/zmanim/android/ZmanimDisplay$1;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
.field final synthetic val$listActivity:Landroid/app/ListActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/app/ListActivity;)V
.registers 3
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->val$listActivity:Landroid/app/ListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dateChanged()V
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->val$listActivity:Landroid/app/ListActivity;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#calls: Lcom/gindin/zmanim/android/ZmanimDisplay;->getListAdapter()Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$000(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method