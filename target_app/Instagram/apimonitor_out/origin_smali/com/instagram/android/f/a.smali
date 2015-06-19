.class public final Lcom/instagram/android/f/a;
.super Ljava/lang/Object;
.source "TrimmingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Landroid/widget/EditText;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x8

    const-string v0, "\\s+\\Z"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/f/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "\\A\\s+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/f/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    sget v0, Lcom/instagram/android/f/c;->c:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/f/a;-><init>(Landroid/widget/EditText;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    iput p2, p0, Lcom/instagram/android/f/a;->d:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lcom/instagram/android/f/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .registers 6

    sget-object v0, Lcom/instagram/android/f/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    sget-object v0, Lcom/instagram/android/f/b;->a:[I

    iget v1, p0, Lcom/instagram/android/f/a;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    :goto_b
    return-void

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/instagram/android/f/a;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/f/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/f/a;->b(Ljava/lang/CharSequence;)Z

    goto :goto_b

    :cond_1c
    invoke-direct {p0, p1}, Lcom/instagram/android/f/a;->b(Ljava/lang/CharSequence;)Z

    goto :goto_b

    :pswitch_20
    invoke-direct {p0, p1}, Lcom/instagram/android/f/a;->b(Ljava/lang/CharSequence;)Z

    goto :goto_b

    :pswitch_24
    invoke-direct {p0, p1}, Lcom/instagram/android/f/a;->a(Ljava/lang/CharSequence;)Z

    goto :goto_b

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
