.class  Lcom/gindin/zmanim/android/ZmanimActivity$6;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$6;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDateSet(Landroid/widget/DatePicker;III)V
.registers 6
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$6;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;
#getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
move-result-object v0
invoke-virtual {v0, p2, p3, p4}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->goToSecularDate(III)V
return-void
.end method