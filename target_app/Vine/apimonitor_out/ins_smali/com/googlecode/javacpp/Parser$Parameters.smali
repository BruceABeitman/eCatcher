.class  Lcom/googlecode/javacpp/Parser$Parameters;
.super Ljava/lang/Object;
.source "Parser.java"
.field  definitions:Ljava/lang/String;
.field  infoNumber:I
.field  list:Ljava/lang/String;
.field  signature:Ljava/lang/String;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacpp/Parser$Parameters;->infoNumber:I
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Parameters;->definitions:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;
return-void
.end method