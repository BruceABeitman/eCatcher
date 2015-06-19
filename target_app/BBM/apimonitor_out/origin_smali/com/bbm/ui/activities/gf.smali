.class final Lcom/bbm/ui/activities/gf;
.super Lcom/bbm/ui/d/e;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/gd;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/gd;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/gf;->a:Lcom/bbm/ui/activities/gd;

    invoke-direct {p0, p2}, Lcom/bbm/ui/d/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/gf;->a:Lcom/bbm/ui/activities/gd;

    iget-object v0, v0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;

    iget-object v0, v0, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/gf;->a:Lcom/bbm/ui/activities/gd;

    iget-object v1, v1, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;

    iget-object v1, v1, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v1, p1}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
