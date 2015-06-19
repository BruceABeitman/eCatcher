.class public Lcom/bbm/ui/PatchedTextView;
.super Lcom/bbm/ui/SpanFixTextView;
.source "PatchedTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/SpanFixTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/SpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/SpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setGravity(I)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/bbm/ui/SpanFixTextView;->setGravity(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Lcom/bbm/ui/PatchedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/PatchedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/bbm/ui/SpanFixTextView;->setGravity(I)V

    goto :goto_3
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bbm/ui/SpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
