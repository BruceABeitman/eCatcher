.class final Lcom/bbm/ui/e/bo;
.super Ljava/lang/Object;
.source "RealtimeLocationHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/util/a/f;

.field final synthetic b:Lcom/bbm/ui/e/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bm;Lcom/bbm/util/a/f;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iput-object p2, p0, Lcom/bbm/ui/e/bo;->a:Lcom/bbm/util/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "ContextPhoto Clicked"

    const-class v1, Lcom/bbm/ui/e/cg;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;

    iget-boolean v0, v0, Lcom/bbm/d/fg;->j:Z

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbm/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    const-class v2, Lcom/bbm/ui/activities/GlympseViewerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_CONV_URI"

    iget-object v2, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v2, v2, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;

    iget-object v2, v2, Lcom/bbm/d/fg;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/d/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_SELECTED_CODE"

    iget-object v2, p0, Lcom/bbm/ui/e/bo;->a:Lcom/bbm/util/a/f;

    iget-object v2, v2, Lcom/bbm/util/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v1, v1, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    const v2, 0x7f0e03a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4a

    :cond_5e
    iget-object v0, p0, Lcom/bbm/ui/e/bo;->b:Lcom/bbm/ui/e/bm;

    iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;

    check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(I)V

    goto :goto_4a
.end method
