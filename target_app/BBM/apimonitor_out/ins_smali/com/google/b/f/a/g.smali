.class public final Lcom/google/b/f/a/g;
.super Ljava/lang/Object;
.source "Futures.java"
.field private static final a:Lcom/google/b/f/a/d;
.field private static final b:Lcom/google/b/c/bv;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/b/f/a/h;
invoke-direct {v0}, Lcom/google/b/f/a/h;-><init>()V
sput-object v0, Lcom/google/b/f/a/g;->a:Lcom/google/b/f/a/d;
invoke-static {}, Lcom/google/b/c/bv;->b()Lcom/google/b/c/bv;
move-result-object v0
new-instance v1, Lcom/google/b/f/a/i;
invoke-direct {v1}, Lcom/google/b/f/a/i;-><init>()V
new-instance v2, Lcom/google/b/c/c;
invoke-direct {v2, v1, v0}, Lcom/google/b/c/c;-><init>(Lcom/google/b/a/f;Lcom/google/b/c/bv;)V
invoke-virtual {v2}, Lcom/google/b/c/bv;->a()Lcom/google/b/c/bv;
move-result-object v0
sput-object v0, Lcom/google/b/f/a/g;->b:Lcom/google/b/c/bv;
return-void
.end method
.method public static a(Ljava/lang/Object;)Lcom/google/b/f/a/l;
.registers 2
new-instance v0, Lcom/google/b/f/a/k;
invoke-direct {v0, p0}, Lcom/google/b/f/a/k;-><init>(Ljava/lang/Object;)V
return-object v0
.end method