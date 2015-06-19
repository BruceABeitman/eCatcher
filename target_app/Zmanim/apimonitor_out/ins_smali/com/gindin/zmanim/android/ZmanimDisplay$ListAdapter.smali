.class  Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
.super Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;
.source "ZmanimDisplay.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
.method private constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
.registers 4
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
invoke-direct {p0, p2, p3}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;-><init>(Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;Lcom/gindin/zmanim/android/ZmanimDisplay$1;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;-><init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
return-void
.end method
.method protected createRowWrapper(Landroid/view/View;)Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.registers 5
new-instance v0, Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;
#getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$500(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, p1, v1, v2}, Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Lcom/gindin/zmanim/android/ZmanimDisplay$1;)V
return-object v0
.end method