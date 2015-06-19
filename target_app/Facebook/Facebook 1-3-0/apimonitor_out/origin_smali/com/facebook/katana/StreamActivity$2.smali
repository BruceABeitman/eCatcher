.class Lcom/facebook/katana/StreamActivity$2;
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

    iput-object p1, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->showDialog(I)V

    iget-object v7, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$18(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$2;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mUserId:J
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$11(Lcom/facebook/katana/StreamActivity;)J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->streamPublish(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/facebook/katana/StreamActivity;->access$15(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
