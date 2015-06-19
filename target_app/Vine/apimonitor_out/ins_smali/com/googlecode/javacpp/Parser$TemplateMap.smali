.class  Lcom/googlecode/javacpp/Parser$TemplateMap;
.super Ljava/util/LinkedHashMap;
.source "Parser.java"
.field  defaults:Ljava/util/LinkedHashMap;
.method constructor <init>(Lcom/googlecode/javacpp/Parser$TemplateMap;)V
.registers 3
invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$TemplateMap;->defaults:Ljava/util/LinkedHashMap;
iput-object p1, p0, Lcom/googlecode/javacpp/Parser$TemplateMap;->defaults:Ljava/util/LinkedHashMap;
return-void
.end method
.method  get(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_15
iget-object v1, p0, Lcom/googlecode/javacpp/Parser$TemplateMap;->defaults:Ljava/util/LinkedHashMap;
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/googlecode/javacpp/Parser$TemplateMap;->defaults:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_14
return-object v1
:cond_15
move-object v1, v0
goto :goto_14
.end method