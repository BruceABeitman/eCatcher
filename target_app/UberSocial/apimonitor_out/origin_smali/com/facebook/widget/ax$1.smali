.class Lcom/facebook/widget/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ax;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ax;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ax$1;->a:Lcom/facebook/widget/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/ax$1;->a:Lcom/facebook/widget/ax;

    invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V

    return-void
.end method
