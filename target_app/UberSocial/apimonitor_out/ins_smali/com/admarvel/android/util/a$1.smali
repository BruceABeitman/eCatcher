.class  Lcom/admarvel/android/util/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/FilenameFilter;
.field final synthetic a:Lcom/admarvel/android/util/a;
.method constructor <init>(Lcom/admarvel/android/util/a;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/util/a$1;->a:Lcom/admarvel/android/util/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 5
invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".zip"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method