.class public final Lcom/instagram/android/h/a/a;
.super Ljava/lang/Object;
.source "MediaIterators.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final a()Lcom/instagram/android/h/a/a;
.registers 1
new-instance v0, Lcom/instagram/android/h/a/a;
invoke-direct {v0}, Lcom/instagram/android/h/a/a;-><init>()V
return-object v0
.end method
.method public final a(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->C()Lcom/instagram/feed/d/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
new-instance v1, Lcom/instagram/android/h/a/b;
invoke-direct {v1, p0, v0}, Lcom/instagram/android/h/a/b;-><init>(Lcom/instagram/android/h/a/a;Ljava/util/Iterator;)V
return-object v1
.end method
.method public final b(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ak()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
new-instance v1, Lcom/instagram/android/h/a/c;
invoke-direct {v1, p0, v0}, Lcom/instagram/android/h/a/c;-><init>(Lcom/instagram/android/h/a/a;Ljava/util/Iterator;)V
return-object v1
.end method