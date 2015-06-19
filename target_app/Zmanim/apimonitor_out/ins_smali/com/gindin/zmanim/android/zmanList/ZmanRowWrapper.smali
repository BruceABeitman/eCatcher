.class public abstract Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.super Ljava/lang/Object;
.source "ZmanRowWrapper.java"
.field private currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
.field protected final descriptionField:Landroid/widget/TextView;
.field protected final nameField:Landroid/widget/TextView;
.field private final timeField:Landroid/widget/TextView;
.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.method public constructor <init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
const v0, 0x7f07000d
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->nameField:Landroid/widget/TextView;
const v0, 0x7f07000e
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->timeField:Landroid/widget/TextView;
const v0, 0x7f07000f
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->descriptionField:Landroid/widget/TextView;
return-void
.end method
.method public setZman(Lcom/gindin/zmanim/times/Zman;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->isCancelled()Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
invoke-virtual {v0, v3}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->cancel(Z)Z
:cond_12
new-instance v0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
iget-object v1, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
iget-object v2, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->timeField:Landroid/widget/TextView;
invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Landroid/widget/TextView;)V
iput-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
iget-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->currentCalculator:Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
const/4 v1, 0x1
new-array v1, v1, [Lcom/gindin/zmanim/times/Zman;
aput-object p1, v1, v3
invoke-virtual {v0, v1}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->updateTextFields(Lcom/gindin/zmanim/times/Zman;)V
return-void
.end method
.method protected abstract updateTextFields(Lcom/gindin/zmanim/times/Zman;)V
.end method