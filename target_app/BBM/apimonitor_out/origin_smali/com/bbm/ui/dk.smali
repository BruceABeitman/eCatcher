.class final Lcom/bbm/ui/dk;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyTextView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/LinkifyTextView;

.field private final b:Landroid/text/style/ClickableSpan;


# direct methods
.method constructor <init>(Lcom/bbm/ui/LinkifyTextView;Landroid/text/style/ClickableSpan;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/dk;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/dk;->b:Landroid/text/style/ClickableSpan;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/dk;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->b(Lcom/bbm/ui/LinkifyTextView;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/dk;->b:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/dk;->a:Lcom/bbm/ui/LinkifyTextView;

    invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->c(Lcom/bbm/ui/LinkifyTextView;)Z

    goto :goto_d
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method