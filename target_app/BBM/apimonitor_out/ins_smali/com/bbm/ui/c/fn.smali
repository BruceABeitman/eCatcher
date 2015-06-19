.class final Lcom/bbm/ui/c/fn;
.super Lcom/bbm/j/k;
.source "SlideMenuFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/fm;
.method constructor <init>(Lcom/bbm/ui/c/fm;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/fn;->a:Lcom/bbm/ui/c/fm;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/fn;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/c/fm;)Landroid/widget/ListView;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/c/fn;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/ft;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/c/ft;->d()I
move-result v0
if-lez v0, :cond_17
const/4 v0, 0x0
:goto_13
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V
return-void
:cond_17
const/16 v0, 0x8
goto :goto_13
.end method