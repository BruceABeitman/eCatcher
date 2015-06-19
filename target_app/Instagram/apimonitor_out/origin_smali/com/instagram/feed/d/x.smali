.class final Lcom/instagram/feed/d/x;
.super Landroid/text/style/ClickableSpan;
.source "MediaRenderer.java"


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/instagram/feed/d/l;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/d/x;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/instagram/feed/d/x;->b:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.NUMBER_COMMENTS_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/x;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/instagram/feed/d/x;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
