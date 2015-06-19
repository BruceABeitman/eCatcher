.class Lcom/facebook/katana/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;

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

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;
    invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$9(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/NotificationsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
