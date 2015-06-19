.class public Lcom/spotify/mobile/android/util/l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.implements Lcom/spotify/mobile/android/util/be;
.field private a:Ljava/lang/String;
.field private b:Lcom/loopj/android/http/b;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/l;
const-class v1, Lcom/spotify/mobile/android/util/m;
new-instance v2, Lcom/spotify/mobile/android/util/o;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/o;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
new-instance v0, Lcom/loopj/android/http/b;
invoke-direct {v0}, Lcom/loopj/android/http/b;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/l;
const-class v1, Lcom/spotify/mobile/android/util/m;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/m;
invoke-interface {v0, p0}, Lcom/spotify/mobile/android/util/m;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
const-string v1, "Authorization"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Basic "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
const/4 v4, 0x2
invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bg;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/loopj/android/http/RequestParams;
invoke-direct {v2, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
new-instance v3, Lcom/spotify/mobile/android/util/p;
invoke-direct {v3, p3}, Lcom/spotify/mobile/android/util/p;-><init>(Lcom/spotify/mobile/android/util/bg;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/b;->b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/loopj/android/http/RequestParams;
invoke-direct {v2, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
new-instance v3, Lcom/spotify/mobile/android/util/q;
invoke-direct {v3, p3}, Lcom/spotify/mobile/android/util/q;-><init>(Lcom/spotify/mobile/android/util/bh;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/loopj/android/http/RequestParams;
invoke-direct {v2, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
new-instance v3, Lcom/spotify/mobile/android/util/r;
invoke-direct {v3, p3}, Lcom/spotify/mobile/android/util/r;-><init>(Lcom/spotify/mobile/android/util/bi;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
invoke-virtual {v0, p1}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/loopj/android/http/RequestParams;
invoke-direct {v2, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
new-instance v3, Lcom/spotify/mobile/android/util/q;
invoke-direct {v3, p3}, Lcom/spotify/mobile/android/util/q;-><init>(Lcom/spotify/mobile/android/util/bh;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/b;->b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/l;->b:Lcom/loopj/android/http/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/util/l;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/loopj/android/http/RequestParams;
invoke-direct {v2, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
new-instance v3, Lcom/spotify/mobile/android/util/r;
invoke-direct {v3, p3}, Lcom/spotify/mobile/android/util/r;-><init>(Lcom/spotify/mobile/android/util/bi;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/b;->b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method