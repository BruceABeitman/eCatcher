.class Lcom/facebook/katana/DropdownFriendsAdapter$1;
.super Landroid/widget/Filter;
.source "DropdownFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/DropdownFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/DropdownFriendsAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->this$0:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 10

    const/4 v3, 0x0

    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_2a

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->this$0:Lcom/facebook/katana/DropdownFriendsAdapter;

    #getter for: Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->access$0(Lcom/facebook/katana/DropdownFriendsAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v6, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v7, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :cond_2a
    return-object v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->this$0:Lcom/facebook/katana/DropdownFriendsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->this$0:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->notifyDataSetChanged()V

    return-void
.end method
