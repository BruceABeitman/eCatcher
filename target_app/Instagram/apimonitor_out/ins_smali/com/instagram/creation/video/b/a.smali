.class public Lcom/instagram/creation/video/b/a;
.super Ljava/lang/Object;
.source "ObservedStack.java"
.implements Ljava/lang/Iterable;
.field private a:Ljava/util/LinkedList;
.field private b:Lcom/instagram/creation/video/b/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/b/a;)Ljava/util/LinkedList;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/b/a;)Lcom/instagram/creation/video/b/c;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
return-object v0
.end method
.method protected final a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
if-lez v0, :cond_f
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final a(Lcom/instagram/creation/video/b/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
return-void
.end method
.method public final a(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move-result v0
iget-object v1, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
invoke-interface {v1, p1}, Lcom/instagram/creation/video/b/c;->b(Ljava/lang/Object;)V
:cond_f
return v0
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
return v0
.end method
.method public final b(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/b/a;->a:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/instagram/creation/video/b/a;->b:Lcom/instagram/creation/video/b/c;
invoke-interface {v1, p1}, Lcom/instagram/creation/video/b/c;->a(Ljava/lang/Object;)V
:cond_11
return v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/instagram/creation/video/b/b;
invoke-direct {v0, p0}, Lcom/instagram/creation/video/b/b;-><init>(Lcom/instagram/creation/video/b/a;)V
return-object v0
.end method