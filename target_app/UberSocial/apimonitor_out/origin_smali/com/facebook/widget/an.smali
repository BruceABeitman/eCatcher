.class abstract Lcom/facebook/widget/an;
.super Lcom/facebook/widget/e;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/facebook/widget/af;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/af;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/an;->c:Lcom/facebook/widget/af;

    invoke-direct {p0, p2}, Lcom/facebook/widget/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Landroid/widget/CheckBox;Z)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/facebook/widget/an;->c:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->f(Lcom/facebook/widget/af;)Lcom/facebook/widget/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method

.method b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/an;->c:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->f(Lcom/facebook/widget/af;)Lcom/facebook/widget/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ao;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
