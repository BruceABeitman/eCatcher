.class Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask$1;
.super Ljava/lang/Object;
.source "ZmanimActivity.java"

# interfaces
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask$1;->this$1:Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dateChanged()V
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask$1;->this$1:Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;

    iget-object v0, v0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    #calls: Lcom/gindin/zmanim/android/ZmanimActivity;->updateHeader()V
    invoke-static {v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$1400(Lcom/gindin/zmanim/android/ZmanimActivity;)V

    return-void
.end method
