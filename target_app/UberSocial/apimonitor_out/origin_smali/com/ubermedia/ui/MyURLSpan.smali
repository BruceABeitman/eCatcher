.class public Lcom/ubermedia/ui/MyURLSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field a:Lcom/ubermedia/ui/c;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ubermedia/ui/c;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ubermedia/ui/MyURLSpan;->a:Lcom/ubermedia/ui/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/ubermedia/ui/c;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/MyURLSpan;->a:Lcom/ubermedia/ui/c;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/ubermedia/ui/MyURLSpan;->a:Lcom/ubermedia/ui/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ubermedia/ui/MyURLSpan;->a:Lcom/ubermedia/ui/c;

    invoke-virtual {p0}, Lcom/ubermedia/ui/MyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ubermedia/ui/c;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ubermedia/ui/MyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ubermedia/ui/MyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
