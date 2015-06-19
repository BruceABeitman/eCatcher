.class  Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;
.super Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.source "ZmanimSelector.java"
.method private constructor <init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Lcom/gindin/zmanim/android/ZmanimSelector$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
return-void
.end method
.method protected updateTextFields(Lcom/gindin/zmanim/times/Zman;)V
.registers 4
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;->nameField:Landroid/widget/TextView;
iget-object v1, p1, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimSelector$SelectorRow;->descriptionField:Landroid/widget/TextView;
iget-object v1, p1, Lcom/gindin/zmanim/times/Zman;->description:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method