.class Lcom/gindin/zmanim/android/ZmanimDisplay$3;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/android/ZmanimDisplay;->listenToRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

.field final synthetic val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

    iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

    #getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
    invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$300(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/app/ListActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;

    invoke-virtual {v0, p3}, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->this$0:Lcom/gindin/zmanim/android/ZmanimDisplay;

    #getter for: Lcom/gindin/zmanim/android/ZmanimDisplay;->selector:Lcom/gindin/zmanim/android/ZmanimSelector;
    invoke-static {v2}, Lcom/gindin/zmanim/android/ZmanimDisplay;->access$400(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimSelector;

    move-result-object v2

    iget-object v3, v1, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;

    iget-object v4, p0, Lcom/gindin/zmanim/android/ZmanimDisplay$3;->val$selectionCallback:Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;

    invoke-virtual {v2, v3, v4}, Lcom/gindin/zmanim/android/ZmanimSelector;->selectFrom(Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V

    return-void
.end method
