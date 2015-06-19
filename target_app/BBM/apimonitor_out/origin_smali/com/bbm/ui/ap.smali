.class final Lcom/bbm/ui/ap;
.super Ljava/lang/Object;
.source "ConferenceHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/an;


# direct methods
.method constructor <init>(Lcom/bbm/ui/an;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Glympse Clicked"

    const-class v1, Lcom/bbm/ui/am;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    iget-object v0, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    iget-object v0, v0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    iget-object v0, v0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    iget-object v1, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    iget-object v1, v1, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v1}, Lcom/bbm/ui/am;->a(Lcom/bbm/ui/am;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bbm/ui/am;->c()V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    iget-object v0, v0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/ap;->a:Lcom/bbm/ui/an;

    iget-object v1, v1, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-static {v1}, Lcom/bbm/ui/am;->e(Lcom/bbm/ui/am;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e03a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26
.end method
