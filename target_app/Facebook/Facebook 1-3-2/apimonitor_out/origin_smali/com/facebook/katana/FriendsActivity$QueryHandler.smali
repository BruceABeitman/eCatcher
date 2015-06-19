.class final Lcom/facebook/katana/FriendsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/FriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# static fields
.field public static final QUERY_FRIENDS_TOKEN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FriendsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    const/4 v1, 0x0

    #calls: Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
    invoke-static {v0, v2, v1}, Lcom/facebook/katana/FriendsActivity;->access$0(Lcom/facebook/katana/FriendsActivity;IZ)V

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$2(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->isFriendsSyncPending()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$2(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #calls: Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
    invoke-static {v0, v3, v2}, Lcom/facebook/katana/FriendsActivity;->access$0(Lcom/facebook/katana/FriendsActivity;IZ)V

    goto :goto_d

    :cond_4b
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$3(Lcom/facebook/katana/FriendsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #getter for: Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/katana/FriendsActivity;->access$3(Lcom/facebook/katana/FriendsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_6b
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$QueryHandler;->this$0:Lcom/facebook/katana/FriendsActivity;

    #calls: Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
    invoke-static {v0, v3, v2}, Lcom/facebook/katana/FriendsActivity;->access$0(Lcom/facebook/katana/FriendsActivity;IZ)V

    goto :goto_d
.end method
