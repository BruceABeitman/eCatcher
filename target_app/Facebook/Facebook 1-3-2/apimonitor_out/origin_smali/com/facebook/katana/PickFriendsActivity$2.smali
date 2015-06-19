.class Lcom/facebook/katana/PickFriendsActivity$2;
.super Ljava/lang/Object;
.source "PickFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PickFriendsActivity;->showButtonBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PickFriendsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PickFriendsActivity$2;->this$0:Lcom/facebook/katana/PickFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity$2;->this$0:Lcom/facebook/katana/PickFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/PickFriendsActivity;->finish()V

    return-void
.end method
