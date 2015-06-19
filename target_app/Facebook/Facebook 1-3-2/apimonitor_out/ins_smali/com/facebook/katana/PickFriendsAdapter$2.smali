.class  Lcom/facebook/katana/PickFriendsAdapter$2;
.super Landroid/widget/Filter;
.source "PickFriendsAdapter.java"
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsAdapter;
.field private final synthetic val$context:Landroid/content/Context;
.method constructor <init>(Lcom/facebook/katana/PickFriendsAdapter;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
iput-object p2, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->val$context:Landroid/content/Context;
invoke-direct {p0}, Landroid/widget/Filter;-><init>()V
return-void
.end method
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.registers 14
const/4 v3, 0x0
if-eqz p1, :cond_2d
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_2d
sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri;
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->val$context:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
sget-object v2, Lcom/facebook/katana/PickFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v11
:goto_1f
new-instance v10, Landroid/widget/Filter$FilterResults;
invoke-direct {v10}, Landroid/widget/Filter$FilterResults;-><init>()V
invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
move-result v0
iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I
iput-object v11, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
return-object v10
:cond_2d
iget-object v4, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->val$context:Landroid/content/Context;
check-cast v4, Landroid/app/Activity;
sget-object v5, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;
sget-object v6, Lcom/facebook/katana/PickFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;
move-object v7, v3
move-object v8, v3
move-object v9, v3
invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v11
goto :goto_1f
.end method
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 5
iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
if-eqz v1, :cond_d
iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
check-cast v0, Landroid/database/Cursor;
iget-object v1, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v1, v0}, Lcom/facebook/katana/PickFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V
:cond_d
iget-object v1, p0, Lcom/facebook/katana/PickFriendsAdapter$2;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/PickFriendsAdapter;->notifyDataSetChanged()V
return-void
.end method