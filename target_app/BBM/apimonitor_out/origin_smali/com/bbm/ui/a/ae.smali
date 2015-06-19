.class final Lcom/bbm/ui/a/ae;
.super Lcom/bbm/j/k;
.source "UpdatesAdapter.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/eo;

.field final synthetic b:Lcom/bbm/ui/a/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/z;Lcom/bbm/util/eo;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/a/ae;->b:Lcom/bbm/ui/a/z;

    iput-object p2, p0, Lcom/bbm/ui/a/ae;->a:Lcom/bbm/util/eo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/ae;->a:Lcom/bbm/util/eo;

    iget-object v1, v1, Lcom/bbm/util/eo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->C(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/a/ae;->a:Lcom/bbm/util/eo;

    iget-object v0, v0, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/a/ae;->a:Lcom/bbm/util/eo;

    iget-object v0, v0, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_19
.end method
