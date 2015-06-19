.class final Lcom/instagram/android/c/b/c;
.super Lcom/instagram/common/a/a/s;
.source "FacebookAccountsGraphRequest.java"
.field final synthetic a:Lcom/instagram/android/c/b/b;
.method constructor <init>(Lcom/instagram/android/c/b/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/c/b/c;->a:Lcom/instagram/android/c/b/b;
invoke-direct {p0}, Lcom/instagram/common/a/a/s;-><init>()V
return-void
.end method
.method private b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/e;
.registers 6
invoke-static {p1}, Lcom/instagram/android/c/b/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/e;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/c/b/e;->a()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_30
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_e
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/share/b/g;
invoke-virtual {v0}, Lcom/instagram/share/b/g;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_e
:cond_28
new-instance v0, Lcom/instagram/android/c/b/d;
invoke-direct {v0, p0}, Lcom/instagram/android/c/b/d;-><init>(Lcom/instagram/android/c/b/c;)V
invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_30
return-object v1
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/c/b/c;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/e;
move-result-object v0
return-object v0
.end method