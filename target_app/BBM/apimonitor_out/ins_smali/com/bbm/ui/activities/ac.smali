.class final Lcom/bbm/ui/activities/ac;
.super Lcom/bbm/ui/cj;
.source "BlockedContactsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/BlockedContactsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BlockedContactsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ac;->a:Lcom/bbm/ui/activities/BlockedContactsActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
const-string v0, "footer action bar onBackAction"
const-class v1, Lcom/bbm/ui/activities/BlockedContactsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ac;->a:Lcom/bbm/ui/activities/BlockedContactsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->h()V
return-void
.end method