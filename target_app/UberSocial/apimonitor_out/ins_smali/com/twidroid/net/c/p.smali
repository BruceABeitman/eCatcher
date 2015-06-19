.class public Lcom/twidroid/net/c/p;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field  a:Lcom/twidroid/net/c/n;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Lcom/twidroid/net/c/n;)Lcom/twidroid/net/c/n;
.registers 5
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
:try_start_5
iget-object v0, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
iget-object v1, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/n;->a(Lcom/twidroid/net/c/n;)Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
:goto_e
:try_end_e
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f
return-object v0
:catch_f
move-exception v0
iget-object v1, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
const/4 v2, 0x0
iput-object v2, v1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
goto :goto_e
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/net/c/n;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/p;->a([Lcom/twidroid/net/c/n;)Lcom/twidroid/net/c/n;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 1
return-void
.end method
.method protected a(Lcom/twidroid/net/c/n;)V
.registers 5
const/16 v0, 0x8c
iget-object v1, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
if-eqz v1, :cond_55
iget-object v1, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v0, :cond_34
new-instance v2, Ljava/lang/StringBuilder;
iget-object v1, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
instance-of v1, v1, Lcom/twidroid/net/c/m;
if-eqz v1, :cond_41
const-string v1, "..."
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I
move-result v1
:goto_21
if-gtz v1, :cond_5b
:goto_23
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v1
add-int/lit16 v1, v1, -0x8c
sub-int v1, v0, v1
invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
:cond_34
iget-object v0, p1, Lcom/twidroid/net/c/n;->i:Landroid/widget/EditText;
iget-object v1, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p1, Lcom/twidroid/net/c/n;->j:Lcom/twidroid/net/c/o;
invoke-virtual {v0, p1}, Lcom/twidroid/net/c/o;->a(Lcom/twidroid/net/c/n;)V
:goto_40
return-void
:cond_41
iget-object v1, p0, Lcom/twidroid/net/c/p;->a:Lcom/twidroid/net/c/n;
instance-of v1, v1, Lcom/twidroid/net/c/r;
if-eqz v1, :cond_4e
const-string v1, "(cont)"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I
move-result v1
goto :goto_21
:cond_4e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
goto :goto_21
:cond_55
iget-object v0, p1, Lcom/twidroid/net/c/n;->j:Lcom/twidroid/net/c/o;
invoke-virtual {v0, p1}, Lcom/twidroid/net/c/o;->b(Lcom/twidroid/net/c/n;)V
goto :goto_40
:cond_5b
move v0, v1
goto :goto_23
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/net/c/n;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/p;->a(Lcom/twidroid/net/c/n;)V
return-void
.end method