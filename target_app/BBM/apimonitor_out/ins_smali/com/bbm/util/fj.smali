.class public final Lcom/bbm/util/fj;
.super Ljava/lang/Object;
.source "WeakReferenceSet.java"
.implements Ljava/lang/Iterable;
.field private static final b:Ljava/lang/Object;
.field public final a:Ljava/util/WeakHashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/bbm/util/fj;->b:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/util/fj;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/WeakHashMap;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V
iput-object v0, p0, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 4
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
sget-object v1, Lcom/bbm/util/fj;->b:Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final b(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method