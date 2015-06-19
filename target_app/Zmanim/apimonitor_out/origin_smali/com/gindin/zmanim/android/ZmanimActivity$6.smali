.class Lcom/gindin/zmanim/android/ZmanimActivity$6;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimActivity;->createSecularDatePickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$6;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 6

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$6;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    #getter for: Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
    invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->goToSecularDate(III)V

    return-void
.end method
