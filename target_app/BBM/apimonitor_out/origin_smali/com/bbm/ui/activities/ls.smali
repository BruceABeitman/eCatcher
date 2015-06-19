.class final Lcom/bbm/ui/activities/ls;
.super Lcom/bbm/ui/ef;
.source "GroupChatListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/g/q;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/GroupChatListActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ls;->b:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/ls;->b:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/lt;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/lt;-><init>(Lcom/bbm/ui/activities/ls;)V

    const v0, 0x7f0a0468

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/lt;->a:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a046a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/lt;->b:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a0469

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/lt;->c:Landroid/widget/TextView;

    const v0, 0x7f0a01b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/lt;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/g/q;

    iget-object v0, p1, Lcom/bbm/g/q;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 9

    const/4 v1, 0x0

    check-cast p2, Lcom/bbm/g/q;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/lt;

    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->a:Lcom/bbm/ui/InlineImageTextView;

    iget-object v3, p0, Lcom/bbm/ui/activities/ls;->b:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-static {v3, p2}, Lcom/bbm/util/bm;->a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v3, p2, Lcom/bbm/g/q;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->b:Lcom/bbm/ui/InlineImageTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-wide v2, p2, Lcom/bbm/g/q;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_45

    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/activities/ls;->b:Lcom/bbm/ui/activities/GroupChatListActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupChatListActivity;->a(Lcom/bbm/ui/activities/GroupChatListActivity;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p2, Lcom/bbm/g/q;->h:J

    invoke-static {v3, v4, v5}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3a
    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->d:Landroid/widget/ImageView;

    iget-boolean v0, p2, Lcom/bbm/g/q;->e:Z

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_41
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_45
    iget-object v2, v0, Lcom/bbm/ui/activities/lt;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_4d
    const/16 v0, 0x8

    goto :goto_41
.end method
