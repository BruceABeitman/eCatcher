.class Lcom/pinguo/album/views/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/views/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/views/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/pinguo/album/views/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView$3;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$3;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/HorizontalListView;->requestLayout()V

    return-void
.end method
