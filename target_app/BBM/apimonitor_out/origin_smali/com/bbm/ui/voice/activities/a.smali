.class final Lcom/bbm/ui/voice/activities/a;
.super Lcom/bbm/j/k;
.source "IncomingCallActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->b(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->a(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v0, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v2, :cond_17

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->b(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-boolean v0, v0, Lcom/bbm/d/fd;->c:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->c(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3c
    iget-object v0, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->d(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_48
    iget-object v0, p0, Lcom/bbm/ui/voice/activities/a;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;

    invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->c(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f02003a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c
.end method
