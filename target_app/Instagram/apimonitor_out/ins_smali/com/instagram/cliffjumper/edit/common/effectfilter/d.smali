.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.super Ljava/lang/Object;
.source "CjFilterInfoBuilder.java"
.field private a:I
.field private b:Ljava/lang/String;
.field private c:I
.field private d:Ljava/lang/String;
.field private e:Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private f:Ljava/util/List;
.field private g:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->f:Ljava/util/List;
return-void
.end method
.method public final a()Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
.registers 7
new-instance v4, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a:I
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->f:Ljava/util/List;
invoke-direct {v4, v0, v1, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(ILjava/lang/String;Ljava/util/List;)V
const/4 v5, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->g:Ljava/lang/String;
if-eqz v0, :cond_17
new-instance v5, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->g:Ljava/lang/String;
invoke-direct {v5, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;-><init>(Ljava/lang/String;)V
:cond_17
new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b:Ljava/lang/String;
iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c:I
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->e:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-direct/range {v0 .. v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;-><init>(Ljava/lang/String;ILcom/instagram/cliffjumper/edit/common/ui/a;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V
return-object v0
.end method
.method public final a(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->a:I
return-object p0
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->e:Lcom/instagram/cliffjumper/edit/common/ui/a;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->d:Ljava/lang/String;
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 5
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->f:Ljava/util/List;
new-instance v1, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;
invoke-direct {v1, p1, p2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final b(I)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->c:I
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->b:Ljava/lang/String;
return-object p0
.end method
.method public final c(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/effectfilter/d;
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/d;->g:Ljava/lang/String;
return-object p0
.end method