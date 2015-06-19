.class final Lcom/bbm/ui/activities/ar;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ar;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 4
const-string v0, "afterTextChanged"
const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ar;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->f(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ar;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->e(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method