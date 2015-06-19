.class final Lcom/bbm/ui/views/v;
.super Ljava/lang/Object;
.source "QuickActionAttachmentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/bbm/ui/views/u;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/u;ILandroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/views/v;->c:Lcom/bbm/ui/views/u;

    iput p2, p0, Lcom/bbm/ui/views/v;->a:I

    iput-object p3, p0, Lcom/bbm/ui/views/v;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Grid Item Clicked"

    const-class v1, Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/views/v;->c:Lcom/bbm/ui/views/u;

    iget-object v0, v0, Lcom/bbm/ui/views/u;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-static {v0}, Lcom/bbm/ui/views/QuickActionAttachmentsView;->b(Lcom/bbm/ui/views/QuickActionAttachmentsView;)Lcom/bbm/ui/views/u;

    move-result-object v0

    iget v1, p0, Lcom/bbm/ui/views/v;->a:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/ui/views/w;->e:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/bbm/ui/views/v;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
