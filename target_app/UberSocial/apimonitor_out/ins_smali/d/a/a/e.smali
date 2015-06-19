.class public Ld/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/d/b;
.field private a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/a/e;->a:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "GET"
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ld/a/a/e;->a:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/a/e;->a:Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public c()Ljava/util/Map;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public d()Ljava/io/InputStream;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public g()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Ld/a/a/e;->a:Ljava/lang/String;
return-object v0
.end method