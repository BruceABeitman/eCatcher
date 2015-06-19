.class Lcom/facebook/katana/PasswordDialogActivity$1;
.super Ljava/lang/Object;
.source "PasswordDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PasswordDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PasswordDialogActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PasswordDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PasswordDialogActivity$1;->this$0:Lcom/facebook/katana/PasswordDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v3, p0, Lcom/facebook/katana/PasswordDialogActivity$1;->this$0:Lcom/facebook/katana/PasswordDialogActivity;

    const v4, 0x7f0b0081

    invoke-virtual {v3, v4}, Lcom/facebook/katana/PasswordDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/katana/PasswordDialogActivity$1;->this$0:Lcom/facebook/katana/PasswordDialogActivity;

    invoke-static {v3}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/PasswordDialogActivity$1;->this$0:Lcom/facebook/katana/PasswordDialogActivity;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/binding/AppSession;->handlePasswordEntry(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/katana/PasswordDialogActivity$1;->this$0:Lcom/facebook/katana/PasswordDialogActivity;

    invoke-virtual {v3}, Lcom/facebook/katana/PasswordDialogActivity;->finish()V

    return-void
.end method
