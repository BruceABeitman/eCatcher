.class final Lcom/facebook/widget/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/i;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/i;


# direct methods
.method constructor <init>(Lcom/facebook/widget/i;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/i$1;->a:Lcom/facebook/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/i$1;->a:Lcom/facebook/widget/i;

    invoke-static {v0}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)V

    return-void
.end method
