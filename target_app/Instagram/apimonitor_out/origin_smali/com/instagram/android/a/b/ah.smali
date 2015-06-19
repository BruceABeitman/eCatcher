.class final Lcom/instagram/android/a/b/ah;
.super Landroid/text/style/ClickableSpan;
.source "ReviewPhotoHeaderRow.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/a/b/ah;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/instagram/android/a/b/ah;->b:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/android/a/b/ah;->b:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->d()V

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->e()V

    goto :goto_b
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/instagram/android/a/b/ah;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
