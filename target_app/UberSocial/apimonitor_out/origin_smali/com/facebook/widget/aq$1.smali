.class Lcom/facebook/widget/aq$1;
.super Lcom/facebook/widget/an;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/aq;->d()Lcom/facebook/widget/an;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/aq;


# direct methods
.method constructor <init>(Lcom/facebook/widget/aq;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/aq$1;->a:Lcom/facebook/widget/aq;

    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/an;-><init>(Lcom/facebook/widget/af;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    sget v0, Lcom/facebook/a/q;->com_facebook_place_default_icon:I

    return v0
.end method

.method protected synthetic a(Lcom/facebook/c/c;)I
    .registers 3

    check-cast p1, Lcom/facebook/c/i;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/aq$1;->b(Lcom/facebook/c/i;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/facebook/c/i;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/facebook/c/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v0, "were_here_count"

    invoke-interface {p1, v0}, Lcom/facebook/c/i;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/facebook/widget/aq$1;->a:Lcom/facebook/widget/aq;

    sget v3, Lcom/facebook/a/t;->com_facebook_placepicker_subtitle_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/facebook/widget/aq;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    if-nez v2, :cond_34

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/facebook/widget/aq$1;->a:Lcom/facebook/widget/aq;

    sget v2, Lcom/facebook/a/t;->com_facebook_placepicker_subtitle_were_here_only_format:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/facebook/widget/aq;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_34
    if-eqz v2, :cond_45

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/facebook/widget/aq$1;->a:Lcom/facebook/widget/aq;

    sget v1, Lcom/facebook/a/t;->com_facebook_placepicker_subtitle_catetory_only_format:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/facebook/widget/aq;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_45
    move-object v0, v1

    goto :goto_22
.end method

.method protected b(Lcom/facebook/c/i;)I
    .registers 3

    sget v0, Lcom/facebook/a/s;->com_facebook_placepickerfragment_list_row:I

    return v0
.end method

.method protected synthetic d(Lcom/facebook/c/c;)Ljava/lang/CharSequence;
    .registers 3

    check-cast p1, Lcom/facebook/c/i;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/aq$1;->a(Lcom/facebook/c/i;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
