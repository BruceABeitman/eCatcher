.class Lcom/pinguo/share/ui/ShareHorizontalListView$3;
.super Ljava/lang/Object;
.source "ShareHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ui/ShareHorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ui/ShareHorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$3;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$3;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->requestLayout()V

    return-void
.end method
