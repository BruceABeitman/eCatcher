.class public final Lcom/bbm/util/bc;
.super Ljava/lang/Object;
.source "Create.java"
.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
.registers 3
:try_start_0
invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_3
.catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_5
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_c
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method