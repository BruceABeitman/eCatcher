.class final Lcom/facebook/widget/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/d;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/Session;

.field final synthetic b:Lcom/facebook/widget/d;


# direct methods
.method constructor <init>(Lcom/facebook/widget/d;Lcom/facebook/Session;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/d$1;->b:Lcom/facebook/widget/d;

    iput-object p2, p0, Lcom/facebook/widget/d$1;->a:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/d$1;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->g()V

    return-void
.end method
