.class Lcom/facebook/katana/PickFriendsAdapter$1;
.super Ljava/lang/Object;
.source "PickFriendsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PickFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/CheckboxAdapterListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PickFriendsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PickFriendsAdapter$1;->this$0:Lcom/facebook/katana/PickFriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/PickFriendsAdapter$1;->this$0:Lcom/facebook/katana/PickFriendsAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/PickFriendsAdapter;->flipMarked(I)V

    return-void
.end method
