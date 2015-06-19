.class public Lcom/twidroid/ui/themes/b/a;
.super Lcom/twidroid/ui/themes/b/c;
.source "SourceFile"
.field  a:I
.field  b:Lcom/twidroid/ui/themes/r;
.field private j:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 12
sget-object v0, Lcom/twidroid/ui/themes/s;->o:[Lcom/twidroid/ui/themes/n;
add-int/lit8 v1, p2, -0x1
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;
move-result-object v2
const-string v3, ""
const-string v5, ""
const-string v6, ""
const/4 v7, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, p3
invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/themes/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
invoke-static {p2}, Lcom/twidroid/ui/themes/s;->a(I)Lcom/twidroid/ui/themes/r;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/themes/b/a;->b:Lcom/twidroid/ui/themes/r;
iput p2, p0, Lcom/twidroid/ui/themes/b/a;->a:I
sget-object v0, Lcom/twidroid/ui/themes/s;->o:[Lcom/twidroid/ui/themes/n;
add-int/lit8 v1, p2, -0x1
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/themes/b/a;->j:Ljava/lang/String;
return-void
.end method
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/themes/b/a;->b:Lcom/twidroid/ui/themes/r;
invoke-virtual {v0, p1}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget v0, p0, Lcom/twidroid/ui/themes/b/a;->a:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/themes/b/a;->j:Ljava/lang/String;
return-void
.end method