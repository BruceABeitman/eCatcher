.class Lcom/facebook/katana/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/HomeActivity;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->authLogout(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$5;->this$0:Lcom/facebook/katana/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/HomeActivity;->showDialog(I)V

    :cond_19
    return-void
.end method
