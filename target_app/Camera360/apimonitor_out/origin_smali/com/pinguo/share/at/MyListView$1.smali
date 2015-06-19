.class Lcom/pinguo/share/at/MyListView$1;
.super Ljava/lang/Object;
.source "MyListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/at/MyListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/at/MyListView;


# direct methods
.method constructor <init>(Lcom/pinguo/share/at/MyListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/MyListView$1;->this$0:Lcom/pinguo/share/at/MyListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/share/at/MyListView$1;->this$0:Lcom/pinguo/share/at/MyListView;

    #setter for: Lcom/pinguo/share/at/MyListView;->firstItemIndex:I
    invoke-static {v0, p2}, Lcom/pinguo/share/at/MyListView;->access$0(Lcom/pinguo/share/at/MyListView;I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
