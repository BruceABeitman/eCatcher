.class public Lcom/bbm/ui/InlineImageEditText;
.super Landroid/widget/EditText;
.source "InlineImageEditText.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/util/Printer;

.field private final c:Lcom/bbm/j/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/InlineImageEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/InlineImageEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/bbm/ui/db;

    invoke-direct {v0, p0}, Lcom/bbm/ui/db;-><init>(Lcom/bbm/ui/InlineImageEditText;)V

    iput-object v0, p0, Lcom/bbm/ui/InlineImageEditText;->b:Landroid/util/Printer;

    new-instance v0, Lcom/bbm/ui/dc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/dc;-><init>(Lcom/bbm/ui/InlineImageEditText;)V

    iput-object v0, p0, Lcom/bbm/ui/InlineImageEditText;->c:Lcom/bbm/j/u;

    invoke-virtual {p0}, Lcom/bbm/ui/InlineImageEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_17
    return-void

    :cond_18
    new-instance v0, Lcom/bbm/ui/de;

    invoke-direct {v0, p0}, Lcom/bbm/ui/de;-><init>(Lcom/bbm/ui/InlineImageEditText;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/InlineImageEditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    iget-object v0, p0, Lcom/bbm/ui/InlineImageEditText;->c:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    new-instance v0, Lcom/bbm/ui/dd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/dd;-><init>(Lcom/bbm/ui/InlineImageEditText;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/InlineImageEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_17
.end method

.method static synthetic a(Lcom/bbm/ui/InlineImageEditText;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/InlineImageEditText;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/InlineImageEditText;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/InlineImageEditText;->a:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/text/Editable;)V
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v2, Lcom/bbm/ui/ea;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/ea;

    array-length v2, v0

    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/InlineImageEditText;Landroid/text/Editable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/InlineImageEditText;->setInlineImageSpans(Landroid/text/Editable;)V

    return-void
.end method

.method private setInlineImageSpans(Landroid/text/Editable;)V
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const-string v4, "mypin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/bbm/ui/InlineImageEditText;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_28
    add-int/lit8 v0, v3, 0x1

    goto :goto_c

    :cond_2b
    invoke-static {p1}, Lcom/bbm/ui/InlineImageEditText;->a(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/bbm/ui/InlineImageEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/InlineImageEditText;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;FLandroid/text/Spannable;)Landroid/text/Spannable;

    return-void
.end method
