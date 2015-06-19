.class  Lcom/gindin/zmanim/android/ZmanimSelector$2;
.super Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;
.source "ZmanimSelector.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimSelector;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
.registers 4
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimSelector$2;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
invoke-direct {p0, p2, p3}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;-><init>(Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
return-void
.end method
.method protected createRowWrapper(Landroid/view/View;)Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.registers 5
new-instance v0, Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimSelector$2;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;
#getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$400(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, p1, v1, v2}, Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Lcom/gindin/zmanim/android/ZmanimSelector$1;)V
return-object v0
.end method