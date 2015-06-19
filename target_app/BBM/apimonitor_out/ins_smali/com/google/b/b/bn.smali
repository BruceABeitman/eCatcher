.class final Lcom/google/b/b/bn;
.super Ljava/lang/Object;
.source "LongAddables.java"
.field private static final a:Lcom/google/b/a/s;
.method static constructor <clinit>()V
.registers 1
:try_start_0
new-instance v0, Lcom/google/b/b/br;
invoke-direct {v0}, Lcom/google/b/b/br;-><init>()V
new-instance v0, Lcom/google/b/b/bo;
invoke-direct {v0}, Lcom/google/b/b/bo;-><init>()V
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_d
:goto_a
sput-object v0, Lcom/google/b/b/bn;->a:Lcom/google/b/a/s;
return-void
:catch_d
move-exception v0
new-instance v0, Lcom/google/b/b/bp;
invoke-direct {v0}, Lcom/google/b/b/bp;-><init>()V
goto :goto_a
.end method
.method public static a()Lcom/google/b/b/bm;
.registers 1
sget-object v0, Lcom/google/b/b/bn;->a:Lcom/google/b/a/s;
invoke-interface {v0}, Lcom/google/b/a/s;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/bm;
return-object v0
.end method