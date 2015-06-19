.class final Lcom/instagram/android/maps/u;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/u;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/feed/d/q;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/u;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/Set;
move-result-object v0
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private b(Lcom/instagram/feed/d/q;)V
.registers 5
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
iget-object v1, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->B()I
move-result v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/instagram/android/maps/u;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->d(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_10
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
iget-object v2, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
iget-object v0, p0, Lcom/instagram/android/maps/u;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->e(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
goto :goto_10
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/u;->a(Lcom/instagram/feed/d/q;)Z
move-result v0
return v0
.end method
.method public final bridge synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/u;->b(Lcom/instagram/feed/d/q;)V
return-void
.end method