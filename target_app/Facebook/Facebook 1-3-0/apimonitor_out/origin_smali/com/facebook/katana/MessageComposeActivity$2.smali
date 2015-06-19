.class Lcom/facebook/katana/MessageComposeActivity$2;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/facebook/katana/MessageComposeActivity$2;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$2;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    sget-object v2, Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/MessageComposeActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/katana/MessageComposeActivity$2;->this$0:Lcom/facebook/katana/MessageComposeActivity;

    #getter for: Lcom/facebook/katana/MessageComposeActivity;->mDropdownAdapter:Lcom/facebook/katana/DropdownFriendsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/MessageComposeActivity;->access$10(Lcom/facebook/katana/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/katana/DropdownFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_25
    return-void
.end method
