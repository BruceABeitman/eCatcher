.class Lcom/gindin/zmanim/android/ZmanimDisplay$1;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"

# interfaces
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimDisplay;-><init>(Landroid/app/ListActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

.field final synthetic val$listActivity:Landroid/app/ListActivity;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/app/ListActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

    iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;->val$listActivity:Landroid/app/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
