.class final Lcom/a/a/a/bs;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/a/a/a/bv;
.field private a:Z
.field private synthetic b:Ljava/lang/StringBuilder;
.method constructor <init>(Lcom/a/a/a/br;Ljava/lang/StringBuilder;)V
.registers 4
iput-object p2, p0, Lcom/a/a/a/bs;->b:Ljava/lang/StringBuilder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/a/a/a/bs;->a:Z
return-void
.end method
.method public final a(Ljava/io/InputStream;I)V
.registers 5
iget-boolean v0, p0, Lcom/a/a/a/bs;->a:Z
if-eqz v0, :cond_d
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/a/a/a/bs;->a:Z
:goto_7
iget-object v0, p0, Lcom/a/a/a/bs;->b:Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
return-void
:cond_d
iget-object v0, p0, Lcom/a/a/a/bs;->b:Ljava/lang/StringBuilder;
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_7
.end method