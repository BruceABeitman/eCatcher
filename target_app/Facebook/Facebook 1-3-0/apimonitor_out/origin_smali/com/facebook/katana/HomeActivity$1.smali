.class Lcom/facebook/katana/HomeActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/HomeActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-static {v0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    return-void
.end method
