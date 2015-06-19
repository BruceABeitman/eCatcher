.class Lcom/gindin/zmanim/android/ZmanimSelector$1;
.super Ljava/lang/Object;
.source "ZmanimSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimSelector;-><init>(Landroid/content/Context;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimSelector;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimSelector;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;

    #getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$000(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;

    invoke-virtual {v0, p3}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;

    #getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$100(Lcom/gindin/zmanim/android/ZmanimSelector;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;

    #getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->typeSelectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;
    invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$300(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimSelector$1;->this$0:Lcom/gindin/zmanim/android/ZmanimSelector;

    #getter for: Lcom/gindin/zmanim/android/ZmanimSelector;->typeToSelectFrom:Lcom/gindin/zmanim/times/Zmanim$Type;
    invoke-static {v3}, Lcom/gindin/zmanim/android/ZmanimSelector;->access$200(Lcom/gindin/zmanim/android/ZmanimSelector;)Lcom/gindin/zmanim/times/Zmanim$Type;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;->selected(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/times/Zman;)V

    return-void
.end method
