.class final Lcom/bbm/ui/activities/ws;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ws;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/ws;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ws;->a:Lcom/bbm/ui/activities/MainActivity;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Ljava/util/List;)V
return-void
.end method