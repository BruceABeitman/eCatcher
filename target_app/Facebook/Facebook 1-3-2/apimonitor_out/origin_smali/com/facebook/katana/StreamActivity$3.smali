.class Lcom/facebook/katana/StreamActivity$3;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/StreamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/StreamActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/StreamActivity$3;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$3;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->showDialog(I)V

    return-void
.end method
