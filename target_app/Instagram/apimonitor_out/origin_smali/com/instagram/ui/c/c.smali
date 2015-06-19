.class public final Lcom/instagram/ui/c/c;
.super Ljava/lang/Object;
.source "UsernameInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[^a-z0-9_.]"

    sput-object v0, Lcom/instagram/ui/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/ui/c/c;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(C)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "ascii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ascii"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/ui/c/c;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15

    const/4 v5, 0x0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_14
    move v2, v5

    move v0, v5

    move v1, v5

    :goto_17
    sub-int v3, p3, p2

    if-ge v2, v3, :cond_4b

    add-int v3, v2, p2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/instagram/ui/c/c;->b(C)Z

    move-result v6

    if-nez v6, :cond_46

    add-int v6, v2, v1

    invoke-static {v3}, Lcom/instagram/ui/c/c;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/ui/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v1, v6

    if-nez v0, :cond_45

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_45
    const/4 v0, 0x1

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_49
    move v0, v5

    goto :goto_46

    :cond_4b
    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/instagram/ui/c/c;->b:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->invalid_username_character:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/n/e;->a(Ljava/lang/CharSequence;)V

    :cond_58
    return-object v4
.end method
