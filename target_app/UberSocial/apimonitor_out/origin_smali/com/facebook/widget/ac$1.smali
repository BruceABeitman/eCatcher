.class Lcom/facebook/widget/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ac;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/aw;

.field final synthetic b:Lcom/facebook/widget/ac;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ac;Lcom/facebook/aw;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/ac$1;->b:Lcom/facebook/widget/ac;

    iput-object p2, p0, Lcom/facebook/widget/ac$1;->a:Lcom/facebook/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ac$1;->a:Lcom/facebook/aw;

    invoke-virtual {v0}, Lcom/facebook/aw;->j()V

    return-void
.end method
