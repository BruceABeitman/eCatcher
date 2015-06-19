.class Lcom/pinguo/share/at/AtActivity$5$1;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Lcom/pinguo/share/at/MyListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/at/AtActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/share/at/AtActivity$5;


# direct methods
.method constructor <init>(Lcom/pinguo/share/at/AtActivity$5;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$5$1;->this$1:Lcom/pinguo/share/at/AtActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$5$1;->this$1:Lcom/pinguo/share/at/AtActivity$5;

    #getter for: Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
    invoke-static {v0}, Lcom/pinguo/share/at/AtActivity$5;->access$0(Lcom/pinguo/share/at/AtActivity$5;)Lcom/pinguo/share/at/AtActivity;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/share/at/AtActivity;->fetchListData(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/share/at/AtActivity;->access$15(Lcom/pinguo/share/at/AtActivity;Z)V

    return-void
.end method
