.class final Lcom/bbm/ui/c/ba;
.super Ljava/lang/Object;
.source "ChatsFragment.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/bbm/ui/c/az;
.method constructor <init>(Lcom/bbm/ui/c/az;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ba;->a:Lcom/bbm/ui/c/az;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V
return-void
.end method