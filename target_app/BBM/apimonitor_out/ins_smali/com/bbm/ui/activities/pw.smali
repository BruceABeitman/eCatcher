.class final Lcom/bbm/ui/activities/pw;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/pw;->b:Lcom/bbm/ui/activities/GroupLobbyActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/pw;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/pw;->b:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->q(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/pw;->b:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/pw;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;)V
return-void
.end method