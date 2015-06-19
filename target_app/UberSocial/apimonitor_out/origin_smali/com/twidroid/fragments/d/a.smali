.class public Lcom/twidroid/fragments/d/a;
.super Lcom/twidroid/fragments/d/o;
.source "SourceFile"


# instance fields
.field G:Landroid/widget/TextView;

.field H:Landroid/widget/TextView;

.field private J:Lcom/twidroid/fragments/d/b;

.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/d/o;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->J:Lcom/twidroid/fragments/d/b;

    return-void
.end method

.method public static a(Lcom/twidroid/model/twitter/User;)Lcom/twidroid/fragments/d/a;
    .registers 4

    new-instance v0, Lcom/twidroid/fragments/d/a;

    invoke-direct {v0}, Lcom/twidroid/fragments/d/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/a;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e()V
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->G:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->k:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->l:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_131

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;

    :goto_4a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_135

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;

    :goto_63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_139

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/twidroid/fragments/d/a$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/d/a$1;-><init>(Lcom/twidroid/fragments/d/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9d
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;

    if-eqz v0, :cond_142

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_142

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_142

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c7
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;

    if-eqz v0, :cond_14b

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v3, v3, Lcom/twidroid/model/twitter/User;->p:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e2
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_198

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x1914456

    cmp-long v0, v2, v4

    if-lez v0, :cond_153

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    const v1, 0x7f0c02b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_123
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_131
    const-string v0, "-"

    goto/16 :goto_4a

    :cond_135
    const-string v0, "-"

    goto/16 :goto_63

    :cond_139
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    :cond_142
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->j:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c7

    :cond_14b
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->h:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e2

    :cond_153
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c01fc

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    iget-object v5, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    iget-object v5, v5, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/twidroid/fragments/d/a;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v6}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/twidroid/b/a/b;->c(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_123

    :cond_198
    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/a;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public b(Lcom/twidroid/model/twitter/User;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/a;->isDetached()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/twidroid/fragments/d/a;->e()V

    :cond_b
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twidroid/fragments/d/o;->onAttach(Landroid/app/Activity;)V

    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/twidroid/fragments/d/b;

    move-object v1, v0

    iput-object v1, p0, Lcom/twidroid/fragments/d/a;->J:Lcom/twidroid/fragments/d/b;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement PagerInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/d/o;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/d/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->a:Landroid/widget/TextView;

    const v0, 0x7f0900cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0900d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->c:Landroid/widget/TextView;

    const v0, 0x7f0900d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->d:Landroid/widget/TextView;

    const v0, 0x7f0900d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->e:Landroid/widget/TextView;

    const v0, 0x7f0900d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    const v0, 0x7f0900ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->g:Landroid/widget/TextView;

    const v0, 0x7f0900db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->h:Landroid/widget/TextView;

    const v0, 0x7f0900da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->i:Landroid/widget/TextView;

    const v0, 0x7f0900dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->j:Landroid/widget/TextView;

    const v0, 0x7f0900dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->k:Landroid/widget/TextView;

    const v0, 0x7f0900de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->l:Landroid/widget/TextView;

    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/fragments/d/a;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->q:Landroid/widget/TextView;

    const v0, 0x7f0900d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->p:Landroid/widget/TextView;

    const v0, 0x7f0900d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->G:Landroid/widget/TextView;

    const v0, 0x7f0900cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/d/a;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/fragments/d/a;->v:Lcom/twidroid/ui/themes/r;

    const/16 v1, 0x12

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->a:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->b:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->c:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->d:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->e:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->f:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->p:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->m:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->q:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->n:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->G:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->o:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->g:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->h:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->i:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->j:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->k:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/twidroid/fragments/d/a;->l:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->a([Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/twidroid/fragments/d/a;->e()V

    return-void
.end method
