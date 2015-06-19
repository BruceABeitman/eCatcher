.class public final Lcom/instagram/common/u/e/a;
.super Ljava/lang/Object;
.source "LoaderUtil.java"
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const v1, 0x5f5e100
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/instagram/common/u/e/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public static a()I
.registers 1
sget-object v0, Lcom/instagram/common/u/e/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v0
return v0
.end method