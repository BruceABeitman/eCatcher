.class final Lcom/instagram/android/maps/d/e;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/maps/d/a;
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/feed/d/q;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v0}, Lcom/instagram/android/maps/d/a;->c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;
move-result-object v0
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private b(Lcom/instagram/feed/d/q;)V
.registers 4
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->B()I
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;
iget-object v0, v0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/a/a;->a(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v0}, Lcom/instagram/android/maps/d/a;->c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;
move-result-object v0
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:cond_24
return-void
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/e;->a(Lcom/instagram/feed/d/q;)Z
move-result v0
return v0
.end method
.method public final bridge synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/e;->b(Lcom/instagram/feed/d/q;)V
return-void
.end method