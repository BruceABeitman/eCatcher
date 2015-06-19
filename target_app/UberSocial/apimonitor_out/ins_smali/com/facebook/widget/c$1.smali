.class  Lcom/facebook/widget/c$1;
.super Lcom/facebook/widget/an;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/c;
.method constructor <init>(Lcom/facebook/widget/c;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/c$1;->a:Lcom/facebook/widget/c;
invoke-direct {p0, p1, p2}, Lcom/facebook/widget/an;-><init>(Lcom/facebook/widget/af;Landroid/content/Context;)V
return-void
.end method
.method protected a()I
.registers 2
sget v0, Lcom/facebook/a/q;->com_facebook_profile_default_icon:I
return v0
.end method
.method protected bridge synthetic a(Lcom/facebook/c/c;)I
.registers 3
check-cast p1, Lcom/facebook/c/j;
invoke-virtual {p0, p1}, Lcom/facebook/widget/c$1;->a(Lcom/facebook/c/j;)I
move-result v0
return v0
.end method
.method protected a(Lcom/facebook/c/j;)I
.registers 3
sget v0, Lcom/facebook/a/s;->com_facebook_picker_list_row:I
return v0
.end method