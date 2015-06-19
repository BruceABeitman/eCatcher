.class Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;
.super Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.source "ZmanimDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/ZmanimDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowWrapper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Lcom/gindin/zmanim/android/ZmanimDisplay$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;-><init>(Landroid/view/View;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    return-void
.end method


# virtual methods
.method protected updateTextFields(Lcom/gindin/zmanim/times/Zman;)V
    .registers 4

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;->nameField:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;

    iget-object v1, v1, Lcom/gindin/zmanim/times/Zmanim$Type;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$RowWrapper;->descriptionField:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
