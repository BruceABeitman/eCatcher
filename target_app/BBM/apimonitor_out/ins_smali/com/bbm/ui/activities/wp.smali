.class final Lcom/bbm/ui/activities/wp;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wp;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/wp;->a:Lcom/bbm/ui/activities/MainActivity;
const/16 v1, 0x3e8
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V
return-void
.end method