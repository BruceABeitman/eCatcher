.class Lcom/facebook/katana/EulaDialog$1;
.super Ljava/lang/Object;
.source "EulaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/EulaDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EulaDialog;


# direct methods
.method constructor <init>(Lcom/facebook/katana/EulaDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EulaDialog$1;->this$0:Lcom/facebook/katana/EulaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/EulaDialog$1;->this$0:Lcom/facebook/katana/EulaDialog;

    #getter for: Lcom/facebook/katana/EulaDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/facebook/katana/EulaDialog;->access$0(Lcom/facebook/katana/EulaDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setEULAAgreed(Landroid/content/Context;Z)V

    return-void
.end method
