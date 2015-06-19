.class final Lcom/bbm/ui/c/bw;
.super Ljava/lang/Object;
.source "ContactsFragment.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/bbm/ui/c/bm;
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/bw;->a:Lcom/bbm/ui/c/bm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/bw;->a:Lcom/bbm/ui/c/bm;
invoke-static {v0}, Lcom/bbm/ui/c/bm;->a(Lcom/bbm/ui/c/bm;)Lcom/bbm/ui/dn;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V
return-void
.end method