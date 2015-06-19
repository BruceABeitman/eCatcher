.class final Lcom/bbm/ui/activities/ol;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ol;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/ol;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ol;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
int-to-double v2, v0
iget-object v0, p0, Lcom/bbm/ui/activities/ol;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
int-to-double v4, v0
const-wide v6, 0x3fe999999999999aL
mul-double/2addr v4, v6
cmpg-double v0, v2, v4
if-gez v0, :cond_2c
const/4 v0, 0x1
:goto_1e
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/bbm/ui/activities/ol;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->d(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
:goto_2b
return-void
:cond_2c
move v0, v1
goto :goto_1e
:cond_2e
iget-object v0, p0, Lcom/bbm/ui/activities/ol;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->d(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
goto :goto_2b
.end method