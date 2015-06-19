.class public abstract Lcom/bbm/d/b/n;
.super Lcom/bbm/d/b/m;
.source "SearchableList.java"
.field private a:Lcom/bbm/util/dd;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
const-string v0, ""
invoke-static {v0}, Lcom/bbm/util/dd;->a(Ljava/lang/String;)Lcom/bbm/util/dd;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/b/n;->a:Lcom/bbm/util/dd;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/bbm/util/dd;->a(Ljava/lang/String;)Lcom/bbm/util/dd;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/b/n;->a:Lcom/bbm/util/dd;
iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
return-void
.end method
.method public a(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/bbm/d/b/n;->a:Lcom/bbm/util/dd;
invoke-virtual {p0, p1}, Lcom/bbm/d/b/n;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/dd;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public abstract b(Ljava/lang/Object;)Ljava/lang/String;
.end method