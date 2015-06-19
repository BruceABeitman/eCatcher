.class final Lcom/bbm/ui/activities/ge;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/b/f;
.field final synthetic a:Lcom/bbm/d/eg;
.field final synthetic b:Lcom/bbm/ui/b/a;
.field final synthetic c:Lcom/bbm/ui/activities/gd;
.method constructor <init>(Lcom/bbm/ui/activities/gd;Lcom/bbm/d/eg;Lcom/bbm/ui/b/a;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/ge;->c:Lcom/bbm/ui/activities/gd;
iput-object p2, p0, Lcom/bbm/ui/activities/ge;->a:Lcom/bbm/d/eg;
iput-object p3, p0, Lcom/bbm/ui/activities/ge;->b:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/ge;->c:Lcom/bbm/ui/activities/gd;
iget-object v1, p0, Lcom/bbm/ui/activities/ge;->a:Lcom/bbm/d/eg;
iget-object v2, p0, Lcom/bbm/ui/activities/ge;->c:Lcom/bbm/ui/activities/gd;
iget-wide v2, v2, Lcom/bbm/ui/activities/gd;->b:J
invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/ui/activities/gd;->a(Lcom/bbm/d/eg;J)V
iget-object v0, p0, Lcom/bbm/ui/activities/ge;->b:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
return-void
.end method