.class final Lcom/bbm/ui/activities/aaj;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Landroid/widget/EditText;
.field final synthetic b:Lcom/bbm/ui/activities/OwnProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aaj;->b:Lcom/bbm/ui/activities/OwnProfileActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/aaj;->a:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x6
if-ne p2, v0, :cond_f
iget-object v0, p0, Lcom/bbm/ui/activities/aaj;->a:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
iget-object v0, p0, Lcom/bbm/ui/activities/aaj;->b:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method