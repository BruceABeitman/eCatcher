.class final Lcom/bbm/ui/be;
.super Ljava/lang/Object;
.source "EmoticonInputPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonInputPanel;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonInputPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/be;->a:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/be;->a:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->a(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/bl;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/bl;->a:Lcom/bbm/ui/bl;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/be;->a:Lcom/bbm/ui/EmoticonInputPanel;

    sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/be;->a:Lcom/bbm/ui/EmoticonInputPanel;

    sget-object v1, Lcom/bbm/ui/bl;->a:Lcom/bbm/ui/bl;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V

    goto :goto_11
.end method
