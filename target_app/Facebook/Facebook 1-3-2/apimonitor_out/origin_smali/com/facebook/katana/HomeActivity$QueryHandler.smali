.class final Lcom/facebook/katana/HomeActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# static fields
.field public static final QUERY_NOTIFICATIONS_TOKEN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/HomeActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$QueryHandler;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$QueryHandler;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/HomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$QueryHandler;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->isNotificationsSyncPending()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$QueryHandler;->this$0:Lcom/facebook/katana/HomeActivity;

    const/4 v1, 0x0

    #calls: Lcom/facebook/katana/HomeActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/facebook/katana/HomeActivity;->access$7(Lcom/facebook/katana/HomeActivity;Z)V

    :cond_1a
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$QueryHandler;->this$0:Lcom/facebook/katana/HomeActivity;

    #calls: Lcom/facebook/katana/HomeActivity;->handleQueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/facebook/katana/HomeActivity;->access$8(Lcom/facebook/katana/HomeActivity;Landroid/database/Cursor;)V

    :goto_1f
    return-void

    :cond_20
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1f
.end method
