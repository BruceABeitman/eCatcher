.class public final Lcom/instagram/common/e/b/a;
.super Ljava/lang/Object;
.source "BitmapCacheExecutor.java"
.field static final a:Ljava/util/concurrent/Executor;
.field private static final b:Ljava/util/concurrent/ThreadFactory;
.field private static final c:Ljava/util/concurrent/BlockingQueue;
.method static constructor <clinit>()V
.registers 8
new-instance v0, Lcom/instagram/common/e/b/b;
invoke-direct {v0}, Lcom/instagram/common/e/b/b;-><init>()V
sput-object v0, Lcom/instagram/common/e/b/a;->b:Ljava/util/concurrent/ThreadFactory;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V
sput-object v0, Lcom/instagram/common/e/b/a;->c:Ljava/util/concurrent/BlockingQueue;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x5
const/16 v2, 0x80
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v6, Lcom/instagram/common/e/b/a;->c:Ljava/util/concurrent/BlockingQueue;
sget-object v7, Lcom/instagram/common/e/b/a;->b:Ljava/util/concurrent/ThreadFactory;
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
sput-object v0, Lcom/instagram/common/e/b/a;->a:Ljava/util/concurrent/Executor;
return-void
.end method