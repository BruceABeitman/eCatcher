.class final Lcom/bbm/h/ac;
.super Ljava/lang/Object;
.source "AddContactsFragment.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/h/m;
.method constructor <init>(Lcom/bbm/h/m;)V
.registers 2
iput-object p1, p0, Lcom/bbm/h/ac;->a:Lcom/bbm/h/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/h/ac;->a:Lcom/bbm/h/m;
invoke-virtual {v0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-static {v0}, Lcom/bbm/h/aq;->d(Landroid/content/Context;)V
return-void
.end method