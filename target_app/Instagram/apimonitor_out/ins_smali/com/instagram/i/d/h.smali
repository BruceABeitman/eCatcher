.class public final Lcom/instagram/i/d/h;
.super Ljava/lang/Object;
.source "NewsfeedStoryLink.java"
.field  a:Ljava/lang/String;
.field  b:I
.field  c:I
.field  d:Ljava/lang/String;
.field private e:Lcom/instagram/i/d/i;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/i/d/h;->b:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/i/d/h;->c:I
return v0
.end method
.method public final c()Lcom/instagram/i/d/i;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/h;->e:Lcom/instagram/i/d/i;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/h;->d:Ljava/lang/String;
return-object v0
.end method
.method final e()Lcom/instagram/i/d/h;
.registers 3
invoke-static {}, Lcom/instagram/i/d/i;->a()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/d/h;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/i/d/i;
iput-object v0, p0, Lcom/instagram/i/d/h;->e:Lcom/instagram/i/d/i;
return-object p0
.end method