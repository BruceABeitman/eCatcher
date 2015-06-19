.class public Lcom/bbm/ui/LinkifyTextView;
.super Lcom/bbm/ui/InlineImageTextView;
.source "LinkifyTextView.java"


# static fields
.field private static final d:Landroid/view/View$OnClickListener;


# instance fields
.field public a:Z

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bbm/ui/dg;

    invoke-direct {v0}, Lcom/bbm/ui/dg;-><init>()V

    sput-object v0, Lcom/bbm/ui/LinkifyTextView;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/InlineImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/LinkifyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/bbm/ui/LinkifyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/LinkifyTextView;->setLinkTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/LinkifyTextView;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/ui/InlineImageTextView;->b(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Lcom/bbm/ui/dm;)Landroid/text/Spannable;
    .registers 16

    invoke-virtual {p0}, Lcom/bbm/ui/LinkifyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bbm/util/LinkifyUtil;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/bbm/ui/dj;

    invoke-direct {v0, p0, v5}, Lcom/bbm/ui/dj;-><init>(Lcom/bbm/ui/LinkifyTextView;Landroid/text/Spannable;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int v9, v4, v1

    add-int v10, v0, v1

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v9, v4, v1

    add-int v10, v0, v1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    sub-int/2addr v0, v4

    sub-int v0, v1, v0

    move v1, v0

    goto :goto_31

    :cond_8d
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bbm/ui/dm;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v3, v1

    move v1, v0

    :goto_9e
    if-gt v1, v2, :cond_ce

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "$s"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    if-ne v10, v0, :cond_f8

    const-string v0, "InlineImageUtil insertHtmlAndInlineImages Html.fromHtml loses part of text"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_ce
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_f7

    new-instance v0, Lcom/bbm/ui/dl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/dl;-><init>(Lcom/bbm/ui/LinkifyTextView;B)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v9, v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/bbm/ui/LinkifyTextView;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v9, v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f7
    return-object v9

    :cond_f8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v4, v10, v0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    new-instance v12, Lcom/bbm/ui/dk;

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-direct {v12, p0, v0}, Lcom/bbm/ui/dk;-><init>(Lcom/bbm/ui/LinkifyTextView;Landroid/text/style/ClickableSpan;)V

    invoke-virtual {v9, v12, v10, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v0, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v9, v0, v10, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sub-int v0, v10, v3

    if-lez v0, :cond_15c

    new-instance v0, Lcom/bbm/ui/dl;

    const/4 v11, 0x0

    invoke-direct {v0, p0, v11}, Lcom/bbm/ui/dl;-><init>(Lcom/bbm/ui/LinkifyTextView;B)V

    const/16 v11, 0x11

    invoke-virtual {v9, v0, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/bbm/ui/LinkifyTextView;->getCurrentTextColor()I

    move-result v11

    invoke-direct {v0, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x11

    invoke-virtual {v9, v0, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto/16 :goto_9e
.end method

.method static synthetic a(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/LinkifyTextView;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/LinkifyTextView;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/ui/InlineImageTextView;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/LinkifyTextView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/bbm/ui/LinkifyTextView;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/LinkifyTextView;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    new-instance v0, Lcom/bbm/ui/di;

    invoke-direct {v0, p0}, Lcom/bbm/ui/di;-><init>(Lcom/bbm/ui/LinkifyTextView;)V

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/LinkifyTextView;->a(Ljava/lang/CharSequence;Lcom/bbm/ui/dm;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    new-instance v0, Lcom/bbm/ui/dh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/dh;-><init>(Lcom/bbm/ui/LinkifyTextView;)V

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/LinkifyTextView;->a(Ljava/lang/CharSequence;Lcom/bbm/ui/dm;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    if-eqz p1, :cond_a

    sget-object v0, Lcom/bbm/ui/LinkifyTextView;->d:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/bbm/ui/LinkifyTextView;->b:Landroid/view/View$OnClickListener;

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9
.end method

.method public setOnNonActiveTextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/LinkifyTextView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSpanClicked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    return-void
.end method
