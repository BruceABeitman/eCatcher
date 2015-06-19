.class final Lcom/bbm/ui/activities/aal;
.super Lcom/bbm/j/a;
.source "OwnProfileActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aal;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/aal;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->h(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aal;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->h(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
return-object v0
.end method