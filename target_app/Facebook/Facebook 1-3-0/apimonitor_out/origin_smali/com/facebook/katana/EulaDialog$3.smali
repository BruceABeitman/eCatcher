.class Lcom/facebook/katana/EulaDialog$3;
.super Ljava/lang/Object;
.source "EulaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/EulaDialog;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/EulaDialog$3;->this$0:Lcom/facebook/katana/EulaDialog;

    iput-object p2, p0, Lcom/facebook/katana/EulaDialog$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/EulaDialog$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
