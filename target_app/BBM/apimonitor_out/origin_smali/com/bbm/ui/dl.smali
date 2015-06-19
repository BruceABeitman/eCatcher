.class final Lcom/bbm/ui/dl;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyTextView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/LinkifyTextView;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/LinkifyTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/dl;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/LinkifyTextView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/dl;-><init>(Lcom/bbm/ui/LinkifyTextView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/dl;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->b(Lcom/bbm/ui/LinkifyTextView;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/dl;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->d(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/dl;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->d(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/dl;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->c(Lcom/bbm/ui/LinkifyTextView;)Z

    goto :goto_19
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
