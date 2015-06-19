.class final Lcom/a/a/a/bd;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Ljava/io/File;
check-cast p2, Ljava/io/File;
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v0
invoke-virtual {p2}, Ljava/io/File;->lastModified()J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method