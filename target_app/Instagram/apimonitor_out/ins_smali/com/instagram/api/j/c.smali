.class public abstract Lcom/instagram/api/j/c;
.super Ljava/lang/Object;
.source "AbstractLoaderRequest.java"
.implements Lcom/instagram/common/a/d/a;
.field private final a:I
.field private final b:Landroid/support/v4/app/an;
.field protected final c:Lcom/instagram/api/j/a;
.field protected d:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/api/j/c;->d:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/api/j/c;->b:Landroid/support/v4/app/an;
iput p3, p0, Lcom/instagram/api/j/c;->a:I
if-nez p4, :cond_10
new-instance p4, Lcom/instagram/api/j/d;
invoke-direct {p4, p0}, Lcom/instagram/api/j/d;-><init>(Lcom/instagram/api/j/c;)V
:cond_10
iput-object p4, p0, Lcom/instagram/api/j/c;->c:Lcom/instagram/api/j/a;
return-void
.end method
.method public a(Lcom/instagram/api/j/j;)V
.registers 2
return-void
.end method
.method public abstract b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.end method
.method public c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public abstract c_()Ljava/lang/String;
.end method
.method public f()V
.registers 1
return-void
.end method
.method public h()V
.registers 4
iget-object v0, p0, Lcom/instagram/api/j/c;->b:Landroid/support/v4/app/an;
iget v1, p0, Lcom/instagram/api/j/c;->a:I
invoke-virtual {p0}, Lcom/instagram/api/j/c;->i()Lcom/instagram/api/j/h;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;
return-void
.end method
.method protected i()Lcom/instagram/api/j/h;
.registers 4
new-instance v0, Lcom/instagram/api/j/h;
iget-object v1, p0, Lcom/instagram/api/j/c;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/api/j/c;->c:Lcom/instagram/api/j/a;
invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/j/h;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
return-object v0
.end method
.method public final j()I
.registers 2
iget v0, p0, Lcom/instagram/api/j/c;->a:I
return v0
.end method
.method public final k()Landroid/support/v4/app/an;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/c;->b:Landroid/support/v4/app/an;
return-object v0
.end method
.method public final l()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/c;->d:Landroid/content/Context;
return-object v0
.end method
.method public m()Ljava/util/List;
.registers 2
const/4 v0, 0x0
return-object v0
.end method