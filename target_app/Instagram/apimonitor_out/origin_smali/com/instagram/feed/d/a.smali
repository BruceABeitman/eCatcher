.class public final Lcom/instagram/feed/d/a;
.super Landroid/text/style/ClickableSpan;
.source "ClickableNameSpan.java"


# instance fields
.field private final a:Lcom/instagram/user/c/a;

.field private final b:Lcom/instagram/feed/d/l;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/instagram/feed/d/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/feed/d/a;->a:Lcom/instagram/user/c/a;

    iput-object p3, p0, Lcom/instagram/feed/d/a;->b:Lcom/instagram/feed/d/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.USER_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Media.EXTRA_USER_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Media.EXTRA_CLICK_POINT"

    iget-object v2, p0, Lcom/instagram/feed/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
