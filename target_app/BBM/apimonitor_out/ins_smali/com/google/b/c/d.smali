.class public final Lcom/google/b/c/d;
.super Ljava/lang/Object;
.source "Collections2.java"
.field static final a:Lcom/google/b/a/g;
.method static constructor <clinit>()V
.registers 2
const-string v0, ", "
new-instance v1, Lcom/google/b/a/g;
invoke-direct {v1, v0}, Lcom/google/b/a/g;-><init>(Ljava/lang/String;)V
const-string v0, "null"
invoke-virtual {v1, v0}, Lcom/google/b/a/g;->a(Ljava/lang/String;)Lcom/google/b/a/g;
move-result-object v0
sput-object v0, Lcom/google/b/c/d;->a:Lcom/google/b/a/g;
return-void
.end method
.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
.registers 1
check-cast p0, Ljava/util/Collection;
return-object p0
.end method