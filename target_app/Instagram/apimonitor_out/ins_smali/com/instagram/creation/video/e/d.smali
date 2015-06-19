.class public final Lcom/instagram/creation/video/e/d;
.super Ljava/lang/Object;
.source "VideoFilterBuilder.java"
.field private a:Landroid/content/Context;
.field private b:I
.field private c:Ljava/lang/String;
.field private d:I
.field private e:Ljava/lang/String;
.field private f:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/e/d;->f:Ljava/util/List;
return-void
.end method
.method public final a()Lcom/instagram/creation/video/e/c;
.registers 8
new-instance v0, Lcom/instagram/creation/video/e/c;
iget-object v1, p0, Lcom/instagram/creation/video/e/d;->a:Landroid/content/Context;
iget v2, p0, Lcom/instagram/creation/video/e/d;->b:I
iget-object v3, p0, Lcom/instagram/creation/video/e/d;->c:Ljava/lang/String;
iget v4, p0, Lcom/instagram/creation/video/e/d;->d:I
iget-object v5, p0, Lcom/instagram/creation/video/e/d;->e:Ljava/lang/String;
iget-object v6, p0, Lcom/instagram/creation/video/e/d;->f:Ljava/util/List;
invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/e/c;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/util/List;)V
return-object v0
.end method
.method public final a(I)Lcom/instagram/creation/video/e/d;
.registers 2
iput p1, p0, Lcom/instagram/creation/video/e/d;->b:I
return-object p0
.end method
.method public final a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/e/d;->a:Landroid/content/Context;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/e/d;->e:Ljava/lang/String;
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/e/d;->f:Ljava/util/List;
new-instance v1, Lcom/instagram/creation/video/e/a;
invoke-direct {v1, p1, p2}, Lcom/instagram/creation/video/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final b(I)Lcom/instagram/creation/video/e/d;
.registers 2
iput p1, p0, Lcom/instagram/creation/video/e/d;->d:I
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/e/d;->c:Ljava/lang/String;
return-object p0
.end method