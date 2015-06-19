.class final Lcom/lenovo/lps/reaper/sdk/c/m;
.super Lorg/xml/sax/helpers/DefaultHandler;
.field private a:Ljava/util/List;
.field private b:J
.field private c:Ljava/lang/StringBuilder;
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/c/b;)V
.registers 2
invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->a:Ljava/util/List;
return-object v0
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->b:J
return-wide v0
.end method
.method public final characters([CII)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->c:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
return-void
.end method
.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Address"
invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->a:Ljava/util/List;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->c:Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1b
:goto_1b
return-void
:cond_1c
const-string/jumbo v0, "TTL"
invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->c:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->b:J
goto :goto_1b
.end method
.method public final startDocument()V
.registers 3
invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->a:Ljava/util/List;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->c:Ljava/lang/StringBuilder;
return-void
.end method
.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/m;->c:Ljava/lang/StringBuilder;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
return-void
.end method