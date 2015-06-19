.class final enum Lcom/millennialmedia/a/a/d$3;
.super Lcom/millennialmedia/a/a/d;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/d;-><init>(Ljava/lang/String;ILcom/millennialmedia/a/a/d$1;)V
return-void
.end method
.method public a(Ljava/lang/reflect/Field;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, " "
invoke-static {v0, v1}, Lcom/millennialmedia/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method