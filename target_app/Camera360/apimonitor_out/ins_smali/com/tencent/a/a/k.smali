.class  Lcom/tencent/a/a/k;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/tencent/a/a/h;
.method constructor <init>(Lcom/tencent/a/a/h;)V
.registers 2
iput-object p1, p0, Lcom/tencent/a/a/k;->a:Lcom/tencent/a/a/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/io/File;Ljava/io/File;)I
.registers 5
invoke-static {p1}, Lcom/tencent/a/a/h;->d(Ljava/io/File;)I
move-result v0
invoke-static {p2}, Lcom/tencent/a/a/h;->d(Ljava/io/File;)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p0, p1, p2}, Lcom/tencent/a/a/k;->a(Ljava/io/File;Ljava/io/File;)I
move-result v0
return v0
.end method