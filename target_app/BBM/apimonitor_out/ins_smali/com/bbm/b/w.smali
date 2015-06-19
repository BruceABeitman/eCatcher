.class public Lcom/bbm/b/w;
.super Ljava/lang/Object;
.source "AdsProtocol.java"
.field private final a:Lcom/bbm/d/a/f;
.field private final b:Lcom/bbm/d/a/b/a;
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V
.registers 9
const/4 v5, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/h;
invoke-direct {v1}, Lcom/bbm/d/a/h;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "id"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "ad"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "name"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "global"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
const/4 v2, 0x0
iput-boolean v2, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string v3, "id"
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/d/a/c;
const-string v4, "offer"
invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V
iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z
iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z
invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V
invoke-direct {v0, p1, v1, p2}, Lcom/bbm/d/a/f;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/d/a/i;)V
iput-object v0, p0, Lcom/bbm/b/w;->a:Lcom/bbm/d/a/f;
iget-object v0, p0, Lcom/bbm/b/w;->a:Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/d;
const-string v2, "global"
invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v2, Lcom/bbm/util/bl;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/b/a;
iput-object v0, p0, Lcom/bbm/b/w;->b:Lcom/bbm/d/a/b/a;
return-void
.end method
.method public a(Lcom/bbm/b/d;)Lcom/bbm/j/w;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "ad"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/b/a;
iget-object v2, p0, Lcom/bbm/b/w;->a:Lcom/bbm/d/a/f;
invoke-virtual {v2, v0, v1, p1}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)Lcom/bbm/util/bl;
.registers 3
iget-object v0, p0, Lcom/bbm/b/w;->b:Lcom/bbm/d/a/b/a;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/util/bl;
return-object v0
.end method
.method public a(Lcom/bbm/b/ak;)V
.registers 4
iget-object v0, p0, Lcom/bbm/b/w;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p1, Lcom/bbm/b/ak;->a:Lcom/bbm/f/ab;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
return-void
.end method
.method public b(Ljava/lang/String;)Lcom/bbm/b/a;
.registers 5
new-instance v0, Lcom/bbm/d/a/d;
const-string v1, "ad"
invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/bbm/b/a;
iget-object v2, p0, Lcom/bbm/b/w;->a:Lcom/bbm/d/a/f;
invoke-virtual {v2, v0, p1, v1}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
move-result-object v0
check-cast v0, Lcom/bbm/b/a;
return-object v0
.end method