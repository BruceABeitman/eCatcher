.class final Lcom/facebook/widget/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/i;


# direct methods
.method constructor <init>(Lcom/facebook/widget/i;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/i$3;->a:Lcom/facebook/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/i$3;->a:Lcom/facebook/widget/i;

    invoke-static {v0}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)V

    iget-object v0, p0, Lcom/facebook/widget/i$3;->a:Lcom/facebook/widget/i;

    invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V

    return-void
.end method
