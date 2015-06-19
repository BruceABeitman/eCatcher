.class public final Lcom/bbm/ui/gw;
.super Ljava/lang/Object;
.source "StringLimiterTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Landroid/content/Context;

.field private final f:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/widget/EditText;I)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/bbm/ui/gw;->c:I

    iput v1, p0, Lcom/bbm/ui/gw;->d:I

    if-ltz p2, :cond_3d

    const/4 v0, 0x1

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maxLength "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/b/a/o;->b(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/gw;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/bbm/ui/gw;->b:I

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/gw;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbm/ui/gw;->e:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    return-void

    :cond_3d
    move v0, v1

    goto :goto_b
.end method

.method public static a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
    .registers 3

    new-instance v0, Lcom/bbm/ui/gw;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/gw;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/bbm/ui/gw;->b:I

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/gw;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v2, p0, Lcom/bbm/ui/gw;->d:I

    if-lez v2, :cond_1c

    iget-object v2, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    const v3, 0x7f0e06fd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/bbm/ui/gw;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v1, p0, Lcom/bbm/ui/gw;->f:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bbm/ui/gw;->c:I

    invoke-interface {p1, v6, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/bbm/ui/gw;->c:I

    iget v3, p0, Lcom/bbm/ui/gw;->d:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/bbm/ui/gw;->b:I

    iget v4, p0, Lcom/bbm/ui/gw;->d:I

    add-int/2addr v3, v4

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/bbm/ui/gw;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1c
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p4

    sub-int/2addr v0, p3

    iget v1, p0, Lcom/bbm/ui/gw;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/ui/gw;->d:I

    iget v0, p0, Lcom/bbm/ui/gw;->d:I

    if-lez v0, :cond_1b

    add-int v0, p2, p3

    iget v1, p0, Lcom/bbm/ui/gw;->b:I

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/ui/gw;->c:I

    :cond_1b
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
