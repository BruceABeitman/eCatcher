.class public final Lcom/bbm/ui/c/ex;
.super Lcom/bbm/ui/c/fk;
.source "OwnProfileUpdatesFragment.java"


# instance fields
.field final synthetic b:Lcom/bbm/ui/c/ew;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/c/ew;Landroid/content/Context;Lcom/bbm/j/r;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/fz;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/c/ex;->b:Lcom/bbm/ui/c/ew;

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/c/fk;-><init>(Lcom/bbm/ui/c/fh;Landroid/content/Context;Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/bbm/d/fz;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/fl;

    iget-object v1, v0, Lcom/bbm/ui/c/fl;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    iget-wide v3, p2, Lcom/bbm/d/fz;->e:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v2, 0x7f0e0761

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v3, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    sget-object v4, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;

    if-ne v3, v4, :cond_43

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v3, 0x7f0e0760

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    iget-object v2, p2, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3b
    :goto_3b
    iget-object v0, v0, Lcom/bbm/ui/c/fl;->a:Landroid/widget/TextView;

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V

    return-void

    :cond_43
    iget-object v3, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    sget-object v4, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;

    if-ne v3, v4, :cond_57

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v3, 0x7f0e0724

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_57
    iget-object v3, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    sget-object v4, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;

    if-ne v3, v4, :cond_6b

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v3, 0x7f0e075d

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_6b
    iget-object v3, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    sget-object v4, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;

    if-ne v3, v4, :cond_87

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v3, 0x7f0e0732

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    iget-object v2, p2, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_87
    iget-object v3, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    sget-object v4, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;

    if-ne v3, v4, :cond_3b

    iget-object v1, p0, Lcom/bbm/ui/c/ex;->c:Landroid/content/Context;

    const v3, 0x7f0e075f

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    iget-object v2, p2, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b
.end method

.method protected final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/bbm/d/fz;

    invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/c/ex;->a(Landroid/view/View;Lcom/bbm/d/fz;)V

    return-void
.end method
