.class Lcom/facebook/katana/FriendsAdapter$1;
.super Landroid/widget/Filter;
.source "FriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/FriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/facebook/katana/binding/UserImagesCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FriendsAdapter;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/katana/FriendsAdapter;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/FriendsAdapter$1;->this$0:Lcom/facebook/katana/FriendsAdapter;

    iput-object p2, p0, Lcom/facebook/katana/FriendsAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 15

    const/4 v4, 0x0

    const-string v3, "display_name IS NOT NULL"

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_30

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/FriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "display_name IS NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :goto_22
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v12, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v11

    :cond_30
    iget-object v5, p0, Lcom/facebook/katana/FriendsAdapter$1;->val$context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    sget-object v6, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/facebook/katana/FriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v0, "display_name IS NOT NULL"

    move-object v8, v3

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto :goto_22
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_d

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/FriendsAdapter$1;->this$0:Lcom/facebook/katana/FriendsAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/FriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_d
    iget-object v1, p0, Lcom/facebook/katana/FriendsAdapter$1;->this$0:Lcom/facebook/katana/FriendsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/FriendsAdapter;->notifyDataSetChanged()V

    return-void
.end method
