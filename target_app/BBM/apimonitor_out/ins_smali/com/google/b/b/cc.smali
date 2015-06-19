.class final Lcom/google/b/b/cc;
.super Ljava/lang/Object;
.source "Striped64.java"
.field private static final b:Lsun/misc/Unsafe;
.field private static final c:J
.field volatile a:J
.method static constructor <clinit>()V
.registers 3
:try_start_0
invoke-static {}, Lcom/google/b/b/ca;->c()Lsun/misc/Unsafe;
move-result-object v0
sput-object v0, Lcom/google/b/b/cc;->b:Lsun/misc/Unsafe;
const-class v0, Lcom/google/b/b/cc;
sget-object v1, Lcom/google/b/b/cc;->b:Lsun/misc/Unsafe;
const-string v2, "value"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
move-result-wide v0
sput-wide v0, Lcom/google/b/b/cc;->c:J
:try_end_16
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
new-instance v1, Ljava/lang/Error;
invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/google/b/b/cc;->a:J
return-void
.end method
.method final a(JJ)Z
.registers 13
sget-object v0, Lcom/google/b/b/cc;->b:Lsun/misc/Unsafe;
sget-wide v2, Lcom/google/b/b/cc;->c:J
move-object v1, p0
move-wide v4, p1
move-wide v6, p3
invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z
move-result v0
return v0
.end method