.class final Landroid/support/v4/c/a$1;
.super Landroid/support/v4/c/g;
.source "SourceFile"
.field final synthetic a:Landroid/support/v4/c/a;
.method constructor <init>(Landroid/support/v4/c/a;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-direct {p0}, Landroid/support/v4/c/g;-><init>()V
return-void
.end method
.method protected final a()I
.registers 2
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
iget v0, v0, Landroid/support/v4/c/a;->h:I
return v0
.end method
.method protected final a(Ljava/lang/Object;)I
.registers 4
if-nez p1, :cond_9
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {v0}, Landroid/support/v4/c/a;->a()I
move-result v0
:goto_8
return v0
:cond_9
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-virtual {v0, p1, v1}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;I)I
move-result v0
goto :goto_8
.end method
.method protected final a(II)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
iget-object v0, v0, Landroid/support/v4/c/a;->g:[Ljava/lang/Object;
shl-int/lit8 v1, p1, 0x1
add-int/2addr v1, p2
aget-object v0, v0, v1
return-object v0
.end method
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
shl-int/lit8 v1, p1, 0x1
add-int/lit8 v1, v1, 0x1
iget-object v2, v0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;
aget-object v2, v2, v1
iget-object v0, v0, Landroid/support/v4/c/m;->g:[Ljava/lang/Object;
aput-object p2, v0, v1
return-object v2
.end method
.method protected final a(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->c(I)Ljava/lang/Object;
return-void
.end method
.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected final b(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected final b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
return-object v0
.end method
.method protected final c()V
.registers 2
iget-object v0, p0, Landroid/support/v4/c/a$1;->a:Landroid/support/v4/c/a;
invoke-virtual {v0}, Landroid/support/v4/c/a;->clear()V
return-void
.end method