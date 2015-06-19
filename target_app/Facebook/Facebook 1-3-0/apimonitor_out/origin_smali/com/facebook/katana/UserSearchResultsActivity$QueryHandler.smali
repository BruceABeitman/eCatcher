.class final Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UserSearchResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/UserSearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# static fields
.field public static final DELETE_SEARCH_TOKEN:I = 0x1

.field public static final QUERY_SEARCH_TOKEN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UserSearchResultsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/UserSearchResultsActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/UserSearchResultsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
    invoke-static {v0, v1, v2}, Lcom/facebook/katana/UserSearchResultsActivity;->access$0(Lcom/facebook/katana/UserSearchResultsActivity;IZ)V

    iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/UserSearchResultsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;

    #getter for: Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/UserSearchResultsActivity;->access$1(Lcom/facebook/katana/UserSearchResultsActivity;)Lcom/facebook/katana/UserSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/UserSearchResultsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_b
.end method
