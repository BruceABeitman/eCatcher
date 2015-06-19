.class public Lcom/bbm/ui/activities/EditListItemActivity;
.super Lcom/bbm/ui/activities/NewListItemActivity;
.source "EditListItemActivity.java"


# instance fields
.field private final F:Lcom/bbm/ui/cj;

.field protected a:Lcom/bbm/ui/l;

.field protected final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bbm/ui/FooterActionBar;

.field private t:Landroid/widget/Spinner;

.field private u:Lcom/bbm/ui/InlineImageTextView;

.field private v:Lcom/bbm/ui/InlineImageTextView;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/NewListItemActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/bbm/ui/activities/jf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/jf;-><init>(Lcom/bbm/ui/activities/EditListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->F:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/EditListItemActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v1

    sget-object v2, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;

    invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/EditListItemActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bbm/g/bv;->a(Z)Lcom/bbm/g/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/EditListItemActivity;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    invoke-virtual {v1}, Lcom/bbm/ui/InlineImageEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    invoke-virtual {v1, v5}, Lcom/bbm/ui/InlineImageEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bbm/g/am;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;

    move-result-object v1

    iget-object v6, v1, Lcom/bbm/g/w;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :goto_69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/EditListItemActivity;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bbm/g/bv;->a(Z)Lcom/bbm/g/bv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_1d

    :cond_93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bbm/g/am;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;

    move-result-object v6

    invoke-static {}, Lcom/bbm/ui/activities/zt;->values()[Lcom/bbm/ui/activities/zt;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->p:Lcom/bbm/ui/l;

    iget v2, v2, Lcom/bbm/ui/l;->a:I

    aget-object v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->o:Lcom/bbm/ui/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->o:Lcom/bbm/ui/l;

    iget v2, v2, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v1, v2}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v2, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    iget v2, v2, Lcom/bbm/ui/activities/zr;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/EditListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    const-string v1, ""

    move-object v2, v4

    move-object v3, v1

    :goto_d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->n:Lcom/bbm/ui/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->n:Lcom/bbm/ui/l;

    iget v4, v4, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v1, v4}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/bbm/ui/activities/zs;->b:Lcom/bbm/ui/activities/zs;

    iget v4, v4, Lcom/bbm/ui/activities/zs;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/EditListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f6

    const-string v1, ""

    :cond_f6
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/bbm/ui/activities/EditListItemActivity;->m:J

    iget-object v4, v6, Lcom/bbm/g/y;->l:Ljava/lang/String;

    iget-object v10, v6, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;

    invoke-virtual {v10}, Lcom/bbm/g/aa;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bbm/ui/activities/zt;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;

    move-result-object v10

    iget-object v11, v6, Lcom/bbm/g/y;->b:Ljava/lang/String;

    iget-object v12, v6, Lcom/bbm/g/y;->a:Ljava/lang/String;

    iget-object v13, v6, Lcom/bbm/g/y;->c:Ljava/lang/String;

    iget-wide v14, v6, Lcom/bbm/g/y;->h:J

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bbm/g/bw;->d(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_12f
    invoke-virtual {v7, v10}, Lcom/bbm/ui/activities/zt;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_152

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v5

    iget-object v6, v7, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/bbm/g/bx;->a(Ljava/lang/String;)Lcom/bbm/g/bx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/bx;)Lcom/bbm/g/bw;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_152
    invoke-static {v1, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bbm/g/bw;->c(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_16f
    cmp-long v1, v8, v14

    if-eqz v1, :cond_18a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/bbm/g/bw;->a(J)Lcom/bbm/g/bw;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_18a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1b3

    const-wide/16 v4, 0x0

    cmp-long v1, v14, v4

    if-lez v1, :cond_1b3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/bbm/g/bw;->a(J)Lcom/bbm/g/bw;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_1b3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_216

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1dc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bbm/g/bw;->a(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/bbm/g/bw;->b(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :cond_1dc
    :goto_1dc
    invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/EditListItemActivity;->finish()V

    goto/16 :goto_1d

    :cond_1e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1f7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_267

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    move-object v3, v1

    goto/16 :goto_d4

    :cond_216
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_222

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1dc

    :cond_222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_248

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/bbm/g/bw;->b(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/bbm/g/bw;->a(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_1dc

    :cond_248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bbm/g/bw;->b(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/bbm/g/bw;->a(Ljava/lang/String;)Lcom/bbm/g/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto/16 :goto_1dc

    :cond_267
    move-object v2, v4

    move-object v3, v1

    goto/16 :goto_d4

    :cond_26b
    move-object v2, v4

    goto/16 :goto_69
.end method


# virtual methods
.method protected final b()V
    .registers 14

    const/16 v12, 0x8

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/bbm/g/am;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    if-eqz v0, :cond_21

    iget-object v0, v4, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v1, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    :cond_21
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/bbm/g/am;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;

    move-result-object v0

    iget-object v5, v0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v7

    move v1, v2

    :goto_3b
    invoke-interface {v7}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-ge v1, v0, :cond_5f

    invoke-interface {v7, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/w;

    iget-object v8, v0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v8, v9, :cond_5b

    iget-object v8, p0, Lcom/bbm/ui/activities/EditListItemActivity;->b:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    :cond_5f
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-virtual {v0, v6}, Lcom/bbm/ui/l;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v5, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-direct {v1, v5, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    iget-object v1, v4, Lcom/bbm/g/y;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/bbm/g/y;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->n:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->n:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_a2
    iget-object v0, v4, Lcom/bbm/g/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->q:Ljava/util/HashMap;

    iget-object v1, v4, Lcom/bbm/g/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_b4
    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->o:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-wide v0, v4, Lcom/bbm/g/y;->h:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_15d

    iget-object v5, p0, Lcom/bbm/ui/activities/EditListItemActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v5, v11}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->k:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    :goto_e7
    iget-object v0, v4, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;

    invoke-virtual {v0}, Lcom/bbm/g/aa;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/zt;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/zt;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->p:Lcom/bbm/ui/l;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/zt;->ordinal()I

    move-result v0

    iput v0, v1, Lcom/bbm/ui/l;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->l:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->p:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, v4, Lcom/bbm/g/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_163

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;

    :goto_112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16e

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->u:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->u:Lcom/bbm/ui/InlineImageTextView;

    const v5, 0x7f0e04d0

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/bbm/ui/activities/EditListItemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12d
    iget-object v0, v4, Lcom/bbm/g/y;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_174

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    iget-object v3, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;

    :cond_13d
    :goto_13d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17f

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->v:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->v:Lcom/bbm/ui/InlineImageTextView;

    const v1, 0x7f0e04cf

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/bbm/ui/activities/EditListItemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_158
    return-void

    :cond_159
    iget-object v0, v4, Lcom/bbm/g/y;->b:Ljava/lang/String;

    goto/16 :goto_b4

    :cond_15d
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->j:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_e7

    :cond_163
    iget-object v0, v4, Lcom/bbm/g/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, v4, Lcom/bbm/g/y;->m:Ljava/lang/String;

    goto :goto_112

    :cond_16e
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->u:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v12}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    goto :goto_12d

    :cond_174
    iget-object v0, v4, Lcom/bbm/g/y;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13d

    iget-object v3, v4, Lcom/bbm/g/y;->f:Ljava/lang/String;

    goto :goto_13d

    :cond_17f
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->v:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v12}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    goto :goto_158

    :cond_185
    move-object v0, v3

    goto :goto_112
.end method

.method protected final f()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->f()V

    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EditListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->t:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EditListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->u:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->u:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EditListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->v:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->v:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    return-void
.end method

.method protected final k()V
    .registers 7

    const/4 v5, -0x1

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0638

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/jg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jg;-><init>(Lcom/bbm/ui/activities/EditListItemActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/jh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jh;-><init>(Lcom/bbm/ui/activities/EditListItemActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "itemId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EditListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "itemId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v1

    :goto_43
    const-string v3, "No Item Id specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    :goto_4b
    return-void

    :cond_4c
    if-eqz p1, :cond_36

    const-string v0, "itemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "itemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    goto :goto_36

    :cond_5f
    move v0, v2

    goto :goto_43

    :cond_61
    new-instance v0, Lcom/bbm/ui/l;

    const v3, 0x7f0e03b6

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/EditListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->a:Lcom/bbm/ui/l;

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/NewListItemActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EditListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v3, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/bbm/g/am;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v3, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-eq v0, v3, :cond_9d

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f02031c

    const v5, 0x7f0e06ae

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_9d
    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f02038e

    const v5, 0x7f0e06a5

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->s:Lcom/bbm/ui/FooterActionBar;

    iget-object v2, p0, Lcom/bbm/ui/activities/EditListItemActivity;->F:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/EditListItemActivity;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/EditListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/EditListItemActivity;->e:Ljava/lang/String;

    new-instance v3, Lcom/bbm/g/ba;

    invoke-direct {v3, v1, v2}, Lcom/bbm/g/ba;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_4b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/NewListItemActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "itemId"

    iget-object v1, p0, Lcom/bbm/ui/activities/EditListItemActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
