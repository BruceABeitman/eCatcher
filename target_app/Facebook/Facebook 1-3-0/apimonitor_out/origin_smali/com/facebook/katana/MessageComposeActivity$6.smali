.class Lcom/facebook/katana/MessageComposeActivity$6;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MessageComposeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MessageComposeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$6;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$6;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/service/api/FacebookUser;

    #calls: Lcom/facebook/katana/MessageComposeActivity;->removeRecipient(Lcom/facebook/katana/service/api/FacebookUser;)V
    invoke-static {v0, p0}, Lcom/facebook/katana/MessageComposeActivity;->access$15(Lcom/facebook/katana/MessageComposeActivity;Lcom/facebook/katana/service/api/FacebookUser;)V

    return-void
.end method
