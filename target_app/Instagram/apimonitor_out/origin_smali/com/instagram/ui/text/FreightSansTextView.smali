.class public Lcom/instagram/ui/text/FreightSansTextView;
.super Landroid/widget/TextView;
.source "FreightSansTextView.java"


# static fields
.field private static a:Landroid/graphics/Typeface;

.field private static b:Lcom/instagram/ui/text/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/text/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getCustomTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_11
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getAllCapsTransformation()Lcom/instagram/ui/text/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_19
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_11
.end method

.method private getAllCapsTransformation()Lcom/instagram/ui/text/a;
    .registers 3

    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/ui/text/a;

    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/text/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    :cond_f
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    return-object v0
.end method

.method private getCustomTypeface()Landroid/graphics/Typeface;
    .registers 3

    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "FreigSanProSem.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    :cond_14
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    return-object v0
.end method
