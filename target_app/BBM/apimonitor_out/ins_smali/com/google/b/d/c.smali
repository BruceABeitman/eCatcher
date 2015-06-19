.class public final Lcom/google/b/d/c;
.super Ljava/lang/Object;
.source "Files.java"
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x2e
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_18
const-string v0, ""
:goto_17
return-object v0
:cond_18
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_17
.end method