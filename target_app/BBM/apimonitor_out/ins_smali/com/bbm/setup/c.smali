.class final Lcom/bbm/setup/c;
.super Ljava/lang/Object;
.source "ContactListAccessPromptActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/bbm/setup/ContactListAccessPromptActivity;
.method constructor <init>(Lcom/bbm/setup/ContactListAccessPromptActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/c;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/setup/c;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-static {v0}, Lcom/bbm/setup/ContactListAccessPromptActivity;->a(Lcom/bbm/setup/ContactListAccessPromptActivity;)Z
iget-object v0, p0, Lcom/bbm/setup/c;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;
invoke-virtual {v0}, Lcom/bbm/setup/ContactListAccessPromptActivity;->finish()V
return-void
.end method