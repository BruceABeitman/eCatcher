.class  Lcom/googlecode/javacpp/Parser$Declarator;
.super Ljava/lang/Object;
.source "Parser.java"
.field  annotations:Ljava/lang/String;
.field  constPointer:Z
.field  constValue:Z
.field  convention:Ljava/lang/String;
.field  cppType:Ljava/lang/String;
.field  definitions:Ljava/lang/String;
.field  indices:I
.field  infoNumber:I
.field  javaType:Ljava/lang/String;
.field  objectName:Ljava/lang/String;
.field  parameters:Ljava/lang/String;
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I
iput v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I
iput-boolean v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z
iput-boolean v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->constPointer:Z
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->convention:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;
return-void
.end method