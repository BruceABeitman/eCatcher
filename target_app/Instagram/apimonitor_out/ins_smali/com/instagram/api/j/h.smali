.class public Lcom/instagram/api/j/h;
.super Lcom/instagram/api/j/l;
.source "ApiRequestLoaderCallbacks.java"
.field private final a:Lcom/instagram/api/j/c;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/j/l;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
iput-object p2, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;
return-void
.end method
.method static synthetic a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;
return-object v0
.end method
.method public a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
.registers 4
invoke-virtual {p0}, Lcom/instagram/api/j/h;->a()Lcom/instagram/api/j/a;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {p0}, Lcom/instagram/api/j/h;->a()Lcom/instagram/api/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/api/j/a;->a()V
:cond_d
new-instance v0, Lcom/instagram/api/j/i;
invoke-virtual {p0}, Lcom/instagram/api/j/h;->b()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/api/j/i;-><init>(Lcom/instagram/api/j/h;Landroid/content/Context;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/api/j/l;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
iget-object v0, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;
invoke-virtual {v0}, Lcom/instagram/api/j/c;->k()Landroid/support/v4/app/an;
move-result-object v0
iget-object v1, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;
invoke-virtual {v1}, Lcom/instagram/api/j/c;->j()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(I)V
return-void
.end method
.method public final bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/instagram/api/j/j;
invoke-virtual {p0, p1, p2}, Lcom/instagram/api/j/h;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
return-void
.end method