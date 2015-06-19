.class public final Lcom/instagram/l/a/d;
.super Lcom/instagram/api/k/a/b;
.source "QuickExperimentSyncRequest.java"
.implements Lcom/instagram/api/k/a/d;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/util/Set;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
.registers 4
invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V
iput-object p1, p0, Lcom/instagram/l/a/d;->b:Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/l/a/d;->c:Ljava/util/Set;
iget-object v0, p0, Lcom/instagram/l/a/d;->c:Ljava/util/Set;
invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method private b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/a/b;
.registers 4
new-instance v0, Lcom/instagram/l/a/c;
iget-object v1, p0, Lcom/instagram/l/a/d;->c:Ljava/util/Set;
invoke-direct {v0, v1}, Lcom/instagram/l/a/c;-><init>(Ljava/util/Set;)V
invoke-virtual {v0, p1}, Lcom/instagram/l/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/a/b;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/l/a/d;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/a/b;
move-result-object v0
return-object v0
.end method
.method protected final a(Lcom/instagram/api/b/a;)V
.registers 5
iget-object v0, p0, Lcom/instagram/l/a/d;->b:Ljava/lang/String;
if-eqz v0, :cond_b
const-string v0, "id"
iget-object v1, p0, Lcom/instagram/l/a/d;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
const-string v0, "experiments"
invoke-static {}, Lcom/instagram/common/i/a/b;->a()Lcom/instagram/common/i/a/b;
move-result-object v1
iget-object v2, p0, Lcom/instagram/l/a/d;->c:Ljava/util/Set;
invoke-virtual {v1, v2}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "qe/sync/"
return-object v0
.end method