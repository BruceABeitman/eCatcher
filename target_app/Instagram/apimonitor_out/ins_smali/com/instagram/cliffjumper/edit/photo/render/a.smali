.class public final Lcom/instagram/cliffjumper/edit/photo/render/a;
.super Ljava/lang/Object;
.source "BatchRenderResult.java"
.field private a:Lcom/instagram/cliffjumper/edit/photo/render/b;
.field private b:Ljava/lang/Exception;
.field private final c:Ljava/util/List;
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;
return-void
.end method
.method public static a()Lcom/instagram/cliffjumper/edit/photo/render/a;
.registers 2
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;
sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->e:Lcom/instagram/cliffjumper/edit/photo/render/b;
invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
return-object v0
.end method
.method public static a(Ljava/lang/Exception;)Lcom/instagram/cliffjumper/edit/photo/render/a;
.registers 3
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;
sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->d:Lcom/instagram/cliffjumper/edit/photo/render/b;
invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
iput-object p0, v0, Lcom/instagram/cliffjumper/edit/photo/render/a;->b:Ljava/lang/Exception;
return-object v0
.end method
.method public static b()Lcom/instagram/cliffjumper/edit/photo/render/a;
.registers 2
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/render/a;
sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->c:Lcom/instagram/cliffjumper/edit/photo/render/b;
invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
return-object v0
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;
return-void
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/k;)V
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final c()Lcom/instagram/cliffjumper/edit/photo/render/b;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;
return-object v0
.end method
.method public final d()Ljava/lang/Exception;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->b:Ljava/lang/Exception;
return-object v0
.end method
.method public final e()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/a;->c:Ljava/util/List;
return-object v0
.end method