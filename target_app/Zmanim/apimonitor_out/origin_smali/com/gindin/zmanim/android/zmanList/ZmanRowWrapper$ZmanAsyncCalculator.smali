.class Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;
.super Landroid/os/AsyncTask;
.source "ZmanRowWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZmanAsyncCalculator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/gindin/zmanim/times/Zman;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final timeField:Landroid/widget/TextView;

.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    iput-object p2, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->timeField:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/gindin/zmanim/times/Zman;

    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->doInBackground([Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    const-string v1, ""

    :try_start_3
    iget-object v3, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->formatZmanTime(Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    move-result-object v1

    :goto_c
    return-object v1

    :catch_d
    move-exception v3

    move-object v0, v3

    aget-object v2, p1, v5

    const-string v3, "doInBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Format zman: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;

    iget-object v5, v5, Lcom/gindin/zmanim/times/Zmanim$Type;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; zman: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/gindin/util/LogUtils;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper$ZmanAsyncCalculator;->timeField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method
