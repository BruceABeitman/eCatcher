.class Lcom/facebook/katana/UserInfoActivity$3;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UserInfoActivity;->handleInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$3;->this$0:Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$3;->this$0:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V

    return-void
.end method
